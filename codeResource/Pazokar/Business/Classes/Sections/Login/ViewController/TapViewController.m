
#import <Foundation/Foundation.h>

typedef struct {
    Byte killer;
    Byte *explainForbid;
    unsigned int recentValue;
	int semenDismiss;
	int ecruNearly;
	int factoid;
} StructBulgeData;

@interface BulgeData : NSObject

+ (instancetype)sharedInstance;

//: #333333
@property (nonatomic, copy) NSString *main_objectFainStr;

//: register_account
@property (nonatomic, copy) NSString *userShowKey;

//: ppp
@property (nonatomic, copy) NSString *dream_successUrl;

//: tap
@property (nonatomic, copy) NSString *app_usuallyStr;

//: account
@property (nonatomic, copy) NSString *dreamVirusFormat;

//: activity_register_next
@property (nonatomic, copy) NSString *kClickMessage;

//: vpn
@property (nonatomic, copy) NSString *k_enableMsg;

//: ic_close_b
@property (nonatomic, copy) NSString *user_currentlyStr;

//: login_agreement_press
@property (nonatomic, copy) NSString *mainShowCellKey;

//: activity_login_login
@property (nonatomic, copy) NSString *mMCountMsg;

//: activity_register_agree
@property (nonatomic, copy) NSString *notiWithSeedName;

//: ^[A-Za-z0-9_]{6,12}$
@property (nonatomic, copy) NSString *dreamCornerDoingLineIdent;

//: tun
@property (nonatomic, copy) NSString *appToText;

//: SELF MATCHES %@
@property (nonatomic, copy) NSString *main_nameTeamMessage;

//: pass_tip
@property (nonatomic, copy) NSString *kControlFormat;

//: login_icon_user
@property (nonatomic, copy) NSString *userNameMessagePath;

//: register_account_activity_psw
@property (nonatomic, copy) NSString *userValueKey;

//: mobilecode
@property (nonatomic, copy) NSString *userReadData;

//: login_icon_pwd
@property (nonatomic, copy) NSString *showMakeShouldKey;

//: ic_invisible
@property (nonatomic, copy) NSString *show_minMessage;

//: #02D8C9
@property (nonatomic, copy) NSString *user_sourceRegardingText;

//: ^[A-Za-z0-9_]{6,18}$
@property (nonatomic, copy) NSString *noti_honestlyId;

//: ic_visible
@property (nonatomic, copy) NSString *mMyMessage;

//: activity_comment_setting_ys
@property (nonatomic, copy) NSString *m_separateShowCatalogName;

//: password
@property (nonatomic, copy) NSString *mMakeMsg;

//: Read_agree_agreement
@property (nonatomic, copy) NSString *k_viewValue;

//: client
@property (nonatomic, copy) NSString *kProximateFormat;

//: user_tip
@property (nonatomic, copy) NSString *mTouristName;

//: #999999
@property (nonatomic, copy) NSString *k_proximateData;

//: iOS
@property (nonatomic, copy) NSString *mPosseIdent;

//: login_logo
@property (nonatomic, copy) NSString *mainWoodenNameMessage;

//: __SCOPED__
@property (nonatomic, copy) NSString *kManagerMessage;

//: #F6F6F6
@property (nonatomic, copy) NSString *k_numberName;

//: login_bg
@property (nonatomic, copy) NSString *user_cellValue;

//: login_agreement_normal
@property (nonatomic, copy) NSString *userRangeStr;

//: invitecode
@property (nonatomic, copy) NSString *appRecordPath;

//: pass_user
@property (nonatomic, copy) NSString *showLiterallyEcruStr;

//: register_account_activity_account
@property (nonatomic, copy) NSString *notiMessageValue;

@end

@implementation BulgeData

+ (instancetype)sharedInstance {
    static BulgeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)BulgeDataToData:(NSString *)value {
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

- (Byte *)BulgeDataToByte:(StructBulgeData *)data {
    for (int i = 0; i < data->recentValue; i++) {
        data->explainForbid[i] ^= data->killer;
    }
    data->explainForbid[data->recentValue] = 0;
	if (data->recentValue >= 3) {
		data->semenDismiss = data->explainForbid[0];
		data->ecruNearly = data->explainForbid[1];
		data->factoid = data->explainForbid[2];
	}
    return data->explainForbid;
}

- (NSString *)StringFromBulgeData:(StructBulgeData *)data {
    return [NSString stringWithUTF8String:(char *)[self BulgeDataToByte:data]];
}

//: invitecode
- (NSString *)appRecordPath {
    if (!_appRecordPath) {
		NSString *origin = @"bcbba3bca1b0b6bab1b062";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){213, (Byte *)data.bytes, 10, 70, 29, 95};
        _appRecordPath = [self StringFromBulgeData:&value];
    }
    return _appRecordPath;
}

//: client
- (NSString *)kProximateFormat {
    if (!_kProximateFormat) {
		NSString *origin = @"c0cfcac6cdd775";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){163, (Byte *)data.bytes, 6, 102, 89, 164};
        _kProximateFormat = [self StringFromBulgeData:&value];
    }
    return _kProximateFormat;
}

