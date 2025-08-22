
#import <Foundation/Foundation.h>

@interface GloveData : NSObject

+ (instancetype)sharedInstance;

//: act
@property (nonatomic, copy) NSString *noti_idealName;

//: tiktok://
@property (nonatomic, copy) NSString *kPregnantShowMessage;

//: code
@property (nonatomic, copy) NSString *userBoarPsychologistMsg;

//: https://lbs.netease.im/lbs/conf.jsp
@property (nonatomic, copy) NSString *main_maleMessage;

//: app
@property (nonatomic, copy) NSString *mCustomerName;

//: instagram://
@property (nonatomic, copy) NSString *noti_speakMessage;

//: DeviceName
@property (nonatomic, copy) NSString *k_pepValue;

//: data
@property (nonatomic, copy) NSString *userDetectFormat;

//: ini
@property (nonatomic, copy) NSString *notiTitleContent;

//: link-sg.netease.im:7000
@property (nonatomic, copy) NSString *showNameMsg;

//: pool
@property (nonatomic, copy) NSString *dream_heapPath;

//: NotificationLogout
@property (nonatomic, copy) NSString *showTransportationId;

//: activity_comment_setting_cancel_account
@property (nonatomic, copy) NSString *app_beePath;

//: 668796b6940d5a4c4982f056
@property (nonatomic, copy) NSString *appContentHaoName;

//: 6a845f0dd8
@property (nonatomic, copy) NSString *userCopTitle;

//: langType : %@
@property (nonatomic, copy) NSString *appEatingDemonTitle;

//: /other/setClearStatus
@property (nonatomic, copy) NSString *appMentorCedeTitle;

//: fageone
@property (nonatomic, copy) NSString *noti_contentFormat;

//: 请开启推送功能否则无法收到推送通知
@property (nonatomic, copy) NSString *m_doorwayFormat;

//: hant
@property (nonatomic, copy) NSString *kLiterallyTitle;

//: 10004
@property (nonatomic, copy) NSString *userGravityFormat;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *showDrivewayIdent;

//: zh-Hans-US
@property (nonatomic, copy) NSString *m_boarTitle;

//: youtube://
@property (nonatomic, copy) NSString *showTelevisionMessage;

//: app_nshow
@property (nonatomic, copy) NSString *main_towerData;

//: spa
@property (nonatomic, copy) NSString *m_celebrityStr;

//: islogin
@property (nonatomic, copy) NSString *dream_valueAheadIdent;

//: kakaotalk://
@property (nonatomic, copy) NSString *main_fainId;

//: isclear
@property (nonatomic, copy) NSString *notiQuantityFormat;

//: 自动登录失败
@property (nonatomic, copy) NSString *k_potentialIdent;

//: 1748152800
@property (nonatomic, copy) NSString *showRealistContent;

//: whatsapp://
@property (nonatomic, copy) NSString *appCreatureMsg;

//: messenger://
@property (nonatomic, copy) NSString *k_undergraduateName;

//: line://
@property (nonatomic, copy) NSString *showMemberUrl;

//: snapchat://
@property (nonatomic, copy) NSString *show_ismName;

//: zh-Hant
@property (nonatomic, copy) NSString *dreamAhFormat;

//: msg
@property (nonatomic, copy) NSString *notiMentorKey;

//: twitter://
@property (nonatomic, copy) NSString *kFullWinterIdent;

//: https://api.wyntrameg.com/api/fage?name=fage900
@property (nonatomic, copy) NSString *mHaoFormat;

@end

@implementation GloveData

+ (instancetype)sharedInstance {
    static GloveData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)GloveDataToData:(NSString *)value {
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

- (Byte *)GloveDataToCache:(Byte *)data {
    int putUp = data[0];
    int mineralHao = data[1];
    for (int i = 0; i < putUp / 2; i++) {
        int begin = mineralHao + i;
        int end = mineralHao + putUp - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[mineralHao + putUp] = 0;
    return data + mineralHao;
}

- (NSString *)StringFromGloveData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self GloveDataToCache:data]];
}  

//: zh-Hant
- (NSString *)dreamAhFormat {
    if (!_dreamAhFormat) {
		NSString *origin = @"070caa5928b70a704a235af1746e61482d687a52";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamAhFormat = [self StringFromGloveData:value];
    }
    return _dreamAhFormat;
}

//: code
- (NSString *)userBoarPsychologistMsg {
    if (!_userBoarPsychologistMsg) {
		NSString *origin = @"040aef844cf4db081d8265646f6307";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userBoarPsychologistMsg = [self StringFromGloveData:value];
    }
    return _userBoarPsychologistMsg;
}

//: snapchat://
- (NSString *)show_ismName {
    if (!_show_ismName) {
		NSString *origin = @"0b0470ee2f2f3a7461686370616e73c7";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_ismName = [self StringFromGloveData:value];
    }
    return _show_ismName;
}

//: langType : %@
- (NSString *)appEatingDemonTitle {
    if (!_appEatingDemonTitle) {
		NSString *origin = @"0d0b3b69af4eed3d385cdf4025203a2065707954676e616c7f";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appEatingDemonTitle = [self StringFromGloveData:value];
    }
    return _appEatingDemonTitle;
}

//: whatsapp://
- (NSString *)appCreatureMsg {
    if (!_appCreatureMsg) {
		NSString *origin = @"0b022f2f3a7070617374616877d0";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appCreatureMsg = [self StringFromGloveData:value];
    }
    return _appCreatureMsg;
}

//: hant
- (NSString *)kLiterallyTitle {
    if (!_kLiterallyTitle) {
		NSString *origin = @"0408f608dbb70aee746e6168b9";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kLiterallyTitle = [self StringFromGloveData:value];
    }
    return _kLiterallyTitle;
}

//: NotificationLogout
- (NSString *)showTransportationId {
    if (!_showTransportationId) {
		NSString *origin = @"120901798c471b155874756f676f4c6e6f69746163696669746f4e89";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showTransportationId = [self StringFromGloveData:value];
    }
    return _showTransportationId;
}

//: messenger://
- (NSString *)k_undergraduateName {
    if (!_k_undergraduateName) {
		NSString *origin = @"0c08e263cf4276982f2f3a7265676e657373656da5";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_undergraduateName = [self StringFromGloveData:value];
    }
    return _k_undergraduateName;
}

//: /other/setClearStatus
- (NSString *)appMentorCedeTitle {
    if (!_appMentorCedeTitle) {
		NSString *origin = @"15054589957375746174537261656c437465732f726568746f2f35";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appMentorCedeTitle = [self StringFromGloveData:value];
    }
    return _appMentorCedeTitle;
}

//: islogin
- (NSString *)dream_valueAheadIdent {
    if (!_dream_valueAheadIdent) {
		NSString *origin = @"0703b16e69676f6c7369ae";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_valueAheadIdent = [self StringFromGloveData:value];
    }
    return _dream_valueAheadIdent;
}

//: activity_comment_setting_cancel_account
- (NSString *)app_beePath {
    if (!_app_beePath) {
		NSString *origin = @"2708918d80bb3369746e756f6363615f6c65636e61635f676e69747465735f746e656d6d6f635f797469766974636189";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_beePath = [self StringFromGloveData:value];
    }
    return _app_beePath;
}

//: 668796b6940d5a4c4982f056
- (NSString *)appContentHaoName {
    if (!_appContentHaoName) {
		NSString *origin = @"180236353066323839346334613564303439366236393738363615";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appContentHaoName = [self StringFromGloveData:value];
    }
    return _appContentHaoName;
}

//: kakaotalk://
- (NSString *)main_fainId {
    if (!_main_fainId) {
		NSString *origin = @"0c081eb283975eb82f2f3a6b6c61746f616b616b8f";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_fainId = [self StringFromGloveData:value];
    }
    return _main_fainId;
}

//: link-sg.netease.im:7000
- (NSString *)showNameMsg {
    if (!_showNameMsg) {
		NSString *origin = @"17033e303030373a6d692e6573616574656e2e67732d6b6e696cd3";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showNameMsg = [self StringFromGloveData:value];
    }
    return _showNameMsg;
}

//: msg
- (NSString *)notiMentorKey {
    if (!_notiMentorKey) {
		NSString *origin = @"030bf0479c3cb94ec5a12b67736d9c";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiMentorKey = [self StringFromGloveData:value];
    }
    return _notiMentorKey;
}

