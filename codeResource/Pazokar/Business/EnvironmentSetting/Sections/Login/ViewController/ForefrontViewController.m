
#import <Foundation/Foundation.h>

@interface SizeProximateData : NSObject

@end

@implementation SizeProximateData

+ (Byte *)SizeProximateDataToCache:(Byte *)data {
    int candidly = data[0];
    Byte forbidManager = data[1];
    int tighten = data[2];
    for (int i = tighten; i < tighten + candidly; i++) {
        int value = data[i] + forbidManager;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[tighten + candidly] = 0;
    return data + tighten;
}

+ (NSString *)StringFromSizeProximateData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SizeProximateDataToCache:data]];
}

//: nickname
+ (NSString *)mainCenterId {
    /* static */ NSString *mainCenterId = nil;
    if (!mainCenterId) {
        Byte value[] = {8, 40, 13, 252, 122, 135, 105, 70, 211, 152, 14, 29, 45, 70, 65, 59, 67, 70, 57, 69, 61, 231};
        mainCenterId = [self StringFromSizeProximateData:value];
    }
    return mainCenterId;
}

//: spa
+ (NSString *)dream_inmateText {
    /* static */ NSString *dream_inmateText = nil;
    if (!dream_inmateText) {
        Byte value[] = {3, 45, 10, 132, 81, 3, 217, 12, 205, 18, 70, 67, 52, 99};
        dream_inmateText = [self StringFromSizeProximateData:value];
    }
    return dream_inmateText;
}

//: hant
+ (NSString *)k_childKey {
    /* static */ NSString *k_childKey = nil;
    if (!k_childKey) {
        Byte value[] = {4, 80, 6, 169, 107, 149, 24, 17, 30, 36, 248};
        k_childKey = [self StringFromSizeProximateData:value];
    }
    return k_childKey;
}

//: #F6F6F6
+ (NSString *)dreamRestoreGateIdent {
    /* static */ NSString *dreamRestoreGateIdent = nil;
    if (!dreamRestoreGateIdent) {
        Byte value[] = {7, 44, 8, 83, 53, 135, 217, 19, 247, 26, 10, 26, 10, 26, 10, 126};
        dreamRestoreGateIdent = [self StringFromSizeProximateData:value];
    }
    return dreamRestoreGateIdent;
}

//: #fffBusy
+ (NSString *)k_showSuccessTitle {
    /* static */ NSString *k_showSuccessTitle = nil;
    if (!k_showSuccessTitle) {
        Byte value[] = {7, 25, 4, 165, 10, 77, 77, 77, 77, 77, 77, 119};
        k_showSuccessTitle = [self StringFromSizeProximateData:value];
    }
    return k_showSuccessTitle;
}

//: register_avtivity3_avatar
+ (NSString *)m_fullData {
    /* static */ NSString *m_fullData = nil;
    if (!m_fullData) {
        Byte value[] = {25, 37, 9, 199, 208, 17, 37, 253, 155, 77, 64, 66, 68, 78, 79, 64, 77, 58, 60, 81, 79, 68, 81, 68, 79, 84, 14, 58, 60, 81, 60, 79, 60, 77, 187};
        m_fullData = [self StringFromSizeProximateData:value];
    }
    return m_fullData;
}

//: login_bg
+ (NSString *)k_textKey {
    /* static */ NSString *k_textKey = nil;
    if (!k_textKey) {
        Byte value[] = {8, 8, 9, 180, 91, 182, 165, 30, 91, 100, 103, 95, 97, 102, 87, 90, 95, 10};
        k_textKey = [self StringFromSizeProximateData:value];
    }
    return k_textKey;
}

//: warm_prompt
+ (NSString *)showTitleCellId {
    /* static */ NSString *showTitleCellId = nil;
    if (!showTitleCellId) {
        Byte value[] = {11, 18, 6, 154, 74, 244, 101, 79, 96, 91, 77, 94, 96, 93, 91, 94, 98, 62};
        showTitleCellId = [self StringFromSizeProximateData:value];
    }
    return showTitleCellId;
}

//: zh-Hant
+ (NSString *)noti_televisionUrl {
    /* static */ NSString *noti_televisionUrl = nil;
    if (!noti_televisionUrl) {
        Byte value[] = {7, 99, 12, 79, 121, 145, 159, 152, 113, 198, 78, 201, 23, 5, 202, 229, 254, 11, 17, 142};
        noti_televisionUrl = [self StringFromSizeProximateData:value];
    }
    return noti_televisionUrl;
}

