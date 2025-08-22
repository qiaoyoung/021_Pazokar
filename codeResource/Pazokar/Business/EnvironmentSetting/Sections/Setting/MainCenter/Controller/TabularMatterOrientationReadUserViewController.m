
#import <Foundation/Foundation.h>

typedef struct {
    Byte impression;
    Byte *bottomSource;
    unsigned int espouse;
	int viewTeam;
} StructPopData;

@interface PopData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation PopData

+ (instancetype)sharedInstance {
    static PopData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)PopDataToData:(NSString *)value {
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

- (Byte *)PopDataToByte:(StructPopData *)data {
    for (int i = 0; i < data->espouse; i++) {
        data->bottomSource[i] ^= data->impression;
    }
    data->bottomSource[data->espouse] = 0;
	if (data->espouse >= 1) {
		data->viewTeam = data->bottomSource[0];
	}
    return data->bottomSource;
}

- (NSString *)StringFromPopData:(StructPopData *)data {
    return [NSString stringWithUTF8String:(char *)[self PopDataToByte:data]];
}

//: gender
- (NSString *)userMShouldMsg {
    /* static */ NSString *userMShouldMsg = nil;
    if (!userMShouldMsg) {
		NSString *origin = @"5f5d565c5d4ad4";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){56, (Byte *)data.bytes, 6, 113};
        userMShouldMsg = [self StringFromPopData:&value];
    }
    return userMShouldMsg;
}

//: icon_options_grdefault
- (NSString *)m_rangeFileMsg {
    /* static */ NSString *m_rangeFileMsg = nil;
    if (!m_rangeFileMsg) {
		NSString *origin = @"cac0cccdfcccd3d7cacccdd0fcc4d1c7c6c5c2d6cfd70c";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){163, (Byte *)data.bytes, 22, 120};
        m_rangeFileMsg = [self StringFromPopData:&value];
    }
    return m_rangeFileMsg;
}

//: hant
- (NSString *)k_afterValue {
    /* static */ NSString *k_afterValue = nil;
    if (!k_afterValue) {
		NSString *origin = @"fbf2fde792";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){147, (Byte *)data.bytes, 4, 115};
        k_afterValue = [self StringFromPopData:&value];
    }
    return k_afterValue;
}

//: zh-Hant
- (NSString *)showCellIdent {
    /* static */ NSString *showCellIdent = nil;
    if (!showCellIdent) {
		NSString *origin = @"f3e1a4c1e8e7fd98";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){137, (Byte *)data.bytes, 7, 126};
        showCellIdent = [self StringFromPopData:&value];
    }
    return showCellIdent;
}

//: friend_info_activity_nan
- (NSString *)userNameMessage {
    /* static */ NSString *userNameMessage = nil;
    if (!userNameMessage) {
		NSString *origin = @"4c58434f444e7543444c45754b495e435c435e5375444b445d";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){42, (Byte *)data.bytes, 24, 76};
        userNameMessage = [self StringFromPopData:&value];
    }
    return userNameMessage;
}

//: my_user_info_activity_title
- (NSString *)noti_voiceData {
    /* static */ NSString *noti_voiceData = nil;
    if (!noti_voiceData) {
		NSString *origin = @"7561476d6b7d6a4771767e7747797b6c716e716c61476c716c747ddd";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){24, (Byte *)data.bytes, 27, 107};
        noti_voiceData = [self StringFromPopData:&value];
    }
    return noti_voiceData;
}

//: activity_friend_info_sex
- (NSString *)show_controlStr {
    /* static */ NSString *show_controlStr = nil;
    if (!show_controlStr) {
		NSString *origin = @"8e8c9b8699869b96b0899d868a818bb086818980b09c8a9754";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){239, (Byte *)data.bytes, 24, 236};
        show_controlStr = [self StringFromPopData:&value];
    }
    return show_controlStr;
}

//: contact_tag_fragment_cancel
- (NSString *)user_textKey {
    /* static */ NSString *user_textKey = nil;
    if (!user_textKey) {
		NSString *origin = @"4d41405a4f4d5a715a4f4971485c4f49434b405a714d4f404d4b42ea";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){46, (Byte *)data.bytes, 27, 8};
        user_textKey = [self StringFromPopData:&value];
    }
    return user_textKey;
}

//: spa
- (NSString *)dreamFilePath {
    /* static */ NSString *dreamFilePath = nil;
    if (!dreamFilePath) {
		NSString *origin = @"898a9bb8";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){250, (Byte *)data.bytes, 3, 205};
        dreamFilePath = [self StringFromPopData:&value];
    }
    return dreamFilePath;
}

//: user_profile_avtivity_account
- (NSString *)dreamInputKey {
    /* static */ NSString *dreamInputKey = nil;
    if (!dreamInputKey) {
		NSString *origin = @"c4c2d4c3eec1c3ded7d8ddd4eed0c7c5d8c7d8c5c8eed0d2d2dec4dfc546";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){177, (Byte *)data.bytes, 29, 138};
        dreamInputKey = [self StringFromPopData:&value];
    }
    return dreamInputKey;
}

//: icon_copy
- (NSString *)show_frameUrl {
    /* static */ NSString *show_frameUrl = nil;
    if (!show_frameUrl) {
		NSString *origin = @"f2f8f4f5c4f8f4ebe21d";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){155, (Byte *)data.bytes, 9, 173};
        show_frameUrl = [self StringFromPopData:&value];
    }
    return show_frameUrl;
}

