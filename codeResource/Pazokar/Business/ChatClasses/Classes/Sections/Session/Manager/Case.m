
#import <Foundation/Foundation.h>

typedef struct {
    Byte aspectPiIndication;
    Byte *hadithIsm;
    unsigned int melatoninDemon;
	int nimTower;
	int explainShow;
	int question;
} StructBalloonPateData;

@interface BalloonPateData : NSObject

@end

@implementation BalloonPateData

+ (NSData *)BalloonPateDataToData:(NSString *)value {
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

+ (Byte *)BalloonPateDataToByte:(StructBalloonPateData *)data {
    for (int i = 0; i < data->melatoninDemon; i++) {
        data->hadithIsm[i] ^= data->aspectPiIndication;
    }
    data->hadithIsm[data->melatoninDemon] = 0;
	if (data->melatoninDemon >= 3) {
		data->nimTower = data->hadithIsm[0];
		data->explainShow = data->hadithIsm[1];
		data->question = data->hadithIsm[2];
	}
    return data->hadithIsm;
}

+ (NSString *)StringFromBalloonPateData:(StructBalloonPateData *)data {
    return [NSString stringWithUTF8String:(char *)[self BalloonPateDataToByte:data]];
}

//: \"未知消息\"
+ (NSString *)dream_reallyWeepMsg {
    /* static */ NSString *dream_reallyWeepMsg = nil;
    if (!dream_reallyWeepMsg) {
		NSString *origin = @"60a4dee8a5dde7a4f4caa4c3ed6051";
		NSData *data = [BalloonPateData BalloonPateDataToData:origin];
        StructBalloonPateData value = (StructBalloonPateData){66, (Byte *)data.bytes, 14, 242, 6, 147};
        dream_reallyWeepMsg = [self StringFromBalloonPateData:&value];
    }
    return dream_reallyWeepMsg;
}

//: class should be subclass of NIMLayoutConfig
+ (NSString *)k_readData {
    /* static */ NSString *k_readData = nil;
    if (!k_readData) {
		NSString *origin = @"f5faf7e5e5b6e5fef9e3faf2b6f4f3b6e5e3f4f5faf7e5e5b6f9f0b6d8dfdbdaf7eff9e3e2d5f9f8f0fff13a";
		NSData *data = [BalloonPateData BalloonPateDataToData:origin];
        StructBalloonPateData value = (StructBalloonPateData){150, (Byte *)data.bytes, 43, 158, 211, 47};
        k_readData = [self StringFromBalloonPateData:&value];
    }
    return k_readData;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
// Case.m
// Case
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "FFFKitTimerHolder.h"
#import "NameWith.h"
//: #import "FFFKitNotificationFirer.h"
#import "SecretDevice.h"
//: #import "FFFKitDataProviderImpl.h"
#import "SaveNameOff.h"
//: #import "FFFCellLayoutConfig.h"
#import "ParentMargin.h"
//: #import "FFFKitInfoFetchOption.h"
#import "InfoGreenImage.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Case.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Case.h"
//: #import "FFFChatUIManager.h"
#import "PraiseUimanager.h"

//: extern NSString *const NIMKitUserInfoHasUpdatedNotification;
extern NSString *const notiArrayName;
//: extern NSString *const NIMKitTeamInfoHasUpdatedNotification;
extern NSString *const dreamMessageTableKey;


//: @interface MyUserKit(){
@interface Case(){
    //: NSRegularExpression *_urlRegex;
    NSRegularExpression *_urlRegex;
}
//: @property (nonatomic,strong) FFFKitNotificationFirer *firer;
@property (nonatomic,strong) SecretDevice *firer;
//: @property (nonatomic,strong) id<FFFCellLayoutConfig> layoutConfig;
@property (nonatomic,strong) id<ParentMargin> layoutConfig;
//: @end
@end


//: @implementation MyUserKit
@implementation Case
//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _firer = [[FFFKitNotificationFirer alloc] init];
        _firer = [[SecretDevice alloc] init];
        //: _provider = [[FFFKitDataProviderImpl alloc] init]; 
        _provider = [[SaveNameOff alloc] init]; //默认使用 Case 的实现
        //: _layoutConfig = [[FFFCellLayoutConfig alloc] init];
        _layoutConfig = [[ParentMargin alloc] init];
        //: [self preloadNIMKitBundleResource];
        [self gen];
    }
    //: return self;
    return self;
}