//: activity_login_login
- (NSString *)mMCountMsg {
    if (!_mMCountMsg) {
		NSString *origin = @"f0f2e5f8e7f8e5e8cefdfef6f8ffcefdfef6f8ffa3";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){145, (Byte *)data.bytes, 20, 137, 145, 25};
        _mMCountMsg = [self StringFromBulgeData:&value];
    }
    return _mMCountMsg;
}

//: tun
- (NSString *)appToText {
    if (!_appToText) {
		NSString *origin = @"d5d4cfad";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){161, (Byte *)data.bytes, 3, 119, 221, 102};
        _appToText = [self StringFromBulgeData:&value];
    }
    return _appToText;
}

//: tap
- (NSString *)app_usuallyStr {
    if (!_app_usuallyStr) {
		NSString *origin = @"a4b1a01f";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){208, (Byte *)data.bytes, 3, 122, 154, 127};
        _app_usuallyStr = [self StringFromBulgeData:&value];
    }
    return _app_usuallyStr;
}

//: #333333
- (NSString *)main_objectFainStr {
    if (!_main_objectFainStr) {
		NSString *origin = @"0a1a1a1a1a1a1a70";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){41, (Byte *)data.bytes, 7, 78, 71, 11};
        _main_objectFainStr = [self StringFromBulgeData:&value];
    }
    return _main_objectFainStr;
}

//: pass_user
- (NSString *)showLiterallyEcruStr {
    if (!_showLiterallyEcruStr) {
		NSString *origin = @"decfddddf1dbddcbdc0d";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){174, (Byte *)data.bytes, 9, 18, 31, 39};
        _showLiterallyEcruStr = [self StringFromBulgeData:&value];
    }
    return _showLiterallyEcruStr;
}

//: register_account_activity_account
- (NSString *)notiMessageValue {
    if (!_notiMessageValue) {
		NSString *origin = @"a2b5b7b9a3a4b5a28fb1b3b3bfa5bea48fb1b3a4b9a6b9a4a98fb1b3b3bfa5bea455";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){208, (Byte *)data.bytes, 33, 180, 229, 78};
        _notiMessageValue = [self StringFromBulgeData:&value];
    }
    return _notiMessageValue;
}

//: register_account
- (NSString *)userShowKey {
    if (!_userShowKey) {
		NSString *origin = @"f3e4e6e8f2f5e4f3dee0e2e2eef4eff54e";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){129, (Byte *)data.bytes, 16, 158, 250, 70};
        _userShowKey = [self StringFromBulgeData:&value];
    }
    return _userShowKey;
}

//: ic_visible
- (NSString *)mMyMessage {
    if (!_mMyMessage) {
		NSString *origin = @"1218240d12081219171e9c";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){123, (Byte *)data.bytes, 10, 195, 44, 154};
        _mMyMessage = [self StringFromBulgeData:&value];
    }
    return _mMyMessage;
}

//: mobilecode
- (NSString *)userReadData {
    if (!_userReadData) {
		NSString *origin = @"fcfef3f8fdf4f2fef5f40a";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){145, (Byte *)data.bytes, 10, 137, 22, 142};
        _userReadData = [self StringFromBulgeData:&value];
    }
    return _userReadData;
}

//: #02D8C9
- (NSString *)user_sourceRegardingText {
    if (!_user_sourceRegardingText) {
		NSString *origin = @"829193e599e298b4";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){161, (Byte *)data.bytes, 7, 109, 23, 155};
        _user_sourceRegardingText = [self StringFromBulgeData:&value];
    }
    return _user_sourceRegardingText;
}

//: login_agreement_press
- (NSString *)mainShowCellKey {
    if (!_mainShowCellKey) {
		NSString *origin = @"25262e202716282e3b2c2c242c273d16393b2c3a3aef";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){73, (Byte *)data.bytes, 21, 21, 156, 134};
        _mainShowCellKey = [self StringFromBulgeData:&value];
    }
    return _mainShowCellKey;
}

//: Read_agree_agreement
- (NSString *)k_viewValue {
    if (!_k_viewValue) {
		NSString *origin = @"95a2a6a398a6a0b5a2a298a6a0b5a2a2aaa2a9b3c1";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){199, (Byte *)data.bytes, 20, 35, 29, 54};
        _k_viewValue = [self StringFromBulgeData:&value];
    }
    return _k_viewValue;
}

//: account
- (NSString *)dreamVirusFormat {
    if (!_dreamVirusFormat) {
		NSString *origin = @"8280808c968d97f1";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){227, (Byte *)data.bytes, 7, 133, 73, 72};
        _dreamVirusFormat = [self StringFromBulgeData:&value];
    }
    return _dreamVirusFormat;
}

//: #999999
- (NSString *)k_proximateData {
    if (!_k_proximateData) {
		NSString *origin = @"302a2a2a2a2a2ae1";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){19, (Byte *)data.bytes, 7, 48, 161, 82};
        _k_proximateData = [self StringFromBulgeData:&value];
    }
    return _k_proximateData;
}