//: accout_nickname
- (NSString *)noti_managerTitle {
    /* static */ NSString *noti_managerTitle = nil;
    if (!noti_managerTitle) {
		NSString *origin = @"67656569737259686f656d68676b6394";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){6, (Byte *)data.bytes, 15, 134};
        noti_managerTitle = [self StringFromPopData:&value];
    }
    return noti_managerTitle;
}

//: friend_info_activity_nv
- (NSString *)main_viewKey {
    /* static */ NSString *main_viewKey = nil;
    if (!main_viewKey) {
		NSString *origin = @"72667d717a704b7d7a727b4b7577607d627d606d4b7a62aa";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){20, (Byte *)data.bytes, 23, 245};
        main_viewKey = [self StringFromPopData:&value];
    }
    return main_viewKey;
}

//: zh-Hans
- (NSString *)appWithMakeValue {
    /* static */ NSString *appWithMakeValue = nil;
    if (!appWithMakeValue) {
		NSString *origin = @"504207624b44598e";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){42, (Byte *)data.bytes, 7, 23};
        appWithMakeValue = [self StringFromPopData:&value];
    }
    return appWithMakeValue;
}

//: icon_me_arrow
- (NSString *)show_shouldObjectMakeFormat {
    /* static */ NSString *show_shouldObjectMakeFormat = nil;
    if (!show_shouldObjectMakeFormat) {
		NSString *origin = @"a8a2aeaf9eaca49ea0b3b3aeb61e";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){193, (Byte *)data.bytes, 13, 255};
        show_shouldObjectMakeFormat = [self StringFromPopData:&value];
    }
    return show_shouldObjectMakeFormat;
}

//: account_account
- (NSString *)user_cellToolMessage {
    /* static */ NSString *user_cellToolMessage = nil;
    if (!user_cellToolMessage) {
		NSString *origin = @"777575796378624977757579637862e3";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){22, (Byte *)data.bytes, 15, 57};
        user_cellToolMessage = [self StringFromPopData:&value];
    }
    return user_cellToolMessage;
}

//: user_id
- (NSString *)noti_recordName {
    /* static */ NSString *noti_recordName = nil;
    if (!noti_recordName) {
		NSString *origin = @"aaacbaad80b6bb12";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){223, (Byte *)data.bytes, 7, 58};
        noti_recordName = [self StringFromPopData:&value];
    }
    return noti_recordName;
}

//: /user/detail
- (NSString *)appPopId {
    /* static */ NSString *appPopId = nil;
    if (!appPopId) {
		NSString *origin = @"f6acaabcabf6bdbcadb8b0b593";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){217, (Byte *)data.bytes, 12, 44};
        appPopId = [self StringFromPopData:&value];
    }
    return appPopId;
}

//: setting_privacy
- (NSString *)userInfoKey {
    /* static */ NSString *userInfoKey = nil;
    if (!userInfoKey) {
		NSString *origin = @"c8decfcfd2d5dce4cbc9d2cddad8c26d";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){187, (Byte *)data.bytes, 15, 217};
        userInfoKey = [self StringFromPopData:&value];
    }
    return userInfoKey;
}

//: setting_privacy_camera
- (NSString *)show_centerValue {
    /* static */ NSString *show_centerValue = nil;
    if (!show_centerValue) {
		NSString *origin = @"1b0d1c1c01060f37181a011e090b11370b09050d1a0943";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){104, (Byte *)data.bytes, 22, 27};
        show_centerValue = [self StringFromPopData:&value];
    }
    return show_centerValue;
}

//: warm_prompt
- (NSString *)user_teamKey {
    /* static */ NSString *user_teamKey = nil;
    if (!user_teamKey) {
		NSString *origin = @"283e2d32002f2d30322f2b51";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){95, (Byte *)data.bytes, 11, 40};
        user_teamKey = [self StringFromPopData:&value];
    }
    return user_teamKey;
}

//: code
- (NSString *)appViewStr {
    /* static */ NSString *appViewStr = nil;
    if (!appViewStr) {
		NSString *origin = @"1a161d1c10";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){121, (Byte *)data.bytes, 4, 58};
        appViewStr = [self StringFromPopData:&value];
    }
    return appViewStr;
}

//: icon_photo
- (NSString *)kPathMsg {
    /* static */ NSString *kPathMsg = nil;
    if (!kPathMsg) {
		NSString *origin = @"a0aaa6a796b9a1a6bda60e";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){201, (Byte *)data.bytes, 10, 190};
        kPathMsg = [self StringFromPopData:&value];
    }
    return kPathMsg;
}

//: #5D5F66
- (NSString *)m_redMessage {
    /* static */ NSString *m_redMessage = nil;
    if (!m_redMessage) {
		NSString *origin = @"5046374635454580";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){115, (Byte *)data.bytes, 7, 162};
        m_redMessage = [self StringFromPopData:&value];
    }
    return m_redMessage;
}

//: tag_activity_set
- (NSString *)show_pinId {
    /* static */ NSString *show_pinId = nil;
    if (!show_pinId) {
		NSString *origin = @"e5f0f6cef0f2e5f8e7f8e5e8cee2f4e538";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){145, (Byte *)data.bytes, 16, 92};
        show_pinId = [self StringFromPopData:&value];
    }
    return show_pinId;
}