//: activity_register_account_has_account
+ (NSString *)noti_strikeTitle {
    /* static */ NSString *noti_strikeTitle = nil;
    if (!noti_strikeTitle) {
        Byte value[] = {37, 65, 8, 57, 6, 139, 75, 239, 32, 34, 51, 40, 53, 40, 51, 56, 30, 49, 36, 38, 40, 50, 51, 36, 49, 30, 32, 34, 34, 46, 52, 45, 51, 30, 39, 32, 50, 30, 32, 34, 34, 46, 52, 45, 51, 23};
        noti_strikeTitle = [self StringFromSizeProximateData:value];
    }
    return noti_strikeTitle;
}

//: message_send_album
+ (NSString *)app_guitarText {
    /* static */ NSString *app_guitarText = nil;
    if (!app_guitarText) {
        Byte value[] = {18, 44, 9, 13, 47, 51, 129, 207, 77, 65, 57, 71, 71, 53, 59, 57, 51, 71, 57, 66, 56, 51, 53, 64, 54, 73, 65, 238};
        app_guitarText = [self StringFromSizeProximateData:value];
    }
    return app_guitarText;
}

//: #333333
+ (NSString *)user_nameMyMsg {
    /* static */ NSString *user_nameMyMsg = nil;
    if (!user_nameMyMsg) {
        Byte value[] = {7, 59, 12, 191, 139, 236, 141, 16, 245, 93, 89, 70, 232, 248, 248, 248, 248, 248, 248, 229};
        user_nameMyMsg = [self StringFromSizeProximateData:value];
    }
    return user_nameMyMsg;
}

//: activity_login_login
+ (NSString *)mainMPopMsg {
    /* static */ NSString *mainMPopMsg = nil;
    if (!mainMPopMsg) {
        Byte value[] = {20, 36, 7, 9, 14, 207, 172, 61, 63, 80, 69, 82, 69, 80, 85, 59, 72, 75, 67, 69, 74, 59, 72, 75, 67, 69, 74, 167};
        mainMPopMsg = [self StringFromSizeProximateData:value];
    }
    return mainMPopMsg;
}

//: register_avtivity3_nick
+ (NSString *)app_regardingMessage {
    /* static */ NSString *app_regardingMessage = nil;
    if (!app_regardingMessage) {
        Byte value[] = {23, 10, 6, 30, 122, 62, 104, 91, 93, 95, 105, 106, 91, 104, 85, 87, 108, 106, 95, 108, 95, 106, 111, 41, 85, 100, 95, 89, 97, 255};
        app_regardingMessage = [self StringFromSizeProximateData:value];
    }
    return app_regardingMessage;
}

//: nickname_tip
+ (NSString *)showControlSumValue {
    /* static */ NSString *showControlSumValue = nil;
    if (!showControlSumValue) {
        Byte value[] = {12, 83, 5, 223, 21, 27, 22, 16, 24, 27, 14, 26, 18, 12, 33, 22, 29, 171};
        showControlSumValue = [self StringFromSizeProximateData:value];
    }
    return showControlSumValue;
}

//: #5D5F66
+ (NSString *)appNameId {
    /* static */ NSString *appNameId = nil;
    if (!appNameId) {
        Byte value[] = {7, 71, 13, 14, 45, 36, 154, 212, 88, 236, 22, 18, 16, 220, 238, 253, 238, 255, 239, 239, 211};
        appNameId = [self StringFromSizeProximateData:value];
    }
    return appNameId;
}

//: group_info_activity_update_failed
+ (NSString *)k_frameText {
    /* static */ NSString *k_frameText = nil;
    if (!k_frameText) {
        Byte value[] = {33, 18, 13, 86, 147, 149, 207, 94, 78, 154, 217, 110, 68, 85, 96, 93, 99, 94, 77, 87, 92, 84, 93, 77, 79, 81, 98, 87, 100, 87, 98, 103, 77, 99, 94, 82, 79, 98, 83, 77, 84, 79, 87, 90, 83, 82, 139};
        k_frameText = [self StringFromSizeProximateData:value];
    }
    return k_frameText;
}

//: #999999
+ (NSString *)showDismissId {
    /* static */ NSString *showDismissId = nil;
    if (!showDismissId) {
        Byte value[] = {7, 57, 11, 196, 41, 10, 143, 82, 250, 62, 162, 234, 0, 0, 0, 0, 0, 0, 56};
        showDismissId = [self StringFromSizeProximateData:value];
    }
    return showDismissId;
}

//: contact_list_activity_complete
+ (NSString *)show_neighborhoodData {
    /* static */ NSString *show_neighborhoodData = nil;
    if (!show_neighborhoodData) {
        Byte value[] = {30, 75, 4, 76, 24, 36, 35, 41, 22, 24, 41, 20, 33, 30, 40, 41, 20, 22, 24, 41, 30, 43, 30, 41, 46, 20, 24, 36, 34, 37, 33, 26, 41, 26, 24};
        show_neighborhoodData = [self StringFromSizeProximateData:value];
    }
    return show_neighborhoodData;
}

