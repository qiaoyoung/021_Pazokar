
#import <Foundation/Foundation.h>

@interface AdministrateData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AdministrateData

+ (instancetype)sharedInstance {
    static AdministrateData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)AdministrateDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)AdministrateDataToCache:(Byte *)data {
    int prohibit = data[0];
    Byte beer = data[1];
    int adeFain = data[2];
    for (int i = adeFain; i < adeFain + prohibit; i++) {
        int value = data[i] - beer;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[adeFain + prohibit] = 0;
    return data + adeFain;
}

- (NSString *)StringFromAdministrateData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AdministrateDataToCache:data]];
}

//: person_card
- (NSString *)kFinTitle {
    /* static */ NSString *kFinTitle = nil;
    if (!kFinTitle) {
		NSArray<NSString *> *origin = @[@"11", @"37", @"13", @"10", @"13", @"138", @"160", @"180", @"248", @"175", @"16", @"16", @"211", @"149", @"138", @"151", @"152", @"148", @"147", @"132", @"136", @"134", @"151", @"137", @"18"];
		NSData *data = [AdministrateData AdministrateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kFinTitle = [self StringFromAdministrateData:value];
    }
    return kFinTitle;
}

//: group_card
- (NSString *)mainOptionFormat {
    /* static */ NSString *mainOptionFormat = nil;
    if (!mainOptionFormat) {
		NSArray<NSString *> *origin = @[@"10", @"82", @"11", @"156", @"195", @"10", @"67", @"10", @"127", @"226", @"38", @"185", @"196", @"193", @"199", @"194", @"177", @"181", @"179", @"196", @"182", @"74"];
		NSData *data = [AdministrateData AdministrateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainOptionFormat = [self StringFromAdministrateData:value];
    }
    return mainOptionFormat;
}

//: message_guess
- (NSString *)notiStrikeRemoveData {
    /* static */ NSString *notiStrikeRemoveData = nil;
    if (!notiStrikeRemoveData) {
		NSArray<NSString *> *origin = @[@"13", @"97", @"10", @"73", @"194", @"160", @"45", @"88", @"91", @"124", @"206", @"198", @"212", @"212", @"194", @"200", @"198", @"192", @"200", @"214", @"198", @"212", @"212", @"102"];
		NSData *data = [AdministrateData AdministrateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiStrikeRemoveData = [self StringFromAdministrateData:value];
    }
    return notiStrikeRemoveData;
}

//: message_red_packet
- (NSString *)main_haoIdent {
    /* static */ NSString *main_haoIdent = nil;
    if (!main_haoIdent) {
		NSArray<NSString *> *origin = @[@"18", @"66", @"7", @"5", @"38", @"1", @"157", @"175", @"167", @"181", @"181", @"163", @"169", @"167", @"161", @"180", @"167", @"166", @"161", @"178", @"163", @"165", @"173", @"167", @"182", @"56"];
		NSData *data = [AdministrateData AdministrateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_haoIdent = [self StringFromAdministrateData:value];
    }
    return main_haoIdent;
}

//: home_fragment_liao
- (NSString *)show_tightenId {
    /* static */ NSString *show_tightenId = nil;
    if (!show_tightenId) {
		NSArray<NSString *> *origin = @[@"18", @"29", @"9", @"88", @"9", @"186", @"204", @"57", @"228", @"133", @"140", @"138", @"130", @"124", @"131", @"143", @"126", @"132", @"138", @"130", @"139", @"145", @"124", @"137", @"134", @"126", @"140", @"22"];
		NSData *data = [AdministrateData AdministrateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_tightenId = [self StringFromAdministrateData:value];
    }
    return show_tightenId;
}

//: home_fragment_bai
- (NSString *)app_recentData {
    /* static */ NSString *app_recentData = nil;
    if (!app_recentData) {
		NSArray<NSString *> *origin = @[@"17", @"34", @"9", @"88", @"175", @"36", @"127", @"155", @"216", @"138", @"145", @"143", @"135", @"129", @"136", @"148", @"131", @"137", @"143", @"135", @"144", @"150", @"129", @"132", @"131", @"139", @"174"];
		NSData *data = [AdministrateData AdministrateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_recentData = [self StringFromAdministrateData:value];
    }
    return app_recentData;
}

//: home_fragment_yue
- (NSString *)kWithKey {
    /* static */ NSString *kWithKey = nil;
    if (!kWithKey) {
		NSArray<NSString *> *origin = @[@"17", @"13", @"4", @"121", @"117", @"124", @"122", @"114", @"108", @"115", @"127", @"110", @"116", @"122", @"114", @"123", @"129", @"108", @"134", @"130", @"114", @"34"];
		NSData *data = [AdministrateData AdministrateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kWithKey = [self StringFromAdministrateData:value];
    }
    return kWithKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithUtil.m
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageUtil.h"
#import "WithUtil.h"
//: #import "BusyMessageUtil.h"
#import "CommunicationViewText.h"
//: #import "NTESShareCardAttachment.h"
#import "WithChild.h"

//: @implementation NTESMessageUtil
@implementation WithUtil

//: + (NSString *)messageContent:(NIMMessage *)message {
+ (NSString *)imagePull:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: text = [self customMessageContent:message];
        text = [self should:message];
    //: } else {
    } else {
        //: text = [BusyMessageUtil messageContent:message];
        text = [CommunicationViewText sessionView:message];
    }
    //: return text;
    return text;
}

//: + (NSString *)customMessageContent:(NIMMessage *)message {
+ (NSString *)should:(NIMMessage *)message {
    //: NSString *text = nil;
    NSString *text = nil;
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: if ([object.attachment isKindOfClass:[NTESSnapchatAttachment class]])
    if ([object.attachment isKindOfClass:[MediaAttachment class]])
    {
        //: text = [BusyLanguageManager getTextWithKey:@"home_fragment_yue"];
        text = [SendName streetSmart:[[AdministrateData sharedInstance] kWithKey]];//@"[阅后即焚]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESJanKenPonAttachment class]])
    else if ([object.attachment isKindOfClass:[MyAttachment class]])
    {
        //: text = [BusyLanguageManager getTextWithKey:@"message_guess"];
        text = [SendName streetSmart:[[AdministrateData sharedInstance] notiStrikeRemoveData]];//@"[猜拳]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESWhiteboardAttachment class]])
    else if ([object.attachment isKindOfClass:[TagAttachment class]])
    {
        //: text = [BusyLanguageManager getTextWithKey:@"home_fragment_bai"];
        text = [SendName streetSmart:[[AdministrateData sharedInstance] app_recentData]];//@"[白板]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESRedPacketAttachment class]])
    else if ([object.attachment isKindOfClass:[BubbleTitleLabel class]])
    {
        //: text = [BusyLanguageManager getTextWithKey:@"message_red_packet"];
        text = [SendName streetSmart:[[AdministrateData sharedInstance] main_haoIdent]];//@"[红包消息]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    else if ([object.attachment isKindOfClass:[Attachment class]])
    {
        //: NTESRedPacketTipAttachment *attach = (NTESRedPacketTipAttachment *)object.attachment;
        Attachment *attach = (Attachment *)object.attachment;
        //: text = attach.formatedMessage;
        text = attach.parentTeam;
    }
    //: else if ([object.attachment isKindOfClass:[NTESMultiRetweetAttachment class]])
    else if ([object.attachment isKindOfClass:[ModelText class]])
    {
        //: text = [BusyLanguageManager getTextWithKey:@"home_fragment_liao"];
        text = [SendName streetSmart:[[AdministrateData sharedInstance] show_tightenId]];//@"[聊天记录]";
    }
    //: else if ([object.attachment isKindOfClass:[NTESShareCardAttachment class]])
    else if ([object.attachment isKindOfClass:[WithChild class]])
    {
        //: NTESShareCardAttachment *cardAtt = (NTESShareCardAttachment *)object.attachment;
        WithChild *cardAtt = (WithChild *)object.attachment;
        //: if ([cardAtt.type boolValue]) {
        if ([cardAtt.type boolValue]) {
            //: text = [BusyLanguageManager getTextWithKey:@"group_card"];
            text = [SendName streetSmart:[[AdministrateData sharedInstance] mainOptionFormat]];
        //: } else {
        } else {
            //: text = [BusyLanguageManager getTextWithKey:@"person_card"];
            text = [SendName streetSmart:[[AdministrateData sharedInstance] kFinTitle]];
        }
    }
//    else if (message.messageSubType == 20)
//    {
//        text = LangKey(@"retracted_message");//撤回
//    }
    //: else
    else
    {
        //: text = @"";
        text = @"";//@"[未知消息]";LangKey(@"message_unknow_message")
    }
    //: return text;
    return text;
}
//: @end
@end