//: photo_account_def
- (NSString *)kCornerCountUrl {
    /* static */ NSString *kCornerCountUrl = nil;
    if (!kCornerCountUrl) {
		NSString *origin = @"9b83849f84b48a8888849e859fb48f8e8d21";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){235, (Byte *)data.bytes, 17, 184};
        kCornerCountUrl = [self StringFromPopData:&value];
    }
    return kCornerCountUrl;
}

//: account
- (NSString *)m_bottomIdent {
    /* static */ NSString *m_bottomIdent = nil;
    if (!m_bottomIdent) {
		NSString *origin = @"d5d7d7dbc1dac012";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){180, (Byte *)data.bytes, 7, 19};
        m_bottomIdent = [self StringFromPopData:&value];
    }
    return m_bottomIdent;
}

//: user_info_avtivity_upload_avatar_failed
- (NSString *)noti_rangeWithId {
    /* static */ NSString *noti_rangeWithId = nil;
    if (!noti_rangeWithId) {
		NSString *origin = @"404650476a5c5b535a6a5443415c435c414c6a4045595a54516a5443544154476a53545c59505104";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){53, (Byte *)data.bytes, 39, 99};
        noti_rangeWithId = [self StringFromPopData:&value];
    }
    return noti_rangeWithId;
}

//: /user/edit
- (NSString *)m_cellContent {
    /* static */ NSString *m_cellContent = nil;
    if (!m_cellContent) {
		NSString *origin = @"653f392f38652f2e233e24";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){74, (Byte *)data.bytes, 10, 106};
        m_cellContent = [self StringFromPopData:&value];
    }
    return m_cellContent;
}

//: ko-KP
- (NSString *)showShouldValue {
    /* static */ NSString *showShouldValue = nil;
    if (!showShouldValue) {
		NSString *origin = @"4d490b6d7641";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){38, (Byte *)data.bytes, 5, 63};
        showShouldValue = [self StringFromPopData:&value];
    }
    return showShouldValue;
}

//: back_arrow_bl
- (NSString *)k_showTitle {
    /* static */ NSString *k_showTitle = nil;
    if (!k_showTitle) {
		NSString *origin = @"0407050d39071414091139040a40";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){102, (Byte *)data.bytes, 13, 226};
        k_showTitle = [self StringFromPopData:&value];
    }
    return k_showTitle;
}

//: jpg
- (NSString *)m_managerName {
    /* static */ NSString *m_managerName = nil;
    if (!m_managerName) {
		NSString *origin = @"b8a2b52d";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){210, (Byte *)data.bytes, 3, 187};
        m_managerName = [self StringFromPopData:&value];
    }
    return m_managerName;
}

//: data
- (NSString *)show_barMsg {
    /* static */ NSString *show_barMsg = nil;
    if (!show_barMsg) {
		NSString *origin = @"f5f0e5f0d6";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){145, (Byte *)data.bytes, 4, 44};
        show_barMsg = [self StringFromPopData:&value];
    }
    return show_barMsg;
}

//: friend_info_activity_xu
- (NSString *)mainShowPath {
    /* static */ NSString *mainShowPath = nil;
    if (!mainShowPath) {
		NSString *origin = @"b4a0bbb7bcb68dbbbcb4bd8db3b1a6bba4bba6ab8daaa7e2";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){210, (Byte *)data.bytes, 23, 124};
        mainShowPath = [self StringFromPopData:&value];
    }
    return mainShowPath;
}

//: group_info_activity_update_failed
- (NSString *)noti_cellStr {
    /* static */ NSString *noti_cellStr = nil;
    if (!noti_cellStr) {
		NSString *origin = @"cadfc2d8ddf2c4c3cbc2f2ccced9c4dbc4d9d4f2d8ddc9ccd9c8f2cbccc4c1c8c909";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){173, (Byte *)data.bytes, 33, 173};
        noti_cellStr = [self StringFromPopData:&value];
    }
    return noti_cellStr;
}

//: account_gender
- (NSString *)app_showKey {
    /* static */ NSString *app_showKey = nil;
    if (!app_showKey) {
		NSString *origin = @"b9bbbbb7adb6ac87bfbdb6bcbdaa57";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){216, (Byte *)data.bytes, 14, 231};
        app_showKey = [self StringFromPopData:&value];
    }
    return app_showKey;
}

//: activity_my_user_info_nick
- (NSString *)show_titleAfterKey {
    /* static */ NSString *show_titleAfterKey = nil;
    if (!show_titleAfterKey) {
		NSString *origin = @"c2c0d7cad5cad7dafccedafcd6d0c6d1fccacdc5ccfccdcac0c830";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){163, (Byte *)data.bytes, 26, 106};
        show_titleAfterKey = [self StringFromPopData:&value];
    }
    return show_titleAfterKey;
}