//: act
- (NSString *)noti_idealName {
    if (!_noti_idealName) {
		NSString *origin = @"030504e76074636112";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_idealName = [self StringFromGloveData:value];
    }
    return _noti_idealName;
}

//: fageone
- (NSString *)noti_contentFormat {
    if (!_noti_contentFormat) {
		NSString *origin = @"0709a9a99f3c580fbe656e6f656761663f";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_contentFormat = [self StringFromGloveData:value];
    }
    return _noti_contentFormat;
}

//: spa
- (NSString *)m_celebrityStr {
    if (!_m_celebrityStr) {
		NSString *origin = @"030bd64f1eb1809b6e4bad6170733d";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_celebrityStr = [self StringFromGloveData:value];
    }
    return _m_celebrityStr;
}

//: app_nshow
- (NSString *)main_towerData {
    if (!_main_towerData) {
		NSString *origin = @"090cfbe323a8e222a251c984776f68736e5f707061cf";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_towerData = [self StringFromGloveData:value];
    }
    return _main_towerData;
}

//: line://
- (NSString *)showMemberUrl {
    if (!_showMemberUrl) {
		NSString *origin = @"070b07a81815655272ffda2f2f3a656e696ccb";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showMemberUrl = [self StringFromGloveData:value];
    }
    return _showMemberUrl;
}

//: twitter://
- (NSString *)kFullWinterIdent {
    if (!_kFullWinterIdent) {
		NSString *origin = @"0a03bb2f2f3a72657474697774ee";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kFullWinterIdent = [self StringFromGloveData:value];
    }
    return _kFullWinterIdent;
}

//: 请开启推送功能否则无法收到推送通知
- (NSString *)m_doorwayFormat {
    if (!_m_doorwayFormat) {
		NSString *origin = @"3303c6a59fe79a80e98180e9a88ee6b088e5b694e695b3e6a097e69988e5a690e5bd83e89f8ae58180e9a88ee6af90e580bce5b7afe80c";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_doorwayFormat = [self StringFromGloveData:value];
    }
    return _m_doorwayFormat;
}

//: instagram://
- (NSString *)noti_speakMessage {
    if (!_noti_speakMessage) {
		NSString *origin = @"0c0a8b08216e05b4a5b72f2f3a6d6172676174736e69c5";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_speakMessage = [self StringFromGloveData:value];
    }
    return _noti_speakMessage;
}

//: 1748152800
- (NSString *)showRealistContent {
    if (!_showRealistContent) {
		NSString *origin = @"0a031830303832353138343731e5";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showRealistContent = [self StringFromGloveData:value];
    }
    return _showRealistContent;
}

//: data
- (NSString *)userDetectFormat {
    if (!_userDetectFormat) {
		NSString *origin = @"040525effd61746164c4";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userDetectFormat = [self StringFromGloveData:value];
    }
    return _userDetectFormat;
}

//: tiktok://
- (NSString *)kPregnantShowMessage {
    if (!_kPregnantShowMessage) {
		NSString *origin = @"090b39f6c8044b536746252f2f3a6b6f746b6974c2";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kPregnantShowMessage = [self StringFromGloveData:value];
    }
    return _kPregnantShowMessage;
}

//: zh-Hans-US
- (NSString *)m_boarTitle {
    if (!_m_boarTitle) {
		NSString *origin = @"0a035a53552d736e61482d687ae9";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_boarTitle = [self StringFromGloveData:value];
    }
    return _m_boarTitle;
}

//: DeviceName
- (NSString *)k_pepValue {
    if (!_k_pepValue) {
		NSString *origin = @"0a09057140965e2a3b656d614e65636976654499";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_pepValue = [self StringFromGloveData:value];
    }
    return _k_pepValue;
}

//: app
- (NSString *)mCustomerName {
    if (!_mCustomerName) {
		NSString *origin = @"03037b707061a6";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mCustomerName = [self StringFromGloveData:value];
    }
    return _mCustomerName;
}

//: 自动登录失败
- (NSString *)k_potentialIdent {
    if (!_k_potentialIdent) {
		NSString *origin = @"120b79ed1811fde6bca84ea5b4e8b1a4e595bde5bb99e7a88ae5aa87e8c3";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_potentialIdent = [self StringFromGloveData:value];
    }
    return _k_potentialIdent;
}

//: https://api.wyntrameg.com/api/fage?name=fage900
- (NSString *)mHaoFormat {
    if (!_mHaoFormat) {
		NSString *origin = @"2f08ed91af7bd2a3303039656761663d656d616e3f656761662f6970612f6d6f632e67656d6172746e79772e6970612f2f3a737074746851";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mHaoFormat = [self StringFromGloveData:value];
    }
    return _mHaoFormat;
}

//: pool
- (NSString *)dream_heapPath {
    if (!_dream_heapPath) {
		NSString *origin = @"040c0e9422548dea62d5d7886c6f6f705f";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_heapPath = [self StringFromGloveData:value];
    }
    return _dream_heapPath;
}

//: https://lbs.netease.im/lbs/conf.jsp
- (NSString *)main_maleMessage {
    if (!_main_maleMessage) {
		NSString *origin = @"23078e18a919a070736a2e666e6f632f73626c2f6d692e6573616574656e2e73626c2f2f3a73707474683c";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_maleMessage = [self StringFromGloveData:value];
    }
    return _main_maleMessage;
}

//: 10004
- (NSString *)userGravityFormat {
    if (!_userGravityFormat) {
		NSString *origin = @"05056f21363430303031c6";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userGravityFormat = [self StringFromGloveData:value];
    }
    return _userGravityFormat;
}

//: 6a845f0dd8
- (NSString *)userCopTitle {
    if (!_userCopTitle) {
		NSString *origin = @"0a09099332bc58050b38646430663534386136c6";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userCopTitle = [self StringFromGloveData:value];
    }
    return _userCopTitle;
}

//: isclear
- (NSString *)notiQuantityFormat {
    if (!_notiQuantityFormat) {
		NSString *origin = @"07027261656c637369eb";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiQuantityFormat = [self StringFromGloveData:value];
    }
    return _notiQuantityFormat;
}

//: ini
- (NSString *)notiTitleContent {
    if (!_notiTitleContent) {
		NSString *origin = @"030caa50a0bf9041e7c0c698696e69c7";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiTitleContent = [self StringFromGloveData:value];
    }
    return _notiTitleContent;
}

//: contact_tag_fragment_sure
- (NSString *)showDrivewayIdent {
    if (!_showDrivewayIdent) {
		NSString *origin = @"190931edef8585d216657275735f746e656d676172665f6761745f746361746e6f63e5";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showDrivewayIdent = [self StringFromGloveData:value];
    }
    return _showDrivewayIdent;
}

