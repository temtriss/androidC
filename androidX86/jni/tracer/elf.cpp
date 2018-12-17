#include <stdio.h>
#include <sys/ptrace.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <assert.h>
#include <string.h>
#include <dlfcn.h>
#include <stdarg.h>
#include <string>
#include <vector>
#include <cctype>
#include <dirent.h>
#include <pthread.h>
#include <stdint.h>
#include <elf.h>

#include <../util/util.hpp>
#include <../util/PtraceUtil.hpp>
#include <../util/AndroidLogger.h>
#include <../util/payload.hpp>
#include "../util/ELFHelp.h"

#include "../util/SimpleTCPServer.hpp"
#include "../libloader/BaseCommandService.h"
#include "../util/ProcessScanner.hpp"
#include "../util/luascript.h"
#include "../luaserver/lua_server.hpp"


#define  LOG_TAG    "elf"
#define  LOGD(...)  __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)
#define  LOGE(...)  __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

#define	 CMD_DUMP   "DUMP"
#define	 CMD_REPLACE   "REPLACE"
#define	 CMD_STRIP   "STRIP"
#define	 CMD_ADDSO   "ADDSO"
#define	 CMD_TEST   "TEST"
Logger logger(NULL,0);
char **_argv;

void elf_dump(char *fileName)
{
    if(fileName == NULL){
	printf("Usage: %s %s filename\n",_argv[0],CMD_DUMP);
	return;
    }
    printf("dump %s\n",fileName);
    ELFHelp elfHelp;
    if(elfHelp.Load((char *)fileName)<0){
        printf("Fail: Load File\n");
	exit(0);
    }
    elfHelp.Show(elfHelp.header);
    //elfHelp.Show(elfHelp.shdrStringtable);
    //logger.logHex((unsigned char *)elfHelp.At(elfHelp.shdrStringtable->sh_offset),64);

    for(int i=0;i<elfHelp.sectionHeader.size();i++){
	Elf32_Shdr *shdr = elfHelp.sectionHeader[i];
        printf("%d %08X %08X %08X %d [%s] %s\n",i,shdr->sh_addr,shdr->sh_offset,shdr->sh_size,shdr->sh_type,
		elfHelp.GetHeaderString(shdr->sh_name),
		elfHelp.SectionFlagToString(shdr->sh_flags).c_str()
		
	);
    }
    //printf("%08X\n",elfHelp.shdrDynsym->sh_offset);
    //printf("%08X\n",elfHelp.dynStrTab->d_un.d_val);
    printf("FileSize = %08X\n",elfHelp.buffer.size());
    printf("End = %08X\n",elfHelp.header->e_shoff + (elfHelp.header->e_shentsize * elfHelp.header->e_shnum));
    printf("Memsize = %08X\n",elfHelp.GetMemorySize());
    //elfHelp.Show(elfHelp.GetProgramHeaderData());
    //elfHelp.Show(elfHelp.GetProgramHeaderCode());
    //elfHelp.Show(elfHelp.shdrDynsym);
    //elfHelp.Show(elfHelp.shdrDynamic);
    //logger.logHex((unsigned char *)elfHelp.At(elfHelp.shdrDynamic->sh_offset),320);
    //elfHelp.ShowDynamic(elfHelp.shdrDynamic);
    //DumpHex(stdout,elfHelp.At(elfHelp.shdrDynsym->sh_offset),elfHelp.shdrDynsym->sh_size);
    for(int i=0;i<elfHelp.programHeader.size();i++){
	Elf32_Phdr *phdr = elfHelp.programHeader[i];
	//elfHelp.Show(phdr);
        printf("%02d o:%08X v:%08X p:%08X fz:%08X mz:%08X e:%08X %s a:%d [%s]\n",i,
                phdr->p_offset,phdr->p_vaddr,phdr->p_paddr,
                phdr->p_filesz,phdr->p_memsz,
                phdr->p_offset + phdr->p_filesz,
                elfHelp.ProgramFlagToString(phdr->p_flags).c_str(),
                phdr->p_align,
                elfHelp.GetProgramHeaderType(phdr->p_type).c_str()
	);

    }
    //elfHelp.ShowDependency(elfHelp.shdrDynamic);
    //elfHelp.ReplaceDependency(elfHelp.shdrDynamic,"liblog.so","libmog.so");
    //elfHelp.Save();
}

