-- Generated By protoc-gen-lua Do not Edit
local protobuf = protobuf
autoImport("xCmd_pb") 
local xCmd_pb = xCmd_pb
module('OverseasTaiwanCmd_pb')


OVERSEASTAIWANPARAM = protobuf.EnumDescriptor();
OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_LIKE_TOTAL_PROGRESS_CMD_ENUM = protobuf.EnumValueDescriptor();
OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_CMD_ENUM = protobuf.EnumValueDescriptor();
OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_SHARE_PROGRESS_CMD_ENUM = protobuf.EnumValueDescriptor();
OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_SHARE_REDEEM_CMD_ENUM = protobuf.EnumValueDescriptor();
OVERSEASSCENEPARAM = protobuf.EnumDescriptor();
OVERSEASSCENEPARAM_OVERSEAS_PHOTO_UPLOAD_CMD_ENUM = protobuf.EnumValueDescriptor();
OVERSEASSCENEPARAM_OVERSEAS_PHOTO_PREFIX_CMD_ENUM = protobuf.EnumValueDescriptor();
OVERSEASPHOTOGALLERYTYPE = protobuf.EnumDescriptor();
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_MIN_ENUM = protobuf.EnumValueDescriptor();
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_SCENERY_ENUM = protobuf.EnumValueDescriptor();
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_PHOTO_ENUM = protobuf.EnumValueDescriptor();
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_GUILDICON_ENUM = protobuf.EnumValueDescriptor();
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_WEDDING_ENUM = protobuf.EnumValueDescriptor();
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_MAX_ENUM = protobuf.EnumValueDescriptor();
TAIWANFBLIKEUSERREDEEMERROR = protobuf.EnumDescriptor();
TAIWANFBLIKEUSERREDEEMERROR_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_NO_ERROR_ENUM = protobuf.EnumValueDescriptor();
TAIWANFBLIKEUSERREDEEMERROR_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_NOT_UNLOCKED_ENUM = protobuf.EnumValueDescriptor();
TAIWANFBLIKEUSERREDEEMERROR_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_USER_REDEEMED_ENUM = protobuf.EnumValueDescriptor();
TAIWANFACEBOOKSHAREREDEEMERROR = protobuf.EnumDescriptor();
TAIWANFACEBOOKSHAREREDEEMERROR_TAIWAN_FACEBOOK_SHARE_REDEEM_SUCCESS_ENUM = protobuf.EnumValueDescriptor();
TAIWANFACEBOOKSHAREREDEEMERROR_TAIWAN_FACEBOOK_SHARE_REDEEM_ERROR_SHARED_ENUM = protobuf.EnumValueDescriptor();
TAIWANFBLIKEPRIZEITEM = protobuf.Descriptor();
TAIWANFBLIKEPRIZEITEM_ID_FIELD = protobuf.FieldDescriptor();
TAIWANFBLIKEPRIZEITEM_ISUNLOCKED_FIELD = protobuf.FieldDescriptor();
TAIWANFBLIKEPRIZEITEM_USERREDEEMED_FIELD = protobuf.FieldDescriptor();
TAIWANFBLIKEPROGRESSCMD = protobuf.Descriptor();
TAIWANFBLIKEPROGRESSCMD_CMD_FIELD = protobuf.FieldDescriptor();
TAIWANFBLIKEPROGRESSCMD_PARAM_FIELD = protobuf.FieldDescriptor();
TAIWANFBLIKEPROGRESSCMD_TOTALLIKES_FIELD = protobuf.FieldDescriptor();
TAIWANFBLIKEPROGRESSCMD_PRIZELIST_FIELD = protobuf.FieldDescriptor();
TAIWANFBLIKEUSERREDEEMCMD = protobuf.Descriptor();
TAIWANFBLIKEUSERREDEEMCMD_CMD_FIELD = protobuf.FieldDescriptor();
TAIWANFBLIKEUSERREDEEMCMD_PARAM_FIELD = protobuf.FieldDescriptor();
TAIWANFBLIKEUSERREDEEMCMD_PRIZEID_FIELD = protobuf.FieldDescriptor();
TAIWANFBLIKEUSERREDEEMCMD_ERR_FIELD = protobuf.FieldDescriptor();
OVERSEASPHOTOUPLOADFIELD = protobuf.Descriptor();
OVERSEASPHOTOUPLOADFIELD_NAME_FIELD = protobuf.FieldDescriptor();
OVERSEASPHOTOUPLOADFIELD_VALUE_FIELD = protobuf.FieldDescriptor();
OVERSEASPHOTOUPLOADCMD = protobuf.Descriptor();
OVERSEASPHOTOUPLOADCMD_CMD_FIELD = protobuf.FieldDescriptor();
OVERSEASPHOTOUPLOADCMD_PARAM_FIELD = protobuf.FieldDescriptor();
OVERSEASPHOTOUPLOADCMD_TYPE_FIELD = protobuf.FieldDescriptor();
OVERSEASPHOTOUPLOADCMD_PHOTOID_FIELD = protobuf.FieldDescriptor();
OVERSEASPHOTOUPLOADCMD_FIELDS_FIELD = protobuf.FieldDescriptor();
OVERSEASPHOTOUPLOADCMD_PATH_FIELD = protobuf.FieldDescriptor();
OVERSEASPHOTOPATHPREFIXCMD = protobuf.Descriptor();
OVERSEASPHOTOPATHPREFIXCMD_CMD_FIELD = protobuf.FieldDescriptor();
OVERSEASPHOTOPATHPREFIXCMD_PARAM_FIELD = protobuf.FieldDescriptor();
OVERSEASPHOTOPATHPREFIXCMD_TYPE_FIELD = protobuf.FieldDescriptor();
OVERSEASPHOTOPATHPREFIXCMD_PATH_FIELD = protobuf.FieldDescriptor();
TAIWANFBSHAREPROGRESSCMD = protobuf.Descriptor();
TAIWANFBSHAREPROGRESSCMD_CMD_FIELD = protobuf.FieldDescriptor();
TAIWANFBSHAREPROGRESSCMD_PARAM_FIELD = protobuf.FieldDescriptor();
TAIWANFBSHAREPROGRESSCMD_CANSHARE_FIELD = protobuf.FieldDescriptor();
TAIWANFBSHAREREDEEMCMD = protobuf.Descriptor();
TAIWANFBSHAREREDEEMCMD_CMD_FIELD = protobuf.FieldDescriptor();
TAIWANFBSHAREREDEEMCMD_PARAM_FIELD = protobuf.FieldDescriptor();
TAIWANFBSHAREREDEEMCMD_ERR_FIELD = protobuf.FieldDescriptor();

OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_LIKE_TOTAL_PROGRESS_CMD_ENUM.name = "TAIWAN_FACEBOOK_LIKE_TOTAL_PROGRESS_CMD"
OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_LIKE_TOTAL_PROGRESS_CMD_ENUM.index = 0
OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_LIKE_TOTAL_PROGRESS_CMD_ENUM.number = 1
OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_CMD_ENUM.name = "TAIWAN_FACEBOOK_LIKE_USER_REDEEM_CMD"
OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_CMD_ENUM.index = 1
OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_CMD_ENUM.number = 2
OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_SHARE_PROGRESS_CMD_ENUM.name = "TAIWAN_FACEBOOK_SHARE_PROGRESS_CMD"
OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_SHARE_PROGRESS_CMD_ENUM.index = 2
OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_SHARE_PROGRESS_CMD_ENUM.number = 10
OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_SHARE_REDEEM_CMD_ENUM.name = "TAIWAN_FACEBOOK_SHARE_REDEEM_CMD"
OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_SHARE_REDEEM_CMD_ENUM.index = 3
OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_SHARE_REDEEM_CMD_ENUM.number = 11
OVERSEASTAIWANPARAM.name = "OverseasTaiwanParam"
OVERSEASTAIWANPARAM.full_name = ".Cmd.OverseasTaiwanParam"
OVERSEASTAIWANPARAM.values = {OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_LIKE_TOTAL_PROGRESS_CMD_ENUM,OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_CMD_ENUM,OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_SHARE_PROGRESS_CMD_ENUM,OVERSEASTAIWANPARAM_TAIWAN_FACEBOOK_SHARE_REDEEM_CMD_ENUM}
OVERSEASSCENEPARAM_OVERSEAS_PHOTO_UPLOAD_CMD_ENUM.name = "OVERSEAS_PHOTO_UPLOAD_CMD"
OVERSEASSCENEPARAM_OVERSEAS_PHOTO_UPLOAD_CMD_ENUM.index = 0
OVERSEASSCENEPARAM_OVERSEAS_PHOTO_UPLOAD_CMD_ENUM.number = 1
OVERSEASSCENEPARAM_OVERSEAS_PHOTO_PREFIX_CMD_ENUM.name = "OVERSEAS_PHOTO_PREFIX_CMD"
OVERSEASSCENEPARAM_OVERSEAS_PHOTO_PREFIX_CMD_ENUM.index = 1
OVERSEASSCENEPARAM_OVERSEAS_PHOTO_PREFIX_CMD_ENUM.number = 2
OVERSEASSCENEPARAM.name = "OverseasSceneParam"
OVERSEASSCENEPARAM.full_name = ".Cmd.OverseasSceneParam"
OVERSEASSCENEPARAM.values = {OVERSEASSCENEPARAM_OVERSEAS_PHOTO_UPLOAD_CMD_ENUM,OVERSEASSCENEPARAM_OVERSEAS_PHOTO_PREFIX_CMD_ENUM}
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_MIN_ENUM.name = "ENUM_GALLERY_TYPE_MIN"
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_MIN_ENUM.index = 0
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_MIN_ENUM.number = 0
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_SCENERY_ENUM.name = "ENUM_GALLERY_TYPE_SCENERY"
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_SCENERY_ENUM.index = 1
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_SCENERY_ENUM.number = 1
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_PHOTO_ENUM.name = "ENUM_GALLERY_TYPE_PHOTO"
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_PHOTO_ENUM.index = 2
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_PHOTO_ENUM.number = 2
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_GUILDICON_ENUM.name = "ENUM_GALLERY_TYPE_GUILDICON"
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_GUILDICON_ENUM.index = 3
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_GUILDICON_ENUM.number = 3
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_WEDDING_ENUM.name = "ENUM_GALLERY_TYPE_WEDDING"
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_WEDDING_ENUM.index = 4
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_WEDDING_ENUM.number = 4
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_MAX_ENUM.name = "ENUM_GALLERY_TYPE_MAX"
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_MAX_ENUM.index = 5
OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_MAX_ENUM.number = 5
OVERSEASPHOTOGALLERYTYPE.name = "OverseasPhotoGalleryType"
OVERSEASPHOTOGALLERYTYPE.full_name = ".Cmd.OverseasPhotoGalleryType"
OVERSEASPHOTOGALLERYTYPE.values = {OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_MIN_ENUM,OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_SCENERY_ENUM,OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_PHOTO_ENUM,OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_GUILDICON_ENUM,OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_WEDDING_ENUM,OVERSEASPHOTOGALLERYTYPE_ENUM_GALLERY_TYPE_MAX_ENUM}
TAIWANFBLIKEUSERREDEEMERROR_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_NO_ERROR_ENUM.name = "TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_NO_ERROR"
TAIWANFBLIKEUSERREDEEMERROR_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_NO_ERROR_ENUM.index = 0
TAIWANFBLIKEUSERREDEEMERROR_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_NO_ERROR_ENUM.number = 0
TAIWANFBLIKEUSERREDEEMERROR_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_NOT_UNLOCKED_ENUM.name = "TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_NOT_UNLOCKED"
TAIWANFBLIKEUSERREDEEMERROR_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_NOT_UNLOCKED_ENUM.index = 1
TAIWANFBLIKEUSERREDEEMERROR_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_NOT_UNLOCKED_ENUM.number = 1
TAIWANFBLIKEUSERREDEEMERROR_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_USER_REDEEMED_ENUM.name = "TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_USER_REDEEMED"
TAIWANFBLIKEUSERREDEEMERROR_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_USER_REDEEMED_ENUM.index = 2
TAIWANFBLIKEUSERREDEEMERROR_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_USER_REDEEMED_ENUM.number = 2
TAIWANFBLIKEUSERREDEEMERROR.name = "TaiwanFbLikeUserRedeemError"
TAIWANFBLIKEUSERREDEEMERROR.full_name = ".Cmd.TaiwanFbLikeUserRedeemError"
TAIWANFBLIKEUSERREDEEMERROR.values = {TAIWANFBLIKEUSERREDEEMERROR_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_NO_ERROR_ENUM,TAIWANFBLIKEUSERREDEEMERROR_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_NOT_UNLOCKED_ENUM,TAIWANFBLIKEUSERREDEEMERROR_TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_USER_REDEEMED_ENUM}
TAIWANFACEBOOKSHAREREDEEMERROR_TAIWAN_FACEBOOK_SHARE_REDEEM_SUCCESS_ENUM.name = "TAIWAN_FACEBOOK_SHARE_REDEEM_SUCCESS"
TAIWANFACEBOOKSHAREREDEEMERROR_TAIWAN_FACEBOOK_SHARE_REDEEM_SUCCESS_ENUM.index = 0
TAIWANFACEBOOKSHAREREDEEMERROR_TAIWAN_FACEBOOK_SHARE_REDEEM_SUCCESS_ENUM.number = 0
TAIWANFACEBOOKSHAREREDEEMERROR_TAIWAN_FACEBOOK_SHARE_REDEEM_ERROR_SHARED_ENUM.name = "TAIWAN_FACEBOOK_SHARE_REDEEM_ERROR_SHARED"
TAIWANFACEBOOKSHAREREDEEMERROR_TAIWAN_FACEBOOK_SHARE_REDEEM_ERROR_SHARED_ENUM.index = 1
TAIWANFACEBOOKSHAREREDEEMERROR_TAIWAN_FACEBOOK_SHARE_REDEEM_ERROR_SHARED_ENUM.number = 1
TAIWANFACEBOOKSHAREREDEEMERROR.name = "TaiwanFaceBookShareRedeemError"
TAIWANFACEBOOKSHAREREDEEMERROR.full_name = ".Cmd.TaiwanFaceBookShareRedeemError"
TAIWANFACEBOOKSHAREREDEEMERROR.values = {TAIWANFACEBOOKSHAREREDEEMERROR_TAIWAN_FACEBOOK_SHARE_REDEEM_SUCCESS_ENUM,TAIWANFACEBOOKSHAREREDEEMERROR_TAIWAN_FACEBOOK_SHARE_REDEEM_ERROR_SHARED_ENUM}
TAIWANFBLIKEPRIZEITEM_ID_FIELD.name = "id"
TAIWANFBLIKEPRIZEITEM_ID_FIELD.full_name = ".Cmd.TaiwanFbLikePrizeItem.id"
TAIWANFBLIKEPRIZEITEM_ID_FIELD.number = 1
TAIWANFBLIKEPRIZEITEM_ID_FIELD.index = 0
TAIWANFBLIKEPRIZEITEM_ID_FIELD.label = 1
TAIWANFBLIKEPRIZEITEM_ID_FIELD.has_default_value = false
TAIWANFBLIKEPRIZEITEM_ID_FIELD.default_value = 0
TAIWANFBLIKEPRIZEITEM_ID_FIELD.type = 13
TAIWANFBLIKEPRIZEITEM_ID_FIELD.cpp_type = 3

