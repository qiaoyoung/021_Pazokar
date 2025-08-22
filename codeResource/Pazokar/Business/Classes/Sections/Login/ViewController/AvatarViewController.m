
#import <Foundation/Foundation.h>

typedef struct {
    Byte nearlyText;
    Byte *messageInput;
    unsigned int solutionRed;
	int largeness;
	int goldRush;
} StructShouldData;

@interface ShouldData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ShouldData

+ (instancetype)sharedInstance {
    static ShouldData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ShouldDataToByte:(StructShouldData *)data {
    for (int i = 0; i < data->solutionRed; i++) {
        data->messageInput[i] ^= data->nearlyText;
    }
    data->messageInput[data->solutionRed] = 0;
	if (data->solutionRed >= 2) {
		data->largeness = data->messageInput[0];
		data->goldRush = data->messageInput[1];
	}
    return data->messageInput;
}

- (NSString *)StringFromShouldData:(StructShouldData *)data {
    return [NSString stringWithUTF8String:(char *)[self ShouldDataToByte:data]];
}

//: zh-Hant
- (NSString *)noti_frameMessage {
    /* static */ NSString *noti_frameMessage = nil;
    if (!noti_frameMessage) {
        StructShouldData value = (StructShouldData){178, (Byte []){200, 218, 159, 250, 211, 220, 198, 227}, 7, 88, 37};
        noti_frameMessage = [self StringFromShouldData:&value];
    }
    return noti_frameMessage;
}

//: #5D5F66
- (NSString *)k_fainFormat {
    /* static */ NSString *k_fainFormat = nil;
    if (!k_fainFormat) {
        StructShouldData value = (StructShouldData){187, (Byte []){152, 142, 255, 142, 253, 141, 141, 214}, 7, 86, 151};
        k_fainFormat = [self StringFromShouldData:&value];
    }
    return k_fainFormat;
}

//: setting_privacy
- (NSString *)dreamSeedFormat {
    /* static */ NSString *dreamSeedFormat = nil;
    if (!dreamSeedFormat) {
        StructShouldData value = (StructShouldData){61, (Byte []){78, 88, 73, 73, 84, 83, 90, 98, 77, 79, 84, 75, 92, 94, 68, 171}, 15, 22, 11};
        dreamSeedFormat = [self StringFromShouldData:&value];
    }
    return dreamSeedFormat;
}

//: icon_photo
- (NSString *)main_successStr {
    /* static */ NSString *main_successStr = nil;
    if (!main_successStr) {
        StructShouldData value = (StructShouldData){200, (Byte []){161, 171, 167, 166, 151, 184, 160, 167, 188, 167, 228}, 10, 98, 150};
        main_successStr = [self StringFromShouldData:&value];
    }
    return main_successStr;
}

//: zh-Hans
- (NSString *)kLiterallyMessage {
    /* static */ NSString *kLiterallyMessage = nil;
    if (!kLiterallyMessage) {
        StructShouldData value = (StructShouldData){20, (Byte []){110, 124, 57, 92, 117, 122, 103, 18}, 7, 195, 250};
        kLiterallyMessage = [self StringFromShouldData:&value];
    }
    return kLiterallyMessage;
}

//: contact_tag_fragment_cancel
- (NSString *)dream_lineFormat {
    /* static */ NSString *dream_lineFormat = nil;
    if (!dream_lineFormat) {
        StructShouldData value = (StructShouldData){243, (Byte []){144, 156, 157, 135, 146, 144, 135, 172, 135, 146, 148, 172, 149, 129, 146, 148, 158, 150, 157, 135, 172, 144, 146, 157, 144, 150, 159, 215}, 27, 172, 250};
        dream_lineFormat = [self StringFromShouldData:&value];
    }
    return dream_lineFormat;
}

//: warm_prompt
- (NSString *)dream_numberPath {
    /* static */ NSString *dream_numberPath = nil;
    if (!dream_numberPath) {
        StructShouldData value = (StructShouldData){144, (Byte []){231, 241, 226, 253, 207, 224, 226, 255, 253, 224, 228, 85}, 11, 106, 184};
        dream_numberPath = [self StringFromShouldData:&value];
    }
    return dream_numberPath;
}

//: back_arrow_bl
- (NSString *)k_finIdent {
    /* static */ NSString *k_finIdent = nil;
    if (!k_finIdent) {
        StructShouldData value = (StructShouldData){80, (Byte []){50, 49, 51, 59, 15, 49, 34, 34, 63, 39, 15, 50, 60, 113}, 13, 25, 18};
        k_finIdent = [self StringFromShouldData:&value];
    }
    return k_finIdent;
}

//: message_send_album
- (NSString *)main_listFormat {
    /* static */ NSString *main_listFormat = nil;
    if (!main_listFormat) {
        StructShouldData value = (StructShouldData){193, (Byte []){172, 164, 178, 178, 160, 166, 164, 158, 178, 164, 175, 165, 158, 160, 173, 163, 180, 172, 233}, 18, 26, 74};
        main_listFormat = [self StringFromShouldData:&value];
    }
    return main_listFormat;
}

//: contact_list_activity_complete
- (NSString *)dreamMessageData {
    /* static */ NSString *dreamMessageData = nil;
    if (!dreamMessageData) {
        StructShouldData value = (StructShouldData){228, (Byte []){135, 139, 138, 144, 133, 135, 144, 187, 136, 141, 151, 144, 187, 133, 135, 144, 141, 146, 141, 144, 157, 187, 135, 139, 137, 148, 136, 129, 144, 129, 210}, 30, 182, 185};
        dreamMessageData = [self StringFromShouldData:&value];
    }
    return dreamMessageData;
}

//: spa
- (NSString *)main_differentlyTitle {
    /* static */ NSString *main_differentlyTitle = nil;
    if (!main_differentlyTitle) {
        StructShouldData value = (StructShouldData){101, (Byte []){22, 21, 4, 234}, 3, 229, 249};
        main_differentlyTitle = [self StringFromShouldData:&value];
    }
    return main_differentlyTitle;
}

//: nickname
- (NSString *)user_leadershipData {
    /* static */ NSString *user_leadershipData = nil;
    if (!user_leadershipData) {
        StructShouldData value = (StructShouldData){75, (Byte []){37, 34, 40, 32, 37, 42, 38, 46, 155}, 8, 187, 18};
        user_leadershipData = [self StringFromShouldData:&value];
    }
    return user_leadershipData;
}

//: head_default
- (NSString *)showHockDismissIdent {
    /* static */ NSString *showHockDismissIdent = nil;
    if (!showHockDismissIdent) {
        StructShouldData value = (StructShouldData){12, (Byte []){100, 105, 109, 104, 83, 104, 105, 106, 109, 121, 96, 120, 189}, 12, 83, 119};
        showHockDismissIdent = [self StringFromShouldData:&value];
    }
    return showHockDismissIdent;
}

//: tag_activity_set
- (NSString *)noti_messageFormat {
    /* static */ NSString *noti_messageFormat = nil;
    if (!noti_messageFormat) {
        StructShouldData value = (StructShouldData){69, (Byte []){49, 36, 34, 26, 36, 38, 49, 44, 51, 44, 49, 60, 26, 54, 32, 49, 152}, 16, 209, 101};
        noti_messageFormat = [self StringFromShouldData:&value];
    }
    return noti_messageFormat;
}

//: hant
- (NSString *)dream_managerHockUrl {
    /* static */ NSString *dream_managerHockUrl = nil;
    if (!dream_managerHockUrl) {
        StructShouldData value = (StructShouldData){33, (Byte []){73, 64, 79, 85, 81}, 4, 29, 25};
        dream_managerHockUrl = [self StringFromShouldData:&value];
    }
    return dream_managerHockUrl;
}

//: #000000
- (NSString *)mModeName {
    /* static */ NSString *mModeName = nil;
    if (!mModeName) {
        StructShouldData value = (StructShouldData){243, (Byte []){208, 195, 195, 195, 195, 195, 195, 75}, 7, 157, 206};
        mModeName = [self StringFromShouldData:&value];
    }
    return mModeName;
}

//: setting_privacy_camera
- (NSString *)userRecentMessage {
    /* static */ NSString *userRecentMessage = nil;
    if (!userRecentMessage) {
        StructShouldData value = (StructShouldData){163, (Byte []){208, 198, 215, 215, 202, 205, 196, 252, 211, 209, 202, 213, 194, 192, 218, 252, 192, 194, 206, 198, 209, 194, 94}, 22, 198, 60};
        userRecentMessage = [self StringFromShouldData:&value];
    }
    return userRecentMessage;
}

//: ic_hi
- (NSString *)userMakeContent {
    /* static */ NSString *userMakeContent = nil;
    if (!userMakeContent) {
        StructShouldData value = (StructShouldData){37, (Byte []){76, 70, 122, 77, 76, 242}, 5, 216, 87};
        userMakeContent = [self StringFromShouldData:&value];
    }
    return userMakeContent;
}

//: register_avtivity3_avatar
- (NSString *)mainSemenContent {
    /* static */ NSString *mainSemenContent = nil;
    if (!mainSemenContent) {
        StructShouldData value = (StructShouldData){55, (Byte []){69, 82, 80, 94, 68, 67, 82, 69, 104, 86, 65, 67, 94, 65, 94, 67, 78, 4, 104, 86, 65, 86, 67, 86, 69, 189}, 25, 161, 126};
        mainSemenContent = [self StringFromShouldData:&value];
    }
    return mainSemenContent;
}

//: ko-KP
- (NSString *)mainViewMsg {
    /* static */ NSString *mainViewMsg = nil;
    if (!mainViewMsg) {
        StructShouldData value = (StructShouldData){110, (Byte []){5, 1, 67, 37, 62, 163}, 5, 37, 89};
        mainViewMsg = [self StringFromShouldData:&value];
    }
    return mainViewMsg;
}

//: #02D8C9
- (NSString *)showCurrentlyMessage {
    /* static */ NSString *showCurrentlyMessage = nil;
    if (!showCurrentlyMessage) {
        StructShouldData value = (StructShouldData){217, (Byte []){250, 233, 235, 157, 225, 154, 224, 9}, 7, 248, 101};
        showCurrentlyMessage = [self StringFromShouldData:&value];
    }
    return showCurrentlyMessage;
}

//: register_good_avater
- (NSString *)dreamSeedTitle {
    /* static */ NSString *dreamSeedTitle = nil;
    if (!dreamSeedTitle) {
        StructShouldData value = (StructShouldData){218, (Byte []){168, 191, 189, 179, 169, 174, 191, 168, 133, 189, 181, 181, 190, 133, 187, 172, 187, 174, 191, 168, 102}, 20, 107, 147};
        dreamSeedTitle = [self StringFromShouldData:&value];
    }
    return dreamSeedTitle;
}

//: user_profile_avtivity_head
- (NSString *)notiControlUrl {
    /* static */ NSString *notiControlUrl = nil;
    if (!notiControlUrl) {
        StructShouldData value = (StructShouldData){253, (Byte []){136, 142, 152, 143, 162, 141, 143, 146, 155, 148, 145, 152, 162, 156, 139, 137, 148, 139, 148, 137, 132, 162, 149, 152, 156, 153, 213}, 26, 2, 255};
        notiControlUrl = [self StringFromShouldData:&value];
    }
    return notiControlUrl;
}

//: login_bg
- (NSString *)dream_imageContent {
    /* static */ NSString *dream_imageContent = nil;
    if (!dream_imageContent) {
        StructShouldData value = (StructShouldData){46, (Byte []){66, 65, 73, 71, 64, 113, 76, 73, 142}, 8, 198, 202};
        dream_imageContent = [self StringFromShouldData:&value];
    }
    return dream_imageContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AvatarViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyRegisterAvatarViewController.h"
#import "AvatarViewController.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+Enable.h"
//: #import "KEKESetNickNameView.h"
#import "ImbricateView.h"
//: #import "SDWebImageManager.h"
#import "SDWebImageManager.h"
//: #import "NTESFileLocationHelper.h"
#import "VersionData.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "TZImageManager.h"
#import "TZImageManager.h"
//: #import "TZVideoPlayerController.h"
#import "TZVideoPlayerController.h"
//: #import "TZPhotoPreviewController.h"
#import "TZPhotoPreviewController.h"
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "UIView+TZLayout.h"
#import "UIView+TZLayout.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESRegistConfigManager.h"
#import "PinMoreManager.h"

//: @interface BusyRegisterAvatarViewController ()
@interface AvatarViewController ()


//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIImage *headerImage;
@property (nonatomic, strong) UIImage *headerImage;
//: @property (nonatomic, strong) UIImageView *aratarImgView;
@property (nonatomic, strong) UIImageView *aratarImgView;
//: @property (nonatomic, strong) UILabel *appNameLabel;
@property (nonatomic, strong) UILabel *appNameLabel;
//: @property (nonatomic, strong) UILabel *subLabel;
@property (nonatomic, strong) UILabel *subLabel;
//: @property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UILabel *accountLabel;
//: @property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) UIButton *registButton;


//: @end
@end

//: @implementation BusyRegisterAvatarViewController
@implementation AvatarViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"login_bg"]];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[[ShouldData sharedInstance] dream_imageContent]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initMessageBottomUi];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[[ShouldData sharedInstance] k_finIdent]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(numberernationalTing) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 25+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 25+[UIDevice statusOrLevel], 40, 40);


}