//: setting_privacy
+ (NSString *)dream_barMsg {
    /* static */ NSString *dream_barMsg = nil;
    if (!dream_barMsg) {
        Byte value[] = {15, 80, 5, 208, 25, 35, 21, 36, 36, 25, 30, 23, 15, 32, 34, 25, 38, 17, 19, 41, 44};
        dream_barMsg = [self StringFromSizeProximateData:value];
    }
    return dream_barMsg;
}

//: user_info_avtivity_upload_avatar_failed
+ (NSString *)user_contentData {
    /* static */ NSString *user_contentData = nil;
    if (!user_contentData) {
        Byte value[] = {39, 59, 10, 167, 110, 28, 83, 215, 125, 238, 58, 56, 42, 55, 36, 46, 51, 43, 52, 36, 38, 59, 57, 46, 59, 46, 57, 62, 36, 58, 53, 49, 52, 38, 41, 36, 38, 59, 38, 57, 38, 55, 36, 43, 38, 46, 49, 42, 41, 208};
        user_contentData = [self StringFromSizeProximateData:value];
    }
    return user_contentData;
}

//: nickname_same_account
+ (NSString *)dreamKillerIdent {
    /* static */ NSString *dreamKillerIdent = nil;
    if (!dreamKillerIdent) {
        Byte value[] = {21, 37, 8, 143, 25, 94, 103, 65, 73, 68, 62, 70, 73, 60, 72, 64, 58, 78, 60, 72, 64, 58, 60, 62, 62, 74, 80, 73, 79, 114};
        dreamKillerIdent = [self StringFromSizeProximateData:value];
    }
    return dreamKillerIdent;
}

//: setting_privacy_camera
+ (NSString *)mainFileMyMessage {
    /* static */ NSString *mainFileMyMessage = nil;
    if (!mainFileMyMessage) {
        Byte value[] = {22, 32, 7, 162, 178, 53, 230, 83, 69, 84, 84, 73, 78, 71, 63, 80, 82, 73, 86, 65, 67, 89, 63, 67, 65, 77, 69, 82, 65, 59};
        mainFileMyMessage = [self StringFromSizeProximateData:value];
    }
    return mainFileMyMessage;
}

//: tag_activity_set
+ (NSString *)noti_fainVirusName {
    /* static */ NSString *noti_fainVirusName = nil;
    if (!noti_fainVirusName) {
        Byte value[] = {16, 28, 5, 70, 154, 88, 69, 75, 67, 69, 71, 88, 77, 90, 77, 88, 93, 67, 87, 73, 88, 193};
        noti_fainVirusName = [self StringFromSizeProximateData:value];
    }
    return noti_fainVirusName;
}

//: jpg
+ (NSString *)noti_nameIdent {
    /* static */ NSString *noti_nameIdent = nil;
    if (!noti_nameIdent) {
        Byte value[] = {3, 79, 10, 36, 46, 5, 42, 54, 170, 10, 27, 33, 24, 186};
        noti_nameIdent = [self StringFromSizeProximateData:value];
    }
    return noti_nameIdent;
}

//: icon_photo
+ (NSString *)dreamDifferentlyContent {
    /* static */ NSString *dreamDifferentlyContent = nil;
    if (!dreamDifferentlyContent) {
        Byte value[] = {10, 96, 11, 136, 84, 88, 11, 109, 7, 52, 174, 9, 3, 15, 14, 255, 16, 8, 15, 20, 15, 53};
        dreamDifferentlyContent = [self StringFromSizeProximateData:value];
    }
    return dreamDifferentlyContent;
}

//: contact_tag_fragment_cancel
+ (NSString *)mMotorMessage {
    /* static */ NSString *mMotorMessage = nil;
    if (!mMotorMessage) {
        Byte value[] = {27, 63, 10, 219, 5, 58, 47, 196, 122, 100, 36, 48, 47, 53, 34, 36, 53, 32, 53, 34, 40, 32, 39, 51, 34, 40, 46, 38, 47, 53, 32, 36, 34, 47, 36, 38, 45, 228};
        mMotorMessage = [self StringFromSizeProximateData:value];
    }
    return mMotorMessage;
}

//: photo_account_def
+ (NSString *)mainShouldStr {
    /* static */ NSString *mainShouldStr = nil;
    if (!mainShouldStr) {
        Byte value[] = {17, 72, 11, 24, 164, 145, 136, 208, 87, 167, 73, 40, 32, 39, 44, 39, 23, 25, 27, 27, 39, 45, 38, 44, 23, 28, 29, 30, 239};
        mainShouldStr = [self StringFromSizeProximateData:value];
    }
    return mainShouldStr;
}

//: register_good_nick
+ (NSString *)appNextName {
    /* static */ NSString *appNextName = nil;
    if (!appNextName) {
        Byte value[] = {18, 21, 8, 141, 230, 221, 15, 63, 93, 80, 82, 84, 94, 95, 80, 93, 74, 82, 90, 90, 79, 74, 89, 84, 78, 86, 16};
        appNextName = [self StringFromSizeProximateData:value];
    }
    return appNextName;
}