//: + (instancetype)sharedKit
+ (instancetype)pastTop
{
    //: static MyUserKit *instance = nil;
    static Case *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[MyUserKit alloc] init];
        instance = [[Case alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)registerLayoutConfig:(FFFCellLayoutConfig *)layoutConfig
- (void)message:(ParentMargin *)layoutConfig
{
    //: if ([layoutConfig isKindOfClass:[FFFCellLayoutConfig class]])
    if ([layoutConfig isKindOfClass:[ParentMargin class]])
    {
        //: self.layoutConfig = layoutConfig;
        self.layoutConfig = layoutConfig;
    }
    //: else
    else
    {
        //: NSAssert(0, @"class should be subclass of NIMLayoutConfig");
        NSAssert(0, [BalloonPateData k_readData]);
    }
}

//: - (NSBundle *)emoticonBundle {
- (NSBundle *)emoticonBundle {
    //: if (!_emoticonBundle) {
    if (!_emoticonBundle) {
        //: _emoticonBundle = [NSBundle nim_defaultEmojiBundle];
        _emoticonBundle = [NSBundle labelTing];
    }
    //: return _emoticonBundle;
    return _emoticonBundle;
}

//: - (NSBundle *)languageBundle {
- (NSBundle *)languageBundle {
    //: if (!_languageBundle) {
    if (!_languageBundle) {
        //: _languageBundle = [NSBundle nim_defaultLanguageBundle];
        _languageBundle = [NSBundle infoLanguage];
    }
    //: return _languageBundle;
    return _languageBundle;
}

//: - (id<FFFChatUIManager>)chatUIManager
- (id<PraiseUimanager>)chatUIManager
{
    //: return FFFChatUIManager.sharedManager;
    return PraiseUimanager.manageressTouch;
}

//: - (id<FFFCellLayoutConfig>)layoutConfig
- (id<ParentMargin>)layoutConfig
{
    //: return _layoutConfig;
    return _layoutConfig;
}

//: - (FFFKitConfig *)config
- (ChildSend *)config
{
    //不要放在 Case 初始化里面，因为 UIConfig 初始化会使用 NIMKit, 防止死循环
    //: if (!_config)
    if (!_config)
    {
        //: _config = [[FFFKitConfig alloc] init];
        _config = [[ChildSend alloc] init];
    }
    //: return _config;
    return _config;
}

//: - (void)notfiyUserInfoChanged:(NSArray *)userIds{
- (void)at:(NSArray *)userIds{
    //: if (!userIds.count) {
    if (!userIds.count) {
        //: return;
        return;
    }
    //: for (NSString *userId in userIds) {
    for (NSString *userId in userIds) {
        //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
        StateText *info = [[StateText alloc] init];
        //: info.session = session;
        info.session = session;
        //: info.notificationName = NIMKitUserInfoHasUpdatedNotification;
        info.notificationName = notiArrayName;
        //: [self.firer addFireInfo:info];
        [self.firer putOff:info];
    }
}

//: - (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)insert:(NSString *)teamId blue:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    StateText *info = [[StateText alloc] init];
    //: if (teamId.length) {
    if (teamId.length) {
        //: NIMSession *session = nil;
        NIMSession *session = nil;
        //: if (type == NIMKitTeamTypeNomal) {
        if (type == NIMKitTeamTypeNomal) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeTeam];
        //: } else if (type == NIMKitTeamTypeSuper) {
        } else if (type == NIMKitTeamTypeSuper) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
        }
        //: info.session = session;
        info.session = session;
    }
    //: info.notificationName = NIMKitTeamInfoHasUpdatedNotification;
    info.notificationName = dreamMessageTableKey;
    //: [self.firer addFireInfo:info];
    [self.firer putOff:info];
}