void elf_replace(char *fileName,char *from,char *to)
{
    if((fileName == NULL)||(from == NULL)||(to == NULL)){
	printf("Usage: %s %s filename from to\n",_argv[0],CMD_REPLACE);
	return;
    }
    printf("%s %s %s %s\n",CMD_REPLACE,fileName,from,to);
    ELFHelp elfHelp;
    if(elfHelp.Load((char *)fileName)<0){
        printf("Fail: Load File\n");
	return;
    }
    //elfHelp.Show(elfHelp.header);
    elfHelp.ShowDependency(elfHelp.shdrDynamic);
    elfHelp.ReplaceDependency(elfHelp.shdrDynamic,from,to);
    elfHelp.Save();
}

void elf_strip(char *fileIn,char *fileOut)
{
    if((fileIn == NULL)||(fileOut == NULL)){
	printf("Usage: %s %s fileIn fileOut\n",_argv[0],CMD_STRIP);
	return;
    }
    printf("%s %s %s\n",CMD_STRIP,fileIn,fileOut);
    ELFHelp elfHelp;
    if(elfHelp.Load((char *)fileIn)<0){
        printf("Fail: Load File\n");
	return;
    }
    elfHelp.Strip();
    elfHelp.Save(fileOut);
    printf("%s done\n",fileOut);
}

