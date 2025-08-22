
#import <Foundation/Foundation.h>

NSString *StringFromBottomHandleData(Byte *data);        


//: onTapMenuItemCopy:
Byte dreamEcruMessage[] = {99, 18, 23, 12, 217, 57, 106, 29, 91, 168, 181, 161, 88, 87, 61, 74, 89, 54, 78, 87, 94, 50, 93, 78, 86, 44, 88, 89, 98, 35, 39};

//: onTapMenuItemForword:
Byte dream_toolHockValue[] = {26, 21, 46, 8, 48, 237, 217, 45, 65, 64, 38, 51, 66, 31, 55, 64, 71, 27, 70, 55, 63, 24, 65, 68, 73, 65, 68, 54, 12, 104};

//: onTapMenuItemReport:
Byte dream_removeName[] = {82, 20, 34, 9, 246, 196, 223, 204, 107, 77, 76, 50, 63, 78, 43, 67, 76, 83, 39, 82, 67, 75, 48, 67, 78, 77, 80, 82, 24, 180};

//: onTapMenuItemRevoke:
Byte dream_afterTitleUrl[] = {1, 20, 27, 11, 158, 112, 73, 80, 236, 245, 78, 84, 83, 57, 70, 85, 50, 74, 83, 90, 46, 89, 74, 82, 55, 74, 91, 84, 80, 74, 31, 148};

//: menu_revoke
Byte appVirusIdent[] = {40, 11, 17, 14, 2, 67, 116, 231, 42, 55, 108, 114, 157, 180, 92, 84, 93, 100, 78, 97, 84, 101, 94, 90, 84, 93};

//: menu_praise
Byte dream_centerUrl[] = {34, 11, 59, 8, 214, 231, 126, 33, 50, 42, 51, 58, 36, 53, 55, 38, 46, 56, 42, 215};

//: menu_translation
Byte show_fromUrl[] = {94, 16, 39, 9, 154, 193, 38, 87, 72, 70, 62, 71, 78, 56, 77, 75, 58, 71, 76, 69, 58, 77, 66, 72, 71, 90};

//: menu_forword
Byte noti_memberValue[] = {51, 12, 63, 8, 47, 72, 249, 101, 46, 38, 47, 54, 32, 39, 48, 51, 56, 48, 51, 37, 213};

//: menu_copy
Byte mainBarMsg[] = {57, 9, 40, 9, 193, 105, 50, 103, 188, 69, 61, 70, 77, 55, 59, 71, 72, 81, 219};

//: onTapMenuItemDelete:
Byte m_nextOverseeIdent[] = {10, 20, 58, 7, 29, 27, 136, 53, 52, 26, 39, 54, 19, 43, 52, 59, 15, 58, 43, 51, 10, 43, 50, 43, 58, 43, 0, 223};

//: friend_circle_adapter_like
Byte app_showData[] = {99, 26, 73, 9, 22, 226, 101, 65, 201, 29, 41, 32, 28, 37, 27, 22, 26, 32, 41, 26, 35, 28, 22, 24, 27, 24, 39, 43, 28, 41, 22, 35, 32, 34, 28, 49};

//: menu_del
Byte show_fullValue[] = {12, 8, 65, 11, 193, 19, 21, 29, 113, 17, 195, 44, 36, 45, 52, 30, 35, 36, 43, 17};

//: menu_report
Byte app_tightenMsg[] = {28, 11, 1, 5, 45, 108, 100, 109, 116, 94, 113, 100, 111, 110, 113, 115, 195};

//: report_Content
Byte main_bottomText[] = {7, 14, 40, 11, 171, 119, 89, 65, 249, 71, 119, 74, 61, 72, 71, 74, 76, 55, 27, 71, 70, 76, 61, 70, 76, 105};

//: onTapMenuItemTranslation:
Byte dreamStrikeData[] = {76, 25, 6, 4, 105, 104, 78, 91, 106, 71, 95, 104, 111, 67, 110, 95, 103, 78, 108, 91, 104, 109, 102, 91, 110, 99, 105, 104, 52, 231};