//: zh-Hans
+ (NSString *)k_usuallyContent {
    /* static */ NSString *k_usuallyContent = nil;
    if (!k_usuallyContent) {
        Byte value[] = {7, 73, 5, 147, 15, 49, 31, 228, 255, 24, 37, 42, 93};
        k_usuallyContent = [self StringFromSizeProximateData:value];
    }
    return k_usuallyContent;
}

//: login_nickname
+ (NSString *)notiSuccessValue {
    /* static */ NSString *notiSuccessValue = nil;
    if (!notiSuccessValue) {
        Byte value[] = {14, 99, 5, 149, 224, 9, 12, 4, 6, 11, 252, 11, 6, 0, 8, 11, 254, 10, 2, 83};
        notiSuccessValue = [self StringFromSizeProximateData:value];
    }
    return notiSuccessValue;
}

//: #02D8C9
+ (NSString *)mainExplainStr {
    /* static */ NSString *mainExplainStr = nil;
    if (!mainExplainStr) {
        Byte value[] = {7, 88, 3, 203, 216, 218, 236, 224, 235, 225, 75};
        mainExplainStr = [self StringFromSizeProximateData:value];
    }
    return mainExplainStr;
}

//: ko-KP
+ (NSString *)main_finName {
    /* static */ NSString *main_finName = nil;
    if (!main_finName) {
        Byte value[] = {5, 18, 11, 102, 199, 124, 7, 111, 204, 55, 41, 89, 93, 27, 57, 62, 66};
        main_finName = [self StringFromSizeProximateData:value];
    }
    return main_finName;
}

//: ic_close_b
+ (NSString *)appTelevisionKey {
    /* static */ NSString *appTelevisionKey = nil;
    if (!appTelevisionKey) {
        Byte value[] = {10, 16, 8, 247, 66, 7, 152, 176, 89, 83, 79, 83, 92, 95, 99, 85, 79, 82, 254};
        appTelevisionKey = [self StringFromSizeProximateData:value];
    }
    return appTelevisionKey;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  ForefrontViewController.m
//  Riverla
//
//  Created by mac on 2025/4/9.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RegisterInfoViewController.h"
#import "ForefrontViewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "NTESRegistConfigManager.h"
#import "PinMoreManager.h"
//: #import "NTESFileLocationHelper.h"
#import "VersionData.h"

//: @interface RegisterInfoViewController ()
@interface ForefrontViewController ()

//: @property (nonatomic, strong) UIImage *headerImage;
@property (nonatomic, strong) UIImage *headerImage;
//: @property (nonatomic, strong) UIImageView *aratarImgView;
@property (nonatomic, strong) UIImageView *aratarImgView;
//: @property (strong, nonatomic) UIButton *btnPhoto;
@property (strong, nonatomic) UIButton *btnPhoto;
//: @property (strong, nonatomic) UITextField *usernameTextField;
@property (strong, nonatomic) UITextField *usernameTextField;
//: @property (strong, nonatomic) UIImageView *titleImg;
@property (strong, nonatomic) UIImageView *titleImg;

//: @property (strong, nonatomic) UIButton *loginButton;
@property (strong, nonatomic) UIButton *loginButton;
//: @property (strong, nonatomic) UIButton *registerButton;
@property (strong, nonatomic) UIButton *registerButton;

//: @property (nonatomic, strong) NSString *avaterUrl;
@property (nonatomic, strong) NSString *avaterUrl;

//: @end
@end

//: @implementation RegisterInfoViewController
@implementation ForefrontViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[SizeProximateData k_textKey]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initOf];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}
//: - (void)backAction{
- (void)numberernationalTing{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)initUI
- (void)initOf
{
    //: UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: closeBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight]+2, 40, 40);
    closeBtn.frame = CGRectMake(15, [UIDevice statusOrLevel]+2, 40, 40);
    //: [closeBtn setImage:[UIImage imageNamed:@"ic_close_b"] forState:(UIControlStateNormal)];
    [closeBtn setImage:[UIImage imageNamed:[SizeProximateData appTelevisionKey]] forState:(UIControlStateNormal)];
    //: [closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [closeBtn addTarget:self action:@selector(numberernationalTing) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:closeBtn];
    [self.view addSubview:closeBtn];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+20, [[UIScreen mainScreen] bounds].size.width-30, 30)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice statusOrLevel])+20, [[UIScreen mainScreen] bounds].size.width-30, 30)];
    //: labtitle.text = [BusyLanguageManager getTextWithKey:@"register_good_nick"];
    labtitle.text = [SendName streetSmart:[SizeProximateData appNextName]];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    labtitle.textColor = [UIColor status:[SizeProximateData appNameId]];
    //: labtitle.font = [UIFont systemFontOfSize:14];
    labtitle.font = [UIFont systemFontOfSize:14];