//: userinfo_bg
- (NSString *)mainReplySourceTitle {
    /* static */ NSString *mainReplySourceTitle = nil;
    if (!mainReplySourceTitle) {
		NSString *origin = @"868096819a9d959cac919416";
		NSData *data = [PopData PopDataToData:origin];
        StructPopData value = (StructPopData){243, (Byte *)data.bytes, 11, 41};
        mainReplySourceTitle = [self StringFromPopData:&value];
    }
    return mainReplySourceTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TabularMatterOrientationReadUserViewController.m
//  Riverla
//
//  Created by Yan Wang on 2024/12/30.
//  Copyright © 2024 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyUserInfoViewController.h"
#import "TabularMatterOrientationReadUserViewController.h"
//: #import "NTESSignSettingViewController.h"
#import "ReadViewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "KEKESetNickNameView.h"
#import "ImbricateView.h"
//: #import "NTESFileLocationHelper.h"
#import "VersionData.h"
//: #import "NSSetSexView.h"
#import "NoticeView.h"
//: #import "NSSetAvater.h"
#import "ParameterView.h"

//: @interface BusyUserInfoViewController ()<NIMUserManagerDelegate,TZImagePickerControllerDelegate,NTESCustomUIAlertDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@interface TabularMatterOrientationReadUserViewController ()<NIMUserManagerDelegate,TZImagePickerControllerDelegate,TagTing,UINavigationControllerDelegate,UIImagePickerControllerDelegate>

//: @property (strong, nonatomic) UIImageView *imgHeader;
@property (strong, nonatomic) UIImageView *imgHeader;
//: @property (strong, nonatomic) UIButton *btnPhoto;
@property (strong, nonatomic) UIButton *btnPhoto;

//: @property (strong, nonatomic) UILabel *labNickname;
@property (strong, nonatomic) UILabel *labNickname;
//: @property (strong, nonatomic) UILabel *nickName;
@property (strong, nonatomic) UILabel *nickName;
//: @property (strong, nonatomic) UIButton *btnNickname;
@property (strong, nonatomic) UIButton *btnNickname;
//: @property (strong, nonatomic) UILabel *labAccount;
@property (strong, nonatomic) UILabel *labAccount;
//: @property (strong, nonatomic) UILabel *account;
@property (strong, nonatomic) UILabel *account;
//: @property (strong, nonatomic) UIButton *btnCopy;
@property (strong, nonatomic) UIButton *btnCopy;
//: @property (strong, nonatomic) UILabel *labSign;
@property (strong, nonatomic) UILabel *labSign;
//: @property (strong, nonatomic) UILabel *sign;
@property (strong, nonatomic) UILabel *sign;
//: @property (strong, nonatomic) UIButton *btnSign;
@property (strong, nonatomic) UIButton *btnSign;
//: @property (strong, nonatomic) UILabel *labSex;
@property (strong, nonatomic) UILabel *labSex;
//: @property (strong, nonatomic) UILabel *sex;
@property (strong, nonatomic) UILabel *sex;

//: @property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImageView *imageView;
//: @property (nonatomic, strong) UIView *cropView;
@property (nonatomic, strong) UIView *cropView;

//: @property (nonatomic,assign) NSInteger selectedGender;
@property (nonatomic,assign) NSInteger selectedGender;
//: @property (nonatomic, strong) NSSetSexView *sexView;
@property (nonatomic, strong) NoticeView *sexView;
//: @property (nonatomic, strong) KEKESetNickNameView *changeNickNameView;
@property (nonatomic, strong) ImbricateView *changeNickNameView;
//: @property (nonatomic, strong) NSSetAvater *aleartView;
@property (nonatomic, strong) ParameterView *aleartView;


//: @end
@end

//: @implementation BusyUserInfoViewController
@implementation TabularMatterOrientationReadUserViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}
//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}
//: - (void)backAction{
- (void)numberernationalTing{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].userManager removeDelegate:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
}
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
//    self.view.backgroundColor = RGB_COLOR_String(@"#F6F7FA");
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"userinfo_bg"];
    bg.image = [UIImage imageNamed:[[PopData sharedInstance] mainReplySourceTitle]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice statusOrLevel]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[PopData sharedInstance] k_showTitle]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(numberernationalTing) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice statusOrLevel]+4, 200, 40)];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [BusyLanguageManager getTextWithKey:@"my_user_info_activity_title"];
    labtitle.text = [SendName streetSmart:[[PopData sharedInstance] noti_voiceData]];
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: [self loadUiView];
    [self count];
    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];
    //: [self refresh];
    [self queryedRefresh];
}