//: onTapMenuItemPraise:
Byte mTelevisionTitle[] = {40, 20, 64, 11, 253, 58, 80, 237, 211, 157, 186, 47, 46, 20, 33, 48, 13, 37, 46, 53, 9, 52, 37, 45, 16, 50, 33, 41, 51, 37, 250, 211};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DateTop.m
//  NIM
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionConfig.h"
#import "DateTop.h"
//: #import "FFFMediaItem.h"
#import "ModelMessage.h"
//: #import "NTESBundleSetting.h"
#import "EnvironmentSetting.h"
//: #import "NTESSnapchatAttachment.h"
#import "MediaAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "TagAttachment.h"
//: #import "NTESBundleSetting.h"
#import "EnvironmentSetting.h"
//: #import "NSString+NTES.h"
#import "NSString+Date.h"
//: #import "FFFSessionConfig.h"
#import "QuantityelligenceInformationCan.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"
//: #import "FFFInputEmoticonManager.h"
#import "DeviceManager.h"
//: #import "FFFKitUtil.h"
#import "OffMore.h"

//: @interface NTESSessionConfig()
@interface DateTop()
//: @property (nonatomic,strong) NIMMessage *threadMessage;
@property (nonatomic,strong) NIMMessage *threadMessage;
//: @end
@end

//: @implementation NTESSessionConfig
@implementation DateTop

//: - (NSArray *)mediaItems
- (NSArray *)sumInfo
{
    //: NSArray *defaultMediaItems = [MyUserKit sharedKit].config.defaultMediaItems;
    NSArray *defaultMediaItems = [Case pastTop].config.down;

//    ModelMessage *janKenPon = [ModelMessage item:@"onTapMediaItemJanKenPon:"
//                                     normalImage:[UIImage imageNamed:@"icon_jankenpon_normal"]
//                                   selectedImage:[UIImage imageNamed:@"icon_jankenpon_pressed"]
//                                           title:LangKey(@"message_send_RPS")];//@"石头剪刀布".ntes_localized

//    ModelMessage *fileTrans = [ModelMessage item:@"onTapMediaItemFileTrans:"
//                                                normalImage:[UIImage imageNamed:@"icon_file_trans_normal"]
//                                              selectedImage:[UIImage imageNamed:@"icon_file_trans_pressed"]
//                                           title:LangKey(@"message_send_transfer")];//@"文件传输".ntes_localized

//    ModelMessage *tip       = [ModelMessage item:@"onTapMediaItemTip:"
//                                     normalImage:[UIImage imageNamed:@"bk_media_tip_normal"]
//                                   selectedImage:[UIImage imageNamed:@"bk_media_tip_pressed"]
//                                           title:@"提示消息".ntes_localized];

//    ModelMessage *audioChat =  [ModelMessage item:@"onTapMediaItemAudioChat:"
//                                      normalImage:[UIImage imageNamed:@"btn_media_telphone_message_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_media_telphone_message_pressed"]
//                                           title:LangKey(@"message_send_voice_chat")];//@"实时语音".ntes_localized
//
//    ModelMessage *videoChat =  [ModelMessage item:@"onTapMediaItemVideoChat:"
//                                      normalImage:[UIImage imageNamed:@"btn_bk_media_video_chat_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_bk_media_video_chat_pressed"]
//                                            title:LangKey(@"message_send_video_chat")];//@"视频聊天".ntes_localized
//
//    ModelMessage *teamMeeting =  [ModelMessage item:@"onTapMediaItemTeamMeeting:"
//                                      normalImage:[UIImage imageNamed:@"btn_media_telphone_message_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_media_telphone_message_pressed"]
//                                            title:LangKey(@"message_send_video_chat")];//@"视频通话".ntes_localized

//    ModelMessage *snapChat =   [ModelMessage item:@"onTapMediaItemSnapChat:"
//                                      normalImage:[UIImage imageNamed:@"bk_media_snap_normal"]
//                                    selectedImage:[UIImage imageNamed:@"bk_media_snap_pressed"]
//                                            title:@"阅后即焚".ntes_localized];

//    ModelMessage *whiteBoard = [ModelMessage item:@"onTapMediaItemWhiteBoard:"
//                                      normalImage:[UIImage imageNamed:@"btn_whiteboard_invite_normal"]
//                                    selectedImage:[UIImage imageNamed:@"btn_whiteboard_invite_pressed"]
//
//                                            title:@"白板".ntes_localized];
    //红包功能因合作终止，暂时关闭
//    ModelMessage *redPacket  = [ModelMessage item:@"onTapMediaItemRedPacket:"
//                                      normalImage:[UIImage imageNamed:@"icon_redpacket_normal"]
//                                    selectedImage:[UIImage imageNamed:@"icon_redpacket_pressed"]
//                                            title:LangKey(@"message_send_red_packet")];//@"红包"

//    ModelMessage *teamReceipt  = [ModelMessage item:@"onTapMediaItemTeamReceipt:"
//                                      normalImage:[UIImage imageNamed:@"icon_team_receipt_normal"]
//                                    selectedImage:[UIImage imageNamed:@"icon_team_receipt_pressed"]
//                                            title:@"已读回执".ntes_localized];



//    BOOL isMe   = _session.sessionType == NIMSessionTypeP2P
//    && [_session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
//    NSArray *items = nil;

//    if (isMe)
//    {
//        items = @[janKenPon,tip];
//    }
//    else if(_session.sessionType == NIMSessionTypeTeam || _session.sessionType == NIMSessionTypeSuperTeam)
//    {
//        items = @[janKenPon];
//    }
//    else
//    {
//        items = @[janKenPon];
//    }


//    return [defaultMediaItems arrayByAddingObjectsFromArray:items];
    //: return defaultMediaItems;
    return defaultMediaItems;
}