//: ^[A-Za-z0-9_]{6,12}$
- (NSString *)dreamCornerDoingLineIdent {
    if (!_dreamCornerDoingLineIdent) {
		NSString *origin = @"71746e02754e02551f021670725419031e1d520b64";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){47, (Byte *)data.bytes, 20, 53, 207, 58};
        _dreamCornerDoingLineIdent = [self StringFromBulgeData:&value];
    }
    return _dreamCornerDoingLineIdent;
}

//: pass_tip
- (NSString *)kControlFormat {
    if (!_kControlFormat) {
		NSString *origin = @"d2c3d1d1fdd6cbd216";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){162, (Byte *)data.bytes, 8, 123, 218, 24};
        _kControlFormat = [self StringFromBulgeData:&value];
    }
    return _kControlFormat;
}

//: login_logo
- (NSString *)mainWoodenNameMessage {
    if (!_mainWoodenNameMessage) {
		NSString *origin = @"4a49414f48794a4941499a";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){38, (Byte *)data.bytes, 10, 115, 141, 233};
        _mainWoodenNameMessage = [self StringFromBulgeData:&value];
    }
    return _mainWoodenNameMessage;
}

//: activity_register_next
- (NSString *)kClickMessage {
    if (!_kClickMessage) {
		NSString *origin = @"6466716c736c717c5a7760626c767160775a6b607d7113";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){5, (Byte *)data.bytes, 22, 121, 26, 12};
        _kClickMessage = [self StringFromBulgeData:&value];
    }
    return _kClickMessage;
}

//: SELF MATCHES %@
- (NSString *)main_nameTeamMessage {
    if (!_main_nameTeamMessage) {
		NSString *origin = @"bcaaa3a9cfa2aebbaca7aabccfcaaf98";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){239, (Byte *)data.bytes, 15, 166, 60, 81};
        _main_nameTeamMessage = [self StringFromBulgeData:&value];
    }
    return _main_nameTeamMessage;
}

//: register_account_activity_psw
- (NSString *)userValueKey {
    if (!_userValueKey) {
		NSString *origin = @"5f484a445e59485f724c4e4e42584359724c4e59445b445954725d5e5ab9";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){45, (Byte *)data.bytes, 29, 52, 2, 132};
        _userValueKey = [self StringFromBulgeData:&value];
    }
    return _userValueKey;
}

//: ic_invisible
- (NSString *)show_minMessage {
    if (!_show_minMessage) {
		NSString *origin = @"3c360a3c3b233c263c37393048";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){85, (Byte *)data.bytes, 12, 80, 103, 197};
        _show_minMessage = [self StringFromBulgeData:&value];
    }
    return _show_minMessage;
}

//: __SCOPED__
- (NSString *)kManagerMessage {
    if (!_kManagerMessage) {
		NSString *origin = @"9d9d91818d9287869d9dcb";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){194, (Byte *)data.bytes, 10, 128, 38, 124};
        _kManagerMessage = [self StringFromBulgeData:&value];
    }
    return _kManagerMessage;
}

//: login_icon_pwd
- (NSString *)showMakeShouldKey {
    if (!_showMakeShouldKey) {
		NSString *origin = @"9b98909e99a89e949899a887809327";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){247, (Byte *)data.bytes, 14, 111, 126, 57};
        _showMakeShouldKey = [self StringFromBulgeData:&value];
    }
    return _showMakeShouldKey;
}

//: login_agreement_normal
- (NSString *)userRangeStr {
    if (!_userRangeStr) {
		NSString *origin = @"46454d4344754b4d584f4f474f445e75444558474b4647";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){42, (Byte *)data.bytes, 22, 24, 206, 199};
        _userRangeStr = [self StringFromBulgeData:&value];
    }
    return _userRangeStr;
}

//: password
- (NSString *)mMakeMsg {
    if (!_mMakeMsg) {
		NSString *origin = @"a0b1a3a3a7bfa2b4fe";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){208, (Byte *)data.bytes, 8, 28, 235, 222};
        _mMakeMsg = [self StringFromBulgeData:&value];
    }
    return _mMakeMsg;
}

//: login_icon_user
- (NSString *)userNameMessagePath {
    if (!_userNameMessagePath) {
		NSString *origin = @"66656d63645563696564557f796f7838";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){10, (Byte *)data.bytes, 15, 110, 205, 160};
        _userNameMessagePath = [self StringFromBulgeData:&value];
    }
    return _userNameMessagePath;
}

//: #F6F6F6
- (NSString *)k_numberName {
    if (!_k_numberName) {
		NSString *origin = @"8de898e898e898dd";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){174, (Byte *)data.bytes, 7, 24, 14, 86};
        _k_numberName = [self StringFromBulgeData:&value];
    }
    return _k_numberName;
}

//: ic_close_b
- (NSString *)user_currentlyStr {
    if (!_user_currentlyStr) {
		NSString *origin = @"7e7448747b7864724875a9";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){23, (Byte *)data.bytes, 10, 23, 98, 159};
        _user_currentlyStr = [self StringFromBulgeData:&value];
    }
    return _user_currentlyStr;
}

