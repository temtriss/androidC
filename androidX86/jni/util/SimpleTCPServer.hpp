/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   SimpleTCPServer.hpp
 * Author: kwang
 *
 * Created on December 3, 2018, 2:40 PM
 */

#ifndef SIMPLETCPSERVER_HPP
#define SIMPLETCPSERVER_HPP

class SimpleTCPServerParam {
public:
    int clientSocket;
    void *service;
};

class SimpleSocket {
public:
    int sock;
    SimpleSocket(int sock=0);
    void NonBlocking();
    int hasData();
    bool SendLine(char *);
    bool SendString(char *);
    bool printf(const char *, ...);
    std::string ReadLine();
    std::vector<std::string> ReadUntil(char *str);
    void Close();
    bool IsClosed();
};


class SimpleTCPServer {
public:
    SimpleTCPServer();
    SimpleTCPServer(const SimpleTCPServer& orig);
    void Start(int port,void *threadServiceFunc,void *param);
    virtual ~SimpleTCPServer();
private:
    int port;
    void *threadServiceFunc;
};


class SimpleTCPClient {
public:
    int port;
    SimpleSocket sock;
    SimpleTCPClient(int port);
    bool ConnectLocal();
    //void SendLine(char *);
};

#endif /* SIMPLETCPSERVER_HPP */