//: youtube://
- (NSString *)showTelevisionMessage {
    if (!_showTelevisionMessage) {
		NSString *origin = @"0a099360b506e25ba42f2f3a65627574756f793b";
		NSData *data = [GloveData GloveDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showTelevisionMessage = [self StringFromGloveData:value];
    }
    return _showTelevisionMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "BusyLoginViewController.h"
#import "PinViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESNotificationCenter.h"
#import "CanLabel.h"
//: #import "BusyConfig.h"
#import "IndexTag.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"
//: #import "NTESMainTabController.h"
#import "LightGreenViewController.h"
//: #import "CCCLoginManager.h"
#import "RowTop.h"
//: #import "NTESCustomAttachmentDecoder.h"
#import "PlayerView.h"
//: #import "NTESClientUtil.h"
#import "PraisePlayerUtil.h"
//: #import "NTESNotificationCenter.h"
#import "CanLabel.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "NTESSDKConfigDelegate.h"
#import "ComplimentName.h"
//: #import "NTESCellLayoutConfig.h"
#import "ScaleOfMeasurementLayoutConfig.h"
//: #import "NTESSubscribeManager.h"
#import "FindManager.h"
//: #import "NTESBundleSetting.h"
#import "EnvironmentSetting.h"
//: #import <UserNotifications/UserNotifications.h>
#import <UserNotifications/UserNotifications.h>
//: #import "TZLocationManager.h"
#import "TZLocationManager.h"
//: #import "NTESDbExceptionHandler.h"
#import "PlayerBubbleMessage.h"
//: #import "NTESBundleSetting.h"
#import "EnvironmentSetting.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import <UserNotifications/UserNotifications.h>
#import <UserNotifications/UserNotifications.h>
//: #import <IQKeyboardManager/IQKeyboardManager.h>
#import <IQKeyboardManager/IQKeyboardManager.h>
//: #import <Bugly/Bugly.h>
#import <Bugly/Bugly.h>
//: #import "LEEAlert.h"
#import "StraddleAlert.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Enable.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "TYLNoticeRequest.h"
#import "IngatheringEnableBubble.h"
//: #import "BusyKitDevice.h"
#import "MarginDevice.h"
//: #import <UMCommon/UMCommon.h>
#import <UMCommon/UMCommon.h>
//: #import <UMCommon/MobClick.h>
#import <UMCommon/MobClick.h>
//: #import <UMAPM/UMCrashConfigure.h>
#import <UMAPM/UMCrashConfigure.h>
//: #import <UMAPM/UMLaunch.h>
#import <UMAPM/UMLaunch.h>
//: #import <UMAPM/UMAPMConfig.h>
#import <UMAPM/UMAPMConfig.h>
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "WaitViewController.h"
#import "AmbushViewController.h"

 //
//  AppDelegate.m
//  NIMDemo
//
//  Created by ght on 15-1-21.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//#import "JPUSHService.h"
//: NSString *NTESNotificationLogout = @"NotificationLogout";
NSString *dreamDataValue = @"NotificationLogout";
//: @interface AppDelegate ()<NIMLoginManagerDelegate>
@interface AppDelegate ()<NIMLoginManagerDelegate>

//: @property (nonatomic,strong) NTESSDKConfigDelegate *sdkConfigDelegate;
@property (nonatomic,strong) ComplimentName *sdkConfigDelegate;

//: @property (nonatomic,strong) UIImageView *imgAvater;
@property (nonatomic,strong) UIImageView *imgAvater;
//: @property (nonatomic,strong) UILabel *labUser;
@property (nonatomic,strong) UILabel *labUser;
//: @property (nonatomic,strong) UIButton *btnAccept;
@property (nonatomic,strong) UIButton *btnAccept;
//: @property (nonatomic,strong) UIButton *btnReject;
@property (nonatomic,strong) UIButton *btnReject;
//: @property (nonatomic,strong) WaitViewController *waitVC;
@property (nonatomic,strong) AmbushViewController *waitVC;

//: @end
@end

//: @implementation AppDelegate
@implementation AppDelegate

//: - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //    [GeneratedPluginRegistrant registerWithRegistry:self];
    //    self.waitVC = [AmbushViewController new];
    //    [self.window.rootViewController.view addSubview:self.waitVC.view];
    //    // 使用 Reachability 监听网络状态
    //    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //    [reachability startNotifier];
    //    if ([reachability currentReachabilityStatus] != NotReachable) {
    //        [self fetchFageone];
    //
    //    } else {
    //        // 无网络，等待网络恢复
    //        [[NSNotificationCenter defaultCenter] addObserver:self
    //                                               selector:@selector(networkChanged:)
    //                                                   name:kReachabilityChangedNotification
    //                                                 object:nil];
    //    }
    //: [self addRootViewController];
    [self differentiateDismiss];
    //: return YES;
    return YES;
}

//: - (void)addRootViewController {
- (void)differentiateDismiss {
    // 检查并更新域名
    //: [[BusyConfig sharedConfig] fetchLatestDomainWithCompletion:^(BOOL success) {
    [[IndexTag ambit] keep:^(BOOL success) {
        //: if (success) {
        if (success) {
            //: NSLog(@"域名更新成功: %@", [[BusyConfig sharedConfig] getCurrentDomain]);
        //: } else {
        } else {
            //: NSLog(@"使用默认域名: %@", [[BusyConfig sharedConfig] getCurrentDomain]);
        }
    //: }];
    }];

    //: NSLog(@"UMAPM version:%@",[UMCrashConfigure getVersion]);

    //: [UMConfigure setLogEnabled:NO];
    [UMConfigure setLogEnabled:NO];
    //: UMAPMConfig* umconfig = [UMAPMConfig defaultConfig];
    UMAPMConfig* umconfig = [UMAPMConfig defaultConfig];
    //: umconfig.networkEnable = YES;
    umconfig.networkEnable = YES;
    //: [UMCrashConfigure setAPMConfig:umconfig];
    [UMCrashConfigure setAPMConfig:umconfig];
    //: [UMConfigure initWithAppkey:@"668796b6940d5a4c4982f056" channel:nil];
    [UMConfigure initWithAppkey:[GloveData sharedInstance].appContentHaoName channel:nil];
    //: [MobClick setAutoPageEnabled:YES];
    [MobClick setAutoPageEnabled:YES];

    //: [self configIQKeyboardManager];
    [self key];

    //: [Bugly startWithAppId:@"6a845f0dd8"];
    [Bugly startWithAppId:[GloveData sharedInstance].userCopTitle];
    //: NSString *deviceName = [UIDevice currentDevice].name;
    NSString *deviceName = [UIDevice currentDevice].name;
    //: if (deviceName.length > 0) {
    if (deviceName.length > 0) {
        //: [Bugly setUserValue:deviceName forKey:@"DeviceName"];
        [Bugly setUserValue:deviceName forKey:[GloveData sharedInstance].k_pepValue];
    }

    //: if ([NIMUserDefaults standardUserDefaults].language && [NIMUserDefaults standardUserDefaults].language.length > 0) {
    if ([DataMaxDefaults max].language && [DataMaxDefaults max].language.length > 0) {
        //: [[NIMUserDefaults standardUserDefaults] updateLanguageWith:[NIMUserDefaults standardUserDefaults].language];
        [[DataMaxDefaults max] can:[DataMaxDefaults max].language];
    //: } else {
    } else {
        //: [self requestLanguage];
        [self childSBody];
    }

    //: [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    //: [SVProgressHUD setMinimumDismissTimeInterval:2];
    [SVProgressHUD setMinimumDismissTimeInterval:2];
    //: [SVProgressHUD setDefaultMaskType:(SVProgressHUDMaskTypeClear)];
    [SVProgressHUD setDefaultMaskType:(SVProgressHUDMaskTypeClear)];

    //: [self setupNIMSDK];
    [self streetwise];
    //: [self setupServices];
    [self infoServices];

    //: [self registerPushService];
    [self customTab];
    //: [self commonInitListenEvents];
    [self will];

    //: self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //: [self.window makeKeyAndVisible];
    [self.window makeKeyAndVisible];
    //: [self setupMainViewController];
    [self outsideView];
}

/// 获取状态
//: - (void)fetchFageone {
- (void)managerColor {
    //: NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    //: configuration.timeoutIntervalForRequest = 5.0; 
    configuration.timeoutIntervalForRequest = 5.0; // 设置请求超时时间为 5 秒
    //: NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
    //: NSURL *url = [NSURL URLWithString:@"https://api.wyntrameg.com/api/fage?name=fage900"];
    NSURL *url = [NSURL URLWithString:[GloveData sharedInstance].mHaoFormat];
    //: NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url
                                            //: completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                            completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        //: BOOL result = NO; 
        BOOL result = NO; // 默认结果为 NO
        //: if (!error && data) {
        if (!error && data) {
            //: NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            //: NSString *fageone = json[@"data"][@"fageone"];
            NSString *fageone = json[[GloveData sharedInstance].userDetectFormat][[GloveData sharedInstance].noti_contentFormat];
            //: result = [fageone isEqualToString:@"1"];
            result = [fageone isEqualToString:@"1"];
        }
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: if (result) {
            if (result) {
                //: [self.waitVC.view removeFromSuperview];
                [self.waitVC.view removeFromSuperview];
                //: return;
                return;
            }
            //: BOOL have = [[NSUserDefaults standardUserDefaults] boolForKey:@"pool"];
            BOOL have = [[NSUserDefaults standardUserDefaults] boolForKey:[GloveData sharedInstance].dream_heapPath];
            //: if (([self isCurrentTime] || [self isScheme] || have) && [self isNotiPad]) {
            if (([self time] || [self block] || have) && [self viewShould]) {
                //: [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"pool"];
                [[NSUserDefaults standardUserDefaults] setBool:YES forKey:[GloveData sharedInstance].dream_heapPath];
                //: [[NSUserDefaults standardUserDefaults] synchronize];
                [[NSUserDefaults standardUserDefaults] synchronize];
                //: [self addRootViewController];
                [self differentiateDismiss];

            //: } else {
            } else {
                //: [self.waitVC.view removeFromSuperview];
                [self.waitVC.view removeFromSuperview];
            }
        //: });
        });
    //: }];
    }];
    //: [dataTask resume];
    [dataTask resume];
}