TAIWANFBLIKEPRIZEITEM_ISUNLOCKED_FIELD.name = "isUnlocked"
TAIWANFBLIKEPRIZEITEM_ISUNLOCKED_FIELD.full_name = ".Cmd.TaiwanFbLikePrizeItem.isUnlocked"
TAIWANFBLIKEPRIZEITEM_ISUNLOCKED_FIELD.number = 2
TAIWANFBLIKEPRIZEITEM_ISUNLOCKED_FIELD.index = 1
TAIWANFBLIKEPRIZEITEM_ISUNLOCKED_FIELD.label = 1
TAIWANFBLIKEPRIZEITEM_ISUNLOCKED_FIELD.has_default_value = true
TAIWANFBLIKEPRIZEITEM_ISUNLOCKED_FIELD.default_value = false
TAIWANFBLIKEPRIZEITEM_ISUNLOCKED_FIELD.type = 8
TAIWANFBLIKEPRIZEITEM_ISUNLOCKED_FIELD.cpp_type = 7

TAIWANFBLIKEPRIZEITEM_USERREDEEMED_FIELD.name = "userRedeemed"
TAIWANFBLIKEPRIZEITEM_USERREDEEMED_FIELD.full_name = ".Cmd.TaiwanFbLikePrizeItem.userRedeemed"
TAIWANFBLIKEPRIZEITEM_USERREDEEMED_FIELD.number = 3
TAIWANFBLIKEPRIZEITEM_USERREDEEMED_FIELD.index = 2
TAIWANFBLIKEPRIZEITEM_USERREDEEMED_FIELD.label = 1
TAIWANFBLIKEPRIZEITEM_USERREDEEMED_FIELD.has_default_value = true
TAIWANFBLIKEPRIZEITEM_USERREDEEMED_FIELD.default_value = false
TAIWANFBLIKEPRIZEITEM_USERREDEEMED_FIELD.type = 8
TAIWANFBLIKEPRIZEITEM_USERREDEEMED_FIELD.cpp_type = 7

TAIWANFBLIKEPRIZEITEM.name = "TaiwanFbLikePrizeItem"
TAIWANFBLIKEPRIZEITEM.full_name = ".Cmd.TaiwanFbLikePrizeItem"
TAIWANFBLIKEPRIZEITEM.nested_types = {}
TAIWANFBLIKEPRIZEITEM.enum_types = {}
TAIWANFBLIKEPRIZEITEM.fields = {TAIWANFBLIKEPRIZEITEM_ID_FIELD, TAIWANFBLIKEPRIZEITEM_ISUNLOCKED_FIELD, TAIWANFBLIKEPRIZEITEM_USERREDEEMED_FIELD}
TAIWANFBLIKEPRIZEITEM.is_extendable = false
TAIWANFBLIKEPRIZEITEM.extensions = {}
TAIWANFBLIKEPROGRESSCMD_CMD_FIELD.name = "cmd"
TAIWANFBLIKEPROGRESSCMD_CMD_FIELD.full_name = ".Cmd.TaiwanFbLikeProgressCmd.cmd"
TAIWANFBLIKEPROGRESSCMD_CMD_FIELD.number = 1
TAIWANFBLIKEPROGRESSCMD_CMD_FIELD.index = 0
TAIWANFBLIKEPROGRESSCMD_CMD_FIELD.label = 1
TAIWANFBLIKEPROGRESSCMD_CMD_FIELD.has_default_value = true
TAIWANFBLIKEPROGRESSCMD_CMD_FIELD.default_value = 80
TAIWANFBLIKEPROGRESSCMD_CMD_FIELD.enum_type = XCMD_PB_COMMAND
TAIWANFBLIKEPROGRESSCMD_CMD_FIELD.type = 14
TAIWANFBLIKEPROGRESSCMD_CMD_FIELD.cpp_type = 8