//: activity_register_agree
- (NSString *)notiWithSeedName {
    if (!_notiWithSeedName) {
		NSString *origin = @"8f8d9a8798879a97b19c8b89879d9a8b9cb18f899c8b8b1c";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){238, (Byte *)data.bytes, 23, 135, 73, 159};
        _notiWithSeedName = [self StringFromBulgeData:&value];
    }
    return _notiWithSeedName;
}

//: vpn
- (NSString *)k_enableMsg {
    if (!_k_enableMsg) {
		NSString *origin = @"04021c78";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){114, (Byte *)data.bytes, 3, 79, 99, 96};
        _k_enableMsg = [self StringFromBulgeData:&value];
    }
    return _k_enableMsg;
}

//: ^[A-Za-z0-9_]{6,18}$
- (NSString *)noti_honestlyId {
    if (!_noti_honestlyId) {
		NSString *origin = @"b5b0aac6b18ac691dbc6d2b4b690ddc7dad396cfeb";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){235, (Byte *)data.bytes, 20, 203, 147, 107};
        _noti_honestlyId = [self StringFromBulgeData:&value];
    }
    return _noti_honestlyId;
}

//: ppp
- (NSString *)dream_successUrl {
    if (!_dream_successUrl) {
		NSString *origin = @"333333a2";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){67, (Byte *)data.bytes, 3, 170, 94, 114};
        _dream_successUrl = [self StringFromBulgeData:&value];
    }
    return _dream_successUrl;
}

//: iOS
- (NSString *)mPosseIdent {
    if (!_mPosseIdent) {
		NSString *origin = @"57716dfd";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){62, (Byte *)data.bytes, 3, 27, 30, 20};
        _mPosseIdent = [self StringFromBulgeData:&value];
    }
    return _mPosseIdent;
}

//: user_tip
- (NSString *)mTouristName {
    if (!_mTouristName) {
		NSString *origin = @"4345534469425f46b2";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){54, (Byte *)data.bytes, 8, 221, 44, 185};
        _mTouristName = [self StringFromBulgeData:&value];
    }
    return _mTouristName;
}

//: activity_comment_setting_ys
- (NSString *)m_separateShowCatalogName {
    if (!_m_separateShowCatalogName) {
		NSString *origin = @"6260776a756a777a5c606c6e6e666d775c706677776a6d645c7a70fc";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){3, (Byte *)data.bytes, 27, 240, 35, 169};
        _m_separateShowCatalogName = [self StringFromBulgeData:&value];
    }
    return _m_separateShowCatalogName;
}