//: - (void)backAction{
- (void)numberernationalTing{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)initUI
- (void)initMessageBottomUi
{


    //: UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 25+[UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 25+[UIDevice statusOrLevel], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    //: titleLabel.textColor = [UIColor blackColor];
    titleLabel.textColor = [UIColor blackColor];
    //: titleLabel.font = [UIFont boldSystemFontOfSize:24];
    titleLabel.font = [UIFont boldSystemFontOfSize:24];
    //: titleLabel.text = [BusyLanguageManager getTextWithKey:@"user_profile_avtivity_head"];
    titleLabel.text = [SendName streetSmart:[[ShouldData sharedInstance] notiControlUrl]];
    //: titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:titleLabel];
    [self.view addSubview:titleLabel];

    //: self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    self.accountLabel.font = [UIFont boldSystemFontOfSize:14];
    //: self.accountLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.accountLabel.textColor = [UIColor status:[[ShouldData sharedInstance] k_fainFormat]];
    //: self.accountLabel.text = [BusyLanguageManager getTextWithKey:@"register_good_avater"];
    self.accountLabel.text = [SendName streetSmart:[[ShouldData sharedInstance] dreamSeedTitle]];
    //: self.accountLabel.textAlignment = NSTextAlignmentCenter;
    self.accountLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountLabel];

    //: UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-150)/2, self.accountLabel.bottom+30, 150, 150)];
    UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-150)/2, self.accountLabel.bottom+30, 150, 150)];
    //: [self.view addSubview:imgView];
    [self.view addSubview:imgView];

    //: _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
    _aratarImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
    //: _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    _aratarImgView.contentMode = UIViewContentModeScaleAspectFill;
    //: _aratarImgView.layer.cornerRadius = 75;
    _aratarImgView.layer.cornerRadius = 75;
    //: _aratarImgView.layer.masksToBounds = YES;
    _aratarImgView.layer.masksToBounds = YES;
    //: _aratarImgView.image = [UIImage imageNamed:@"head_default"];
    _aratarImgView.image = [UIImage imageNamed:[[ShouldData sharedInstance] showHockDismissIdent]];
    //: [imgView addSubview:_aratarImgView];
    [imgView addSubview:_aratarImgView];

    //: UIImageView *usericon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 38, 33)];
    UIImageView *usericon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 38, 33)];
    //: usericon.image = [UIImage imageNamed:@"ic_hi"];
    usericon.image = [UIImage imageNamed:[[ShouldData sharedInstance] userMakeContent]];
    //: [imgView addSubview:usericon];
    [imgView addSubview:usericon];

    //: UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(150-36, 150-36, 36, 36)];
    UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(150-36, 150-36, 36, 36)];
    //: cameraicon.backgroundColor = [UIColor whiteColor];
    cameraicon.backgroundColor = [UIColor whiteColor];
    //: [cameraicon setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
    [cameraicon setImage:[UIImage imageNamed:[[ShouldData sharedInstance] main_successStr]] forState:(UIControlStateNormal)];
    //: cameraicon.layer.cornerRadius = 18;
    cameraicon.layer.cornerRadius = 18;
    //: cameraicon.layer.masksToBounds = YES;
    cameraicon.layer.masksToBounds = YES;
    //: [imgView addSubview:cameraicon];
    [imgView addSubview:cameraicon];
    //: [cameraicon addTarget:self action:@selector(showPicker) forControlEvents:(UIControlEventTouchUpInside)];
    [cameraicon addTarget:self action:@selector(oldFlip) forControlEvents:(UIControlEventTouchUpInside)];

    //: UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+15, [[UIScreen mainScreen] bounds].size.width, 20)];
    UILabel *tita = [[UILabel alloc]initWithFrame:CGRectMake(0, imgView.bottom+15, [[UIScreen mainScreen] bounds].size.width, 20)];
    //: tita.text = self.nickName;
    tita.text = self.nickName;
    //: tita.textColor = [UIColor colorWithHexString:@"#000000"];
    tita.textColor = [UIColor status:[[ShouldData sharedInstance] mModeName]];
    //: tita.textAlignment = NSTextAlignmentCenter;
    tita.textAlignment = NSTextAlignmentCenter;
    //: tita.font = [UIFont systemFontOfSize:16];
    tita.font = [UIFont systemFontOfSize:16];
    //: [self.view addSubview:tita];
    [self.view addSubview:tita];



    //: self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.registButton.frame = CGRectMake(30, tita.bottom+20, [[UIScreen mainScreen] bounds].size.width-60, 44);
    self.registButton.frame = CGRectMake(30, tita.bottom+20, [[UIScreen mainScreen] bounds].size.width-60, 44);
    //: self.registButton.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
    self.registButton.backgroundColor = [UIColor status:[[ShouldData sharedInstance] showCurrentlyMessage]];