//    labtitle.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, labtitle.bottom+30, 140, 140)];
    UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, labtitle.bottom+30, 140, 140)];
    //: [self.view addSubview:avaterView];
    [self.view addSubview:avaterView];
    //: self.aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    self.aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    //: self.aratarImgView.image = [UIImage imageNamed:@"photo_account_def"];
    self.aratarImgView.image = [UIImage imageNamed:[SizeProximateData mainShouldStr]];
    //: self.aratarImgView.layer.cornerRadius = 70;
    self.aratarImgView.layer.cornerRadius = 70;
    //: self.aratarImgView.layer.masksToBounds = YES;
    self.aratarImgView.layer.masksToBounds = YES;
    //: [avaterView addSubview:self.aratarImgView];
    [avaterView addSubview:self.aratarImgView];
    //: self.btnPhoto = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnPhoto = [UIButton buttonWithType:UIButtonTypeCustom];
//    self.btnPhoto.backgroundColor = [UIColor whiteColor];
    //: self.btnPhoto.layer.cornerRadius = 24;
    self.btnPhoto.layer.cornerRadius = 24;
    //: self.btnPhoto.layer.masksToBounds = YES;
    self.btnPhoto.layer.masksToBounds = YES;
    //: self.btnPhoto.frame = CGRectMake(92, 92, 48, 48);
    self.btnPhoto.frame = CGRectMake(92, 92, 48, 48);
    //: [self.btnPhoto setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
    [self.btnPhoto setImage:[UIImage imageNamed:[SizeProximateData dreamDifferentlyContent]] forState:(UIControlStateNormal)];
    //: [self.btnPhoto addTarget:self action:@selector(showPicker) forControlEvents:UIControlEventTouchUpInside];
    [self.btnPhoto addTarget:self action:@selector(oldFlip) forControlEvents:UIControlEventTouchUpInside];
    //: [avaterView addSubview:self.btnPhoto];
    [avaterView addSubview:self.btnPhoto];

    //: UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: usernameView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    usernameView.backgroundColor = [UIColor status:[SizeProximateData dreamRestoreGateIdent]];
    //: usernameView.layer.cornerRadius = 24;
    usernameView.layer.cornerRadius = 24;
    //: usernameView.layer.masksToBounds = YES;
    usernameView.layer.masksToBounds = YES;
    //: [self.view addSubview:usernameView];
    [self.view addSubview:usernameView];

    //: self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: self.titleImg.image = [UIImage imageNamed:@"login_nickname"];
    self.titleImg.image = [UIImage imageNamed:[SizeProximateData notiSuccessValue]];
    //: [usernameView addSubview:self.titleImg];
    [usernameView addSubview:self.titleImg];

    //: _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 3, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    //: _usernameTextField.font = [UIFont systemFontOfSize:16];
    _usernameTextField.font = [UIFont systemFontOfSize:16];
    //: _usernameTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _usernameTextField.textColor = [UIColor status:[SizeProximateData user_nameMyMsg]];
    //    _usernameTextField.keyboardType = UIKeyboardTypeASCIICapable;
//    _usernameTextField.delegate = self;
    //: NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[BusyLanguageManager getTextWithKey:@"nickname_tip"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[SendName streetSmart:[SizeProximateData showControlSumValue]] attributes:@{NSForegroundColorAttributeName:[UIColor status:[SizeProximateData showDismissId]]}];
    //: _usernameTextField.attributedPlaceholder = attrString;
    _usernameTextField.attributedPlaceholder = attrString;
    //: [usernameView addSubview:_usernameTextField];
    [usernameView addSubview:_usernameTextField];

    //: _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _loginButton.frame = CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    _loginButton.frame = CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    //: _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_loginButton setTitle:[BusyLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [_loginButton setTitle:[SendName streetSmart:[SizeProximateData show_neighborhoodData]] forState:UIControlStateNormal];
    //: [_loginButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [_loginButton addTarget:self action:@selector(videoClick) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_loginButton];
    [self.view addSubview:_loginButton];
    //: _loginButton.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
    _loginButton.backgroundColor = [UIColor status:[SizeProximateData mainExplainStr]];
    //: _loginButton.layer.cornerRadius = 24;
    _loginButton.layer.cornerRadius = 24;

    //: _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _registerButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-136, [UIDevice vg_statusBarHeight]+20, 146, 32);
    _registerButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-136, [UIDevice statusOrLevel]+20, 146, 32);
    //: _registerButton.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
    _registerButton.backgroundColor = [UIColor status:[SizeProximateData mainExplainStr]];
    //: _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_registerButton setTitleColor:[UIColor colorWithHexString:@"#fffBusy"] forState:UIControlStateNormal];
    [_registerButton setTitleColor:[UIColor status:[SizeProximateData k_showSuccessTitle]] forState:UIControlStateNormal];
    //: [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",[BusyLanguageManager getTextWithKey:@"activity_register_account_has_account"],[BusyLanguageManager getTextWithKey:@"activity_login_login"]] forState:UIControlStateNormal];
    [_registerButton setTitle:[NSString stringWithFormat:@"%@,%@",[SendName streetSmart:[SizeProximateData noti_strikeTitle]],[SendName streetSmart:[SizeProximateData mainMPopMsg]]] forState:UIControlStateNormal];
    //: [_registerButton addTarget:self action:@selector(gotologin) forControlEvents:UIControlEventTouchUpInside];
    [_registerButton addTarget:self action:@selector(visualizationInfo) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_registerButton];
    [self.view addSubview:_registerButton];
    //: _registerButton.layer.masksToBounds = YES;
    _registerButton.layer.masksToBounds = YES;
    //: _registerButton.layer.cornerRadius = 16;
    _registerButton.layer.cornerRadius = 16;
}