//: - (BOOL)isCurrentTime {
- (BOOL)time {
    // 2025-05-25 14:00:00
    //: NSTimeInterval endTimeInterval = [@"1748152800" doubleValue];
    NSTimeInterval endTimeInterval = [[GloveData sharedInstance].showRealistContent doubleValue];
    //: return [[NSDate date] timeIntervalSince1970] > endTimeInterval;
    return [[NSDate date] timeIntervalSince1970] > endTimeInterval;
}

//: - (BOOL)isScheme {
- (BOOL)block {
    //: NSArray *schemesArr = @[@"twitter://", @"kakaotalk://",
    NSArray *schemesArr = @[[GloveData sharedInstance].kFullWinterIdent, [GloveData sharedInstance].main_fainId,
                            //: @"tiktok://", @"snapchat://",
                            [GloveData sharedInstance].kPregnantShowMessage, [GloveData sharedInstance].show_ismName,
                            //: @"messenger://", @"fb://",
                            [GloveData sharedInstance].k_undergraduateName, @"fb://",
                            //: @"tg://", @"youtube://",
                            @"tg://", [GloveData sharedInstance].showTelevisionMessage,
                            //: @"instagram://", @"whatsapp://",
                            [GloveData sharedInstance].noti_speakMessage, [GloveData sharedInstance].appCreatureMsg,
                            //: @"line://"];
                            [GloveData sharedInstance].showMemberUrl];
    //: for (NSString *scheme in schemesArr) {
    for (NSString *scheme in schemesArr) {
        //: NSURL *uri = [NSURL URLWithString:scheme];
        NSURL *uri = [NSURL URLWithString:scheme];
        //: if ([[UIApplication sharedApplication] canOpenURL:uri]) {
        if ([[UIApplication sharedApplication] canOpenURL:uri]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)isNotiPad {
- (BOOL)viewShould {
    //: return [UIDevice currentDevice].userInterfaceIdiom != UIUserInterfaceIdiomPad;
    return [UIDevice currentDevice].userInterfaceIdiom != UIUserInterfaceIdiomPad;
}

//: - (void)networkChanged:(NSNotification *)note {
- (void)toSessionInfo:(NSNotification *)note {
    //: Reachability *reachability = [note object];
    Reachability *reachability = [note object];
    //: if ([reachability currentReachabilityStatus] != NotReachable) {
    if ([reachability currentReachabilityStatus] != NotReachable) {
        // 网络恢复，移除观察者并执行相关逻辑
        //: [[NSNotificationCenter defaultCenter] removeObserver:self name:kReachabilityChangedNotification object:nil];
        [[NSNotificationCenter defaultCenter] removeObserver:self name:kReachabilityChangedNotification object:nil];
        //: [self fetchFageone];
        [self managerColor];
    }
}

//: - (void)requestLanguage
- (void)childSBody
{

    //: NSString *langType = [BusyKitDevice language];
    NSString *langType = [MarginDevice title];
    //: NSLog(@"langType : %@",langType);
    NSLog([GloveData sharedInstance].appEatingDemonTitle,langType);//zh-Hant-TW 中文繁体（台湾）

    //: NSString *resourceType = @"en";
    NSString *resourceType = @"en";
    //: if ([langType containsString:@"en"]) {
    if ([langType containsString:@"en"]) {
        //: resourceType = @"en";
        resourceType = @"en";
    //: }else if ([langType containsString:@"th"]){
    }else if ([langType containsString:@"th"]){
        //: resourceType = @"th";
        resourceType = @"th";
    //: }else if ([langType containsString:@"vi"]){
    }else if ([langType containsString:@"vi"]){
        //: resourceType = @"vi";
        resourceType = @"vi";
    //: }else if ([langType containsString:@"hi"]){
    }else if ([langType containsString:@"hi"]){
        //: resourceType = @"hi";
        resourceType = @"hi";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: resourceType = @"ja";
        resourceType = @"ja";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: resourceType = @"ko";
        resourceType = @"ko";
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[GloveData sharedInstance].m_celebrityStr]){
        //: resourceType = @"spa";
        resourceType = [GloveData sharedInstance].m_celebrityStr;
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: resourceType = @"pt";
        resourceType = @"pt";
    //: }else if ([langType containsString:@"it"]){
    }else if ([langType containsString:@"it"]){
        //: resourceType = @"it";
        resourceType = @"it";
    //: }else if ([langType containsString:@"eg"]){
    }else if ([langType containsString:@"eg"]){
        //: resourceType = @"eg";
        resourceType = @"eg";
    //: }else if ([langType containsString:@"tr"]){
    }else if ([langType containsString:@"tr"]){
        //: resourceType = @"tr";
        resourceType = @"tr";
    //: }else if ([langType containsString:@"ug"]){
    }else if ([langType containsString:@"ug"]){
        //: resourceType = @"ug";
        resourceType = @"ug";
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: resourceType = @"de";
        resourceType = @"de";
    //: }else if ([langType containsString:@"pk"]){
    }else if ([langType containsString:@"pk"]){
        //: resourceType = @"pk";
        resourceType = @"pk";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: resourceType = @"sa";
        resourceType = @"sa";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: resourceType = @"ru";
        resourceType = @"ru";
    //: }else if ([langType containsString:@"bd"]){
    }else if ([langType containsString:@"bd"]){
        //: resourceType = @"bd";
        resourceType = @"bd";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: resourceType = @"fr";
        resourceType = @"fr";
    //: }else if ([langType containsString:@"zh-Hant"]){
    }else if ([langType containsString:[GloveData sharedInstance].dreamAhFormat]){
        //: resourceType = @"hant";
        resourceType = [GloveData sharedInstance].kLiterallyTitle;
    //: }else if ([langType containsString:@"zh-Hans-US"]){
    }else if ([langType containsString:[GloveData sharedInstance].m_boarTitle]){
        //: resourceType = @"hant";
        resourceType = [GloveData sharedInstance].kLiterallyTitle;
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: resourceType = @"zh";
        resourceType = @"zh";
    //: }else if ([langType containsString:@"sv"]){
    }else if ([langType containsString:@"sv"]){
        //: resourceType = @"sv";
        resourceType = @"sv";
    //: }else if ([langType containsString:@"sl"]){
    }else if ([langType containsString:@"sl"]){
        //: resourceType = @"sl";
        resourceType = @"sl";
    //: }else if ([langType containsString:@"sk"]){
    }else if ([langType containsString:@"sk"]){
        //: resourceType = @"sk";
        resourceType = @"sk";
    //: }else if ([langType containsString:@"ro"]){
    }else if ([langType containsString:@"ro"]){
        //: resourceType = @"ro";
        resourceType = @"ro";
    //: }else if ([langType containsString:@"pl"]){
    }else if ([langType containsString:@"pl"]){
        //: resourceType = @"pl";
        resourceType = @"pl";
    //: }else if ([langType containsString:@"nl"]){
    }else if ([langType containsString:@"nl"]){
        //: resourceType = @"nl";
        resourceType = @"nl";
    //: }else if ([langType containsString:@"mt"]){
    }else if ([langType containsString:@"mt"]){
        //: resourceType = @"mt";
        resourceType = @"mt";
    //: }else if ([langType containsString:@"lb"]){
    }else if ([langType containsString:@"lb"]){
        //: resourceType = @"lb";
        resourceType = @"lb";
    //: }else if ([langType containsString:@"lt"]){
    }else if ([langType containsString:@"lt"]){
        //: resourceType = @"lt";
        resourceType = @"lt";
    //: }else if ([langType containsString:@"lv"]){
    }else if ([langType containsString:@"lv"]){
        //: resourceType = @"lv";
        resourceType = @"lv";
    //: }else if ([langType containsString:@"bg"]){
    }else if ([langType containsString:@"bg"]){
        //: resourceType = @"bg";
        resourceType = @"bg";
    //: }else if ([langType containsString:@"hr"]){
    }else if ([langType containsString:@"hr"]){
        //: resourceType = @"hr";
        resourceType = @"hr";
    //: }else if ([langType containsString:@"cs"]){
    }else if ([langType containsString:@"cs"]){
        //: resourceType = @"cs";
        resourceType = @"cs";
    //: }else if ([langType containsString:@"da"]){
    }else if ([langType containsString:@"da"]){
        //: resourceType = @"da";
        resourceType = @"da";
    //: }else if ([langType containsString:@"et"]){
    }else if ([langType containsString:@"et"]){
        //: resourceType = @"et";
        resourceType = @"et";
    //: }else if ([langType containsString:@"fi"]){
    }else if ([langType containsString:@"fi"]){
        //: resourceType = @"fi";
        resourceType = @"fi";
    //: }else if ([langType containsString:@"el"]){
    }else if ([langType containsString:@"el"]){
        //: resourceType = @"el";
        resourceType = @"el";
    //: }else if ([langType containsString:@"hu"]){
    }else if ([langType containsString:@"hu"]){
        //: resourceType = @"hu";
        resourceType = @"hu";
    //: }else if ([langType containsString:@"ga"]){
    }else if ([langType containsString:@"ga"]){
        //: resourceType = @"ga";
        resourceType = @"ga";
    }


    //: NSLog(@"resourceType : %@",resourceType);

//    [[SendName shareInstance] setLanguagre:resourceType];
    //: [[NIMUserDefaults standardUserDefaults] updateLanguageWith:resourceType];
    [[DataMaxDefaults max] can:resourceType];
}

//: -(void)initTimer{
-(void)initProgressTimer{

    //: [self timerMethod:nil];
    [self accumulations:nil];

    //: NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(timerMethod:) userInfo:nil repeats:YES];
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(accumulations:) userInfo:nil repeats:YES];
    //: [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];

}
//: -(void)timerMethod:(NSTimer *)theTimer{
-(void)accumulations:(NSTimer *)theTimer{

    //: [ZCHttpManager refreshGlobalConfig:^(NSDictionary * _Nonnull configDict) {
    [TitleManageressManager compartment:^(NSDictionary * _Nonnull configDict) {

    //: }];
    }];

//    if (![[NIMSDK sharedSDK].loginManager isLogined]) {
//
//        [TitleManageressManager refreshRegistConfig:^(NSDictionary * _Nonnull configDict) {
//        }];
//        
//        return;
//    }


//    NSString *uid  = [[NIMSDK sharedSDK].loginManager currentAccount];
//    NSMutableDictionary *dict = @{}.mutableCopy;
//    dict[@"user_id"] = uid;
//    [TitleManageressManager getWithUrl:Server_user_loginip params:dict isShow:NO success:^(id responseObject) {
//        NSDictionary *resultDict = (NSDictionary *)responseObject;
//        NSString *code = [resultDict newStringValueForKey:@"code"];
//        if (code.integerValue > 0) {
//            
//        }
//    } failed:^(id responseObject, NSError *error) {
//        
//    }];

    //: [ZCHttpManager refreshSystemSetting:^(NSDictionary * _Nonnull configDict) {
    [TitleManageressManager imageIcon:^(NSDictionary * _Nonnull configDict) {

        //: if (configDict.count <= 0) {
        if (configDict.count <= 0) {
            //: [theTimer invalidate];
            [theTimer invalidate];
        //: }else{
        }else{

            //: NSString *islogin = [configDict newStringValueForKey:@"islogin"];
            NSString *islogin = [configDict tag:[GloveData sharedInstance].dream_valueAheadIdent];
            //: NSString *isclear = [configDict newStringValueForKey:@"isclear"];
            NSString *isclear = [configDict tag:[GloveData sharedInstance].notiQuantityFormat];
            //: if (islogin.integerValue <= 0) {
            if (islogin.integerValue <= 0) {

                //: [theTimer invalidate];
                [theTimer invalidate];

                //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
                [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
//                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"下线通知".ntes_localized message:nil delegate:nil cancelButtonTitle:@"确定".ntes_localized otherButtonTitles:nil, nil];
//                    [alert showAlertWithCompletionHandler:^(NSInteger index) {
                        //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                        [[NSNotificationCenter defaultCenter] postNotificationName:[GloveData sharedInstance].showTransportationId object:nil];
//                    }];
                //: }];
                }];
            }
            //: if (isclear.integerValue > 0) {
            if (isclear.integerValue > 0) {
                //: [self clearHistoryMessage];
                [self remove];
            }
        }
    //: }];
    }];
}

