
#import <Foundation/Foundation.h>

typedef struct {
    Byte minute;
    Byte *bottomSize;
    unsigned int memberToContent;
	int redMin;
	int writtenMatter;
} StructFrankData;

@interface FrankData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation FrankData

+ (instancetype)sharedInstance {
    static FrankData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)FrankDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)FrankDataToByte:(StructFrankData *)data {
    for (int i = 0; i < data->memberToContent; i++) {
        data->bottomSize[i] ^= data->minute;
    }
    data->bottomSize[data->memberToContent] = 0;
	if (data->memberToContent >= 2) {
		data->redMin = data->bottomSize[0];
		data->writtenMatter = data->bottomSize[1];
	}
    return data->bottomSize;
}

- (NSString *)StringFromFrankData:(StructFrankData *)data {
    return [NSString stringWithUTF8String:(char *)[self FrankDataToByte:data]];
}

//: user_id
- (NSString *)app_objectData {
    /* static */ NSString *app_objectData = nil;
    if (!app_objectData) {
		NSArray<NSNumber *> *origin = @[@9, @15, @25, @14, @35, @21, @24, @194];
		NSData *data = [FrankData FrankDataToData:origin];
        StructFrankData value = (StructFrankData){124, (Byte *)data.bytes, 7, 202, 205};
        app_objectData = [self StringFromFrankData:&value];
    }
    return app_objectData;
}

//: account
- (NSString *)appListStr {
    /* static */ NSString *appListStr = nil;
    if (!appListStr) {
		NSArray<NSNumber *> *origin = @[@29, @31, @31, @19, @9, @18, @8, @218];
		NSData *data = [FrankData FrankDataToData:origin];
        StructFrankData value = (StructFrankData){124, (Byte *)data.bytes, 7, 93, 76};
        appListStr = [self StringFromFrankData:&value];
    }
    return appListStr;
}

//: contact_tag_fragment_add_success
- (NSString *)noti_frameMsg {
    /* static */ NSString *noti_frameMsg = nil;
    if (!noti_frameMsg) {
		NSArray<NSNumber *> *origin = @[@235, @231, @230, @252, @233, @235, @252, @215, @252, @233, @239, @215, @238, @250, @233, @239, @229, @237, @230, @252, @215, @233, @236, @236, @215, @251, @253, @235, @235, @237, @251, @251, @20];
		NSData *data = [FrankData FrankDataToData:origin];
        StructFrankData value = (StructFrankData){136, (Byte *)data.bytes, 32, 75, 60};
        noti_frameMsg = [self StringFromFrankData:&value];
    }
    return noti_frameMsg;
}

//: add_friend_activity_add_friend
- (NSString *)userInputMessage {
    /* static */ NSString *userInputMessage = nil;
    if (!userInputMessage) {
		NSArray<NSNumber *> *origin = @[@199, @194, @194, @249, @192, @212, @207, @195, @200, @194, @249, @199, @197, @210, @207, @208, @207, @210, @223, @249, @199, @194, @194, @249, @192, @212, @207, @195, @200, @194, @8];
		NSData *data = [FrankData FrankDataToData:origin];
        StructFrankData value = (StructFrankData){166, (Byte *)data.bytes, 30, 116, 64};
        userInputMessage = [self StringFromFrankData:&value];
    }
    return userInputMessage;
}

//: request_successful
- (NSString *)user_afterStr {
    /* static */ NSString *user_afterStr = nil;
    if (!user_afterStr) {
		NSArray<NSNumber *> *origin = @[@195, @212, @192, @196, @212, @194, @197, @238, @194, @196, @210, @210, @212, @194, @194, @215, @196, @221, @39];
		NSData *data = [FrankData FrankDataToData:origin];
        StructFrankData value = (StructFrankData){177, (Byte *)data.bytes, 18, 255, 229};
        user_afterStr = [self StringFromFrankData:&value];
    }
    return user_afterStr;
}

//: add_friend_request_fail
- (NSString *)show_enableIdent {
    /* static */ NSString *show_enableIdent = nil;
    if (!show_enableIdent) {
		NSArray<NSNumber *> *origin = @[@193, @196, @196, @255, @198, @210, @201, @197, @206, @196, @255, @210, @197, @209, @213, @197, @211, @212, @255, @198, @193, @201, @204, @79];
		NSData *data = [FrankData FrankDataToData:origin];
        StructFrankData value = (StructFrankData){160, (Byte *)data.bytes, 23, 191, 15};
        show_enableIdent = [self StringFromFrankData:&value];
    }
    return show_enableIdent;
}