//: login_bg
- (NSString *)user_cellValue {
    if (!_user_cellValue) {
		NSString *origin = @"05060e0007360b0ee2";
		NSData *data = [BulgeData BulgeDataToData:origin];
        StructBulgeData value = (StructBulgeData){105, (Byte *)data.bytes, 8, 122, 156, 137};
        _user_cellValue = [self StringFromBulgeData:&value];
    }
    return _user_cellValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TapViewController.m
//  NIM
//
//  Created by taricher on 2024/5/24.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFRegisterViewController.h"
#import "TapViewController.h"
//: #import "NTESMainTabController.h"
#import "LightGreenViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "NSString+NTES.h"
#import "NSString+Date.h"
//: #import "CCCLoginManager.h"
#import "RowTop.h"
//: #import "NTESNotificationCenter.h"
#import "CanLabel.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+Enable.h"
//: #import "FFFRegisterViewController.h"
#import "TapViewController.h"
//: #import "NTESRegistConfigManager.h"
#import "PinMoreManager.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "CCCAutoLoginManager.h"
#import "NoticeManager.h"
//: #import "SNDevice.h"
#import "CutVersion.h"
//: #import "RegisterInfoViewController.h"
#import "ForefrontViewController.h"
//: #import "ZMONPolicyPrivacyViewController.h"
#import "InformationViewController.h"

//: @interface FFFRegisterViewController () <UITextFieldDelegate>
@interface TapViewController () <UITextFieldDelegate>

//: @property (strong, nonatomic) UIImageView *logoImageView;
@property (strong, nonatomic) UIImageView *logoImageView;

//: @property (strong, nonatomic) UITextField *usernameTextField;
@property (strong, nonatomic) UITextField *usernameTextField;
//: @property (strong, nonatomic) UIImageView *titleImg;
@property (strong, nonatomic) UIImageView *titleImg;
//: @property (strong, nonatomic) UITextField *passwordTextField;
@property (strong, nonatomic) UITextField *passwordTextField;
//: @property (strong, nonatomic) UIImageView *titleImg2;
@property (strong, nonatomic) UIImageView *titleImg2;

//: @property (strong, nonatomic) UIButton *loginButton;
@property (strong, nonatomic) UIButton *loginButton;
//: @property (strong, nonatomic) UIButton *registerButton;
@property (strong, nonatomic) UIButton *registerButton;
//: @property (nonatomic, strong) UIButton *agreementButton;
@property (nonatomic, strong) UIButton *agreementButton;
//: @property (nonatomic, strong) UIButton *secureButton;
@property (nonatomic, strong) UIButton *secureButton;
//: @property (nonatomic, strong) YYLabel *protocolLabel;
@property (nonatomic, strong) YYLabel *protocolLabel;

//: @end
@end

//: @implementation FFFRegisterViewController
@implementation TapViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[BulgeData sharedInstance].user_cellValue];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initData];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)initUI
- (void)initData
{
    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice statusOrLevel]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[BulgeData sharedInstance].user_currentlyStr] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(tapBack) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, [UIDevice vg_statusBarHeight]+50, 120, 120)];
    _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, [UIDevice statusOrLevel]+50, 120, 120)];
    //: _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    //: _logoImageView.backgroundColor = [UIColor clearColor];
    _logoImageView.backgroundColor = [UIColor clearColor];
    //: [self.view addSubview:_logoImageView];
    [self.view addSubview:_logoImageView];
    //: _logoImageView.image = [UIImage imageNamed:@"login_logo"];
    _logoImageView.image = [UIImage imageNamed:[BulgeData sharedInstance].mainWoodenNameMessage];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, [[UIScreen mainScreen] bounds].size.width, 30)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, [[UIScreen mainScreen] bounds].size.width, 30)];
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"register_account"];
    labtitle.text = [SendName streetSmart:[BulgeData sharedInstance].userShowKey];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16];
    labtitle.font = [UIFont boldSystemFontOfSize:16];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, labtitle.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, labtitle.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: usernameView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    usernameView.backgroundColor = [UIColor status:[BulgeData sharedInstance].k_numberName];
    //: usernameView.layer.cornerRadius = 24;
    usernameView.layer.cornerRadius = 24;
    //: usernameView.layer.masksToBounds = YES;
    usernameView.layer.masksToBounds = YES;
    //: [self.view addSubview:usernameView];
    [self.view addSubview:usernameView];

    //: self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: self.titleImg.image = [UIImage imageNamed:@"login_icon_user"];
    self.titleImg.image = [UIImage imageNamed:[BulgeData sharedInstance].userNameMessagePath];
    //: [usernameView addSubview:self.titleImg];
    [usernameView addSubview:self.titleImg];

    //: _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    //: _usernameTextField.font = [UIFont systemFontOfSize:16];
    _usernameTextField.font = [UIFont systemFontOfSize:16];
    //: _usernameTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _usernameTextField.textColor = [UIColor status:[BulgeData sharedInstance].main_objectFainStr];
    //    _usernameTextField.keyboardType = UIKeyboardTypeASCIICapable;
//    _usernameTextField.delegate = self;
    //: NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[FFFLanguageManager getTextWithKey:@"user_tip"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[SendName streetSmart:[BulgeData sharedInstance].mTouristName] attributes:@{NSForegroundColorAttributeName:[UIColor status:[BulgeData sharedInstance].k_proximateData]}];
    //: _usernameTextField.attributedPlaceholder = attrString;
    _usernameTextField.attributedPlaceholder = attrString;
    //: [usernameView addSubview:_usernameTextField];
    [usernameView addSubview:_usernameTextField];

    //: UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: psdView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    psdView.backgroundColor = [UIColor status:[BulgeData sharedInstance].k_numberName];
    //: psdView.layer.masksToBounds = YES;
    psdView.layer.masksToBounds = YES;
    //: psdView.layer.cornerRadius = 24;
    psdView.layer.cornerRadius = 24;
    //: [self.view addSubview:psdView];
    [self.view addSubview:psdView];

    //: self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: self.titleImg2.image = [UIImage imageNamed:@"login_icon_pwd"];
    self.titleImg2.image = [UIImage imageNamed:[BulgeData sharedInstance].showMakeShouldKey];
    //: [psdView addSubview:self.titleImg2];
    [psdView addSubview:self.titleImg2];

    //: _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-140, 44)];
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-140, 44)];
    //: _passwordTextField.font = [UIFont systemFontOfSize:16];
    _passwordTextField.font = [UIFont systemFontOfSize:16];
    //: _passwordTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _passwordTextField.textColor = [UIColor status:[BulgeData sharedInstance].main_objectFainStr];
//    _passwordTextField.secureTextEntry = YES;
//    self.passwordTextField.delegate = self;
    //: NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:[FFFLanguageManager getTextWithKey:@"pass_tip"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:[SendName streetSmart:[BulgeData sharedInstance].kControlFormat] attributes:@{NSForegroundColorAttributeName:[UIColor status:[BulgeData sharedInstance].k_proximateData]}];
    //: _passwordTextField.attributedPlaceholder = attrString1;
    _passwordTextField.attributedPlaceholder = attrString1;
    //: [psdView addSubview:_passwordTextField];
    [psdView addSubview:_passwordTextField];

    //: self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: self.secureButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 17, 16, 16);
    self.secureButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 17, 16, 16);
    //: [self.secureButton addTarget:self action:@selector(pwdTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.secureButton addTarget:self action:@selector(commentses:) forControlEvents:(UIControlEventTouchUpInside)];
    //: [self.secureButton setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
    [self.secureButton setImage:[UIImage imageNamed:[BulgeData sharedInstance].mMyMessage] forState:UIControlStateNormal];
    //: [self.secureButton setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateSelected];
    [self.secureButton setImage:[UIImage imageNamed:[BulgeData sharedInstance].show_minMessage] forState:UIControlStateSelected];