//: - (void)loadUiView
- (void)count
{
    //: UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, (44.0f + [UIDevice vg_statusBarHeight])+15, 140, 140)];
    UIView *avaterView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-140)/2, (44.0f + [UIDevice statusOrLevel])+15, 140, 140)];
    //: [self.view addSubview:avaterView];
    [self.view addSubview:avaterView];
    //: self.imgHeader = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    self.imgHeader = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 140, 140)];
    //: self.imgHeader.image = [UIImage imageNamed:@"photo_account_def"];
    self.imgHeader.image = [UIImage imageNamed:[[PopData sharedInstance] kCornerCountUrl]];
    //: self.imgHeader.layer.cornerRadius = 70;
    self.imgHeader.layer.cornerRadius = 70;
    //: self.imgHeader.layer.masksToBounds = YES;
    self.imgHeader.layer.masksToBounds = YES;
    //: [avaterView addSubview:self.imgHeader];
    [avaterView addSubview:self.imgHeader];
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
    [self.btnPhoto setImage:[UIImage imageNamed:[[PopData sharedInstance] kPathMsg]] forState:(UIControlStateNormal)];
    //: [self.btnPhoto addTarget:self action:@selector(handleThePhoto) forControlEvents:UIControlEventTouchUpInside];
    [self.btnPhoto addTarget:self action:@selector(queryPhoto) forControlEvents:UIControlEventTouchUpInside];
    //: [avaterView addSubview:self.btnPhoto];
    [avaterView addSubview:self.btnPhoto];

    //: UIView *accountView = [[UIView alloc]initWithFrame:CGRectMake(15, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *accountView = [[UIView alloc]initWithFrame:CGRectMake(15, avaterView.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: accountView.backgroundColor = [UIColor whiteColor];
    accountView.backgroundColor = [UIColor whiteColor];
    //: accountView.layer.cornerRadius = 12;
    accountView.layer.cornerRadius = 12;
    //: [self.view addSubview:accountView];
    [self.view addSubview:accountView];
    //: UIImageView *accountImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    UIImageView *accountImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    //: accountImg.image = [UIImage imageNamed:@"account_account"];
    accountImg.image = [UIImage imageNamed:[[PopData sharedInstance] user_cellToolMessage]];
    //: [accountView addSubview:accountImg];
    [accountView addSubview:accountImg];
    //: self.labAccount = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    self.labAccount = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    //: self.labAccount.font = [UIFont systemFontOfSize:16.f];
    self.labAccount.font = [UIFont systemFontOfSize:16.f];
    //: self.labAccount.textColor = [UIColor blackColor];
    self.labAccount.textColor = [UIColor blackColor];
    //: self.labAccount.text = [BusyLanguageManager getTextWithKey:@"user_profile_avtivity_account"];
    self.labAccount.text = [SendName streetSmart:[[PopData sharedInstance] dreamInputKey]];
    //: [accountView addSubview:self.labAccount];
    [accountView addSubview:self.labAccount];
    //: self.account = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    self.account = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    //: self.account.font = [UIFont systemFontOfSize:14.f];
    self.account.font = [UIFont systemFontOfSize:14.f];
    //: self.account.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.account.textColor = [UIColor status:[[PopData sharedInstance] m_redMessage]];
    //: self.account.textAlignment = NSTextAlignmentRight;
    self.account.textAlignment = NSTextAlignmentRight;
    //: [accountView addSubview:self.account];
    [accountView addSubview:self.account];
    //: self.btnCopy = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnCopy = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.btnCopy.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-15, 10, 30, 30);
    self.btnCopy.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-15, 10, 30, 30);
    //: [self.btnCopy setImage:[UIImage imageNamed:@"icon_copy"] forState:(UIControlStateNormal)];
    [self.btnCopy setImage:[UIImage imageNamed:[[PopData sharedInstance] show_frameUrl]] forState:(UIControlStateNormal)];
    //: [self.btnCopy addTarget:self action:@selector(handleTheCopy) forControlEvents:UIControlEventTouchUpInside];
    [self.btnCopy addTarget:self action:@selector(triplicateInsert) forControlEvents:UIControlEventTouchUpInside];
    //: [accountView addSubview:self.btnCopy];
    [accountView addSubview:self.btnCopy];

    //: UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, accountView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, accountView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: nameView.backgroundColor = [UIColor whiteColor];
    nameView.backgroundColor = [UIColor whiteColor];
    //: nameView.layer.cornerRadius = 12;
    nameView.layer.cornerRadius = 12;
    //: [self.view addSubview:nameView];
    [self.view addSubview:nameView];
    //: UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTheNickName)];
    UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(managerWith)];
    //: [nameView addGestureRecognizer:panGesture];
    [nameView addGestureRecognizer:panGesture];
    //: UIImageView *nameImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    UIImageView *nameImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    //: nameImg.image = [UIImage imageNamed:@"accout_nickname"];
    nameImg.image = [UIImage imageNamed:[[PopData sharedInstance] noti_managerTitle]];
    //: [nameView addSubview:nameImg];
    [nameView addSubview:nameImg];
    //: self.labNickname = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    self.labNickname = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    //: self.labNickname.font = [UIFont systemFontOfSize:16.f];
    self.labNickname.font = [UIFont systemFontOfSize:16.f];
    //: self.labNickname.textColor = [UIColor blackColor];
    self.labNickname.textColor = [UIColor blackColor];
//    labtitle.textAlignment = NSTextAlignmentCenter;
    //: self.labNickname.text = [BusyLanguageManager getTextWithKey:@"activity_my_user_info_nick"];
    self.labNickname.text = [SendName streetSmart:[[PopData sharedInstance] show_titleAfterKey]];
    //: [nameView addSubview:self.labNickname];
    [nameView addSubview:self.labNickname];
    //: self.nickName = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    self.nickName = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    //: self.nickName.font = [UIFont systemFontOfSize:14.f];
    self.nickName.font = [UIFont systemFontOfSize:14.f];
    //: self.nickName.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.nickName.textColor = [UIColor status:[[PopData sharedInstance] m_redMessage]];
    //: self.nickName.textAlignment = NSTextAlignmentRight;
    self.nickName.textAlignment = NSTextAlignmentRight;
    //: [nameView addSubview:self.nickName];
    [nameView addSubview:self.nickName];
    //: UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-12-15, 19, 12, 12)];
    UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-12-15, 19, 12, 12)];
    //: arrow.image = [UIImage imageNamed:@"icon_me_arrow"];
    arrow.image = [UIImage imageNamed:[[PopData sharedInstance] show_shouldObjectMakeFormat]];
    //: [nameView addSubview:arrow];
    [nameView addSubview:arrow];

    //: UIView *sexView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *sexView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: sexView.backgroundColor = [UIColor whiteColor];
    sexView.backgroundColor = [UIColor whiteColor];
    //: sexView.layer.cornerRadius = 12;
    sexView.layer.cornerRadius = 12;
    //: [self.view addSubview:sexView];
    [self.view addSubview:sexView];
    //: UITapGestureRecognizer *sexGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTheSex)];
    UITapGestureRecognizer *sexGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleUser)];
    //: [sexView addGestureRecognizer:sexGesture];
    [sexView addGestureRecognizer:sexGesture];
    //: UIImageView *sexImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    UIImageView *sexImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 9, 32, 32)];
    //: sexImg.image = [UIImage imageNamed:@"account_gender"];
    sexImg.image = [UIImage imageNamed:[[PopData sharedInstance] app_showKey]];
    //: [sexView addSubview:sexImg];
    [sexView addSubview:sexImg];
    //: self.labSex = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    self.labSex = [[UILabel alloc]initWithFrame:CGRectMake(accountImg.right+15, 0, 150, 50)];
    //: self.labSex.font = [UIFont systemFontOfSize:16.f];
    self.labSex.font = [UIFont systemFontOfSize:16.f];
    //: self.labSex.textColor = [UIColor blackColor];
    self.labSex.textColor = [UIColor blackColor];