void elf_addDependency(char *fileIn,char *fileOut,char *dependencyName)
{
    if((fileIn == NULL)||(fileOut == NULL)||(dependencyName == NULL)){
	printf("Usage: %s %s fileIn fileOut soName\n",_argv[0],CMD_ADDSO);
	return;
    }
    printf("%s %s %s %s\n",CMD_ADDSO,fileIn,fileOut,dependencyName);
    ELFHelp elfHelp;
    if(elfHelp.Load((char *)fileIn)<0){
        printf("Fail: Load File\n");
	return;
    }
    Elf32_Phdr *data = elfHelp.GetProgramHeaderData();
    Elf32_Phdr *code = elfHelp.GetProgramHeaderCode();
    //elfHelp.Show(data);
    unsigned int oldEndFileOffset = elfHelp.buffer.size();
    Elf32_Dyn *dynStrTab = elfHelp.GetDynamic(DT_STRTAB);
    elfHelp.Show(dynStrTab);
    // dyn does not has size info need to get size fomr ".dynstr" section
    Elf32_Shdr *shdrDynStr = elfHelp.GetSectionHeaderByName(".dynstr");
    int dynStrOffset = shdrDynStr->sh_offset;
    int dynStrSize = shdrDynStr->sh_size;
    
    Elf32_Shdr *shdrData = elfHelp.GetSectionHeaderByName(".data");
    int offset = shdrData->sh_addr - shdrData->sh_offset;
    printf("offset=%08X\n",offset);
    int numEmptyDyn = elfHelp.CountDynamicEmptyEntries();
    printf("numEmptyDyn=%d\n",numEmptyDyn);
    if(numEmptyDyn==0){
	printf("Fail: no empty dyn entry found\n");
	return;
    }
    int avaliableSpaceForDynStr = elfHelp.buffer.size() - elfHelp.GetMemorySize();
    printf("Memsize = %08X avaliableSpace=%08X\n",elfHelp.GetMemorySize(),avaliableSpaceForDynStr);    
    if(avaliableSpaceForDynStr < dynStrSize){
	printf("Fail: not enough unused space\n");
	return;
    }
    //elfHelp.Show(shdrDynStr);
    //elfHelp.Show(elfHelp.shdrStringtable);
    //elfHelp.ShowDynamic(elfHelp.shdrDynamic);
    Elf32_Dyn *dynNull = elfHelp.GetDynamic(DT_NULL);
    
    
    //copy oldstrtable to appendBuffer first, then remember relative offset that we append 
    // out string, then add our string to appendBuffer
    std::vector<unsigned char> appendBuffer;
    std::copy(elfHelp.buffer.begin() + dynStrOffset,elfHelp.buffer.begin() + dynStrOffset + dynStrSize,
	    std::back_inserter(appendBuffer));
    //logger.logHex((unsigned char *)appendBuffer.begin(),appendBuffer.size());
    int myStringOffset = appendBuffer.size();
    char *myString = dependencyName; //"libmog.so";
    std::copy(&myString[0],&myString[strlen(myString) + 1],std::back_inserter(appendBuffer));
    //logger.logHex((unsigned char *)appendBuffer.begin(),appendBuffer.size());

    
    // point dynStrTab to new location 
    // need to add offset because we add to .data which load to different offset then 
    // old str table (text)
    dynStrTab->d_un.d_val = oldEndFileOffset + offset;
    //logger.logHex((unsigned char *)(elfHelp.buffer.begin() + dynStrTab->d_un.d_val),64);

    // fix data section program header size to have more appendBuffer data
    data->p_memsz = elfHelp.buffer.size() - data->p_offset + appendBuffer.size();
    data->p_filesz = elfHelp.buffer.size() - data->p_offset + appendBuffer.size();
    
    //add DT needed at lastest DT_NULL
    //this might has a bug if no DT_NULL in so
    dynNull->d_tag = DT_NEEDED;
    dynNull->d_un.d_val = myStringOffset;
    
    //extend code sextion some how not work
    //code->p_memsz = elfHelp.buffer.size() - code->p_offset + appendBuffer.size();
    //code->p_filesz = elfHelp.buffer.size() - code->p_offset + appendBuffer.size();

    // append to buffer
    //!IMPORTANT need to do this after modify all data
    //because vector might allocate new buffer when append and all pointers that we have 
    //before will mot make sense
    std::copy(appendBuffer.begin(),appendBuffer.end(),std::back_inserter(elfHelp.buffer));
    //elfHelp.Show(data);
    
    // Save to output file
    elfHelp.Save(fileOut);
    printf("%s done\n",fileOut);

}

void elf_test(char *fileIn,char *fileOut)
{

}

void elf(char *cmd,char *param1,char *param2,char *param3)
{
    if(strcmp(cmd,CMD_DUMP)==0){
	elf_dump(param1);return;
    }
    if(strcmp(cmd,CMD_REPLACE)==0){
	elf_replace(param1,param2,param3);return;
    }
    if(strcmp(cmd,CMD_STRIP)==0){
	elf_strip(param1,param2);return;
    }
    if(strcmp(cmd,CMD_ADDSO)==0){
	elf_addDependency(param1,param2,param3);return;
    }
    
    if(strcmp(cmd,CMD_TEST)==0){
	elf_test(param1,param2);return;
    }
    
}


int main(int argc, char** argv) {
    _argv = argv;
    //printf("%d\n",argc);
    if(argc==2){
	elf(argv[1],NULL,NULL,NULL);return 0;
    }
    if(argc==3){
	elf(argv[1],argv[2],NULL,NULL);return 0;
    }
    if(argc==4){
	elf(argv[1],argv[2],argv[3],NULL);return 0;
    }
    if(argc==5){
	elf(argv[1],argv[2],argv[3],argv[4]);return 0;
    }
    printf("Usage: %s command [param...]\n",argv[0]);
    printf("\tcommand as\n");
    printf("\t%s filename\t;just dump so\n",CMD_DUMP);
    printf("\t%s filename from to\t;replace dll dependency\n",CMD_REPLACE);
    printf("\t%s filename fileout\t;strip unused info\n",CMD_STRIP);
    printf("\t%s filein fileout soName\t;add soName in dependency list\n",CMD_ADDSO);    
    
}