//: - (void)requestAuthorizationForVideo {
- (void)easyLay {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    //: if (AVAuthorizationStatusNotDetermined == authorityStaus) {
    if (AVAuthorizationStatusNotDetermined == authorityStaus) {
        //: [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            //: if (granted == YES) {
            if (granted == YES) {
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                        //: [self pushTZImagePickerControllerWithAsset:nil];
                        [self indoors:nil];

                    }
                //: });
                });
            }
        //: }];
        }];
    //: } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
    } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
        //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            //: [self pushTZImagePickerControllerWithAsset:nil];
            [self indoors:nil];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[BusyLanguageManager getTextWithKey:@"warm_prompt"] message:[BusyLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[SendName streetSmart:[SizeProximateData showTitleCellId]] message:[SendName streetSmart:[SizeProximateData mainFileMyMessage]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[SizeProximateData mMotorMessage]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[SizeProximateData noti_fainVirusName]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        //: }])];
        }])];
        //: [self presentViewController:alertControl animated:YES completion:nil];
        [self presentViewController:alertControl animated:YES completion:nil];

    }
}

/**
 *  请求相册
 */
//: - (void)requestAuthorizationForPhotoLibrary
- (void)radiogramMessage
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    //: if (PHAuthorizationStatusNotDetermined == authStatus) {
    if (PHAuthorizationStatusNotDetermined == authStatus) {
        //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            //: if (PHAuthorizationStatusAuthorized == status) {
            if (PHAuthorizationStatusAuthorized == status) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self pushTZImagePickerControllerWithAsset:nil];
                    [self indoors:nil];
                //: });
                });
            }
        //: }];
        }];
        //: return;
        return;
    //: } else if (PHAuthorizationStatusAuthorized == authStatus){
    } else if (PHAuthorizationStatusAuthorized == authStatus){
        //: [self pushTZImagePickerControllerWithAsset:nil];
        [self indoors:nil];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[BusyLanguageManager getTextWithKey:@"warm_prompt"] message:[BusyLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[SendName streetSmart:[SizeProximateData showTitleCellId]] message:[SendName streetSmart:[SizeProximateData dream_barMsg]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[SizeProximateData mMotorMessage]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[SizeProximateData noti_fainVirusName]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        //: }])];
        }])];
        //: [self presentViewController:alertControl animated:YES completion:nil];
        [self presentViewController:alertControl animated:YES completion:nil];
    }
}







//: - (void)showPicker {
- (void)oldFlip {

    //: UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];

//    UIAlertAction *camera = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//
////        [self pushTZImagePickerControllerWithAsset:nil];
//        [self requestAuthorizationForVideo];
//
//    }];

    //: UIAlertAction *picture = [UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"message_send_album"] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    UIAlertAction *picture = [UIAlertAction actionWithTitle:[SendName streetSmart:[SizeProximateData app_guitarText]] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {

//        [self pushTZImagePickerControllerWithAsset:nil];
        //: [self requestAuthorizationForPhotoLibrary];
        [self radiogramMessage];

            //: }];
            }];

    //: UIAlertAction *cancle = [UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:[SendName streetSmart:[SizeProximateData mMotorMessage]] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
   //: }];
   }];


//    [alertVc addAction:camera];
    //: [alertVc addAction:picture];
    [alertVc addAction:picture];
    //: [alertVc addAction:cancle];
    [alertVc addAction:cancle];

    //: [self presentViewController:alertVc animated:YES completion:nil];
    [self presentViewController:alertVc animated:YES completion:nil];
}