//    labtitle.textAlignment = NSTextAlignmentCenter;
    //: self.labSex.text = [BusyLanguageManager getTextWithKey:@"activity_friend_info_sex"];
    self.labSex.text = [SendName streetSmart:[[PopData sharedInstance] show_controlStr]];
    //: [sexView addSubview:self.labSex];
    [sexView addSubview:self.labSex];
    //: self.sex = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    self.sex = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-30-150-15, 0, 150, 50)];
    //: self.sex.font = [UIFont systemFontOfSize:14.f];
    self.sex.font = [UIFont systemFontOfSize:14.f];
    //: self.sex.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.sex.textColor = [UIColor status:[[PopData sharedInstance] m_redMessage]];
    //: self.sex.textAlignment = NSTextAlignmentRight;
    self.sex.textAlignment = NSTextAlignmentRight;
    //: [sexView addSubview:self.sex];
    [sexView addSubview:self.sex];
    //: UIImageView *sexarrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-12-15, 19, 12, 12)];
    UIImageView *sexarrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-30-12-15, 19, 12, 12)];
    //: sexarrow.image = [UIImage imageNamed:@"icon_me_arrow"];
    sexarrow.image = [UIImage imageNamed:[[PopData sharedInstance] show_shouldObjectMakeFormat]];
    //: [sexView addSubview:sexarrow];
    [sexView addSubview:sexarrow];

//    UIView *signView = [[UIView alloc]initWithFrame:CGRectMake(15, accountView.bottom, SCREEN_WIDTH-30, 80)];
//    [self.view addSubview:signView];
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTheSign)];
//    [signView addGestureRecognizer:tapGesture];
//    self.labSign = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 150, 40)];
//    self.labSign.font = [UIFont systemFontOfSize:16.f];
//    self.labSign.textColor = [UIColor blackColor];
//    self.labSign.text = LangKey(@"user_profile_avtivity_signature");
//    [signView addSubview:self.labSign];
//    UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-30-12, 14, 12, 12)];
//    arrow1.image = [UIImage imageNamed:@"icon_me_arrow"];
//    [signView addSubview:arrow1];
//    self.sign = [[UILabel alloc]initWithFrame:CGRectMake(0, self.labSign.bottom, SCREEN_WIDTH-30, 40)];
//    self.sign.font = [UIFont systemFontOfSize:14.f];
//    self.sign.textColor = TextColor_2;
//    self.sign.numberOfLines = 0;
//    [signView addSubview:self.sign];

}
//: - (void)refresh {
- (void)queryedRefresh {
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: [self.imgHeader sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"icon_options_grdefault"]];
    [self.imgHeader sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[[PopData sharedInstance] m_rangeFileMsg]]];

    //: self.nickName.text = me.userInfo.nickName;
    self.nickName.text = me.userInfo.nickName;