TAIWANFBLIKEPROGRESSCMD_PARAM_FIELD.name = "param"
TAIWANFBLIKEPROGRESSCMD_PARAM_FIELD.full_name = ".Cmd.TaiwanFbLikeProgressCmd.param"
TAIWANFBLIKEPROGRESSCMD_PARAM_FIELD.number = 2
TAIWANFBLIKEPROGRESSCMD_PARAM_FIELD.index = 1
TAIWANFBLIKEPROGRESSCMD_PARAM_FIELD.label = 1
TAIWANFBLIKEPROGRESSCMD_PARAM_FIELD.has_default_value = true
TAIWANFBLIKEPROGRESSCMD_PARAM_FIELD.default_value = 1
TAIWANFBLIKEPROGRESSCMD_PARAM_FIELD.enum_type = OVERSEASTAIWANPARAM
TAIWANFBLIKEPROGRESSCMD_PARAM_FIELD.type = 14
TAIWANFBLIKEPROGRESSCMD_PARAM_FIELD.cpp_type = 8

TAIWANFBLIKEPROGRESSCMD_TOTALLIKES_FIELD.name = "totalLikes"
TAIWANFBLIKEPROGRESSCMD_TOTALLIKES_FIELD.full_name = ".Cmd.TaiwanFbLikeProgressCmd.totalLikes"
TAIWANFBLIKEPROGRESSCMD_TOTALLIKES_FIELD.number = 3
TAIWANFBLIKEPROGRESSCMD_TOTALLIKES_FIELD.index = 2
TAIWANFBLIKEPROGRESSCMD_TOTALLIKES_FIELD.label = 1
TAIWANFBLIKEPROGRESSCMD_TOTALLIKES_FIELD.has_default_value = false
TAIWANFBLIKEPROGRESSCMD_TOTALLIKES_FIELD.default_value = 0
TAIWANFBLIKEPROGRESSCMD_TOTALLIKES_FIELD.type = 13
TAIWANFBLIKEPROGRESSCMD_TOTALLIKES_FIELD.cpp_type = 3

TAIWANFBLIKEPROGRESSCMD_PRIZELIST_FIELD.name = "prizeList"
TAIWANFBLIKEPROGRESSCMD_PRIZELIST_FIELD.full_name = ".Cmd.TaiwanFbLikeProgressCmd.prizeList"
TAIWANFBLIKEPROGRESSCMD_PRIZELIST_FIELD.number = 4
TAIWANFBLIKEPROGRESSCMD_PRIZELIST_FIELD.index = 3
TAIWANFBLIKEPROGRESSCMD_PRIZELIST_FIELD.label = 3
TAIWANFBLIKEPROGRESSCMD_PRIZELIST_FIELD.has_default_value = false
TAIWANFBLIKEPROGRESSCMD_PRIZELIST_FIELD.default_value = {}
TAIWANFBLIKEPROGRESSCMD_PRIZELIST_FIELD.message_type = TAIWANFBLIKEPRIZEITEM
TAIWANFBLIKEPROGRESSCMD_PRIZELIST_FIELD.type = 11
TAIWANFBLIKEPROGRESSCMD_PRIZELIST_FIELD.cpp_type = 10

TAIWANFBLIKEPROGRESSCMD.name = "TaiwanFbLikeProgressCmd"
TAIWANFBLIKEPROGRESSCMD.full_name = ".Cmd.TaiwanFbLikeProgressCmd"
TAIWANFBLIKEPROGRESSCMD.nested_types = {}
TAIWANFBLIKEPROGRESSCMD.enum_types = {}
TAIWANFBLIKEPROGRESSCMD.fields = {TAIWANFBLIKEPROGRESSCMD_CMD_FIELD, TAIWANFBLIKEPROGRESSCMD_PARAM_FIELD, TAIWANFBLIKEPROGRESSCMD_TOTALLIKES_FIELD, TAIWANFBLIKEPROGRESSCMD_PRIZELIST_FIELD}
TAIWANFBLIKEPROGRESSCMD.is_extendable = false
TAIWANFBLIKEPROGRESSCMD.extensions = {}
TAIWANFBLIKEUSERREDEEMCMD_CMD_FIELD.name = "cmd"
TAIWANFBLIKEUSERREDEEMCMD_CMD_FIELD.full_name = ".Cmd.TaiwanFbLikeUserRedeemCmd.cmd"
TAIWANFBLIKEUSERREDEEMCMD_CMD_FIELD.number = 1
TAIWANFBLIKEUSERREDEEMCMD_CMD_FIELD.index = 0
TAIWANFBLIKEUSERREDEEMCMD_CMD_FIELD.label = 1
TAIWANFBLIKEUSERREDEEMCMD_CMD_FIELD.has_default_value = true
TAIWANFBLIKEUSERREDEEMCMD_CMD_FIELD.default_value = 80
TAIWANFBLIKEUSERREDEEMCMD_CMD_FIELD.enum_type = XCMD_PB_COMMAND
TAIWANFBLIKEUSERREDEEMCMD_CMD_FIELD.type = 14
TAIWANFBLIKEUSERREDEEMCMD_CMD_FIELD.cpp_type = 8

TAIWANFBLIKEUSERREDEEMCMD_PARAM_FIELD.name = "param"
TAIWANFBLIKEUSERREDEEMCMD_PARAM_FIELD.full_name = ".Cmd.TaiwanFbLikeUserRedeemCmd.param"
TAIWANFBLIKEUSERREDEEMCMD_PARAM_FIELD.number = 2
TAIWANFBLIKEUSERREDEEMCMD_PARAM_FIELD.index = 1
TAIWANFBLIKEUSERREDEEMCMD_PARAM_FIELD.label = 1
TAIWANFBLIKEUSERREDEEMCMD_PARAM_FIELD.has_default_value = true
TAIWANFBLIKEUSERREDEEMCMD_PARAM_FIELD.default_value = 2
TAIWANFBLIKEUSERREDEEMCMD_PARAM_FIELD.enum_type = OVERSEASTAIWANPARAM
TAIWANFBLIKEUSERREDEEMCMD_PARAM_FIELD.type = 14
TAIWANFBLIKEUSERREDEEMCMD_PARAM_FIELD.cpp_type = 8

TAIWANFBLIKEUSERREDEEMCMD_PRIZEID_FIELD.name = "prizeId"
TAIWANFBLIKEUSERREDEEMCMD_PRIZEID_FIELD.full_name = ".Cmd.TaiwanFbLikeUserRedeemCmd.prizeId"
TAIWANFBLIKEUSERREDEEMCMD_PRIZEID_FIELD.number = 3
TAIWANFBLIKEUSERREDEEMCMD_PRIZEID_FIELD.index = 2
TAIWANFBLIKEUSERREDEEMCMD_PRIZEID_FIELD.label = 2
TAIWANFBLIKEUSERREDEEMCMD_PRIZEID_FIELD.has_default_value = false
TAIWANFBLIKEUSERREDEEMCMD_PRIZEID_FIELD.default_value = 0
TAIWANFBLIKEUSERREDEEMCMD_PRIZEID_FIELD.type = 13
TAIWANFBLIKEUSERREDEEMCMD_PRIZEID_FIELD.cpp_type = 3