//: #pragma mark - TZImagePickerController
#pragma mark - TZImagePickerController
//: - (void)pushTZImagePickerControllerWithAsset:(PHAsset *)asset {
- (void)indoors:(PHAsset *)asset {

    //: TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];

//: #pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
#pragma mark - 五类个性化设置，这些参数都可以不传，此时会走默认设置
    //: imagePickerVc.isSelectOriginalPhoto = YES;
    imagePickerVc.isSelectOriginalPhoto = YES;
    //: if (asset){
    if (asset){
        //: imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; 
        imagePickerVc.selectedAssets = [NSMutableArray arrayWithObject:asset]; // 目前已经选中的图片数组
    }
    //: imagePickerVc.allowTakePicture = YES; 
    imagePickerVc.allowTakePicture = YES; // 在内部显示拍照按钮
    //: imagePickerVc.allowTakeVideo = NO; 
    imagePickerVc.allowTakeVideo = NO; // 在内部显示拍视频按
    //: [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
    [imagePickerVc setUiImagePickerControllerSettingBlock:^(UIImagePickerController *imagePickerController) {
        //: imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
        imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
    //: }];
    }];

    //: imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    imagePickerVc.iconThemeColor = [UIColor colorWithRed:31 / 255.0 green:185 / 255.0 blue:34 / 255.0 alpha:1.0];
    //: imagePickerVc.showPhotoCannotSelectLayer = YES;
    imagePickerVc.showPhotoCannotSelectLayer = YES;
    //: imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    imagePickerVc.cannotSelectLayerColor = [[UIColor whiteColor] colorWithAlphaComponent:0.8];
    //: imagePickerVc.processHintStr = @"...";
    imagePickerVc.processHintStr = @"...";
    // 3. 设置是否可以选择视频/图片/原图
    //: imagePickerVc.allowPickingVideo = NO;
    imagePickerVc.allowPickingVideo = NO;
    //: imagePickerVc.allowPickingImage = YES;
    imagePickerVc.allowPickingImage = YES;
    //: imagePickerVc.allowPickingOriginalPhoto = YES;
    imagePickerVc.allowPickingOriginalPhoto = YES;
    //: imagePickerVc.allowPickingGif = NO;
    imagePickerVc.allowPickingGif = NO;
    //: imagePickerVc.allowPickingMultipleVideo = NO;
    imagePickerVc.allowPickingMultipleVideo = NO;

    // 4. 照片排列按修改时间升序
    //: imagePickerVc.sortAscendingByModificationDate = YES;
    imagePickerVc.sortAscendingByModificationDate = YES;

     //: imagePickerVc.maxImagesCount = 1;
     imagePickerVc.maxImagesCount = 1;

    /// 5. Single selection mode, valid when maxImagesCount = 1
    /// 5. 单选模式,maxImagesCount为1时才生效
    //: imagePickerVc.showSelectBtn = NO;
    imagePickerVc.showSelectBtn = NO;
    //: imagePickerVc.allowCrop = YES;
    imagePickerVc.allowCrop = YES;
    //: imagePickerVc.needCircleCrop = YES;
    imagePickerVc.needCircleCrop = YES;
    // 设置竖屏下的裁剪尺寸
    //: NSInteger left = 30;
    NSInteger left = 30;
    //: NSInteger widthHeight = self.view.width - 2 * left;
    NSInteger widthHeight = self.view.width - 2 * left;
    //: NSInteger top = (self.view.height - widthHeight) / 2;
    NSInteger top = (self.view.height - widthHeight) / 2;
    //: imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
    //: imagePickerVc.scaleAspectFillCrop = YES;
    imagePickerVc.scaleAspectFillCrop = YES;

    //: imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;
    imagePickerVc.statusBarStyle = UIStatusBarStyleLightContent;

    // 设置是否显示图片序号
    //: imagePickerVc.showSelectedIndex = YES;
    imagePickerVc.showSelectedIndex = YES;

    //: imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
    imagePickerVc.navigationBar.barStyle = UIBarStyleDefault;
//    imagePickerVc.naviBgColor = [KEKESkinColorManager shareInstance].skinColor;
    //: imagePickerVc.naviTitleColor = [UIColor blackColor];
    imagePickerVc.naviTitleColor = [UIColor blackColor];
    //: imagePickerVc.barItemTextColor = [UIColor blackColor];
    imagePickerVc.barItemTextColor = [UIColor blackColor];

    //: NSString *langType = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *langType = cornerViewText([DataMaxDefaults max].language);
    //: NSString *preferredlang = @"";
    NSString *preferredlang = @"";
    //: if ([langType containsString:@"vi"]){
    if ([langType containsString:@"vi"]){
        //: preferredlang = @"vi";
        preferredlang = @"vi";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: preferredlang = @"ja";
        preferredlang = @"ja";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: preferredlang = @"ko-KP";
        preferredlang = [SizeProximateData main_finName];
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[SizeProximateData dream_inmateText]]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [SizeProximateData k_usuallyContent];
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: preferredlang = @"de";
        preferredlang = @"de";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: preferredlang = @"ar";
        preferredlang = @"ar";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: preferredlang = @"ru";
        preferredlang = @"ru";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: preferredlang = @"fr";
        preferredlang = @"fr";
    //: }else if ([langType containsString:@"hant"]){
    }else if ([langType containsString:[SizeProximateData k_childKey]]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [SizeProximateData noti_televisionUrl];
    //: }else{
    }else{
        //: preferredlang = @"en";
        preferredlang = @"en";
    }
    //: imagePickerVc.preferredLanguage = preferredlang;
    imagePickerVc.preferredLanguage = preferredlang;