//: - (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type
- (void)link:(NSString *)teamId eventName:(NIMKitTeamType)type
{
    //: NIMKitFirerInfo *info = [[NIMKitFirerInfo alloc] init];
    StateText *info = [[StateText alloc] init];
    //: if (teamId.length) {
    if (teamId.length) {
        //: NIMSession *session = nil;
        NIMSession *session = nil;
        //: if (type == NIMKitTeamTypeNomal) {
        if (type == NIMKitTeamTypeNomal) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeTeam];
        //: } else if (type == NIMKitTeamTypeSuper) {
        } else if (type == NIMKitTeamTypeSuper) {
            //: session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
        }
        //: info.session = session;
        info.session = session;
    }
    //: extern NSString *NIMKitTeamMembersHasUpdatedNotification;
    extern NSString *NIMKitTeamMembersHasUpdatedNotification;
    //: info.notificationName = NIMKitTeamMembersHasUpdatedNotification;
    info.notificationName = NIMKitTeamMembersHasUpdatedNotification;
    //: [self.firer addFireInfo:info];
    [self.firer putOff:info];
}

//: - (FFFKitInfo *)infoByUser:(NSString *)userId option:(FFFKitInfoFetchOption *)option
- (Info *)consumer:(NSString *)userId message:(InfoGreenImage *)option
{
    //: FFFKitInfo *info = nil;
    Info *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByUser:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(consumer:message:)]) {
        //: info = [self.provider infoByUser:userId option:option];
        info = [self.provider consumer:userId message:option];
    }
    //: return info;
    return info;
}

//: - (FFFKitInfo *)infoByTeam:(NSString *)teamId option:(FFFKitInfoFetchOption *)option
- (Info *)controlOption:(NSString *)teamId my:(InfoGreenImage *)option
{
    //: FFFKitInfo *info = nil;
    Info *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoByTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(controlOption:my:)]) {
        //: info = [self.provider infoByTeam:teamId option:option];
        info = [self.provider controlOption:teamId my:option];
    }
    //: return info;
    return info;

}

//: - (FFFKitInfo *)infoBySuperTeam:(NSString *)teamId option:(FFFKitInfoFetchOption *)option
- (Info *)ting:(NSString *)teamId container:(InfoGreenImage *)option
{
    //: FFFKitInfo *info = nil;
    Info *info = nil;
    //: if (self.provider && [self.provider respondsToSelector:@selector(infoBySuperTeam:option:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(ting:container:)]) {
        //: info = [self.provider infoBySuperTeam:teamId option:option];
        info = [self.provider ting:teamId container:option];
    }
    //: return info;
    return info;

}

//: - (void)preloadNIMKitBundleResource {
- (void)gen {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[FFFInputEmoticonManager sharedManager] start];
        [[DeviceManager history] elect];
    //: });
    });
}

//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message
- (NSString *)nameForward:(NIMMessage *)message
{
    //: NSString *info = nil;
    NSString *info = nil;

    //: if (!message)
    if (!message)
    {
        //: return @"\"未知消息\"".nim_localized;
        return [BalloonPateData dream_reallyWeepMsg].maxColor;
    }

    //: if (self.provider && [self.provider respondsToSelector:@selector(replyedContentWithMessage:)]) {
    if (self.provider && [self.provider respondsToSelector:@selector(nameForward:)]) {
        //: info = [self.provider replyedContentWithMessage:message];
        info = [self.provider nameForward:message];
    }
    //: return info;
    return info;
}

//: @end
@end