TAIWANFBLIKEUSERREDEEMCMD_ERR_FIELD.name = "err"
TAIWANFBLIKEUSERREDEEMCMD_ERR_FIELD.full_name = ".Cmd.TaiwanFbLikeUserRedeemCmd.err"
TAIWANFBLIKEUSERREDEEMCMD_ERR_FIELD.number = 4
TAIWANFBLIKEUSERREDEEMCMD_ERR_FIELD.index = 3
TAIWANFBLIKEUSERREDEEMCMD_ERR_FIELD.label = 1
TAIWANFBLIKEUSERREDEEMCMD_ERR_FIELD.has_default_value = true
TAIWANFBLIKEUSERREDEEMCMD_ERR_FIELD.default_value = 0
TAIWANFBLIKEUSERREDEEMCMD_ERR_FIELD.enum_type = TAIWANFBLIKEUSERREDEEMERROR
TAIWANFBLIKEUSERREDEEMCMD_ERR_FIELD.type = 14
TAIWANFBLIKEUSERREDEEMCMD_ERR_FIELD.cpp_type = 8

TAIWANFBLIKEUSERREDEEMCMD.name = "TaiwanFbLikeUserRedeemCmd"
TAIWANFBLIKEUSERREDEEMCMD.full_name = ".Cmd.TaiwanFbLikeUserRedeemCmd"
TAIWANFBLIKEUSERREDEEMCMD.nested_types = {}
TAIWANFBLIKEUSERREDEEMCMD.enum_types = {}
TAIWANFBLIKEUSERREDEEMCMD.fields = {TAIWANFBLIKEUSERREDEEMCMD_CMD_FIELD, TAIWANFBLIKEUSERREDEEMCMD_PARAM_FIELD, TAIWANFBLIKEUSERREDEEMCMD_PRIZEID_FIELD, TAIWANFBLIKEUSERREDEEMCMD_ERR_FIELD}
TAIWANFBLIKEUSERREDEEMCMD.is_extendable = false
TAIWANFBLIKEUSERREDEEMCMD.extensions = {}
OVERSEASPHOTOUPLOADFIELD_NAME_FIELD.name = "name"
OVERSEASPHOTOUPLOADFIELD_NAME_FIELD.full_name = ".Cmd.OverseasPhotoUploadField.name"
OVERSEASPHOTOUPLOADFIELD_NAME_FIELD.number = 1
OVERSEASPHOTOUPLOADFIELD_NAME_FIELD.index = 0
OVERSEASPHOTOUPLOADFIELD_NAME_FIELD.label = 2
OVERSEASPHOTOUPLOADFIELD_NAME_FIELD.has_default_value = false
OVERSEASPHOTOUPLOADFIELD_NAME_FIELD.default_value = ""
OVERSEASPHOTOUPLOADFIELD_NAME_FIELD.type = 9
OVERSEASPHOTOUPLOADFIELD_NAME_FIELD.cpp_type = 9

OVERSEASPHOTOUPLOADFIELD_VALUE_FIELD.name = "value"
OVERSEASPHOTOUPLOADFIELD_VALUE_FIELD.full_name = ".Cmd.OverseasPhotoUploadField.value"
OVERSEASPHOTOUPLOADFIELD_VALUE_FIELD.number = 2
OVERSEASPHOTOUPLOADFIELD_VALUE_FIELD.index = 1
OVERSEASPHOTOUPLOADFIELD_VALUE_FIELD.label = 2
OVERSEASPHOTOUPLOADFIELD_VALUE_FIELD.has_default_value = false
OVERSEASPHOTOUPLOADFIELD_VALUE_FIELD.default_value = ""
OVERSEASPHOTOUPLOADFIELD_VALUE_FIELD.type = 9
OVERSEASPHOTOUPLOADFIELD_VALUE_FIELD.cpp_type = 9

OVERSEASPHOTOUPLOADFIELD.name = "OverseasPhotoUploadField"
OVERSEASPHOTOUPLOADFIELD.full_name = ".Cmd.OverseasPhotoUploadField"
OVERSEASPHOTOUPLOADFIELD.nested_types = {}
OVERSEASPHOTOUPLOADFIELD.enum_types = {}
OVERSEASPHOTOUPLOADFIELD.fields = {OVERSEASPHOTOUPLOADFIELD_NAME_FIELD, OVERSEASPHOTOUPLOADFIELD_VALUE_FIELD}
OVERSEASPHOTOUPLOADFIELD.is_extendable = false
OVERSEASPHOTOUPLOADFIELD.extensions = {}
OVERSEASPHOTOUPLOADCMD_CMD_FIELD.name = "cmd"
OVERSEASPHOTOUPLOADCMD_CMD_FIELD.full_name = ".Cmd.OverseasPhotoUploadCmd.cmd"
OVERSEASPHOTOUPLOADCMD_CMD_FIELD.number = 1
OVERSEASPHOTOUPLOADCMD_CMD_FIELD.index = 0
OVERSEASPHOTOUPLOADCMD_CMD_FIELD.label = 1
OVERSEASPHOTOUPLOADCMD_CMD_FIELD.has_default_value = true
OVERSEASPHOTOUPLOADCMD_CMD_FIELD.default_value = 81
OVERSEASPHOTOUPLOADCMD_CMD_FIELD.enum_type = XCMD_PB_COMMAND
OVERSEASPHOTOUPLOADCMD_CMD_FIELD.type = 14
OVERSEASPHOTOUPLOADCMD_CMD_FIELD.cpp_type = 8

OVERSEASPHOTOUPLOADCMD_PARAM_FIELD.name = "param"
OVERSEASPHOTOUPLOADCMD_PARAM_FIELD.full_name = ".Cmd.OverseasPhotoUploadCmd.param"
OVERSEASPHOTOUPLOADCMD_PARAM_FIELD.number = 2
OVERSEASPHOTOUPLOADCMD_PARAM_FIELD.index = 1
OVERSEASPHOTOUPLOADCMD_PARAM_FIELD.label = 1
OVERSEASPHOTOUPLOADCMD_PARAM_FIELD.has_default_value = true
OVERSEASPHOTOUPLOADCMD_PARAM_FIELD.default_value = 1
OVERSEASPHOTOUPLOADCMD_PARAM_FIELD.enum_type = OVERSEASSCENEPARAM
OVERSEASPHOTOUPLOADCMD_PARAM_FIELD.type = 14
OVERSEASPHOTOUPLOADCMD_PARAM_FIELD.cpp_type = 8