//    self.secureButton.hidden = YES;
    //: [psdView addSubview:self.secureButton];
    [psdView addSubview:self.secureButton];

    //: _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _loginButton.frame = CGRectMake(20, psdView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    _loginButton.frame = CGRectMake(20, psdView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    //: _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_loginButton setTitle:[FFFLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
    [_loginButton setTitle:[SendName streetSmart:[BulgeData sharedInstance].kClickMessage] forState:UIControlStateNormal];
    //: [_loginButton addTarget:self action:@selector(doLogin) forControlEvents:UIControlEventTouchUpInside];
    [_loginButton addTarget:self action:@selector(thanEvent) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_loginButton];
    [self.view addSubview:_loginButton];
    //: _loginButton.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
    _loginButton.backgroundColor = [UIColor status:[BulgeData sharedInstance].user_sourceRegardingText];
    //: _loginButton.layer.cornerRadius = 24;
    _loginButton.layer.cornerRadius = 24;
//    _loginButton.layer.shadowColor = DeepBtnColor.CGColor;
//    _loginButton.layer.shadowOffset = CGSizeMake(0,3);
//    _loginButton.layer.shadowOpacity = 1;
//    _loginButton.layer.shadowRadius = 0;

    //: _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _registerButton.frame = CGRectMake(30, self.loginButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 40);
    _registerButton.frame = CGRectMake(30, self.loginButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 40);
    //: _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_registerButton setTitleColor:[UIColor colorWithHexString:@"#02D8C9"] forState:UIControlStateNormal];
    [_registerButton setTitleColor:[UIColor status:[BulgeData sharedInstance].user_sourceRegardingText] forState:UIControlStateNormal];
    //: [_registerButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    [_registerButton addTarget:self action:@selector(tapBack) forControlEvents:UIControlEventTouchUpInside];
    //: NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    //: NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[FFFLanguageManager getTextWithKey:@"activity_login_login"] attributes:attributes];
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[SendName streetSmart:[BulgeData sharedInstance].mMCountMsg] attributes:attributes];
    //: [_registerButton setAttributedTitle:attributedString forState:UIControlStateNormal];
    [_registerButton setAttributedTitle:attributedString forState:UIControlStateNormal];
    //: [self.view addSubview:_registerButton];
    [self.view addSubview:_registerButton];


    //: _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _agreementButton.frame = CGRectMake(15, self.registerButton.bottom+15, 20, 20);
    _agreementButton.frame = CGRectMake(15, self.registerButton.bottom+15, 20, 20);
    //: _agreementButton.selected = YES;
    _agreementButton.selected = YES;
    //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_normal"] forState:UIControlStateNormal];
    [_agreementButton setImage:[UIImage imageNamed:[BulgeData sharedInstance].userRangeStr] forState:UIControlStateNormal];
    //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
    [_agreementButton setImage:[UIImage imageNamed:[BulgeData sharedInstance].mainShowCellKey] forState:UIControlStateSelected];
    //: [_agreementButton addTarget:self action:@selector(agreementButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_agreementButton addTarget:self action:@selector(agreementsed:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_agreementButton];
    [self.view addSubview:_agreementButton];

    //: [self.view addSubview:self.protocolLabel];
    [self.view addSubview:self.protocolLabel];
    //: self.protocolLabel.frame = CGRectMake(_agreementButton.right+5, self.registerButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 50);
    self.protocolLabel.frame = CGRectMake(_agreementButton.right+5, self.registerButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 50);

//    UILabel *subtitle = [[UILabel alloc]initWithFrame:CGRectMake(30, SCREEN_HEIGHT-SCREEN_BOTTOM_HEIGHT-80-20, SCREEN_WIDTH-60, 20)];
//    subtitle.textColor = RGB_COLOR_String(@"#8282A7");
//    subtitle.font = [UIFont systemFontOfSize:14];
//    subtitle.textAlignment = NSTextAlignmentCenter;
//    subtitle.text = LangKey(@"activity_register_account_has_account");
//    [self.view addSubview:subtitle];

//    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    _registerButton.frame = CGRectMake(SCREEN_WIDTH-136, SCREEN_STATUS_HEIGHT+20, 146, 32);
//    _registerButton.backgroundColor = ThemeColor;
//    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
//    [_registerButton setTitleColor:RGB_COLOR_String(@"#ffffff") forState:UIControlStateNormal];
//    [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",LangKey(@"activity_register_account_has_account"),LangKey(@"activity_login_login")] forState:UIControlStateNormal];
//    [_registerButton addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:_registerButton];
//    _registerButton.layer.masksToBounds = YES;
//    _registerButton.layer.cornerRadius = 16;
}


