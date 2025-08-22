
#import <Foundation/Foundation.h>

@interface VietnameseMonetaryUnitData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation VietnameseMonetaryUnitData

+ (instancetype)sharedInstance {
    static VietnameseMonetaryUnitData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)VietnameseMonetaryUnitDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)VietnameseMonetaryUnitDataToCache:(Byte *)data {
    int memberShould = data[0];
    Byte behold = data[1];
    int attemptOption = data[2];
    for (int i = attemptOption; i < attemptOption + memberShould; i++) {
        int value = data[i] + behold;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[attemptOption + memberShould] = 0;
    return data + attemptOption;
}

- (NSString *)StringFromVietnameseMonetaryUnitData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self VietnameseMonetaryUnitDataToCache:data]];
}

//: File
- (NSString *)main_absoluteMessage {
    /* static */ NSString *main_absoluteMessage = nil;
    if (!main_absoluteMessage) {
		NSString *origin = @"042c043b1a3d40399e";
		NSData *data = [VietnameseMonetaryUnitData VietnameseMonetaryUnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_absoluteMessage = [self StringFromVietnameseMonetaryUnitData:value];
    }
    return main_absoluteMessage;
}

//: content
- (NSString *)dream_pepValue {
    /* static */ NSString *dream_pepValue = nil;
    if (!dream_pepValue) {
		NSString *origin = @"072e0550e035414046374046c7";
		NSData *data = [VietnameseMonetaryUnitData VietnameseMonetaryUnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_pepValue = [self StringFromVietnameseMonetaryUnitData:value];
    }
    return dream_pepValue;
}

//: Video
- (NSString *)main_makeValue {
    /* static */ NSString *main_makeValue = nil;
    if (!main_makeValue) {
		NSString *origin = @"051a033c4f4a4b557e";
		NSData *data = [VietnameseMonetaryUnitData VietnameseMonetaryUnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_makeValue = [self StringFromVietnameseMonetaryUnitData:value];
    }
    return main_makeValue;
}

//: title
- (NSString *)mLetterValue {
    /* static */ NSString *mLetterValue = nil;
    if (!mLetterValue) {
		NSString *origin = @"055205e0e02217221a13c4";
		NSData *data = [VietnameseMonetaryUnitData VietnameseMonetaryUnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mLetterValue = [self StringFromVietnameseMonetaryUnitData:value];
    }
    return mLetterValue;
}

//: Internet_call
- (NSString *)dream_preventionId {
    /* static */ NSString *dream_preventionId = nil;
    if (!dream_preventionId) {
		NSString *origin = @"0d480301262c1d2a261d2c171b19242486";
		NSData *data = [VietnameseMonetaryUnitData VietnameseMonetaryUnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_preventionId = [self StringFromVietnameseMonetaryUnitData:value];
    }
    return dream_preventionId;
}

//: Group_information_update
- (NSString *)app_happinessFormat {
    /* static */ NSString *app_happinessFormat = nil;
    if (!app_happinessFormat) {
		NSString *origin = @"181c0c9d48ea88a8987191a62b56535954434d524a53565145584d5352435954484558492b";
		NSData *data = [VietnameseMonetaryUnitData VietnameseMonetaryUnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_happinessFormat = [self StringFromVietnameseMonetaryUnitData:value];
    }
    return app_happinessFormat;
}

//: teamgonggao_content_
- (NSString *)show_overseeData {
    /* static */ NSString *show_overseeData = nil;
    if (!show_overseeData) {
		NSString *origin = @"142e034637333f3941403939334131354140463740463122";
		NSData *data = [VietnameseMonetaryUnitData VietnameseMonetaryUnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_overseeData = [self StringFromVietnameseMonetaryUnitData:value];
    }
    return show_overseeData;
}

//: Video_chat
- (NSString *)mInkMessage {
    /* static */ NSString *mInkMessage = nil;
    if (!mInkMessage) {
		NSString *origin = @"0a110b8d0ff677450727cf455853545e4e5257506390";
		NSData *data = [VietnameseMonetaryUnitData VietnameseMonetaryUnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mInkMessage = [self StringFromVietnameseMonetaryUnitData:value];
    }
    return mInkMessage;
}

//: Audio
- (NSString *)noti_managerPotatoGateIdent {
    /* static */ NSString *noti_managerPotatoGateIdent = nil;
    if (!noti_managerPotatoGateIdent) {
		NSString *origin = @"0516068b148f2b5f4e53590f";
		NSData *data = [VietnameseMonetaryUnitData VietnameseMonetaryUnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_managerPotatoGateIdent = [self StringFromVietnameseMonetaryUnitData:value];
    }
    return noti_managerPotatoGateIdent;
}

//: Image
- (NSString *)dream_successRecentUrl {
    /* static */ NSString *dream_successRecentUrl = nil;
    if (!dream_successRecentUrl) {
		NSString *origin = @"05170a696a7dc1d727b132564a504e24";
		NSData *data = [VietnameseMonetaryUnitData VietnameseMonetaryUnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_successRecentUrl = [self StringFromVietnameseMonetaryUnitData:value];
    }
    return dream_successRecentUrl;
}

//: Location
- (NSString *)kHappinessLineIdent {
    /* static */ NSString *kHappinessLineIdent = nil;
    if (!kHappinessLineIdent) {
		NSString *origin = @"08370853cf06711a15382c2a3d3238378c";
		NSData *data = [VietnameseMonetaryUnitData VietnameseMonetaryUnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kHappinessLineIdent = [self StringFromVietnameseMonetaryUnitData:value];
    }
    return kHappinessLineIdent;
}

//: Group_chat_information_update
- (NSString *)showDropName {
    /* static */ NSString *showDropName = nil;
    if (!showDropName) {
		NSString *origin = @"1d070ab42abe17e3b25e406b686e69585c615a6d5862675f686b665a6d626867586e695d5a6d5e3d";
		NSData *data = [VietnameseMonetaryUnitData VietnameseMonetaryUnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showDropName = [self StringFromVietnameseMonetaryUnitData:value];
    }
    return showDropName;
}

//: teamgonggao_title_
- (NSString *)show_chapterHonestlyPath {
    /* static */ NSString *show_chapterHonestlyPath = nil;
    if (!show_chapterHonestlyPath) {
		NSString *origin = @"12430b19395a1db18b4eba31221e2a242c2b24241e2c1c31263129221c31";
		NSData *data = [VietnameseMonetaryUnitData VietnameseMonetaryUnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_chapterHonestlyPath = [self StringFromVietnameseMonetaryUnitData:value];
    }
    return show_chapterHonestlyPath;
}

//: Super_Group_Information_Update
- (NSString *)app_reliabilityToolPath {
    /* static */ NSString *app_reliabilityToolPath = nil;
    if (!app_reliabilityToolPath) {
		NSString *origin = @"1e5f078eaf3686f41611061300e81310161100ea0f0710130e02150a100f00f61105021506bc";
		NSData *data = [VietnameseMonetaryUnitData VietnameseMonetaryUnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_reliabilityToolPath = [self StringFromVietnameseMonetaryUnitData:value];
    }
    return app_reliabilityToolPath;
}

//: teamgonggao_record_
- (NSString *)main_memberIdent {
    /* static */ NSString *main_memberIdent = nil;
    if (!main_memberIdent) {
		NSString *origin = @"132e051e4c4637333f394140393933413144373541443631db";
		NSData *data = [VietnameseMonetaryUnitData VietnameseMonetaryUnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_memberIdent = [self StringFromVietnameseMonetaryUnitData:value];
    }
    return main_memberIdent;
}

//: teamgonggao_
- (NSString *)showTouristBarSolutionFormat {
    /* static */ NSString *showTouristBarSolutionFormat = nil;
    if (!showTouristBarSolutionFormat) {
		NSString *origin = @"0c250bc125f836e9ffb0d24f403c48424a4942423c4a3a8f";
		NSData *data = [VietnameseMonetaryUnitData VietnameseMonetaryUnitDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showTouristBarSolutionFormat = [self StringFromVietnameseMonetaryUnitData:value];
    }
    return showTouristBarSolutionFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommunicationViewText.m
// Case
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyMessageUtil.h"
#import "CommunicationViewText.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "BusyGlobalMacro.h"
#import "BusyGlobalMacro.h"
//: #import "BusyKitUtil.h"
#import "OffMore.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "NSDictionary+MyUserKit.h"
#import "NSDictionary+Case.h"

//: @implementation BusyMessageUtil
@implementation CommunicationViewText

//: + (NSString *)messageContent:(NIMMessage*)message {
+ (NSString *)sessionView:(NIMMessage*)message {
    //: NSString *text = @"";
    NSString *text = @"";
    //: switch (message.messageType) {
    switch (message.messageType) {
        //: case NIMMessageTypeText:
        case NIMMessageTypeText:
            //: text = message.text;
            text = message.text;
            //: break;
            break;
        //: case NIMMessageTypeAudio:
        case NIMMessageTypeAudio:
            //: text = [BusyLanguageManager getTextWithKey:@"Audio"]; 
            text = [SendName streetSmart:[[VietnameseMonetaryUnitData sharedInstance] noti_managerPotatoGateIdent]]; //@"[语音]".;
            //: break;
            break;
        //: case NIMMessageTypeImage:
        case NIMMessageTypeImage:
            //: text = [BusyLanguageManager getTextWithKey:@"Image"];
            text = [SendName streetSmart:[[VietnameseMonetaryUnitData sharedInstance] dream_successRecentUrl]];//@"[图片]".;
            //: break;
            break;
        //: case NIMMessageTypeVideo:
        case NIMMessageTypeVideo:
            //: text = [BusyLanguageManager getTextWithKey:@"Video"];
            text = [SendName streetSmart:[[VietnameseMonetaryUnitData sharedInstance] main_makeValue]];//@"[视频]".;
            //: break;
            break;
        //: case NIMMessageTypeLocation:
        case NIMMessageTypeLocation:
            //: text = [BusyLanguageManager getTextWithKey:@"Location"];
            text = [SendName streetSmart:[[VietnameseMonetaryUnitData sharedInstance] kHappinessLineIdent]];//@"[位置]".;
            //: break;
            break;
        //: case NIMMessageTypeNotification:{
        case NIMMessageTypeNotification:{
            //: return [self notificationMessageContent:message];
            return [self notice:message];
        }
        //: case NIMMessageTypeFile:
        case NIMMessageTypeFile:
            //: text = [BusyLanguageManager getTextWithKey:@"File"];
            text = [SendName streetSmart:[[VietnameseMonetaryUnitData sharedInstance] main_absoluteMessage]];//@"[文件]".;
            //: break;
            break;
        //: case NIMMessageTypeTip:
        case NIMMessageTypeTip:
            //: text = message.text;
            text = message.text;
            //: break;
            break;
        //: case NIMMessageTypeRtcCallRecord: {
        case NIMMessageTypeRtcCallRecord: {
            //: NIMRtcCallRecordObject *record = message.messageObject;
            NIMRtcCallRecordObject *record = message.messageObject;
            //: return (record.callType == NIMRtcCallTypeAudio ? [BusyLanguageManager getTextWithKey:@"Internet_call"] : [BusyLanguageManager getTextWithKey:@"Video_chat"]);
            return (record.callType == NIMRtcCallTypeAudio ? [SendName streetSmart:[[VietnameseMonetaryUnitData sharedInstance] dream_preventionId]] : [SendName streetSmart:[[VietnameseMonetaryUnitData sharedInstance] mInkMessage]]);
        }
        //: default:
        default:
            //: text = @"";
            text = @"";//@"[未知消息]".;
    }
    //: return text;
    return text;
}

//: + (NSString *)notificationMessageContent:(NIMMessage *)message{
+ (NSString *)notice:(NIMMessage *)message{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: if (object.notificationType == NIMNotificationTypeNetCall) {
    if (object.notificationType == NIMNotificationTypeNetCall) {
        //: NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        NIMNetCallNotificationContent *content = (NIMNetCallNotificationContent *)object.content;
        //: if (content.callType == NIMNetCallTypeAudio) {
        if (content.callType == NIMNetCallTypeAudio) {
            //: return [BusyLanguageManager getTextWithKey:@"Internet_call"];
            return [SendName streetSmart:[[VietnameseMonetaryUnitData sharedInstance] dream_preventionId]];//@"[网络通话]".;
        }
        //: return [BusyLanguageManager getTextWithKey:@"Video_chat"];
        return [SendName streetSmart:[[VietnameseMonetaryUnitData sharedInstance] mInkMessage]];//@"[视频聊天]".;
    }
    //: if (object.notificationType == NIMNotificationTypeTeam) {
    if (object.notificationType == NIMNotificationTypeTeam) {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:message.session.sessionId];
        //: if (team.type == NIMTeamTypeNormal) {
        if (team.type == NIMTeamTypeNormal) {
            //: return [BusyLanguageManager getTextWithKey:@"Group_chat_information_update"];
            return [SendName streetSmart:[[VietnameseMonetaryUnitData sharedInstance] showDropName]];//@"[讨论组信息更新]".;
        //: }else{
        }else{

            //: NSString * flag=nil;
            NSString * flag=nil;
            //: NSString * title=nil;
            NSString * title=nil;
            //: NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            //: switch (content.operationType) {
            switch (content.operationType) {
                    //: case NIMTeamOperationTypeUpdate:
                    case NIMTeamOperationTypeUpdate:

                        //: if ([[content attachment] isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
                        if ([[content attachment] isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
                            //: NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)[content attachment];
                            NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)[content attachment];
                            //: if ([teamAttachment.values count] == 1) {
                            if ([teamAttachment.values count] == 1) {
                                //: NIMTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                                NIMTeamUpdateTag tag = [[[teamAttachment.values allKeys] firstObject] integerValue];
                                //: switch (tag) {
                                switch (tag) {
                                    //: case NIMTeamUpdateTagAnouncement:
                                    case NIMTeamUpdateTagAnouncement:
                                    {
                                        //: title=[[[teamAttachment.values allValues] firstObject] lowercaseString];
                                        title=[[[teamAttachment.values allValues] firstObject] lowercaseString];
                                        //: NSData* data = [title dataUsingEncoding:NSUTF8StringEncoding];
                                        NSData* data = [title dataUsingEncoding:NSUTF8StringEncoding];
                                        //: NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                                        NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                                        //: if([datas count]==0){
                                        if([datas count]==0){
                                            //: break;
                                            break;
                                        }
                                        //: title=[datas lastObject][@"title"];
                                        title=[datas lastObject][[[VietnameseMonetaryUnitData sharedInstance] mLetterValue]];
                                        //: content=[datas lastObject][@"content"];
                                        content=[datas lastObject][[[VietnameseMonetaryUnitData sharedInstance] dream_pepValue]];

                                       //记录群公告标志
                                        //记录messageid
                                        //: flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                        flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",[[VietnameseMonetaryUnitData sharedInstance] main_memberIdent],message.messageId]];
                                        //: if(flag.length==0){
                                        if(flag.length==0){
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_record_",message.messageId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",[[VietnameseMonetaryUnitData sharedInstance] main_memberIdent],message.messageId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:[[NSString alloc]initWithFormat:@"%@%@",[[VietnameseMonetaryUnitData sharedInstance] showTouristBarSolutionFormat],message.session.sessionId]];
                                            //记录标题和内容
                                            //: [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_title_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:title forKey:[[NSString alloc] initWithFormat:@"%@%@",[[VietnameseMonetaryUnitData sharedInstance] show_chapterHonestlyPath],message.session.sessionId]];
                                            //: [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_content_",message.session.sessionId]];
                                            [[NSUserDefaults standardUserDefaults] setValue:content forKey:[[NSString alloc] initWithFormat:@"%@%@",[[VietnameseMonetaryUnitData sharedInstance] show_overseeData],message.session.sessionId]];
                                        }

                                    }
                                        //: break;
                                        break;

                                    //: default:
                                    default:
                                        //: break;
                                        break;
                                }
                            }
                        }

                        //: break;
                        break;
                    //: default:
                    default:
                        //: break;
                        break;
            }

            //: return [BusyLanguageManager getTextWithKey:@"Group_information_update"];
            return [SendName streetSmart:[[VietnameseMonetaryUnitData sharedInstance] app_happinessFormat]];//@"[群信息更新]".;
        }
    }

    //: if (object.notificationType == NIMNotificationTypeSuperTeam) {
    if (object.notificationType == NIMNotificationTypeSuperTeam) {
        //: return [BusyLanguageManager getTextWithKey:@"Super_Group_Information_Update"];
        return [SendName streetSmart:[[VietnameseMonetaryUnitData sharedInstance] app_reliabilityToolPath]];//@"[超大群信息更新]".;
    }
    //: return @"";
    return @"";//@"[未知消息]".;LangKey(@"Unknown_message")
}

//: @end
@end