OVERSEASPHOTOUPLOADCMD_TYPE_FIELD.name = "type"
OVERSEASPHOTOUPLOADCMD_TYPE_FIELD.full_name = ".Cmd.OverseasPhotoUploadCmd.type"
OVERSEASPHOTOUPLOADCMD_TYPE_FIELD.number = 3
OVERSEASPHOTOUPLOADCMD_TYPE_FIELD.index = 2
OVERSEASPHOTOUPLOADCMD_TYPE_FIELD.label = 2
OVERSEASPHOTOUPLOADCMD_TYPE_FIELD.has_default_value = false
OVERSEASPHOTOUPLOADCMD_TYPE_FIELD.default_value = nil
OVERSEASPHOTOUPLOADCMD_TYPE_FIELD.enum_type = OVERSEASPHOTOGALLERYTYPE
OVERSEASPHOTOUPLOADCMD_TYPE_FIELD.type = 14
OVERSEASPHOTOUPLOADCMD_TYPE_FIELD.cpp_type = 8

OVERSEASPHOTOUPLOADCMD_PHOTOID_FIELD.name = "photoId"
OVERSEASPHOTOUPLOADCMD_PHOTOID_FIELD.full_name = ".Cmd.OverseasPhotoUploadCmd.photoId"
OVERSEASPHOTOUPLOADCMD_PHOTOID_FIELD.number = 4
OVERSEASPHOTOUPLOADCMD_PHOTOID_FIELD.index = 3
OVERSEASPHOTOUPLOADCMD_PHOTOID_FIELD.label = 2
OVERSEASPHOTOUPLOADCMD_PHOTOID_FIELD.has_default_value = false
OVERSEASPHOTOUPLOADCMD_PHOTOID_FIELD.default_value = 0
OVERSEASPHOTOUPLOADCMD_PHOTOID_FIELD.type = 13
OVERSEASPHOTOUPLOADCMD_PHOTOID_FIELD.cpp_type = 3

OVERSEASPHOTOUPLOADCMD_FIELDS_FIELD.name = "fields"
OVERSEASPHOTOUPLOADCMD_FIELDS_FIELD.full_name = ".Cmd.OverseasPhotoUploadCmd.fields"
OVERSEASPHOTOUPLOADCMD_FIELDS_FIELD.number = 6
OVERSEASPHOTOUPLOADCMD_FIELDS_FIELD.index = 4
OVERSEASPHOTOUPLOADCMD_FIELDS_FIELD.label = 3
OVERSEASPHOTOUPLOADCMD_FIELDS_FIELD.has_default_value = false
OVERSEASPHOTOUPLOADCMD_FIELDS_FIELD.default_value = {}
OVERSEASPHOTOUPLOADCMD_FIELDS_FIELD.message_type = OVERSEASPHOTOUPLOADFIELD
OVERSEASPHOTOUPLOADCMD_FIELDS_FIELD.type = 11
OVERSEASPHOTOUPLOADCMD_FIELDS_FIELD.cpp_type = 10

OVERSEASPHOTOUPLOADCMD_PATH_FIELD.name = "path"
OVERSEASPHOTOUPLOADCMD_PATH_FIELD.full_name = ".Cmd.OverseasPhotoUploadCmd.path"
OVERSEASPHOTOUPLOADCMD_PATH_FIELD.number = 5
OVERSEASPHOTOUPLOADCMD_PATH_FIELD.index = 5
OVERSEASPHOTOUPLOADCMD_PATH_FIELD.label = 1
OVERSEASPHOTOUPLOADCMD_PATH_FIELD.has_default_value = false
OVERSEASPHOTOUPLOADCMD_PATH_FIELD.default_value = ""
OVERSEASPHOTOUPLOADCMD_PATH_FIELD.type = 9
OVERSEASPHOTOUPLOADCMD_PATH_FIELD.cpp_type = 9

OVERSEASPHOTOUPLOADCMD.name = "OverseasPhotoUploadCmd"
OVERSEASPHOTOUPLOADCMD.full_name = ".Cmd.OverseasPhotoUploadCmd"
OVERSEASPHOTOUPLOADCMD.nested_types = {}
OVERSEASPHOTOUPLOADCMD.enum_types = {}
OVERSEASPHOTOUPLOADCMD.fields = {OVERSEASPHOTOUPLOADCMD_CMD_FIELD, OVERSEASPHOTOUPLOADCMD_PARAM_FIELD, OVERSEASPHOTOUPLOADCMD_TYPE_FIELD, OVERSEASPHOTOUPLOADCMD_PHOTOID_FIELD, OVERSEASPHOTOUPLOADCMD_FIELDS_FIELD, OVERSEASPHOTOUPLOADCMD_PATH_FIELD}
OVERSEASPHOTOUPLOADCMD.is_extendable = false
OVERSEASPHOTOUPLOADCMD.extensions = {}
OVERSEASPHOTOPATHPREFIXCMD_CMD_FIELD.name = "cmd"
OVERSEASPHOTOPATHPREFIXCMD_CMD_FIELD.full_name = ".Cmd.OverseasPhotoPathPrefixCmd.cmd"
OVERSEASPHOTOPATHPREFIXCMD_CMD_FIELD.number = 1
OVERSEASPHOTOPATHPREFIXCMD_CMD_FIELD.index = 0
OVERSEASPHOTOPATHPREFIXCMD_CMD_FIELD.label = 1
OVERSEASPHOTOPATHPREFIXCMD_CMD_FIELD.has_default_value = true
OVERSEASPHOTOPATHPREFIXCMD_CMD_FIELD.default_value = 81
OVERSEASPHOTOPATHPREFIXCMD_CMD_FIELD.enum_type = XCMD_PB_COMMAND
OVERSEASPHOTOPATHPREFIXCMD_CMD_FIELD.type = 14
OVERSEASPHOTOPATHPREFIXCMD_CMD_FIELD.cpp_type = 8

OVERSEASPHOTOPATHPREFIXCMD_PARAM_FIELD.name = "param"
OVERSEASPHOTOPATHPREFIXCMD_PARAM_FIELD.full_name = ".Cmd.OverseasPhotoPathPrefixCmd.param"
OVERSEASPHOTOPATHPREFIXCMD_PARAM_FIELD.number = 2
OVERSEASPHOTOPATHPREFIXCMD_PARAM_FIELD.index = 1
OVERSEASPHOTOPATHPREFIXCMD_PARAM_FIELD.label = 1
OVERSEASPHOTOPATHPREFIXCMD_PARAM_FIELD.has_default_value = true
OVERSEASPHOTOPATHPREFIXCMD_PARAM_FIELD.default_value = 2
OVERSEASPHOTOPATHPREFIXCMD_PARAM_FIELD.enum_type = OVERSEASSCENEPARAM
OVERSEASPHOTOPATHPREFIXCMD_PARAM_FIELD.type = 14
OVERSEASPHOTOPATHPREFIXCMD_PARAM_FIELD.cpp_type = 8