//: code
- (NSString *)user_greenName {
    /* static */ NSString *user_greenName = nil;
    if (!user_greenName) {
		NSArray<NSNumber *> *origin = @[@111, @99, @104, @105, @122];
		NSData *data = [FrankData FrankDataToData:origin];
        StructFrankData value = (StructFrankData){12, (Byte *)data.bytes, 4, 226, 102};
        user_greenName = [self StringFromFrankData:&value];
    }
    return user_greenName;
}

//: add_friend_add_fail
- (NSString *)k_myIdent {
    /* static */ NSString *k_myIdent = nil;
    if (!k_myIdent) {
		NSArray<NSNumber *> *origin = @[@180, @177, @177, @138, @179, @167, @188, @176, @187, @177, @138, @180, @177, @177, @138, @179, @180, @188, @185, @220];
		NSData *data = [FrankData FrankDataToData:origin];
        StructFrankData value = (StructFrankData){213, (Byte *)data.bytes, 19, 74, 167};
        k_myIdent = [self StringFromFrankData:&value];
    }
    return k_myIdent;
}

//: back_arrow_bl
- (NSString *)k_fileUrl {
    /* static */ NSString *k_fileUrl = nil;
    if (!k_fileUrl) {
		NSArray<NSNumber *> *origin = @[@187, @184, @186, @178, @134, @184, @171, @171, @182, @174, @134, @187, @181, @75];
		NSData *data = [FrankData FrankDataToData:origin];
        StructFrankData value = (StructFrankData){217, (Byte *)data.bytes, 13, 131, 207};
        k_fileUrl = [self StringFromFrankData:&value];
    }
    return k_fileUrl;
}

//: /user/detail
- (NSString *)mContentKey {
    /* static */ NSString *mContentKey = nil;
    if (!mContentKey) {
		NSArray<NSNumber *> *origin = @[@53, @111, @105, @127, @104, @53, @126, @127, @110, @123, @115, @118, @88];
		NSData *data = [FrankData FrankDataToData:origin];
        StructFrankData value = (StructFrankData){26, (Byte *)data.bytes, 12, 20, 165};
        mContentKey = [self StringFromFrankData:&value];
    }
    return mContentKey;
}

//: #02D8C9
- (NSString *)notiManagerFileUrl {
    /* static */ NSString *notiManagerFileUrl = nil;
    if (!notiManagerFileUrl) {
		NSArray<NSNumber *> *origin = @[@9, @26, @24, @110, @18, @105, @19, @207];
		NSData *data = [FrankData FrankDataToData:origin];
        StructFrankData value = (StructFrankData){42, (Byte *)data.bytes, 7, 119, 31};
        notiManagerFileUrl = [self StringFromFrankData:&value];
    }
    return notiManagerFileUrl;
}

//: #999999
- (NSString *)appNameInfoPath {
    /* static */ NSString *appNameInfoPath = nil;
    if (!appNameInfoPath) {
		NSArray<NSNumber *> *origin = @[@82, @72, @72, @72, @72, @72, @72, @30];
		NSData *data = [FrankData FrankDataToData:origin];
        StructFrankData value = (StructFrankData){113, (Byte *)data.bytes, 7, 82, 191};
        appNameInfoPath = [self StringFromFrankData:&value];
    }
    return appNameInfoPath;
}

//: data
- (NSString *)kRedTitle {
    /* static */ NSString *kRedTitle = nil;
    if (!kRedTitle) {
		NSArray<NSNumber *> *origin = @[@114, @119, @98, @119, @56];
		NSData *data = [FrankData FrankDataToData:origin];
        StructFrankData value = (StructFrankData){22, (Byte *)data.bytes, 4, 20, 121};
        kRedTitle = [self StringFromFrankData:&value];
    }
    return kRedTitle;
}

//: friend_info_activity_account
- (NSString *)appPathTitle {
    /* static */ NSString *appPathTitle = nil;
    if (!appPathTitle) {
		NSArray<NSNumber *> *origin = @[@18, @6, @29, @17, @26, @16, @43, @29, @26, @18, @27, @43, @21, @23, @0, @29, @2, @29, @0, @13, @43, @21, @23, @23, @27, @1, @26, @0, @125];
		NSData *data = [FrankData FrankDataToData:origin];
        StructFrankData value = (StructFrankData){116, (Byte *)data.bytes, 28, 181, 192};
        appPathTitle = [self StringFromFrankData:&value];
    }
    return appPathTitle;
}

