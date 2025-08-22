
#import <Foundation/Foundation.h>

typedef struct {
    Byte nextManager;
    Byte *concentration;
    unsigned int smallBeer;
} StructFullData;

@interface FullData : NSObject

@end

@implementation FullData

+ (NSData *)FullDataToData:(NSString *)value {
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

+ (Byte *)FullDataToByte:(StructFullData *)data {
    for (int i = 0; i < data->smallBeer; i++) {
        data->concentration[i] ^= data->nextManager;
    }
    data->concentration[data->smallBeer] = 0;
    return data->concentration;
}

+ (NSString *)StringFromFullData:(StructFullData *)data {
    return [NSString stringWithUTF8String:(char *)[self FullDataToByte:data]];
}

//: teamId
+ (NSString *)noti_makeIdent {
    /* static */ NSString *noti_makeIdent = nil;
    if (!noti_makeIdent) {
		NSString *origin = @"6a7b7f73577a23";
		NSData *data = [FullData FullDataToData:origin];
        StructFullData value = (StructFullData){30, (Byte *)data.bytes, 6};
        noti_makeIdent = [self StringFromFullData:&value];
    }
    return noti_makeIdent;
}

//: teamName
+ (NSString *)appBottomValue {
    /* static */ NSString *appBottomValue = nil;
    if (!appBottomValue) {
		NSString *origin = @"ecfdf9f5d6f9f5fdcb";
		NSData *data = [FullData FullDataToData:origin];
        StructFullData value = (StructFullData){152, (Byte *)data.bytes, 8};
        appBottomValue = [self StringFromFullData:&value];
    }
    return appBottomValue;
}

//: teamType
+ (NSString *)main_successMakeContent {
    /* static */ NSString *main_successMakeContent = nil;
    if (!main_successMakeContent) {
		NSString *origin = @"acbdb9b58ca1a8bdac";
		NSData *data = [FullData FullDataToData:origin];
        StructFullData value = (StructFullData){216, (Byte *)data.bytes, 8};
        main_successMakeContent = [self StringFromFullData:&value];
    }
    return main_successMakeContent;
}

//: Group
+ (NSString *)mTotalEnableMessage {
    /* static */ NSString *mTotalEnableMessage = nil;
    if (!mTotalEnableMessage) {
		NSString *origin = @"d4e1fce6e33a";
		NSData *data = [FullData FullDataToData:origin];
        StructFullData value = (StructFullData){147, (Byte *)data.bytes, 5};
        mTotalEnableMessage = [self StringFromFullData:&value];
    }
    return mTotalEnableMessage;
}

//: content
+ (NSString *)noti_modeNameId {
    /* static */ NSString *noti_modeNameId = nil;
    if (!noti_modeNameId) {
		NSString *origin = @"3b37362c3d362c7c";
		NSData *data = [FullData FullDataToData:origin];
        StructFullData value = (StructFullData){88, (Byte *)data.bytes, 7};
        noti_modeNameId = [self StringFromFullData:&value];
    }
    return noti_modeNameId;
}

//: 正在呼叫您
+ (NSString *)show_sourceSelectIdent {
    /* static */ NSString *show_sourceSelectIdent = nil;
    if (!show_sourceSelectIdent) {
		NSString *origin = @"63282660192d601439600a2e63072d97";
		NSData *data = [FullData FullDataToData:origin];
        StructFullData value = (StructFullData){133, (Byte *)data.bytes, 15};
        show_sourceSelectIdent = [self StringFromFullData:&value];
    }
    return show_sourceSelectIdent;
}

//: room
+ (NSString *)mainViewFormat {
    /* static */ NSString *mainViewFormat = nil;
    if (!mainViewFormat) {
		NSString *origin = @"5a474745fa";
		NSData *data = [FullData FullDataToData:origin];
        StructFullData value = (StructFullData){40, (Byte *)data.bytes, 4};
        mainViewFormat = [self StringFromFullData:&value];
    }
    return mainViewFormat;
}

//: members
+ (NSString *)dream_cellText {
    /* static */ NSString *dream_cellText = nil;
    if (!dream_cellText) {
		NSString *origin = @"7f777f707760616d";
		NSData *data = [FullData FullDataToData:origin];
        StructFullData value = (StructFullData){18, (Byte *)data.bytes, 7};
        dream_cellText = [self StringFromFullData:&value];
    }
    return dream_cellText;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCustomSysNotiSender.m
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomSysNotificationSender.h"
#import "ChildShared.h"
//: #import "FFFKitInfoFetchOption.h"
#import "InfoGreenImage.h"
//: #import "NTESBundleSetting.h"
#import "EnvironmentSetting.h"

//: @interface NTESCustomSysNotificationSender ()
@interface ChildShared ()
//: @property (nonatomic,strong) NSDate *lastTime;
@property (nonatomic,strong) NSDate *lastTime;
//: @end
@end

//: @implementation NTESCustomSysNotificationSender
@implementation ChildShared

//: - (void)sendCustomContent:(NSString *)content toSession:(NIMSession *)session{
- (void)key:(NSString *)content blueish:(NIMSession *)session{
    //: if (!content) {
    if (!content) {
        //: return;
        return;
    }
    //: NSDictionary *dict = @{
    NSDictionary *dict = @{
                           //: @"id" : @((2)),
                           @"id" : @((2)),
                           //: @"content" : content,
                           [FullData noti_modeNameId] : content,
                           //: };
                           };
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *json = [[NSString alloc] initWithData:data
    NSString *json = [[NSString alloc] initWithData:data
                                              //: encoding:NSUTF8StringEncoding];
                                              encoding:NSUTF8StringEncoding];

    //: NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:json];
    NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:json];
    //: notification.apnsContent = content;
    notification.apnsContent = content;
    //: notification.sendToOnlineUsersOnly = NO;
    notification.sendToOnlineUsersOnly = NO;
    //: notification.env = [[NTESBundleSetting sharedConfig] messageEnv];
    notification.env = [[EnvironmentSetting configLocation] cur];
    //: NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: notification.setting = setting;
    notification.setting = setting;
    //: [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
    [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
                                                                 //: toSession:session
                                                                 toSession:session
                                                                //: completion:nil];
                                                                completion:nil];
}


//: - (void)sendTypingState:(NIMSession *)session
- (void)space:(NIMSession *)session
{
    //: NSString *currentAccount = [[[NIMSDK sharedSDK] loginManager] currentAccount];
    NSString *currentAccount = [[[NIMSDK sharedSDK] loginManager] currentAccount];
    //: if (session.sessionType != NIMSessionTypeP2P ||
    if (session.sessionType != NIMSessionTypeP2P ||
        //: [session.sessionId isEqualToString:currentAccount])
        [session.sessionId isEqualToString:currentAccount])
    {
        //: return;
        return;
    }

    //: NSDate *now = [NSDate date];
    NSDate *now = [NSDate date];
    //: if (_lastTime == nil ||
    if (_lastTime == nil ||
        //: [now timeIntervalSinceDate:_lastTime] > 3)
        [now timeIntervalSinceDate:_lastTime] > 3)
    {
        //: _lastTime = now;
        _lastTime = now;

        //: NSDictionary *dict = @{@"id" : @((1))};
        NSDictionary *dict = @{@"id" : @((1))};
        //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
        NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                       //: options:0
                                                       options:0
                                                         //: error:nil];
                                                         error:nil];
        //: NSString *content = [[NSString alloc] initWithData:data
        NSString *content = [[NSString alloc] initWithData:data
                                                  //: encoding:NSUTF8StringEncoding];
                                                  encoding:NSUTF8StringEncoding];

        //: NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
        NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
        //: notification.sendToOnlineUsersOnly = YES;
        notification.sendToOnlineUsersOnly = YES;
        //: notification.env = [[NTESBundleSetting sharedConfig] messageEnv];
        notification.env = [[EnvironmentSetting configLocation] cur];
        //: NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
        NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
        //: setting.apnsEnabled = NO;
        setting.apnsEnabled = NO;
        //: notification.setting = setting;
        notification.setting = setting;
        //: [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
        [[[NIMSDK sharedSDK] systemNotificationManager] sendCustomNotification:notification
                                                                     //: toSession:session
                                                                     toSession:session
                                                                    //: completion:nil];
                                                                    completion:nil];
    }

}


//: - (void)sendCallNotification:(NIMTeam *)team
- (void)by:(NIMTeam *)team
                    //: roomName:(NSString *)roomName
                    lavatoryTextLength:(NSString *)roomName
                     //: members:(NSArray *)members
                     image:(NSArray *)members
{
    //: if (!team || !team.teamId || !members) {
    if (!team || !team.teamId || !members) {
        //: return;
        return;
    }

    //: NSString *teamId = team.teamId;
    NSString *teamId = team.teamId;
    //: NIMKitTeamType teamType = NIMKitTeamTypeNomal;
    NIMKitTeamType teamType = NIMKitTeamTypeNomal;
    //: if (team.type == NIMTeamTypeSuper) {
    if (team.type == NIMTeamTypeSuper) {
        //: teamType = NIMKitTeamTypeSuper;
        teamType = NIMKitTeamTypeSuper;
    }
    //: NSDictionary *dict = @{
    NSDictionary *dict = @{
                           //: @"id" : @((3)),
                           @"id" : @((3)),
                           //: @"members" : members,
                           [FullData dream_cellText] : members,
                           //: @"teamId" : teamId,
                           [FullData noti_makeIdent] : teamId,
                           //: @"teamName" : team.teamName? team.teamName : @"Group",
                           [FullData appBottomValue] : team.teamName? team.teamName : [FullData mTotalEnableMessage],
                           //: @"room" : roomName,
                           [FullData mainViewFormat] : roomName,
                           //: @"teamType" : @(teamType)
                           [FullData main_successMakeContent] : @(teamType)
                          //: };
                          };
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = [[NSString alloc] initWithData:data
    NSString *content = [[NSString alloc] initWithData:data
                                           //: encoding:NSUTF8StringEncoding];
                                           encoding:NSUTF8StringEncoding];
    //: NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
    NIMCustomSystemNotification *notification = [[NIMCustomSystemNotification alloc] initWithContent:content];
    //: notification.sendToOnlineUsersOnly = NO;
    notification.sendToOnlineUsersOnly = NO;
    //: notification.env = [[NTESBundleSetting sharedConfig] messageEnv];
    notification.env = [[EnvironmentSetting configLocation] cur];
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    InfoGreenImage *option = [[InfoGreenImage alloc] init];
    //: option.session = [NIMSession session:teamId type:NIMSessionTypeTeam];
    option.session = [NIMSession session:teamId type:NIMSessionTypeTeam];
    //: FFFKitInfo *me = [[MyUserKit sharedKit] infoByUser:[NIMSDK sharedSDK].loginManager.currentAccount option:option];
    Info *me = [[Case pastTop] consumer:[NIMSDK sharedSDK].loginManager.currentAccount message:option];

    //: notification.apnsContent = [NSString stringWithFormat:@"%@%@",me.showName,@"正在呼叫您".ntes_localized];
    notification.apnsContent = [NSString stringWithFormat:@"%@%@",me.showName,[FullData show_sourceSelectIdent].untilNtes];
    //: NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    NIMCustomSystemNotificationSetting *setting = [[NIMCustomSystemNotificationSetting alloc] init];
    //: setting.apnsEnabled = NO;
    setting.apnsEnabled = NO;
    //: notification.setting = setting;
    notification.setting = setting;


    //: for (NSString *userId in members) {
    for (NSString *userId in members) {
        //: if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
        if ([userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
        {
            //: continue;
            continue;
        }
        //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        //: [[NIMSDK sharedSDK].systemNotificationManager sendCustomNotification:notification toSession:session completion:nil];
        [[NIMSDK sharedSDK].systemNotificationManager sendCustomNotification:notification toSession:session completion:nil];
    }

}




//: @end
@end