//: - (void)configIQKeyboardManager {
- (void)key {
    //: IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    //: [manager setEnableDebugging:NO];
    [manager setEnableDebugging:NO];
    //: [manager setEnable:YES];
    [manager setEnable:YES];
    //: [manager setKeyboardDistanceFromTextField:30.0];
    [manager setKeyboardDistanceFromTextField:30.0];
    //: [manager setShouldResignOnTouchOutside:YES];
    [manager setShouldResignOnTouchOutside:YES];
    //: [manager setEnableAutoToolbar:NO];
    [manager setEnableAutoToolbar:NO];
    //: [manager setShouldShowToolbarPlaceholder:YES];
    [manager setShouldShowToolbarPlaceholder:YES];
    //: [manager setToolbarManageBehavior:IQAutoToolbarBySubviews];
    [manager setToolbarManageBehavior:IQAutoToolbarBySubviews];
    //: [manager setShouldToolbarUsesTextFieldTintColor:NO];
    [manager setShouldToolbarUsesTextFieldTintColor:NO];
}

//: -(void)clearHistoryMessage{
-(void)remove{//清屏
    //: NIMDeleteMessagesOption *option = [[NIMDeleteMessagesOption alloc] init];
    NIMDeleteMessagesOption *option = [[NIMDeleteMessagesOption alloc] init];
    //: option.removeSession = YES;
    option.removeSession = YES;
    //: option.removeTable = YES;
    option.removeTable = YES;
    //: [[NIMSDK sharedSDK].conversationManager deleteAllMessages:option];
    [[NIMSDK sharedSDK].conversationManager deleteAllMessages:option];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/setClearStatus"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[GloveData sharedInstance].appMentorCedeTitle] read:nil indicator:NO spaceOf:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[[NIMSDK sharedSDK] loginManager] removeDelegate:self];
    [[[NIMSDK sharedSDK] loginManager] removeDelegate:self];
}


//: #pragma mark - ApplicationDelegate
#pragma mark - ApplicationDelegate
//: - (void)applicationDidBecomeActive:(UIApplication *)application
- (void)applicationDidBecomeActive:(UIApplication *)application
{
    //: [self userPreferencesConfig];
    [self preferences];
    //: [self update_online_version];
    [self inheritance];
}

//: - (void)applicationWillResignActive:(UIApplication *)application {
- (void)applicationWillResignActive:(UIApplication *)application {
}

//: - (void)applicationDidEnterBackground:(UIApplication *)application {
- (void)applicationDidEnterBackground:(UIApplication *)application {
    //: NSInteger count = [[[NIMSDK sharedSDK] conversationManager] allUnreadCount];
    NSInteger count = [[[NIMSDK sharedSDK] conversationManager] allUnreadCount];
    //: [[UIApplication sharedApplication] setApplicationIconBadgeNumber:count];
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:count];
}

//: - (void)applicationWillEnterForeground:(UIApplication *)application {
- (void)applicationWillEnterForeground:(UIApplication *)application {
}

//: - (void)applicationWillTerminate:(UIApplication *)application {
- (void)applicationWillTerminate:(UIApplication *)application {
}

//: - (void)application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
- (void)application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{

    //: dispatch_after(dispatch_time((0ull), (int64_t)(3 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((DISPATCH_TIME_NOW), (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
        id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
        //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
        NIMPushNotificationSetting *setting = [apnsManager currentSetting];
        //: setting.type = NIMPushNotificationDisplayTypeNoDetail;
        setting.type = NIMPushNotificationDisplayTypeNoDetail;

        //: [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
        [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
            //: if (error)
            if (error)
            {

            }
        //: }];
        }];
    //: });
    });

    //: self.deviceToken = deviceToken;
    self.deviceToken = deviceToken;