OVERSEASPHOTOPATHPREFIXCMD_TYPE_FIELD.name = "type"
OVERSEASPHOTOPATHPREFIXCMD_TYPE_FIELD.full_name = ".Cmd.OverseasPhotoPathPrefixCmd.type"
OVERSEASPHOTOPATHPREFIXCMD_TYPE_FIELD.number = 3
OVERSEASPHOTOPATHPREFIXCMD_TYPE_FIELD.index = 2
OVERSEASPHOTOPATHPREFIXCMD_TYPE_FIELD.label = 2
OVERSEASPHOTOPATHPREFIXCMD_TYPE_FIELD.has_default_value = false
OVERSEASPHOTOPATHPREFIXCMD_TYPE_FIELD.default_value = nil
OVERSEASPHOTOPATHPREFIXCMD_TYPE_FIELD.enum_type = OVERSEASPHOTOGALLERYTYPE
OVERSEASPHOTOPATHPREFIXCMD_TYPE_FIELD.type = 14
OVERSEASPHOTOPATHPREFIXCMD_TYPE_FIELD.cpp_type = 8

OVERSEASPHOTOPATHPREFIXCMD_PATH_FIELD.name = "path"
OVERSEASPHOTOPATHPREFIXCMD_PATH_FIELD.full_name = ".Cmd.OverseasPhotoPathPrefixCmd.path"
OVERSEASPHOTOPATHPREFIXCMD_PATH_FIELD.number = 4
OVERSEASPHOTOPATHPREFIXCMD_PATH_FIELD.index = 3
OVERSEASPHOTOPATHPREFIXCMD_PATH_FIELD.label = 1
OVERSEASPHOTOPATHPREFIXCMD_PATH_FIELD.has_default_value = false
OVERSEASPHOTOPATHPREFIXCMD_PATH_FIELD.default_value = ""
OVERSEASPHOTOPATHPREFIXCMD_PATH_FIELD.type = 9
OVERSEASPHOTOPATHPREFIXCMD_PATH_FIELD.cpp_type = 9

OVERSEASPHOTOPATHPREFIXCMD.name = "OverseasPhotoPathPrefixCmd"
OVERSEASPHOTOPATHPREFIXCMD.full_name = ".Cmd.OverseasPhotoPathPrefixCmd"
OVERSEASPHOTOPATHPREFIXCMD.nested_types = {}
OVERSEASPHOTOPATHPREFIXCMD.enum_types = {}
OVERSEASPHOTOPATHPREFIXCMD.fields = {OVERSEASPHOTOPATHPREFIXCMD_CMD_FIELD, OVERSEASPHOTOPATHPREFIXCMD_PARAM_FIELD, OVERSEASPHOTOPATHPREFIXCMD_TYPE_FIELD, OVERSEASPHOTOPATHPREFIXCMD_PATH_FIELD}
OVERSEASPHOTOPATHPREFIXCMD.is_extendable = false
OVERSEASPHOTOPATHPREFIXCMD.extensions = {}
TAIWANFBSHAREPROGRESSCMD_CMD_FIELD.name = "cmd"
TAIWANFBSHAREPROGRESSCMD_CMD_FIELD.full_name = ".Cmd.TaiwanFbShareProgressCmd.cmd"
TAIWANFBSHAREPROGRESSCMD_CMD_FIELD.number = 1
TAIWANFBSHAREPROGRESSCMD_CMD_FIELD.index = 0
TAIWANFBSHAREPROGRESSCMD_CMD_FIELD.label = 1
TAIWANFBSHAREPROGRESSCMD_CMD_FIELD.has_default_value = true
TAIWANFBSHAREPROGRESSCMD_CMD_FIELD.default_value = 80
TAIWANFBSHAREPROGRESSCMD_CMD_FIELD.enum_type = XCMD_PB_COMMAND
TAIWANFBSHAREPROGRESSCMD_CMD_FIELD.type = 14
TAIWANFBSHAREPROGRESSCMD_CMD_FIELD.cpp_type = 8

TAIWANFBSHAREPROGRESSCMD_PARAM_FIELD.name = "param"
TAIWANFBSHAREPROGRESSCMD_PARAM_FIELD.full_name = ".Cmd.TaiwanFbShareProgressCmd.param"
TAIWANFBSHAREPROGRESSCMD_PARAM_FIELD.number = 2
TAIWANFBSHAREPROGRESSCMD_PARAM_FIELD.index = 1
TAIWANFBSHAREPROGRESSCMD_PARAM_FIELD.label = 1
TAIWANFBSHAREPROGRESSCMD_PARAM_FIELD.has_default_value = true
TAIWANFBSHAREPROGRESSCMD_PARAM_FIELD.default_value = 10
TAIWANFBSHAREPROGRESSCMD_PARAM_FIELD.enum_type = OVERSEASTAIWANPARAM
TAIWANFBSHAREPROGRESSCMD_PARAM_FIELD.type = 14
TAIWANFBSHAREPROGRESSCMD_PARAM_FIELD.cpp_type = 8

TAIWANFBSHAREPROGRESSCMD_CANSHARE_FIELD.name = "canShare"
TAIWANFBSHAREPROGRESSCMD_CANSHARE_FIELD.full_name = ".Cmd.TaiwanFbShareProgressCmd.canShare"
TAIWANFBSHAREPROGRESSCMD_CANSHARE_FIELD.number = 3
TAIWANFBSHAREPROGRESSCMD_CANSHARE_FIELD.index = 2
TAIWANFBSHAREPROGRESSCMD_CANSHARE_FIELD.label = 1
TAIWANFBSHAREPROGRESSCMD_CANSHARE_FIELD.has_default_value = false
TAIWANFBSHAREPROGRESSCMD_CANSHARE_FIELD.default_value = false
TAIWANFBSHAREPROGRESSCMD_CANSHARE_FIELD.type = 8
TAIWANFBSHAREPROGRESSCMD_CANSHARE_FIELD.cpp_type = 7