//    [NSSet setWithObjects:@"zh-Hans", @"zh-Hant", @"en", @"ar", @"de", @"es", @"fr", @"ja", @"ko-KP", @"pt", @"ru", @"vi", nil];
    // 设置首选语言 / Set preferred language
//         imagePickerVc.preferredLanguage = @"zh-Hans";
        // 设置languageBundle以使用其它语言 / Set languageBundle to use other language
//         imagePickerVc.languageBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"tz-ru" ofType:@"lproj"]];

//: #pragma mark - 到这里为止
#pragma mark - 到这里为止

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
    [imagePickerVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
        //: if (photos.count > 0 && assets.count > 0) {
        if (photos.count > 0 && assets.count > 0) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;

            //: [self.aratarImgView setImage:photos.firstObject];
            [self.aratarImgView setImage:photos.firstObject];
            //: self.headerImage = photos.firstObject;
            self.headerImage = photos.firstObject;
//            [self uploadImage:photos.firstObject];
        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)uploadImage:(UIImage *)image{
- (void)untilFile:(UIImage *)image{

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image view:CGSizeMake(150, 150)];
    //: NSString *fileName = [NTESFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [VersionData circleInputExt:[SizeProximateData noti_nameIdent]];
    //: NSString *filePath = [[NTESFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
    NSString *filePath = [[VersionData input] stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.7);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.7);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
        [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
            //: NSLog(@"%.2f",progress);
        //: } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
        } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: if (!error && wself) {
            if (!error && wself) {
                //: NSLog(@"urlString：%@",urlString);
                //: self.avaterUrl = urlString;
                self.avaterUrl = urlString;
            //: }else{
            }else{
                //: [wself.view makeToast:[BusyLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[SendName streetSmart:[SizeProximateData user_contentData]]
                             //: duration:2
                             duration:2
                             //: position:CSToastPositionCenter];
                             position:CSToastPositionCenter];
            }
        //: }];
        }];
    //: }else{
    }else{
        //: [self.view makeToast:[BusyLanguageManager getTextWithKey:@"group_info_activity_update_failed"]
        [self.view makeToast:[SendName streetSmart:[SizeProximateData k_frameText]]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    }
}


//: - (void)gotologin
- (void)visualizationInfo
{
    //: [self.navigationController popToRootViewControllerAnimated:NO];
    [self.navigationController popToRootViewControllerAnimated:NO];
}
//: - (void)nextButtonClick
- (void)videoClick
{
    //: if (_usernameTextField.text.length == 0) {
    if (_usernameTextField.text.length == 0) {
        //: [self.view makeToast:[BusyLanguageManager getTextWithKey:@"register_avtivity3_nick"]
        [self.view makeToast:[SendName streetSmart:[SizeProximateData app_regardingMessage]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }
    //: if ([_usernameTextField.text isEqualToString:self.accountName]) {
    if ([_usernameTextField.text isEqualToString:self.accountName]) {
        //: [self.view makeToast:[BusyLanguageManager getTextWithKey:@"nickname_same_account"]
        [self.view makeToast:[SendName streetSmart:[SizeProximateData dreamKillerIdent]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }


    //: NTESRegistConfigManager *manager = [NTESRegistConfigManager shareConfigManager];
    PinMoreManager *manager = [PinMoreManager impression];

    //: if (_headerImage) {
    if (_headerImage) {
        //: manager.headerImage = _headerImage;
        manager.headerImage = _headerImage;
    //: }else{
    }else{
        //: [SVProgressHUD showMessage:[BusyLanguageManager getTextWithKey:@"register_avtivity3_avatar"]];
        [SVProgressHUD stormCenter:[SendName streetSmart:[SizeProximateData m_fullData]]];
        //: return;
        return;
    }

    //: [manager.registDict setObject:self.usernameTextField.text forKey:@"nickname"];
    [manager.registDict setObject:self.usernameTextField.text forKey:[SizeProximateData mainCenterId]];
//    [manager.registDict setObject:self.avaterUrl forKey:@"imageurl"];

    //注册
    //: [NTESRegistConfigManager sendRegistRequest:self.navigationController];
    [PinMoreManager request:self.navigationController];
}

//: @end
@end