//    self.registButton.layer.masksToBounds = YES;
    //: self.registButton.layer.cornerRadius = 10;
    self.registButton.layer.cornerRadius = 10;
    //: self.registButton.layer.shadowColor = [UIColor colorWithHexString:@"#02D8C9"].CGColor;
    self.registButton.layer.shadowColor = [UIColor status:[[ShouldData sharedInstance] showCurrentlyMessage]].CGColor;
    //: self.registButton.layer.shadowOpacity = 1;
    self.registButton.layer.shadowOpacity = 1;
    //: self.registButton.layer.shadowRadius = 0;
    self.registButton.layer.shadowRadius = 0;
    //: self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    //: self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [self.registButton setTitle:[BusyLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
    [self.registButton setTitle:[SendName streetSmart:[[ShouldData sharedInstance] dreamMessageData]] forState:UIControlStateNormal];
    //: [self.view addSubview:self.registButton];
    [self.view addSubview:self.registButton];
    //: [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.registButton addTarget:self action:@selector(videoClick) forControlEvents:UIControlEventTouchUpInside];


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
                        [self outsidePhoto:nil];

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
            [self outsidePhoto:nil];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[BusyLanguageManager getTextWithKey:@"warm_prompt"] message:[BusyLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[SendName streetSmart:[[ShouldData sharedInstance] dream_numberPath]] message:[SendName streetSmart:[[ShouldData sharedInstance] userRecentMessage]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[[ShouldData sharedInstance] dream_lineFormat]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[[ShouldData sharedInstance] noti_messageFormat]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
                    [self outsidePhoto:nil];
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
        [self outsidePhoto:nil];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[BusyLanguageManager getTextWithKey:@"warm_prompt"] message:[BusyLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[SendName streetSmart:[[ShouldData sharedInstance] dream_numberPath]] message:[SendName streetSmart:[[ShouldData sharedInstance] dreamSeedFormat]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[[ShouldData sharedInstance] dream_lineFormat]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[[ShouldData sharedInstance] noti_messageFormat]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
    UIAlertAction *picture = [UIAlertAction actionWithTitle:[SendName streetSmart:[[ShouldData sharedInstance] main_listFormat]] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {

//        [self pushTZImagePickerControllerWithAsset:nil];
        //: [self requestAuthorizationForPhotoLibrary];
        [self radiogramMessage];

            //: }];
            }];

    //: UIAlertAction *cancle = [UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:[SendName streetSmart:[[ShouldData sharedInstance] dream_lineFormat]] style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
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
- (void)outsidePhoto:(PHAsset *)asset {

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
    //: NSInteger widthHeight = self.view.tz_width - 2 * left;
    NSInteger widthHeight = self.view.tz_width - 2 * left;
    //: NSInteger top = (self.view.tz_height - widthHeight) / 2;
    NSInteger top = (self.view.tz_height - widthHeight) / 2;
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
        preferredlang = [[ShouldData sharedInstance] mainViewMsg];
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[[ShouldData sharedInstance] main_differentlyTitle]]){
        //: preferredlang = @"es";
        preferredlang = @"es";
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: preferredlang = @"pt";
        preferredlang = @"pt";
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: preferredlang = @"zh-Hans";
        preferredlang = [[ShouldData sharedInstance] kLiterallyMessage];
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
    }else if ([langType containsString:[[ShouldData sharedInstance] dream_managerHockUrl]]){
        //: preferredlang = @"zh-Hant";
        preferredlang = [[ShouldData sharedInstance] noti_frameMessage];
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

        }
    //: }];
    }];
    //: imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    imagePickerVc.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:imagePickerVc animated:YES completion:nil];
    [self presentViewController:imagePickerVc animated:YES completion:nil];
}

//: - (void)nextButtonClick{
- (void)videoClick{

    //: NTESRegistConfigManager *manager = [NTESRegistConfigManager shareConfigManager];
    PinMoreManager *manager = [PinMoreManager impression];

    //: if (_headerImage) {
    if (_headerImage) {
        //: manager.headerImage = _headerImage;
        manager.headerImage = _headerImage;
    //: }else{
    }else{
        //: [SVProgressHUD showMessage:[BusyLanguageManager getTextWithKey:@"register_avtivity3_avatar"]];
        [SVProgressHUD stormCenter:[SendName streetSmart:[[ShouldData sharedInstance] mainSemenContent]]];
        //: return;
        return;
    }

    //: [manager.registDict setObject:self.nickName forKey:@"nickname"];
    [manager.registDict setObject:self.nickName forKey:[[ShouldData sharedInstance] user_leadershipData]];

    //注册
    //: [NTESRegistConfigManager sendRegistRequest:self.navigationController];
    [PinMoreManager request:self.navigationController];
}


//: @end
@end