//: - (NSArray<FFFMediaItem *> *)menuItemsWithMessage:(NIMMessage *)message {
- (NSArray<ModelMessage *> *)shouldMaxSession:(NIMMessage *)message {
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];

    //: FFFMediaItem *Praise = [FFFMediaItem item:@"onTapMenuItemPraise:"
    ModelMessage *Praise = [ModelMessage canSearched:StringFromBottomHandleData(mTelevisionTitle)
                                 //: normalImage:[UIImage imageNamed:@"menu_praise"]
                                 drop:[UIImage imageNamed:StringFromBottomHandleData(dream_centerUrl)]
                               //: selectedImage:nil
                               statuteTitle:nil
                                       //: title:[FFFLanguageManager getTextWithKey:@"friend_circle_adapter_like"]];
                                       text:[SendName streetSmart:StringFromBottomHandleData(app_showData)]];

//    ModelMessage *reply = [ModelMessage item:@"onTapMenuItemReply:"
//                                 normalImage:[UIImage imageNamed:@"menu_reply"]
//                               selectedImage:nil
//                                       title:LangKey(@"回复")];

    //: FFFMediaItem *copy = [FFFMediaItem item:@"onTapMenuItemCopy:"
    ModelMessage *copy = [ModelMessage canSearched:StringFromBottomHandleData(dreamEcruMessage)
                                //: normalImage:[UIImage imageNamed:@"menu_copy"]
                                drop:[UIImage imageNamed:StringFromBottomHandleData(mainBarMsg)]
                              //: selectedImage:nil
                              statuteTitle:nil
                                      //: title:[FFFLanguageManager getTextWithKey:@"复制"]];
                                      text:[SendName streetSmart:@"复制"]];

    //: FFFMediaItem *forword = [FFFMediaItem item:@"onTapMenuItemForword:"
    ModelMessage *forword = [ModelMessage canSearched:StringFromBottomHandleData(dream_toolHockValue)
                                   //: normalImage:[UIImage imageNamed:@"menu_forword"]
                                   drop:[UIImage imageNamed:StringFromBottomHandleData(noti_memberValue)]
                                 //: selectedImage:nil
                                 statuteTitle:nil
                                         //: title:[FFFLanguageManager getTextWithKey:@"转发"]];
                                         text:[SendName streetSmart:@"转发"]];

//    ModelMessage *mark = [ModelMessage item:@"onTapMenuItemMark:"
//                                normalImage:[UIImage imageNamed:@"menu_collect"]
//                              selectedImage:nil
//                                      title:LangKey(@"收藏")];