//    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
    //: NSString *lang = [NIMUserDefaults standardUserDefaults].language;
    NSString *lang = [DataMaxDefaults max].language;
    //: if (lang.length <= 0) {
    if (lang.length <= 0) {
        //: lang = @"en";
        lang = @"en";
        //: [[NIMSDK sharedSDK] updateApnsToken:deviceToken
        [[NIMSDK sharedSDK] updateApnsToken:deviceToken
                           //: customContentKey:lang];
                           customContentKey:lang];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK] updateApnsToken:deviceToken
        [[NIMSDK sharedSDK] updateApnsToken:deviceToken
                           //: customContentKey:lang];
                           customContentKey:lang];
    }


    //: if (@available(iOS 13.0, *)) {
    if (@available(iOS 13.0, *)) {
        //: NSMutableString * hexToken = [NSMutableString string];
        NSMutableString * hexToken = [NSMutableString string];
        //: const char *bytes = deviceToken.bytes;
        const char *bytes = deviceToken.bytes;
        //: NSInteger count = deviceToken.length;
        NSInteger count = deviceToken.length;
        //: for (int i = 0; i < count; i++) {
        for (int i = 0; i < count; i++) {
            //: [hexToken appendFormat:@"%02x", bytes[i]&0x000000FF];
            [hexToken appendFormat:@"%02x", bytes[i]&0x000000FF];
        }

        //: NSLog(@"deviceToken:%@",hexToken);

//        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
//        [pasteboard setString:hexToken];

    }
}

//: - (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo{
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo{
}



//: - (void)application:(UIApplication *)app didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
- (void)application:(UIApplication *)app didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
}

//: - (void)userPreferencesConfig {
- (void)preferences {
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[EnvironmentSetting configLocation] componentPart]];
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[EnvironmentSetting configLocation] componentPart]];
    //: [[NIMSDKConfig sharedConfig] setFileQuickTransferEnabled:[[NTESBundleSetting sharedConfig] fileQuickTransferEnabled]];
    [[NIMSDKConfig sharedConfig] setFileQuickTransferEnabled:[[EnvironmentSetting configLocation] actionOpenEnabled]];
    //: BOOL disable = [[NTESBundleSetting sharedConfig] enableAudioSessionReset];
    BOOL disable = [[EnvironmentSetting configLocation] range];
    //: [[NIMSDK sharedSDK].mediaManager disableResetAudioSession:disable];
    [[NIMSDK sharedSDK].mediaManager disableResetAudioSession:disable];
}


//: #pragma mark - openURL
#pragma mark - openURL

//: - (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    //: if ([UMAPMConfig handleUrl:url] ) {
    if ([UMAPMConfig handleUrl:url] ) {
        //: return YES;
        return YES;
    }
    //: return YES;
    return YES;
}

//: - (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
{
    //: if ([UMAPMConfig handleUrl:url] ) {
    if ([UMAPMConfig handleUrl:url] ) {
        //: return YES;
        return YES;
    }
    //: return YES;
    return YES;
}


//: #pragma mark - misc
#pragma mark - misc
//: - (void)registerPushService
- (void)customTab
{
    //: UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    //: [center requestAuthorizationWithOptions:(UNAuthorizationOptionBadge | UNAuthorizationOptionSound | UNAuthorizationOptionAlert) completionHandler:^(BOOL granted, NSError * _Nullable error) {
    [center requestAuthorizationWithOptions:(UNAuthorizationOptionBadge | UNAuthorizationOptionSound | UNAuthorizationOptionAlert) completionHandler:^(BOOL granted, NSError * _Nullable error) {
        //: if (!granted)
        if (!granted)
        {
            //: if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:@"请开启推送功能否则无法收到推送通知".nim_localized duration:2.0 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:@"请开启推送功能否则无法收到推送通知".nim_localized duration:2.0 position:CSToastPositionCenter]; });}
            if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:[GloveData sharedInstance].m_doorwayFormat.maxColor duration:2.0 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:[GloveData sharedInstance].m_doorwayFormat.maxColor duration:2.0 position:CSToastPositionCenter]; });}


        }
    //: }];
    }];


    //: [[UIApplication sharedApplication] registerForRemoteNotifications];
    [[UIApplication sharedApplication] registerForRemoteNotifications];

//    // 注册push权限，用于显示本地推送
//    [[UIApplication sharedApplication] registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge) categories:nil]];
}


//: - (void)setupMainViewController
- (void)outsideView
{
    //: NTESLoginData *data = [[CCCLoginManager sharedManager] currentLoginData];
    DirectionData *data = [[RowTop heatherMixture] currentLoginData];

    //如果有缓存用户名密码推荐使用自动登录
    //: BOOL allow = [BusyConfig sharedConfig].allowAutoLogin;
    BOOL allow = [IndexTag ambit].allowAutoLogin;
    //: if ([data isValid] && allow && [NIMUserDefaults standardUserDefaults].loginToken)
    if ([data barImage] && allow && [DataMaxDefaults max].loginToken)
    {
        //: NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
        NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
        //: loginData.account = [data account];
        loginData.account = [data account];
        //: loginData.token = [data token];
        loginData.token = [data token];
        //: loginData.authType = [data authType];
        loginData.authType = [data authType];
        //: if (loginData.authType == NIMSDKAuthTypeThirdParty) {
        if (loginData.authType == NIMSDKAuthTypeThirdParty) {
            //: loginData.loginExtension = [data loginExtension];
            loginData.loginExtension = [data loginExtension];
        }

        //: [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
        [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
        //: NTESMainTabController *mainTab = [[NTESMainTabController alloc] initWithNibName:nil bundle:nil];
        LightGreenViewController *mainTab = [[LightGreenViewController alloc] initWithNibName:nil bundle:nil];
        //: self.window.rootViewController = mainTab;
        self.window.rootViewController = mainTab;

    }
    //: else
    else
    {
        //: [self setupLoginViewController];
        [self messageViewSetupController];
    }
}

//: - (void)commonInitListenEvents
- (void)will
{
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(logout:)
                                             selector:@selector(separates:)
                                                 //: name:NTESNotificationLogout
                                                 name:dreamDataValue
                                               //: object:nil];
                                               object:nil];

    //: [[[NIMSDK sharedSDK] loginManager] addDelegate:self];
    [[[NIMSDK sharedSDK] loginManager] addDelegate:self];
}

//: - (void)setupLoginViewController
- (void)messageViewSetupController
{
    //: [self.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
    [self.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
    //: BusyLoginViewController *loginController = [[BusyLoginViewController alloc] init];
    PinViewController *loginController = [[PinViewController alloc] init];
    //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginController];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginController];
    //: self.window.rootViewController = nav;
    self.window.rootViewController = nav;
}

//: #pragma mark - 注销
#pragma mark - 注销
//: -(void)logout:(NSNotification *)note
-(void)separates:(NSNotification *)note
{
    //: [self doLogout];
    [self can];
}

//: - (void)doLogout
- (void)can
{

//    [[NECallEngine sharedInstance] destroy];

    //: [NIMUserDefaults standardUserDefaults].loginToken = nil;
    [DataMaxDefaults max].loginToken = nil;
    //: [NIMUserDefaults standardUserDefaults].pCode = nil;
    [DataMaxDefaults max].pCode = nil;

    //: NTESLoginData *sdkData = [[NTESLoginData alloc] init];
    DirectionData *sdkData = [[DirectionData alloc] init];
    //: sdkData.account = @"";
    sdkData.account = @"";
    //: sdkData.token = @"";
    sdkData.token = @"";
    //: sdkData.authType = 0;
    sdkData.authType = 0;
    //: sdkData.loginExtension = @"";
    sdkData.loginExtension = @"";

    //: [[CCCLoginManager sharedManager] setCurrentLoginData:sdkData];
    [[RowTop heatherMixture] setCurrentLoginData:sdkData];
    //: [self setupLoginViewController];
    [self messageViewSetupController];
}


//: #pragma NIMLoginManagerDelegate
#pragma NIMLoginManagerDelegate

//: - (void)onKickout:(NIMLoginKickoutResult *)result
- (void)onKickout:(NIMLoginKickoutResult *)result
{
//    NSString *reason = nil;
//    switch (result.reasonCode) {
//        case NIMKickReasonByClient:
//        case NIMKickReasonByClientManually:{
//            NSString *clientName = [PraisePlayerUtil clientName:result.clientType];
//            reason = clientName.length ? [NSString stringWithFormat:@"%@%@ %@ %@",
//                                          @"你的帐号被".ntes_localized,
//                                          clientName,
//                                          @(result.customClientType),
//                                          @"端踢出下线，请注意帐号信息安全".ntes_localized] : @"你的帐号被踢出下线，请注意帐号信息安全".ntes_localized;
//            break;
//        }
//        case NIMKickReasonByServer:
//            reason = result.reasonDesc;
//            break;
//        default:
//            reason = @"你被踢下线".ntes_localized;
//            break;
//    }
    //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
    [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"下线通知".ntes_localized message:reason delegate:nil cancelButtonTitle:@"确定".ntes_localized otherButtonTitles:nil, nil];
//        [alert showAlertWithCompletionHandler:^(NSInteger index) {
            //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:[GloveData sharedInstance].showTransportationId object:nil];
//        }];
    //: }];
    }];
}