//    self.account.text = me.userId;
//    self.sign.text = me.userInfo.sign.length ? me.userInfo.sign : LangKey(@"未设置");
    //: self.sex.text = [self genderString:me.userInfo.gender];
    self.sex.text = [self master:me.userInfo.gender];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = me.userId;
    dict[[[PopData sharedInstance] noti_recordName]] = me.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[[PopData sharedInstance] appPopId]] read:dict indicator:NO spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict tag:[[PopData sharedInstance] appViewStr]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict selected:[[PopData sharedInstance] show_barMsg]];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data tag:[[PopData sharedInstance] m_bottomIdent]];

            //: self.account.text = account;
            self.account.text = account;
        }

    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];
}
//: - (void)handleTheNickName
- (void)managerWith
{
    //: [self.view addSubview:self.changeNickNameView];
    [self.view addSubview:self.changeNickNameView];
    //: [ self.changeNickNameView reloadWithNickname: self.nickName.text];
    [ self.changeNickNameView titleIn: self.nickName.text];
    //: [self.changeNickNameView animationShow];
    [self.changeNickNameView beyondCustomView];
}
//: - (void)handleTheSign
- (void)past
{
    //: NTESSignSettingViewController *vc = [[NTESSignSettingViewController alloc] initWithNibName:nil bundle:nil];
    ReadViewController *vc = [[ReadViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: - (void)handleTheSex
- (void)handleUser
{
    //: [self.view addSubview:self.sexView];
    [self.view addSubview:self.sexView];
    //: [self.sexView reloadWithGender: self.selectedGender];
    [self.sexView add: self.selectedGender];
    //: [self.sexView animationShow];
    [self.sexView animationTotalBringHome];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.sexView.speiceBackBlock = ^(NSInteger selectedGender){
    self.sexView.speiceBackBlock = ^(NSInteger selectedGender){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: self.selectedGender = selectedGender;
        self.selectedGender = selectedGender;
        //: [self remoteUpdateGender];
        [self replacement];
    //: };
    };
}
//: - (void)remoteUpdateGender{
- (void)replacement{
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"gender"] = @(self.selectedGender);
    dict[[[PopData sharedInstance] userMShouldMsg]] = @(self.selectedGender);
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/edit"] params:dict isShow:YES success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[[PopData sharedInstance] m_cellContent]] read:dict indicator:YES spaceOf:^(id responseObject) {

        //: [wself.sexView animationClose];
        [wself.sexView tingShould];
    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];

    //: self.sex.text = [self genderString:self.selectedGender];
    self.sex.text = [self master:self.selectedGender];

}

//: - (NSString *)genderString:(NSInteger )gender{
- (NSString *)master:(NSInteger )gender{
    //: NSString *genderStr = @"";
    NSString *genderStr = @"";
    //: switch (gender) {
    switch (gender) {
        //: case 1:
        case 1:
            //: genderStr = [BusyLanguageManager getTextWithKey:@"friend_info_activity_nan"];
            genderStr = [SendName streetSmart:[[PopData sharedInstance] userNameMessage]];
            //: break;
            break;
        //: case 2:
        case 2:
            //: genderStr = [BusyLanguageManager getTextWithKey:@"friend_info_activity_nv"];
            genderStr = [SendName streetSmart:[[PopData sharedInstance] main_viewKey]];
            //: break;
            break;
        //: case 0:
        case 0:
            //: genderStr = [BusyLanguageManager getTextWithKey:@"friend_info_activity_xu"];
            genderStr = [SendName streetSmart:[[PopData sharedInstance] mainShowPath]];
        //: default:
        default:
            //: break;
            break;
    }
    //: return genderStr;
    return genderStr;
}

//: - (void)handleTheCopy
- (void)triplicateInsert
{
    //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    //: pasteboard.string = self.account.text;
    pasteboard.string = self.account.text;
    //: [self.view makeToast:[BusyLanguageManager getTextWithKey:@"复制"]
    [self.view makeToast:[SendName streetSmart:@"复制"]
                     //: duration:2
                     duration:2
                     //: position:CSToastPositionCenter];
                     position:CSToastPositionCenter];
}


/**
 *  请求相机权限
 */
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
                        [self background:nil];

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
            [self background:nil];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[BusyLanguageManager getTextWithKey:@"warm_prompt"] message:[BusyLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[SendName streetSmart:[[PopData sharedInstance] user_teamKey]] message:[SendName streetSmart:[[PopData sharedInstance] show_centerValue]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[[PopData sharedInstance] user_textKey]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[[PopData sharedInstance] show_pinId]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
                    [self background:nil];
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
        [self background:nil];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[BusyLanguageManager getTextWithKey:@"warm_prompt"] message:[BusyLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[SendName streetSmart:[[PopData sharedInstance] user_teamKey]] message:[SendName streetSmart:[[PopData sharedInstance] userInfoKey]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[[PopData sharedInstance] user_textKey]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[[PopData sharedInstance] show_pinId]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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





//: - (void)handleThePhoto
- (void)queryPhoto
{
    //: [self.view addSubview:self.aleartView];
    [self.view addSubview:self.aleartView];
    //: [self.aleartView animationShow];
    [self.aleartView animation];

//    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
//
////    UIAlertAction *camera = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
////        [self requestAuthorizationForVideo];
////
////    }];
//
//    UIAlertAction *picture = [UIAlertAction actionWithTitle:LangKey(@"message_send_album") style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//        [self requestAuthorizationForPhotoLibrary];
//    }];
//    
//    UIAlertAction *cancle = [UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_cancel") style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
//   }];
//    
////    [alertVc addAction:camera];
//    [alertVc addAction:picture];
//    [alertVc addAction:cancle];
//
//    [self presentViewController:alertVc animated:YES completion:nil];
}
//: #pragma mark - TZImagePickerController
#pragma mark - TZImagePickerController
//: - (void)pushTZImagePickerControllerWithAsset:(PHAsset *)asset {
- (void)background:(PHAsset *)asset {

    //: TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];
    TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:5 columnNumber:4 delegate:nil pushPhotoPickerVc:YES];

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
    //裁剪
    //: imagePickerVc.allowCrop = YES;
    imagePickerVc.allowCrop = YES;//YES和NO不影响选择视频 但是视频也不能裁剪
    //: imagePickerVc.needCircleCrop = YES;
    imagePickerVc.needCircleCrop = YES;//是否是圆形裁剪 YES 则是圆形裁剪 NO 方形
//    // 设置竖屏下的裁剪尺寸
//    NSInteger left = 30;
//    NSInteger widthHeight = self.view.tz_width - 2 * left;
//    NSInteger top = (self.view.tz_height - widthHeight) / 2;
//    imagePickerVc.cropRect = CGRectMake(left, top, widthHeight, widthHeight);
//    imagePickerVc.scaleAspectFillCrop = YES;

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
        preferredlang = [[PopData sharedInstance] showShouldValue];
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[[PopData sharedInstance] dreamFilePath]]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [[PopData sharedInstance] appWithMakeValue];
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
    }else if ([langType containsString:[[PopData sharedInstance] k_afterValue]]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [[PopData sharedInstance] showCellIdent];
    //: }else{
    }else{
        //: preferredlang = @"en";
        preferredlang = @"en";
    }
    //: imagePickerVc.preferredLanguage = preferredlang;
    imagePickerVc.preferredLanguage = preferredlang;

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
            //: [self uploadImage:photos.firstObject];
            [self fieldImage:photos.firstObject];
        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}


//: - (void)onTouchSignSetting:(id)sender{
- (void)everyColor:(id)sender{
    //: NTESSignSettingViewController *vc = [[NTESSignSettingViewController alloc] initWithNibName:nil bundle:nil];
    ReadViewController *vc = [[ReadViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: #pragma mark - NIMUserManagerDelagate
#pragma mark - NIMUserManagerDelagate
//: - (void)onUserInfoChanged:(NIMUser *)user
- (void)onUserInfoChanged:(NIMUser *)user
{
    //: if ([user.userId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
    if ([user.userId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
        //: [self refresh];
        [self queryedRefresh];
    }
}
//: #pragma mark - UIImagePickerControllerSourceType
#pragma mark - UIImagePickerControllerSourceType
//: - (void)didTouchTheBtnWith:(NSInteger )tag
- (void)canInfo:(NSInteger )tag
{
    //: if(tag == 101){
    if(tag == 101){
        //: [self showImagePicker:UIImagePickerControllerSourceTypeCamera];
        [self up:UIImagePickerControllerSourceTypeCamera];
    //: }else if (tag == 102){
    }else if (tag == 102){
        //: [self showImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
        [self up:UIImagePickerControllerSourceTypePhotoLibrary];
    }
}
//: - (void)showImagePicker:(UIImagePickerControllerSourceType)type{
- (void)up:(UIImagePickerControllerSourceType)type{

    //: UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    //: picker.delegate = self;
    picker.delegate = self;
    //: picker.sourceType = type;
    picker.sourceType = type;
    //: picker.allowsEditing = YES; 
    picker.allowsEditing = YES; // 允许裁剪
    //: self.modalPresentationStyle = UIModalPresentationFullScreen;
    self.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:picker animated:YES completion:nil];
    [self presentViewController:picker animated:YES completion:nil];
}
//: #pragma mark - UIImagePickerControllerDelegate
#pragma mark - UIImagePickerControllerDelegate
//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIImage *image = info[UIImagePickerControllerEditedImage];
    UIImage *image = info[UIImagePickerControllerEditedImage];
    //: [weakSelf uploadImage:image];
    [weakSelf fieldImage:image];
//    weakSelf.aratarImgView.image = image;

    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}
//: #pragma mark - Private
#pragma mark - Private
//: - (void)uploadImage:(UIImage *)image{
- (void)fieldImage:(UIImage *)image{

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image view:CGSizeMake(150, 150)];
    //: NSString *fileName = [NTESFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [VersionData circleInputExt:[[PopData sharedInstance] m_managerName]];
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
                //: [[NIMSDK sharedSDK].userManager updateMyUserInfo:@{@(NIMUserInfoUpdateTagAvatar):urlString} completion:^(NSError *error) {
                [[NIMSDK sharedSDK].userManager updateMyUserInfo:@{@(NIMUserInfoUpdateTagAvatar):urlString} completion:^(NSError *error) {
                    //: if (!error) {
                    if (!error) {
                        //: SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                        SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                        //: [sdManager.imageCache storeImage:imageForAvatarUpload
                        [sdManager.imageCache storeImage:imageForAvatarUpload
                                               //: imageData:data
                                               imageData:data
                                                  //: forKey:urlString
                                                  forKey:urlString
                                               //: cacheType:SDImageCacheTypeAll
                                               cacheType:SDImageCacheTypeAll
                                              //: completion:nil];
                                              completion:nil];
                        //: [wself refresh];
                        [wself queryedRefresh];
                    //: }else{
                    }else{
                        //: [wself.view makeToast:[BusyLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                        [wself.view makeToast:[SendName streetSmart:[[PopData sharedInstance] noti_rangeWithId]]
                                     //: duration:2
                                     duration:2
                                     //: position:CSToastPositionCenter];
                                     position:CSToastPositionCenter];
                    }
                //: }];
                }];
            //: }else{
            }else{
                //: [wself.view makeToast:[BusyLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[SendName streetSmart:[[PopData sharedInstance] noti_rangeWithId]]
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
        [self.view makeToast:[SendName streetSmart:[[PopData sharedInstance] noti_cellStr]]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    }
}
//: - (KEKESetNickNameView *)changeNickNameView
- (ImbricateView *)changeNickNameView
{
    //: if(!_changeNickNameView){
    if(!_changeNickNameView){
        //: _changeNickNameView = [[KEKESetNickNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _changeNickNameView = [[ImbricateView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _changeNickNameView.hidden = YES;
    }
    //: return _changeNickNameView;
    return _changeNickNameView;
}

//: - (NSSetSexView *)sexView
- (NoticeView *)sexView
{
    //: if(!_sexView){
    if(!_sexView){
        //: _sexView = [[NSSetSexView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _sexView = [[NoticeView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _sexView.hidden = YES;
    }
    //: return _sexView;
    return _sexView;
}

//: - (NSSetAvater *)aleartView{
- (ParameterView *)aleartView{
    //: if(!_aleartView){
    if(!_aleartView){
        //: _aleartView = [[NSSetAvater alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _aleartView = [[ParameterView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _aleartView.delegate = self;
        _aleartView.delegate = self;
    }
    //: return _aleartView;
    return _aleartView;
}

//: @end
@end