//    BOOL isMessagePined = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message] != nil;
//    NSString *pinTitle = isMessagePined ? @"Un-pin": @"Pin";
//    NSString *pinAction = isMessagePined ? @"onTapMenuItemUnpin:" : @"onTapMenuItemPin:";
//    ModelMessage *pin = [ModelMessage item:pinAction
//                               normalImage:[UIImage imageNamed:@"menu_pin"]
//                             selectedImage:nil
//                                     title:pinTitle];

    //: FFFMediaItem *report = [FFFMediaItem item:@"onTapMenuItemReport:"
    ModelMessage *report = [ModelMessage canSearched:StringFromBottomHandleData(dream_removeName)
                                  //: normalImage:[UIImage imageNamed:@"menu_report"]
                                  drop:[UIImage imageNamed:StringFromBottomHandleData(app_tightenMsg)]
                                //: selectedImage:nil
                                statuteTitle:nil
                                        //: title:[FFFLanguageManager getTextWithKey:@"report_Content"]];
                                        text:[SendName streetSmart:StringFromBottomHandleData(main_bottomText)]];

    //: FFFMediaItem *translation = [FFFMediaItem item:@"onTapMenuItemTranslation:"
    ModelMessage *translation = [ModelMessage canSearched:StringFromBottomHandleData(dreamStrikeData)
                                  //: normalImage:[UIImage imageNamed:@"menu_translation"]
                                  drop:[UIImage imageNamed:StringFromBottomHandleData(show_fromUrl)]
                                //: selectedImage:nil
                                statuteTitle:nil
                                        //: title:[FFFLanguageManager getTextWithKey:@"翻译"]];
                                        text:[SendName streetSmart:@"翻译"]];

    //: FFFMediaItem *revoke = [FFFMediaItem item:@"onTapMenuItemRevoke:"
    ModelMessage *revoke = [ModelMessage canSearched:StringFromBottomHandleData(dream_afterTitleUrl)
                                  //: normalImage:[UIImage imageNamed:@"menu_revoke"]
                                  drop:[UIImage imageNamed:StringFromBottomHandleData(appVirusIdent)]
                                //: selectedImage:nil
                                statuteTitle:nil
                                        //: title:[FFFLanguageManager getTextWithKey:@"撤回"]];
                                        text:[SendName streetSmart:@"撤回"]];

    //: FFFMediaItem *delete = [FFFMediaItem item:@"onTapMenuItemDelete:"
    ModelMessage *delete = [ModelMessage canSearched:StringFromBottomHandleData(m_nextOverseeIdent)
                                  //: normalImage:[UIImage imageNamed:@"menu_del"]
                                  drop:[UIImage imageNamed:StringFromBottomHandleData(show_fullValue)]
                                //: selectedImage:nil
                                statuteTitle:nil
                                        //: title:[FFFLanguageManager getTextWithKey:@"删除"]];
                                        text:[SendName streetSmart:@"删除"]];

//    ModelMessage *mutiSelect = [ModelMessage item:@"onTapMenuItemMutiSelect:"
//                                      normalImage:[UIImage imageNamed:@"menu_choose"]
//                                    selectedImage:nil
//                                            title:LangKey(@"多选")];

    //: [items addObject:Praise];
    [items addObject:Praise];

//    if ([DeviceDate canMessageBeForwarded:message])
//    {
//        [items addObject:reply];
//    }

    //: BOOL isMe = [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    BOOL isMe = [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    //: if (!isMe)
    if (!isMe)
    {
        //: [items addObject:report];
        [items addObject:report];
    }

    //: if (message.messageType == NIMMessageTypeText)
    if (message.messageType == NIMMessageTypeText)
    {
        //: [items addObject:copy];
        [items addObject:copy];
    }

    //: if ([NTESSessionUtil canMessageBeForwarded:message]) {
    if ([DeviceDate valueForwarded:message]) {
        //: [items addObject:forword];
        [items addObject:forword];
    }
//    if ([DeviceDate canMessageBeForwarded:message]) {
//        [items addObject:mark];
//        [items addObject:pin];
//    }
    //: if (message.messageType == NIMMessageTypeText){
    if (message.messageType == NIMMessageTypeText){
        //: [items addObject:translation];
        [items addObject:translation];
    }
    //: if ([NTESSessionUtil canMessageBeRevoked:message]) {
    if ([DeviceDate sharedComprise:message]) {
        //: [items addObject:revoke];
        [items addObject:revoke];
    }



//    [items addObject:delete];

//    if ([DeviceDate canMessageBeForwarded:message])
//    {
//        [items addObject:mutiSelect];
//    }

//    if (message.messageType == NIMMessageTypeAudio)
//    {
//        ModelMessage *audio2text = [ModelMessage item:@"onTapMenuItemAudio2Text:"
//          normalImage:[UIImage imageNamed:@"menu_audio2text"]
//        selectedImage:nil
//                title:@"转文字".ntes_localized];
//
//        [items addObject:audio2text];
//    }
    //: return items;
    return items;
}

//: - (NSArray *)emotionItems
- (NSArray *)icon
{
    //NSArray *indexs = @[@(1),@(145),@(12),@(15),@(10),@(18),@(19)];
    //: NSArray *indexs = @[];
    NSArray *indexs = @[];
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];
    //: for (NSNumber *index in indexs)
    for (NSNumber *index in indexs)
    {
        //: NSString * ID = [NSString stringWithFormat:NIMKitQuickCommentFormat, [index integerValue]];
        NSString * ID = [NSString stringWithFormat:kPanPath, [index integerValue]];
        //: NIMInputEmoticon *item = [[FFFInputEmoticonManager sharedManager] emoticonByID:ID];
        CityCenterWith *item = [[DeviceManager history] pagingTing:ID];
        //: if (item)
        if (item)
        {
            //: [items addObject:item];
            [items addObject:item];
        }
    }

    //: return [items copy];
    return [items copy];
}