//: contact_user_default_header
- (NSString *)noti_toolValue {
    /* static */ NSString *noti_toolValue = nil;
    if (!noti_toolValue) {
		NSArray<NSNumber *> *origin = @[@5, @9, @8, @18, @7, @5, @18, @57, @19, @21, @3, @20, @57, @2, @3, @0, @7, @19, @10, @18, @57, @14, @3, @7, @2, @3, @20, @221];
		NSData *data = [FrankData FrankDataToData:origin];
        StructFrankData value = (StructFrankData){102, (Byte *)data.bytes, 27, 39, 63};
        noti_toolValue = [self StringFromFrankData:&value];
    }
    return noti_toolValue;
}

//: common_bg
- (NSString *)mainOffMsg {
    /* static */ NSString *mainOffMsg = nil;
    if (!mainOffMsg) {
		NSArray<NSNumber *> *origin = @[@120, @116, @118, @118, @116, @117, @68, @121, @124, @165];
		NSData *data = [FrankData FrankDataToData:origin];
        StructFrankData value = (StructFrankData){27, (Byte *)data.bytes, 9, 189, 99};
        mainOffMsg = [self StringFromFrankData:&value];
    }
    return mainOffMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SumerpretationViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONFriendCardViewController.h"
#import "SumerpretationViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESColorButtonCell.h"
#import "LengthNameView.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "NTESSessionViewController.h"
#import "TopViewController.h"
//: #import "NTESBundleSetting.h"
#import "EnvironmentSetting.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Enable.h"
//: #import "NTESUserUtil.h"
#import "InformationUtil.h"
//: #import "HMDataPicker.h"
#import "AirtView.h"
//: #import "NTESOpinionBackViewController.h"
#import "BarViewController.h"

//: @interface ZMONFriendCardViewController ()<NIMUserManagerDelegate>
@interface SumerpretationViewController ()<NIMUserManagerDelegate>


//: @property (nonatomic,copy ) NSString *userId;
@property (nonatomic,copy ) NSString *userId;
//: @property (nonatomic,strong) NIMUser *user;
@property (nonatomic,strong) NIMUser *user;

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIView *userView;
//: @property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UIImageView *accountheadImg;
//: @property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountNickname;
//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;
//: @property (nonatomic, strong) UILabel *account;
@property (nonatomic, strong) UILabel *account;

//: @property (nonatomic, strong) UIView *personView;
@property (nonatomic, strong) UIView *personView;

//: @end
@end

//: @implementation ZMONFriendCardViewController
@implementation SumerpretationViewController

//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithWhiteTargetContent:(NSString *)userId{
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
    }
    //: return self;
    return self;
}

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

}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:[[FrankData sharedInstance] mainOffMsg]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[[FrankData sharedInstance] k_fileUrl]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(numberernationalTing) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 36, 36);
    self.closeBtn.frame = CGRectMake(15, 4+[UIDevice statusOrLevel], 36, 36);