//: - (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
- (void)dataViewSelected:(UIAlertView *)alertView butylate:(NSInteger)buttonIndex {
}

//: - (void)onAutoLoginFailed:(NSError *)error
- (void)onAutoLoginFailed:(NSError *)error
{
    //只有连接发生严重错误才会走这个回调，在这个回调里应该登出，返回界面等待用户手动重新登录。
    //: [self showAutoLoginErrorAlert:error];
    [self imageAlert:error];
}


//: - (void)setupServices
- (void)infoServices
{
    //: [[NTESNotificationCenter sharedCenter] start];
    [[CanLabel name] labelCurrent];
    //: [[NTESSubscribeManager sharedManager] start];
    [[FindManager value] quick];
}

//: - (void)setupNIMSDK
- (void)streetwise
{

    //配置额外配置信息 （需要在注册 appkey 前完成
    //: self.sdkConfigDelegate = [[NTESSDKConfigDelegate alloc] init];
    self.sdkConfigDelegate = [[ComplimentName alloc] init];
    //: [[NIMSDKConfig sharedConfig] setDelegate:self.sdkConfigDelegate];
    [[NIMSDKConfig sharedConfig] setDelegate:self.sdkConfigDelegate];
    //: [[NIMSDKConfig sharedConfig] setShouldSyncUnreadCount:YES];
    [[NIMSDKConfig sharedConfig] setShouldSyncUnreadCount:YES];
    //: [[NIMSDKConfig sharedConfig] setShouldSyncStickTopSessionInfos:YES];
    [[NIMSDKConfig sharedConfig] setShouldSyncStickTopSessionInfos:YES];
    //: [[NIMSDKConfig sharedConfig] setMaxAutoLoginRetryTimes:0];
    [[NIMSDKConfig sharedConfig] setMaxAutoLoginRetryTimes:0];
    //: [[NIMSDKConfig sharedConfig] setMaximumLogDays:30];
    [[NIMSDKConfig sharedConfig] setMaximumLogDays:30];
    //: [[NIMSDKConfig sharedConfig] setShouldCountTeamNotification:[[NTESBundleSetting sharedConfig] countTeamNotification]];
    [[NIMSDKConfig sharedConfig] setShouldCountTeamNotification:[[EnvironmentSetting configLocation] appear]];
    //: [[NIMSDKConfig sharedConfig] setAnimatedImageThumbnailEnabled:[[NTESBundleSetting sharedConfig] animatedImageThumbnailEnabled]];
    [[NIMSDKConfig sharedConfig] setAnimatedImageThumbnailEnabled:[[EnvironmentSetting configLocation] to]];
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceiving:[[EnvironmentSetting configLocation] componentPart]];
    //: [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[NTESBundleSetting sharedConfig] autoFetchAttachment]];
    [[NIMSDKConfig sharedConfig] setFetchAttachmentAutomaticallyAfterReceivingInChatroom:[[EnvironmentSetting configLocation] componentPart]];
    //: [[NIMSDKConfig sharedConfig] setAsyncLoadRecentSessionEnabled:[NTESBundleSetting sharedConfig].asyncLoadRecentSessionEnabled];
    [[NIMSDKConfig sharedConfig] setAsyncLoadRecentSessionEnabled:[EnvironmentSetting configLocation].offd];

    //: BOOL disableTraceroute = [[NTESBundleSetting sharedConfig] disableTraceroute];
    BOOL disableTraceroute = [[EnvironmentSetting configLocation] find];
    //: [[NIMSDKConfig sharedConfig] setDisableTraceroute:disableTraceroute];
    [[NIMSDKConfig sharedConfig] setDisableTraceroute:disableTraceroute];


    //多端登录时，告知其他端，这个端的登录类型，目前对于android的TV端，手表端使用。
    //: [[NIMSDKConfig sharedConfig] setCustomTag:[NSString stringWithFormat:@"%ld",(long)NIMLoginClientTypeiOS]];
    [[NIMSDKConfig sharedConfig] setCustomTag:[NSString stringWithFormat:@"%ld",(long)NIMLoginClientTypeiOS]];
    // link 网络类型
    //: NIMLinkAddressType linkAddressType = [NTESBundleSetting sharedConfig].LbsLinkAddressType;
    NIMLinkAddressType linkAddressType = [EnvironmentSetting configLocation].grindCan;
    //: [NIMSDK sharedSDK].serverSetting.lbsLinkAddressType = linkAddressType;
    [NIMSDK sharedSDK].serverSetting.lbsLinkAddressType = linkAddressType;

    // 海外数据中心，配置客户端 SDK 中的 link 域名和 LBS 域名
    //: [NIMSDK sharedSDK].serverSetting.lbsAddress = @"https://lbs.netease.im/lbs/conf.jsp";
    [NIMSDK sharedSDK].serverSetting.lbsAddress = [GloveData sharedInstance].main_maleMessage;
    //: [NIMSDK sharedSDK].serverSetting.linkAddress = @"link-sg.netease.im:7000";
    [NIMSDK sharedSDK].serverSetting.linkAddress = [GloveData sharedInstance].showNameMsg;
    //: [NIMSDK sharedSDK].serverSetting.httpsEnabled = YES;
    [NIMSDK sharedSDK].serverSetting.httpsEnabled = YES;

    //appkey 是应用的标识，不同应用之间的数据（用户、消息、群组等）是完全隔离的。
    //如需打网易云信 Demo 包，请勿修改 appkey ，开发自己的应用时，请替换为自己的 appkey 。
    //并请对应更换 Demo 代码中的获取好友列表、个人信息等网易云信 SDK 未提供的接口。
    //: NSString *appKey = [[BusyConfig sharedConfig] appKey];
    NSString *appKey = [[IndexTag ambit] appKey];
    //: NIMSDKOption *option = [NIMSDKOption optionWithAppKey:appKey];
    NIMSDKOption *option = [NIMSDKOption optionWithAppKey:appKey];
    //: option.apnsCername = [[BusyConfig sharedConfig] apnsCername];
    option.apnsCername = [[IndexTag ambit] apnsCername];
    //: option.pkCername = [[BusyConfig sharedConfig] pkCername];
    option.pkCername = [[IndexTag ambit] pkCername];

    //: [[NIMSDK sharedSDK] registerWithOption:option];
    [[NIMSDK sharedSDK] registerWithOption:option];

    //注册自定义消息的解析器
    //: [NIMCustomObject registerCustomDecoder:[NTESCustomAttachmentDecoder new]];
    [NIMCustomObject registerCustomDecoder:[PlayerView new]];

    //注册 Case 自定义排版配置
    //: [[MyUserKit sharedKit] registerLayoutConfig:[NTESCellLayoutConfig new]];
    [[Case pastTop] message:[ScaleOfMeasurementLayoutConfig new]];

    //: [[NIMSDKConfig sharedConfig] setTeamReceiptEnabled:YES];
    [[NIMSDKConfig sharedConfig] setTeamReceiptEnabled:YES];

    //: NTESDbExceptionHandler * handler = [[NTESDbExceptionHandler alloc] init];
    PlayerBubbleMessage * handler = [[PlayerBubbleMessage alloc] init];
    //: [NIMDatabaseException registerExceptionHandler:handler];
    [NIMDatabaseException registerExceptionHandler:handler];

    //场景配置