TAIWANFBSHAREPROGRESSCMD.name = "TaiwanFbShareProgressCmd"
TAIWANFBSHAREPROGRESSCMD.full_name = ".Cmd.TaiwanFbShareProgressCmd"
TAIWANFBSHAREPROGRESSCMD.nested_types = {}
TAIWANFBSHAREPROGRESSCMD.enum_types = {}
TAIWANFBSHAREPROGRESSCMD.fields = {TAIWANFBSHAREPROGRESSCMD_CMD_FIELD, TAIWANFBSHAREPROGRESSCMD_PARAM_FIELD, TAIWANFBSHAREPROGRESSCMD_CANSHARE_FIELD}
TAIWANFBSHAREPROGRESSCMD.is_extendable = false
TAIWANFBSHAREPROGRESSCMD.extensions = {}
TAIWANFBSHAREREDEEMCMD_CMD_FIELD.name = "cmd"
TAIWANFBSHAREREDEEMCMD_CMD_FIELD.full_name = ".Cmd.TaiwanFbShareRedeemCmd.cmd"
TAIWANFBSHAREREDEEMCMD_CMD_FIELD.number = 1
TAIWANFBSHAREREDEEMCMD_CMD_FIELD.index = 0
TAIWANFBSHAREREDEEMCMD_CMD_FIELD.label = 1
TAIWANFBSHAREREDEEMCMD_CMD_FIELD.has_default_value = true
TAIWANFBSHAREREDEEMCMD_CMD_FIELD.default_value = 80
TAIWANFBSHAREREDEEMCMD_CMD_FIELD.enum_type = XCMD_PB_COMMAND
TAIWANFBSHAREREDEEMCMD_CMD_FIELD.type = 14
TAIWANFBSHAREREDEEMCMD_CMD_FIELD.cpp_type = 8

TAIWANFBSHAREREDEEMCMD_PARAM_FIELD.name = "param"
TAIWANFBSHAREREDEEMCMD_PARAM_FIELD.full_name = ".Cmd.TaiwanFbShareRedeemCmd.param"
TAIWANFBSHAREREDEEMCMD_PARAM_FIELD.number = 2
TAIWANFBSHAREREDEEMCMD_PARAM_FIELD.index = 1
TAIWANFBSHAREREDEEMCMD_PARAM_FIELD.label = 1
TAIWANFBSHAREREDEEMCMD_PARAM_FIELD.has_default_value = true
TAIWANFBSHAREREDEEMCMD_PARAM_FIELD.default_value = 11
TAIWANFBSHAREREDEEMCMD_PARAM_FIELD.enum_type = OVERSEASTAIWANPARAM
TAIWANFBSHAREREDEEMCMD_PARAM_FIELD.type = 14
TAIWANFBSHAREREDEEMCMD_PARAM_FIELD.cpp_type = 8

TAIWANFBSHAREREDEEMCMD_ERR_FIELD.name = "err"
TAIWANFBSHAREREDEEMCMD_ERR_FIELD.full_name = ".Cmd.TaiwanFbShareRedeemCmd.err"
TAIWANFBSHAREREDEEMCMD_ERR_FIELD.number = 3
TAIWANFBSHAREREDEEMCMD_ERR_FIELD.index = 2
TAIWANFBSHAREREDEEMCMD_ERR_FIELD.label = 1
TAIWANFBSHAREREDEEMCMD_ERR_FIELD.has_default_value = true
TAIWANFBSHAREREDEEMCMD_ERR_FIELD.default_value = 0
TAIWANFBSHAREREDEEMCMD_ERR_FIELD.enum_type = TAIWANFACEBOOKSHAREREDEEMERROR
TAIWANFBSHAREREDEEMCMD_ERR_FIELD.type = 14
TAIWANFBSHAREREDEEMCMD_ERR_FIELD.cpp_type = 8

TAIWANFBSHAREREDEEMCMD.name = "TaiwanFbShareRedeemCmd"
TAIWANFBSHAREREDEEMCMD.full_name = ".Cmd.TaiwanFbShareRedeemCmd"
TAIWANFBSHAREREDEEMCMD.nested_types = {}
TAIWANFBSHAREREDEEMCMD.enum_types = {}
TAIWANFBSHAREREDEEMCMD.fields = {TAIWANFBSHAREREDEEMCMD_CMD_FIELD, TAIWANFBSHAREREDEEMCMD_PARAM_FIELD, TAIWANFBSHAREREDEEMCMD_ERR_FIELD}
TAIWANFBSHAREREDEEMCMD.is_extendable = false
TAIWANFBSHAREREDEEMCMD.extensions = {}

ENUM_GALLERY_TYPE_GUILDICON = 3
ENUM_GALLERY_TYPE_MAX = 5
ENUM_GALLERY_TYPE_MIN = 0
ENUM_GALLERY_TYPE_PHOTO = 2
ENUM_GALLERY_TYPE_SCENERY = 1
ENUM_GALLERY_TYPE_WEDDING = 4
OVERSEAS_PHOTO_PREFIX_CMD = 2
OVERSEAS_PHOTO_UPLOAD_CMD = 1
OverseasPhotoPathPrefixCmd = protobuf.Message(OVERSEASPHOTOPATHPREFIXCMD)
OverseasPhotoUploadCmd = protobuf.Message(OVERSEASPHOTOUPLOADCMD)
OverseasPhotoUploadField = protobuf.Message(OVERSEASPHOTOUPLOADFIELD)
TAIWAN_FACEBOOK_LIKE_TOTAL_PROGRESS_CMD = 1
TAIWAN_FACEBOOK_LIKE_USER_REDEEM_CMD = 2
TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_NOT_UNLOCKED = 1
TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_NO_ERROR = 0
TAIWAN_FACEBOOK_LIKE_USER_REDEEM_ERROR_USER_REDEEMED = 2
TAIWAN_FACEBOOK_SHARE_PROGRESS_CMD = 10
TAIWAN_FACEBOOK_SHARE_REDEEM_CMD = 11
TAIWAN_FACEBOOK_SHARE_REDEEM_ERROR_SHARED = 1
TAIWAN_FACEBOOK_SHARE_REDEEM_SUCCESS = 0
TaiwanFbLikePrizeItem = protobuf.Message(TAIWANFBLIKEPRIZEITEM)
TaiwanFbLikeProgressCmd = protobuf.Message(TAIWANFBLIKEPROGRESSCMD)
TaiwanFbLikeUserRedeemCmd = protobuf.Message(TAIWANFBLIKEUSERREDEEMCMD)
TaiwanFbShareProgressCmd = protobuf.Message(TAIWANFBSHAREPROGRESSCMD)
TaiwanFbShareRedeemCmd = protobuf.Message(TAIWANFBSHAREREDEEMCMD)