//    self.user = [[NIMSDK sharedSDK].userManager userInfo:self.userId];

    //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice vg_statusBarHeight])+30, 120, 120)];
    self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice statusOrLevel])+30, 120, 120)];
    //: self.accountheadImg.layer.cornerRadius = 60;
    self.accountheadImg.layer.cornerRadius = 60;
    //: self.accountheadImg.layer.masksToBounds = YES;
    self.accountheadImg.layer.masksToBounds = YES;
    //: [self.view addSubview:self.accountheadImg];
    [self.view addSubview:self.accountheadImg];

    //: self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 20)];
    self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 20)];
    //: self.accountNickname.font = [UIFont boldSystemFontOfSize:18];
    self.accountNickname.font = [UIFont boldSystemFontOfSize:18];
    //: self.accountNickname.textColor = [UIColor blackColor];
    self.accountNickname.textColor = [UIColor blackColor];
    //: self.accountNickname.textAlignment = NSTextAlignmentCenter;
    self.accountNickname.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.accountNickname];
    [self.view addSubview:self.accountNickname];

    //: self.account = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
    self.account = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
    //: self.account.font = [UIFont systemFontOfSize:12];
    self.account.font = [UIFont systemFontOfSize:12];
    //: self.account.textColor = [UIColor colorWithHexString:@"#999999"];
    self.account.textColor = [UIColor status:[[FrankData sharedInstance] appNameInfoPath]];
    //: self.account.textAlignment = NSTextAlignmentCenter;
    self.account.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.account];
    [self.view addSubview:self.account];


    //: UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: addBtn.frame = CGRectMake(15, self.account.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 44);
    addBtn.frame = CGRectMake(15, self.account.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 44);
    //: [addBtn addTarget:self action:@selector(sendAddFriendRequest) forControlEvents:UIControlEventTouchUpInside];
    [addBtn addTarget:self action:@selector(overText) forControlEvents:UIControlEventTouchUpInside];
    //: addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    addBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [addBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [addBtn setTitle:[FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"] forState:UIControlStateNormal];
    [addBtn setTitle:[SendName streetSmart:[[FrankData sharedInstance] userInputMessage]] forState:UIControlStateNormal];
    //: addBtn.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
    addBtn.backgroundColor = [UIColor status:[[FrankData sharedInstance] notiManagerFileUrl]];
    //: addBtn.layer.cornerRadius = 22;
    addBtn.layer.cornerRadius = 22;
    //: [self.view addSubview:addBtn];
    [self.view addSubview:addBtn];


    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].userManager fetchUserInfos:@[self.userId] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
    [[NIMSDK sharedSDK].userManager fetchUserInfos:@[self.userId] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
            //: if (users.count) {
            if (users.count) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: self.user = users.firstObject;
                self.user = users.firstObject;

                //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"contact_user_default_header"]];
                [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[[FrankData sharedInstance] noti_toolValue]]];
                //: self.accountNickname.text = self.user.userInfo.nickName;
                self.accountNickname.text = self.user.userInfo.nickName;
            }
        //: }];
        }];


    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = self.userId;
    dict[[[FrankData sharedInstance] app_objectData]] = self.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[[FrankData sharedInstance] mContentKey]] read:dict indicator:NO spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict tag:[[FrankData sharedInstance] user_greenName]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict selected:[[FrankData sharedInstance] kRedTitle]];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data tag:[[FrankData sharedInstance] appListStr]];
            //: self.account.text = [NSString stringWithFormat:@"%@%@",[FFFLanguageManager getTextWithKey:@"friend_info_activity_account"], account];
            self.account.text = [NSString stringWithFormat:@"%@%@",[SendName streetSmart:[[FrankData sharedInstance] appPathTitle]], account];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: #pragma mark - MDelegate
#pragma mark - MDelegate
//: -(void)sendAddFriendRequest{
-(void)overText{
    //: NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NSString *tempVerificationInfo = [DataMaxDefaults max].tempVerificationInfo;
    //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
    NIMUserRequest *request = [[NIMUserRequest alloc] init];
    //: request.userId = self.userId;
    request.userId = self.userId;
    //: request.operation = NIMUserOperationAdd;
    request.operation = NIMUserOperationAdd;
    //: request.operation = NIMUserOperationRequest;
    request.operation = NIMUserOperationRequest;
    //: request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";
    request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";

    //: NSString *contact_tag_fragment_add_success = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_add_success"];
    NSString *contact_tag_fragment_add_success = [SendName streetSmart:[[FrankData sharedInstance] noti_frameMsg]];//@"添加成功".ntes_localized
    //: NSString *request_successful = [FFFLanguageManager getTextWithKey:@"request_successful"];
    NSString *request_successful = [SendName streetSmart:[[FrankData sharedInstance] user_afterStr]];//@"请求成功".ntes_localized
    //: NSString *add_friend_add_fail = [FFFLanguageManager getTextWithKey:@"add_friend_add_fail"];
    NSString *add_friend_add_fail = [SendName streetSmart:[[FrankData sharedInstance] k_myIdent]];//@"添加失败".ntes_localized
    //: NSString *add_friend_request_fail = [FFFLanguageManager getTextWithKey:@"add_friend_request_fail"];
    NSString *add_friend_request_fail = [SendName streetSmart:[[FrankData sharedInstance] show_enableIdent]];//@"请求失败".ntes_localized
    //: NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    //: NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;
    NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: [wself.view makeToast:successText
            [wself.view makeToast:successText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];

        //: }else{
        }else{
            //: [wself.view makeToast:failedText
            [wself.view makeToast:failedText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
    //: }];
    }];
}

//: @end
@end