//: - (void)pwdTextSwitch:(UIButton *)sender
- (void)commentses:(UIButton *)sender
{
    // 切换按钮的状态
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;

    //: if (sender.selected) { 
    if (sender.selected) { // 按下去了就是明文

        //: [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[BulgeData sharedInstance].show_minMessage] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.passwordTextField.secureTextEntry = YES;
            self.passwordTextField.secureTextEntry = YES;
        //: }];
        }];

    //: } else { 
    } else { // 暗文

        //: [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[BulgeData sharedInstance].mMyMessage] forState:UIControlStateNormal];
        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.passwordTextField.secureTextEntry = NO;
            self.passwordTextField.secureTextEntry = NO;
        //: }];
        }];
    }
}

//: - (void)goBack{
- (void)tapBack{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (YYLabel *)protocolLabel {
- (YYLabel *)protocolLabel {
    //: if (!_protocolLabel) {
    if (!_protocolLabel) {
        //: NSString *originText = [FFFLanguageManager getTextWithKey:@"activity_register_agree"];
        NSString *originText = [SendName streetSmart:[BulgeData sharedInstance].notiWithSeedName];
        //: NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        //: text1.yy_font = [UIFont boldSystemFontOfSize:14];
        text1.yy_font = [UIFont boldSystemFontOfSize:14];
        //: text1.yy_alignment = NSTextAlignmentLeft;
        text1.yy_alignment = NSTextAlignmentLeft;
        //: text1.yy_lineSpacing = 3;
        text1.yy_lineSpacing = 3;
        //: [text1 yy_setTextHighlightRange:NSMakeRange(0, originText.length)
        [text1 yy_setTextHighlightRange:NSMakeRange(0, originText.length)//设置点击的位置
                                  //: color:[UIColor colorWithHexString:@"#02D8C9"]
                                  color:[UIColor status:[BulgeData sharedInstance].user_sourceRegardingText]
                        //: backgroundColor:[UIColor systemGroupedBackgroundColor]
                        backgroundColor:[UIColor systemGroupedBackgroundColor]
                              //: tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
                              tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
         {
            //: ZMONPolicyPrivacyViewController *vc = [[ZMONPolicyPrivacyViewController alloc] init];
            InformationViewController *vc = [[InformationViewController alloc] init];
            //: vc.webTitle = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
            vc.webTitle = [SendName streetSmart:[BulgeData sharedInstance].m_separateShowCatalogName];
            //: vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
            vc.urlString = [DataMaxDefaults max].yshref;
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        //: }];
        }];

        //: YYLabel *titleLb = [[YYLabel alloc] init];
        YYLabel *titleLb = [[YYLabel alloc] init];
        //: titleLb.userInteractionEnabled = YES;
        titleLb.userInteractionEnabled = YES;
        //: titleLb.attributedText = text1;
        titleLb.attributedText = text1;
        //: titleLb.font = [UIFont systemFontOfSize:14];
        titleLb.font = [UIFont systemFontOfSize:14];
        //: titleLb.numberOfLines = 0;
        titleLb.numberOfLines = 0;
        //: titleLb.textVerticalAlignment = YYTextVerticalAlignmentTop;
        titleLb.textVerticalAlignment = YYTextVerticalAlignmentTop;
        //: titleLb.backgroundColor = [UIColor clearColor];
        titleLb.backgroundColor = [UIColor clearColor];
        //: _protocolLabel = titleLb;
        _protocolLabel = titleLb;
    }
    //: return _protocolLabel;
    return _protocolLabel;
}

//: -(void)agreementButtonClick:(UIButton *)senderBtn
-(void)agreementsed:(UIButton *)senderBtn
{
    //: senderBtn.selected = !senderBtn.selected;
    senderBtn.selected = !senderBtn.selected;
}

//: #pragma mark - UITextFieldDelegate
#pragma mark - UITextFieldDelegate
//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
//
//    if ([string isEqualToString:@"\n"]) {
//        [self doLogin];
//        return NO;
//    }
//    return YES;
//}
//
//- (void)textFieldDidEndEditing:(UITextField *)textField {
//    self.secureButton.hidden = YES;
//}
//
//- (void)textFieldDidBeginEditing:(UITextField *)textField {
//    self.secureButton.hidden = NO;
//    [textField bringSubviewToFront:self.secureButton];
//}

//: - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //: [super touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];
    //: [_usernameTextField resignFirstResponder];
    [_usernameTextField resignFirstResponder];
    //: [_passwordTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
}


//: - (BOOL)isVPNConnected
- (BOOL)tempChild
{
    //: NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
    NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
    //: NSArray *keys = [dict[@"__SCOPED__"]allKeys];
    NSArray *keys = [dict[[BulgeData sharedInstance].kManagerMessage]allKeys];
    //: for (NSString *key in keys) {
    for (NSString *key in keys) {
        //: if ([key rangeOfString:@"tap"].location != NSNotFound ||
        if ([key rangeOfString:[BulgeData sharedInstance].app_usuallyStr].location != NSNotFound ||
            //: [key rangeOfString:@"tun"].location != NSNotFound ||
            [key rangeOfString:[BulgeData sharedInstance].appToText].location != NSNotFound ||
            //: [key rangeOfString:@"ppp"].location != NSNotFound){
            [key rangeOfString:[BulgeData sharedInstance].dream_successUrl].location != NSNotFound){
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}
//: - (BOOL)isAccountValidString:(NSString *)input {
- (BOOL)registerImage:(NSString *)input {
    //: NSString *pattern = @"^[A-Za-z0-9_]{6,12}$";
    NSString *pattern = [BulgeData sharedInstance].dreamCornerDoingLineIdent;

    //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[BulgeData sharedInstance].main_nameTeamMessage, pattern];
    //: return [predicate evaluateWithObject:input];
    return [predicate evaluateWithObject:input];
}
//: - (BOOL)isPSDValidString:(NSString *)input {
- (BOOL)snapLine:(NSString *)input {
    //: NSString *pattern = @"^[A-Za-z0-9_]{6,18}$";
    NSString *pattern = [BulgeData sharedInstance].noti_honestlyId;

    //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[BulgeData sharedInstance].main_nameTeamMessage, pattern];
    //: return [predicate evaluateWithObject:input];
    return [predicate evaluateWithObject:input];
}


//: - (void)doLogin{
- (void)thanEvent{

    //: if (self.agreementButton.selected == NO) {
    if (self.agreementButton.selected == NO) {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"Read_agree_agreement"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[SendName streetSmart:[BulgeData sharedInstance].k_viewValue] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: _usernameTextField.text = [_usernameTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    _usernameTextField.text = [_usernameTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: _passwordTextField.text = [_passwordTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    _passwordTextField.text = [_passwordTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];

    //: if (_usernameTextField.text && _usernameTextField.text.length <= 0){
    if (_usernameTextField.text && _usernameTextField.text.length <= 0){
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"register_account_activity_account"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[SendName streetSmart:[BulgeData sharedInstance].notiMessageValue] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: if (_passwordTextField.text && _passwordTextField.text.length <= 0){
    if (_passwordTextField.text && _passwordTextField.text.length <= 0){
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"register_account_activity_psw"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[SendName streetSmart:[BulgeData sharedInstance].userValueKey] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

//    if (![self isAccountValidString:_usernameTextField.text]){
//        [self.view makeToast:LangKey(@"user_tip") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }
//    
//    if (![self isPSDValidString:_passwordTextField.text]){
//        [self.view makeToast:LangKey(@"pass_tip") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }

    //: if ([_usernameTextField.text isEqualToString:_passwordTextField.text]){
    if ([_usernameTextField.text isEqualToString:_passwordTextField.text]){
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"pass_user"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[SendName streetSmart:[BulgeData sharedInstance].showLiterallyEcruStr] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: NTESRegistConfigManager *manager = [NTESRegistConfigManager shareConfigManager];
    PinMoreManager *manager = [PinMoreManager impression];
    //: [manager.registDict setObject:@"iOS" forKey:@"client"];
    [manager.registDict setObject:[BulgeData sharedInstance].mPosseIdent forKey:[BulgeData sharedInstance].kProximateFormat];
    //: [manager.registDict setObject:_usernameTextField.text forKey:@"account"];
    [manager.registDict setObject:_usernameTextField.text forKey:[BulgeData sharedInstance].dreamVirusFormat];
    //: [manager.registDict setObject:_passwordTextField.text forKey:@"password"];
    [manager.registDict setObject:_passwordTextField.text forKey:[BulgeData sharedInstance].mMakeMsg];
    //: [manager.registDict setObject:@"" forKey:@"mobilecode"];
    [manager.registDict setObject:@"" forKey:[BulgeData sharedInstance].userReadData];
    //: [manager.registDict setObject:@"" forKey:@"invitecode"];
    [manager.registDict setObject:@"" forKey:[BulgeData sharedInstance].appRecordPath];
    //: [manager.registDict setObject:[self isVPNConnected]?@"1":@"0" forKey:@"vpn"];
    [manager.registDict setObject:[self tempChild]?@"1":@"0" forKey:[BulgeData sharedInstance].k_enableMsg];

    //: [_usernameTextField resignFirstResponder];
    [_usernameTextField resignFirstResponder];
    //: [_passwordTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [NTESRegistConfigManager firstSendRegistName:_usernameTextField.text pd:_passwordTextField.text RequestWithComplete:^(BOOL sucess, NSString *msg) {
    [PinMoreManager pointOut:_usernameTextField.text measure:_passwordTextField.text item:^(BOOL sucess, NSString *msg) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (sucess) {
        if (sucess) {
            //: RegisterInfoViewController *vc = [[RegisterInfoViewController alloc]init];
            ForefrontViewController *vc = [[ForefrontViewController alloc]init];
            //: vc.accountName = _usernameTextField.text;
            vc.accountName = _usernameTextField.text;
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        }
    //: }];
    }];
}


//: @end
@end