//: - (BOOL)shouldHandleReceipt{
- (BOOL)heliogramClean{
    //: return YES;
    return YES;
}

//: - (NSArray<NSNumber *> *)inputBarItemTypes{
- (NSArray<NSNumber *> *)curContainer{
    //: return @[
    return @[
//        @(FFFInputBarItemTypeMore),
//        @(FFFInputBarItemTypeEmoticon),
//             @(FFFInputBarItemTypeVoice),
             //: @(FFFInputBarItemTypeTextAndRecord),
             @(FFFInputBarItemTypeTextAndRecord),
        //: @(FFFInputBarItemTypeSend),
        @(FFFInputBarItemTypeSend),
            //: ];
            ];
}

//: - (BOOL)shouldHandleReceiptForMessage:(NIMMessage *)message
- (BOOL)dating:(NIMMessage *)message
{
    //文字，语音，图片，视频，文件，地址位置和自定义消息都支持已读回执，其他的不支持
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: if (type == NIMMessageTypeCustom) {
    if (type == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = (NIMCustomObject *)message.messageObject;
        NIMCustomObject *object = (NIMCustomObject *)message.messageObject;
        //: id attachment = object.attachment;
        id attachment = object.attachment;

        //: if ([attachment isKindOfClass:[NTESWhiteboardAttachment class]]) {
        if ([attachment isKindOfClass:[TagAttachment class]]) {
            //: return NO;
            return NO;
        }
    }



    //: return type == NIMMessageTypeText ||
    return type == NIMMessageTypeText ||
    //: type == NIMMessageTypeAudio ||
    type == NIMMessageTypeAudio ||
    //: type == NIMMessageTypeImage ||
    type == NIMMessageTypeImage ||
    //: type == NIMMessageTypeVideo ||
    type == NIMMessageTypeVideo ||
    //: type == NIMMessageTypeFile ||
    type == NIMMessageTypeFile ||
    //: type == NIMMessageTypeLocation ||
    type == NIMMessageTypeLocation ||
    //: type == NIMMessageTypeCustom;
    type == NIMMessageTypeCustom;
}

//: - (NSArray<NIMInputEmoticonCatalog *> *)charlets
- (NSArray<ImageColor *> *)greenBegin
{
    //: return nil;
    return nil;
}

//: - (BOOL)disableProximityMonitor{
- (BOOL)incapacitateGreen{
    //: return [[NTESBundleSetting sharedConfig] disableProximityMonitor];
    return [[EnvironmentSetting configLocation] incapacitateGreen];
}

//: - (BOOL)autoFetchAttachment {
- (BOOL)componentPart {
    //: return [[NTESBundleSetting sharedConfig] autoFetchAttachment];
    return [[EnvironmentSetting configLocation] componentPart];
}

//: - (NIMAudioType)recordType
- (NIMAudioType)numerousnessRequest
{
    //: return [[NTESBundleSetting sharedConfig] usingAmr] ? NIMAudioTypeAMR : NIMAudioTypeAAC;
    return [[EnvironmentSetting configLocation] bar] ? NIMAudioTypeAMR : NIMAudioTypeAAC;
}

//: - (BOOL)disableSelectedForMessage:(NIMMessage *)message {
- (BOOL)viewLabel:(NIMMessage *)message {
    //: return ![NTESSessionUtil canMessageBeForwarded:message];
    return ![DeviceDate valueForwarded:message];
}

//: - (void)setThreadMessage:(NIMMessage *)message
- (void)setThreadMessage:(NIMMessage *)message
{
    //: _threadMessage = message;
    _threadMessage = message;
}

//: - (void)cleanThreadMessage
- (void)harvestMoon
{
    //: _threadMessage = nil;
    _threadMessage = nil;
}

//: - (BOOL)clearThreadMessageAfterSent
- (BOOL)shouldIn
{
    //: return YES;
    return YES;
}

//: @end
@end

Byte * BottomHandleDataToCache(Byte *data) {
    int neighborhood = data[0];
    int textBar = data[1];
    Byte explain = data[2];
    int redContent = data[3];
    if (!neighborhood) return data + redContent;
    for (int i = redContent; i < redContent + textBar; i++) {
        int value = data[i] + explain;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[redContent + textBar] = 0;
    return data + redContent;
}

NSString *StringFromBottomHandleData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BottomHandleDataToCache(data)];
}