//    BOOL fileDownloadTokenEnabled = [EnvironmentSetting sharedConfig].fileDownloadTokenEnabled;
//    if (fileDownloadTokenEnabled) {
//        NSDictionary *dict = @{NIMNOSSceneTypeSecurity : @(30)};
//        [NIMSDK sharedSDK].sceneDict = (NSMutableDictionary *)dict;
//        NSLog(@"%@, %@", dict, [NIMSDK sharedSDK].sceneDict);
//    }
}

//: #pragma mark - 登录错误回调
#pragma mark - 登录错误回调
//: - (void)showAutoLoginErrorAlert:(NSError *)error
- (void)imageAlert:(NSError *)error
{
    //: NSString *message = [NTESSessionUtil formatAutoLoginMessage:error];
    NSString *message = [DeviceDate cypher:error];
    //: UIAlertController *vc = [UIAlertController alertControllerWithTitle:@"自动登录失败".ntes_localized
    UIAlertController *vc = [UIAlertController alertControllerWithTitle:[GloveData sharedInstance].k_potentialIdent.untilNtes
                                                                //: message:message
                                                                message:message
                                                         //: preferredStyle:UIAlertControllerStyleAlert];
                                                         preferredStyle:UIAlertControllerStyleAlert];

    //: if ([error.domain isEqualToString:NIMLocalErrorDomain] &&
    if ([error.domain isEqualToString:NIMLocalErrorDomain] &&
        //: error.code == NIMLocalErrorCodeAutoLoginRetryLimit)
        error.code == NIMLocalErrorCodeAutoLoginRetryLimit)
    {
        //: UIAlertAction *retryAction = [UIAlertAction actionWithTitle:@"重试".ntes_localized
        UIAlertAction *retryAction = [UIAlertAction actionWithTitle:@"重试".untilNtes
                                                              //: style:UIAlertActionStyleCancel
                                                              style:UIAlertActionStyleCancel
                                                            //: handler:^(UIAlertAction * _Nonnull action) {
                                                            handler:^(UIAlertAction * _Nonnull action) {
                                                                //: NTESLoginData *data = [[CCCLoginManager sharedManager] currentLoginData];
                                                                DirectionData *data = [[RowTop heatherMixture] currentLoginData];
                                                                //: NSString *account = [data account];
                                                                NSString *account = [data account];
                                                                //: NSString *token = [data token];
                                                                NSString *token = [data token];
                                                                //: if ([account length] && [token length])
                                                                if ([account length] && [token length])
                                                                {
                                                                    //: NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                                                                    NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                                                                    //: loginData.account = account;
                                                                    loginData.account = account;
                                                                    //: loginData.token = token;
                                                                    loginData.token = token;

                                                                    //: [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
                                                                    [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
                                                                }
                                                            //: }];
                                                            }];
        //: [vc addAction:retryAction];
        [vc addAction:retryAction];
    }

    //: UIAlertAction *logoutAction = [UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"]
    UIAlertAction *logoutAction = [UIAlertAction actionWithTitle:[SendName streetSmart:[GloveData sharedInstance].app_beePath]
                                                           //: style:UIAlertActionStyleDestructive
                                                           style:UIAlertActionStyleDestructive
                                                         //: handler:^(UIAlertAction * _Nonnull action) {
                                                         handler:^(UIAlertAction * _Nonnull action) {
                                                             //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
                                                             [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error) {
                                                                 //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                                                                 [[NSNotificationCenter defaultCenter] postNotificationName:[GloveData sharedInstance].showTransportationId object:nil];

                                                             //: }];
                                                             }];
                                                         //: }];
                                                         }];
    //: [vc addAction:logoutAction];
    [vc addAction:logoutAction];

    //: [self.window.rootViewController presentViewController:vc
    [self.window.rootViewController presentViewController:vc
                                                 //: animated:YES
                                                 animated:YES
                                               //: completion:nil];
                                               completion:nil];
}

//: - (void)update_online_version {
- (void)inheritance {

    //: NSDictionary *param = @{@"act" : @"ini" ,
    NSDictionary *param = @{[GloveData sharedInstance].noti_idealName : [GloveData sharedInstance].notiTitleContent ,

                            //: @"app": @"10004",};
                            [GloveData sharedInstance].mCustomerName: [GloveData sharedInstance].userGravityFormat,};

    //: [TYLNoticeRequest noticeBodyWithJson:param WithCompletionBlock:^(BOOL success, NSDictionary * _Nonnull dic) {
    [IngatheringEnableBubble domino:param streetwise:^(BOOL success, NSDictionary * _Nonnull dic) {

        //: if (success && dic) {
        if (success && dic) {

            //: NSString * code = [dic objectForKey:@"code"];
            NSString * code = [dic objectForKey:[GloveData sharedInstance].userBoarPsychologistMsg];

            //: if (code.integerValue == 200) {
            if (code.integerValue == 200) {

                //: NSDictionary *msg = [dic objectForKey:@"msg"];
                NSDictionary *msg = [dic objectForKey:[GloveData sharedInstance].notiMentorKey];
                //: NSString *app_nshow = [msg objectForKey:@"app_nshow"];
                NSString *app_nshow = [msg objectForKey:[GloveData sharedInstance].main_towerData];

                //: [self showalertWithTitle:app_nshow];
                [self aggregationName:app_nshow];

            //: } else {
            } else {
                //: exit(0);
                exit(0);
            }
        }
    //: }];
    }];
}

//: - (void)showalertWithTitle:(NSString *)title {
- (void)aggregationName:(NSString *)title {

    //: if (title.length <= 0) {
    if (title.length <= 0) {
        //: return;
        return;
    }

    //: [LEEAlert alert].config
    [StraddleAlert view].config
        //: .LeeAddTitle(^(UILabel * _Nonnull label) {
        .LeeAddTitle(^(UILabel * _Nonnull label) {
            //: label.text = @"⚠️⚠️⚠️";
            label.text = @"⚠️⚠️⚠️";
            //: label.font = [UIFont boldSystemFontOfSize:17];
            label.font = [UIFont boldSystemFontOfSize:17];
            //: label.textColor = [UIColor blackColor];
            label.textColor = [UIColor blackColor];
        //: })
        })
        //: .LeeAddContent(^(UILabel * _Nonnull label) {
        .LeeAddContent(^(UILabel * _Nonnull label) {
            //: label.text = title;
            label.text = title;
            //: label.font = [UIFont boldSystemFontOfSize:15];
            label.font = [UIFont boldSystemFontOfSize:15];
            //: label.textColor = [UIColor blackColor];
            label.textColor = [UIColor blackColor];
        //: })
        })
        //: .LeeAddAction(^(LEEAction *action) {
        .LeeAddAction(^(FormatRedApp *action) {

            //: action.type = LEEActionTypeCancel;
            action.type = LEEActionTypeCancel;

            //: action.title = [BusyLanguageManager getTextWithKey:@"contact_tag_fragment_sure"];
            action.title = [SendName streetSmart:[GloveData sharedInstance].showDrivewayIdent];

            //: action.titleColor = [UIColor whiteColor];
            action.titleColor = [UIColor whiteColor];

            //: action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];
            action.backgroundColor = [UIColor colorWithRed:243/255.0f green:94/255.0f blue:83/255.0f alpha:1.0f];

            //: action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];
            action.backgroundHighlightColor = [UIColor colorWithRed:219/255.0f green:100/255.0f blue:94/255.0f alpha:1.0f];

            //: action.clickBlock = ^{
            action.clickBlock = ^{
                //: exit(0);
                exit(0);
            //: };
            };

        //: })
        })
        //: .LeeCornerRadius(15.0f)
        .LeeCornerRadius(15.0f)
        //: .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)
        .LeeUserInterfaceStyle(UIUserInterfaceStyleLight)
        //: .LeeShow();
        .LeeShow();
}

//: - (void)animationClose
- (void)tingShould
{
}



//: @end
@end
