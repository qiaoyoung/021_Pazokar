
#import <Foundation/Foundation.h>

@interface SeedData : NSObject

@end

@implementation SeedData

+ (NSData *)SeedDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)SeedDataToCache:(Byte *)data {
    int scaleValue = data[0];
    Byte drawAway = data[1];
    int sizeVoiceTelevision = data[2];
    for (int i = sizeVoiceTelevision; i < sizeVoiceTelevision + scaleValue; i++) {
        int value = data[i] - drawAway;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[sizeVoiceTelevision + scaleValue] = 0;
    return data + sizeVoiceTelevision;
}

+ (NSString *)StringFromSeedData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SeedDataToCache:data]];
}

//: group_member_info_activity_team_creator
+ (NSString *)mLeadershipUrl {
    /* static */ NSString *mLeadershipUrl = nil;
    if (!mLeadershipUrl) {
		NSArray<NSNumber *> *origin = @[@39, @80, @10, @145, @83, @51, @130, @140, @232, @64, @183, @194, @191, @197, @192, @175, @189, @181, @189, @178, @181, @194, @175, @185, @190, @182, @191, @175, @177, @179, @196, @185, @198, @185, @196, @201, @175, @196, @181, @177, @189, @175, @179, @194, @181, @177, @196, @191, @194, @12];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mLeadershipUrl = [self StringFromSeedData:value];
    }
    return mLeadershipUrl;
}

//: /team/getTeamSetting
+ (NSString *)app_redText {
    /* static */ NSString *app_redText = nil;
    if (!app_redText) {
		NSArray<NSNumber *> *origin = @[@20, @63, @11, @58, @14, @209, @101, @31, @242, @23, @116, @110, @179, @164, @160, @172, @110, @166, @164, @179, @147, @164, @160, @172, @146, @164, @179, @179, @168, @173, @166, @134];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_redText = [self StringFromSeedData:value];
    }
    return app_redText;
}

//: attach
+ (NSString *)k_literallyTitle {
    /* static */ NSString *k_literallyTitle = nil;
    if (!k_literallyTitle) {
		NSArray<NSNumber *> *origin = @[@6, @54, @9, @127, @162, @188, @113, @202, @38, @151, @170, @170, @151, @153, @158, @5];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_literallyTitle = [self StringFromSeedData:value];
    }
    return k_literallyTitle;
}

//: #02D8C9
+ (NSString *)main_contentId {
    /* static */ NSString *main_contentId = nil;
    if (!main_contentId) {
		NSArray<NSNumber *> *origin = @[@7, @22, @10, @179, @75, @164, @210, @240, @180, @216, @57, @70, @72, @90, @78, @89, @79, @190];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_contentId = [self StringFromSeedData:value];
    }
    return main_contentId;
}

//: #000000
+ (NSString *)k_clickMessage {
    /* static */ NSString *k_clickMessage = nil;
    if (!k_clickMessage) {
		NSArray<NSNumber *> *origin = @[@7, @85, @13, @74, @220, @145, @16, @192, @55, @157, @228, @221, @55, @120, @133, @133, @133, @133, @133, @133, @252];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_clickMessage = [self StringFromSeedData:value];
    }
    return k_clickMessage;
}

//: canAddFriend
+ (NSString *)dream_killerMessage {
    /* static */ NSString *dream_killerMessage = nil;
    if (!dream_killerMessage) {
		NSArray<NSNumber *> *origin = @[@12, @80, @11, @11, @235, @41, @12, @129, @240, @165, @138, @179, @177, @190, @145, @180, @180, @150, @194, @185, @181, @190, @180, @111];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_killerMessage = [self StringFromSeedData:value];
    }
    return dream_killerMessage;
}

//: 邀请你加入高级群
+ (NSString *)userExplainRedValue {
    /* static */ NSString *userExplainRedValue = nil;
    if (!userExplainRedValue) {
		NSArray<NSNumber *> *origin = @[@24, @82, @10, @3, @162, @64, @53, @84, @204, @162, @59, @212, @210, @58, @1, @9, @54, @15, @242, @55, @220, @242, @55, @215, @247, @59, @253, @234, @57, @12, @249, @57, @16, @246, @148];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userExplainRedValue = [self StringFromSeedData:value];
    }
    return userExplainRedValue;
}

//: 邀请你加入超大群
+ (NSString *)noti_contentPath {
    /* static */ NSString *noti_contentPath = nil;
    if (!noti_contentPath) {
		NSArray<NSNumber *> *origin = @[@24, @43, @11, @34, @118, @46, @192, @134, @116, @97, @66, @20, @173, @171, @19, @218, @226, @15, @232, @203, @16, @181, @203, @16, @176, @208, @19, @225, @176, @16, @207, @210, @18, @233, @207, @199];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_contentPath = [self StringFromSeedData:value];
    }
    return noti_contentPath;
}

//: #F6F6F6
+ (NSString *)mCellTouristId {
    /* static */ NSString *mCellTouristId = nil;
    if (!mCellTouristId) {
		NSArray<NSNumber *> *origin = @[@7, @61, @6, @63, @177, @187, @96, @131, @115, @131, @115, @131, @115, @110];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mCellTouristId = [self StringFromSeedData:value];
    }
    return mCellTouristId;
}

//: data
+ (NSString *)kRangeValue {
    /* static */ NSString *kRangeValue = nil;
    if (!kRangeValue) {
		NSArray<NSNumber *> *origin = @[@4, @87, @12, @84, @233, @184, @163, @99, @77, @8, @251, @241, @187, @184, @203, @184, @150];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kRangeValue = [self StringFromSeedData:value];
    }
    return kRangeValue;
}

//: postscript
+ (NSString *)show_optionUrl {
    /* static */ NSString *show_optionUrl = nil;
    if (!show_optionUrl) {
		NSArray<NSNumber *> *origin = @[@10, @45, @8, @223, @41, @144, @32, @181, @157, @156, @160, @161, @160, @144, @159, @150, @157, @161, @212];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_optionUrl = [self StringFromSeedData:value];
    }
    return show_optionUrl;
}

//: 扩展消息
+ (NSString *)dreamFrameId {
    /* static */ NSString *dreamFrameId = nil;
    if (!dreamFrameId) {
		NSArray<NSNumber *> *origin = @[@12, @77, @12, @62, @129, @56, @57, @123, @191, @16, @205, @58, @51, @214, @246, @50, @254, @226, @51, @3, @213, @51, @206, @252, @180];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamFrameId = [self StringFromSeedData:value];
    }
    return dreamFrameId;
}

//: group_info_activity_team_member
+ (NSString *)k_differentlyFormat {
    /* static */ NSString *k_differentlyFormat = nil;
    if (!k_differentlyFormat) {
		NSArray<NSNumber *> *origin = @[@31, @49, @7, @67, @6, @162, @111, @152, @163, @160, @166, @161, @144, @154, @159, @151, @160, @144, @146, @148, @165, @154, @167, @154, @165, @170, @144, @165, @150, @146, @158, @144, @158, @150, @158, @147, @150, @163, @225];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_differentlyFormat = [self StringFromSeedData:value];
    }
    return k_differentlyFormat;
}

//: 邀请你加入讨论组
+ (NSString *)kObjectName {
    /* static */ NSString *kObjectName = nil;
    if (!kObjectName) {
		NSArray<NSNumber *> *origin = @[@24, @24, @7, @5, @86, @31, @103, @1, @154, @152, @0, @199, @207, @252, @213, @184, @253, @162, @184, @253, @157, @189, @0, @198, @192, @0, @198, @210, @255, @211, @156, @147];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kObjectName = [self StringFromSeedData:value];
    }
    return kObjectName;
}

//: back_arrow_bl
+ (NSString *)main_currentlyName {
    /* static */ NSString *main_currentlyName = nil;
    if (!main_currentlyName) {
		NSArray<NSNumber *> *origin = @[@13, @46, @13, @231, @211, @182, @128, @176, @211, @221, @88, @106, @245, @144, @143, @145, @153, @141, @143, @160, @160, @157, @165, @141, @144, @154, @101];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_currentlyName = [self StringFromSeedData:value];
    }
    return main_currentlyName;
}

//: ic_group_addmember
+ (NSString *)main_viewPath {
    /* static */ NSString *main_viewPath = nil;
    if (!main_viewPath) {
		NSArray<NSNumber *> *origin = @[@18, @58, @10, @245, @48, @255, @61, @125, @101, @220, @163, @157, @153, @161, @172, @169, @175, @170, @153, @155, @158, @158, @167, @159, @167, @156, @159, @172, @103];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_viewPath = [self StringFromSeedData:value];
    }
    return main_viewPath;
}

//: code
+ (NSString *)appSemenName {
    /* static */ NSString *appSemenName = nil;
    if (!appSemenName) {
		NSArray<NSNumber *> *origin = @[@4, @46, @9, @234, @117, @212, @216, @120, @123, @145, @157, @146, @147, @114];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appSemenName = [self StringFromSeedData:value];
    }
    return appSemenName;
}

//: head_default
+ (NSString *)appLiterallyData {
    /* static */ NSString *appLiterallyData = nil;
    if (!appLiterallyData) {
		NSArray<NSNumber *> *origin = @[@12, @4, @11, @80, @138, @15, @4, @184, @247, @47, @98, @108, @105, @101, @104, @99, @104, @105, @106, @101, @121, @112, @120, @195];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appLiterallyData = [self StringFromSeedData:value];
    }
    return appLiterallyData;
}

//: 5D5F66
+ (NSString *)notiCurrentlyText {
    /* static */ NSString *notiCurrentlyText = nil;
    if (!notiCurrentlyText) {
		NSArray<NSNumber *> *origin = @[@6, @87, @4, @25, @140, @155, @140, @157, @141, @141, @228];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiCurrentlyText = [self StringFromSeedData:value];
    }
    return notiCurrentlyText;
}

//: kNIMTeamListDataTeamMembersChanged
+ (NSString *)notiLiterallyUrl {
    /* static */ NSString *notiLiterallyUrl = nil;
    if (!notiLiterallyUrl) {
		NSArray<NSNumber *> *origin = @[@34, @44, @6, @89, @119, @187, @151, @122, @117, @121, @128, @145, @141, @153, @120, @149, @159, @160, @112, @141, @160, @141, @128, @145, @141, @153, @121, @145, @153, @142, @145, @158, @159, @111, @148, @141, @154, @147, @145, @144, @36];
		NSData *data = [SeedData SeedDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiLiterallyUrl = [self StringFromSeedData:value];
    }
    return notiLiterallyUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RowViewController.m
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TeamMemberNormalViewController.h"
#import "RowViewController.h"
//: #import "BusyContactSelectViewController.h"
#import "BrandViewController.h"
//: #import "BusyCardHeaderCell.h"
#import "FastenerView.h"
//: #import "TeamMemberNormalCollectionViewCell.h"
#import "JointView.h"
//: #import "NTESPersonalCardViewController.h"
#import "SharedViewController.h"
//: #import "BusyTeamMemberCardViewController.h"
#import "FindViewController.h"

//: @interface TeamMemberNormalViewController ()<UICollectionViewDelegate, UICollectionViewDataSource,NIMContactSelectDelegate>
@interface RowViewController ()<UICollectionViewDelegate, UICollectionViewDataSource,NoticeBar>

//: @property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionView *collectionView;

//: @property (nonatomic, strong) NSMutableArray *memberList;
@property (nonatomic, strong) NSMutableArray *memberList;
//: @property (nonatomic, strong) NIMTeamMember *owerInfo;
@property (nonatomic, strong) NIMTeamMember *owerInfo;
//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic, strong) NSDictionary *teamSettingConfig;
@property (nonatomic, strong) NSDictionary *teamSettingConfig;

//: @end
@end

//: @implementation TeamMemberNormalViewController
@implementation RowViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];

    //: self.memberList = [NSMutableArray array];
    self.memberList = [NSMutableArray array];
    //: [self loadTeamManageList];
    [self spirogram];
}
//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self setupUI];
    [self need];


    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"id"] = self.teamListManager.team.teamId?:@"";
    dict[@"id"] = self.teamListManager.team.teamId?:@"";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getTeamSetting"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[SeedData app_redText]] read:dict indicator:NO spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict tag:[SeedData appSemenName]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict selected:[SeedData kRangeValue]];
            //: _teamSettingConfig = data;
            _teamSettingConfig = data;
        }
    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {
    //: }];
    }];


    //: NSString *kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
    NSString *kNIMTeamListDataTeamMembersChanged = [SeedData notiLiterallyUrl];
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(frothsed:) name:kNIMTeamListDataTeamMembersChanged object:nil];
}
//: - (void)setupUI {
- (void)need {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice statusOrLevel]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice statusOrLevel]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[SeedData main_currentlyName]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(numberernationalTing) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice statusOrLevel]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [BusyLanguageManager getTextWithKey:@"group_info_activity_team_member"];
    labtitle.text = [SendName streetSmart:[SeedData k_differentlyFormat]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+8, 32, 32);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice statusOrLevel]+8, 32, 32);
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
    submitButton.backgroundColor = [UIColor status:[SeedData main_contentId]];
    //: submitButton.layer.cornerRadius = 16;
    submitButton.layer.cornerRadius = 16;
    //: [submitButton setImage:[UIImage imageNamed:@"ic_group_addmember"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:[SeedData main_viewPath]] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(rightNavButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(selectDisplay) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

    //: UIView *owerView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+9, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    UIView *owerView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice statusOrLevel])+9, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    //: owerView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    owerView.backgroundColor = [UIColor status:[SeedData mCellTouristId]];
    //: owerView.layer.masksToBounds = YES;
    owerView.layer.masksToBounds = YES;
    //: owerView.layer.cornerRadius = 16;
    owerView.layer.cornerRadius = 16;
    //: [self.view addSubview:owerView];
    [self.view addSubview:owerView];
    //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    //: _roleImageView.layer.masksToBounds = YES;
    _roleImageView.layer.masksToBounds = YES;
    //: _roleImageView.layer.cornerRadius = 24;
    _roleImageView.layer.cornerRadius = 24;
    //: [owerView addSubview:_roleImageView];
    [owerView addSubview:_roleImageView];

    //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
    _titleLabel.textColor = [UIColor status:[SeedData k_clickMessage]];
    //: [owerView addSubview:_titleLabel];
    [owerView addSubview:_titleLabel];

    //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    //: subtitleLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
    subtitleLabel.textColor = [UIColor status:[SeedData notiCurrentlyText]];
    //: subtitleLabel.textAlignment = NSTextAlignmentRight;
    subtitleLabel.textAlignment = NSTextAlignmentRight;
    //: subtitleLabel.text = [BusyLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"];
    subtitleLabel.text = [SendName streetSmart:[SeedData mLeadershipUrl]];
    //: [owerView addSubview:subtitleLabel];
    [owerView addSubview:subtitleLabel];

    // 设置 UICollectionView 的布局
    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    //: UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //: layout.itemSize = CGSizeMake(width, 70); 
    layout.itemSize = CGSizeMake(width, 70); // 每个 item 的大小
    //: layout.minimumInteritemSpacing = 0; 
    layout.minimumInteritemSpacing = 0; // item 之间的水平间距
    //: layout.minimumLineSpacing = 5; 
    layout.minimumLineSpacing = 5; // item 之间的垂直间距
    //: layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0); 
    layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0); // section 内的边距

    // 初始化 UICollectionView 并设置布局
    //: self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+90, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-90) collectionViewLayout:layout];
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice statusOrLevel])+90, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice statusOrLevel])-90) collectionViewLayout:layout];
    //: self.collectionView.delegate = self; 
    self.collectionView.delegate = self; // 设置代理
    //: self.collectionView.dataSource = self; 
    self.collectionView.dataSource = self; // 设置数据源
    //: self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsVerticalScrollIndicator = NO;
    //: self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    //: [self.collectionView registerClass:[TeamMemberNormalCollectionViewCell class] forCellWithReuseIdentifier:@"TeamMemberNormalCollectionViewCell"];
    [self.collectionView registerClass:[JointView class] forCellWithReuseIdentifier:@"JointView"];
    //: self.collectionView.backgroundColor = [UIColor clearColor];
    self.collectionView.backgroundColor = [UIColor clearColor];
    //: [self.view addSubview:self.collectionView];
    [self.view addSubview:self.collectionView];

}
//: - (void)backAction{
- (void)numberernationalTing{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)rightNavButtonClick{
- (void)selectDisplay{
        //: NSMutableArray *users = [self.teamListManager memberIds];
        NSMutableArray *users = [self.teamListManager memberIds];
        //: NSString *currentUserID = [self.teamListManager myAccount];
        NSString *currentUserID = [self.teamListManager myAccount];
        //: [users addObject:currentUserID];
        [users addObject:currentUserID];

        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        TitleConfig *config = [[TitleConfig alloc] init];
        //: config.filterIds = users;
        config.filterIds = users;
        //: config.needMutiSelected = YES;
        config.needMutiSelected = YES;
        //: BusyContactSelectViewController *vc = [[BusyContactSelectViewController alloc] initWithConfig:config];
        BrandViewController *vc = [[BrandViewController alloc] initWithMax:config];
        //: vc.delegate = self;
        vc.delegate = self;
        //: [vc show];
        [vc totalRelation];
}

//: #pragma mark - ContactSelectDelegate
#pragma mark - ContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)fillInSearch:(NSArray *)selectedContacts{
    //: [self didInviteUsers:selectedContacts completion:nil];
    [self version:selectedContacts complete:nil];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)version:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            complete:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[[SeedData k_literallyTitle]] = [SeedData dreamFrameId];
    //: switch (self.teamListManager.team.type) {
    switch (self.teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[[SeedData show_optionUrl]] = [SeedData kObjectName].maxColor;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[[SeedData show_optionUrl]] = [SeedData userExplainRedValue].maxColor;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[[SeedData show_optionUrl]] = [SeedData noti_contentPath].maxColor;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
//    [KitEffectView show];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager item:userIds globule:info towardMessageBackground:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//        [KitEffectView dismiss];

        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}


//: - (void)teamMemberUpdate:(NSNotification *)note
- (void)frothsed:(NSNotification *)note
{
    //: [self loadTeamManageList];
    [self spirogram];
    //: [self.collectionView reloadData];
    [self.collectionView reloadData];
}

//: - (void)loadTeamManageList
- (void)spirogram
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:self.teamListManager.team.teamId
    [[NIMSDK sharedSDK].teamManager fetchTeamMembers:self.teamListManager.team.teamId
                                          //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                          completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (!error) {
        if (!error) {
            //: for (NIMTeamMember *member in members) {
            for (NIMTeamMember *member in members) {
                //: if (member.type == NIMTeamMemberTypeNormal) {
                if (member.type == NIMTeamMemberTypeNormal) {
                    //: [self.memberList addObject:member];
                    [self.memberList addObject:member];

                //: }else if (member.type == NIMTeamMemberTypeOwner){
                }else if (member.type == NIMTeamMemberTypeOwner){
                    //: self.owerInfo = member;
                    self.owerInfo = member;

                    //: BusyKitInfo *info = [[MyUserKit sharedKit] infoByUser:member.userId option:nil];
                    Info *info = [[Case pastTop] consumer:member.userId message:nil];
                    //: self.titleLabel.text = info.showName;
                    self.titleLabel.text = info.showName;
                    //: [self.roleImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
                    [self.roleImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:[SeedData appLiterallyData]]];
                }
            }
            //: [self.collectionView reloadData];
            [self.collectionView reloadData];
        //: }else{
        }else{
            //: NSLog(@"error:%@",error);
        }
    //: }];
    }];
}
//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource
// 返回 section 的数量
//: - (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    //: return 1;
    return 1;
}

// 返回每个 section 中的 item 数量
//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    //: return self.memberList.count;
    return self.memberList.count;
}

// 配置每个 item 的 cell
//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //: TeamMemberNormalCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TeamMemberNormalCollectionViewCell" forIndexPath:indexPath];
    JointView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"JointView" forIndexPath:indexPath];
    //    cell.delegate = self;
//    cell.backgroundColor  = RGB_COLOR_String(@"#fffBusy");

    //: NIMTeamMember *member = self.memberList[indexPath.row];
    NIMTeamMember *member = self.memberList[indexPath.row];
    //: [cell refreshWithModel:member];
    [cell common:member];


    //: return cell;
    return cell;
}

//: #pragma mark - UICollectionViewDelegate
#pragma mark - UICollectionViewDelegate

// 选择 item 时触发的事件
//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    //: NSLog(@"Item at index %ld selected", indexPath.row);

    //: NSString *canMemberInfo = [_teamSettingConfig newStringValueForKey:@"canAddFriend"];
    NSString *canMemberInfo = [_teamSettingConfig tag:[SeedData dream_killerMessage]];
    //: if (canMemberInfo.integerValue > 0) {
    if (canMemberInfo.integerValue > 0) {

        //: NIMTeamMember *member = self.memberList[indexPath.row];
        NIMTeamMember *member = self.memberList[indexPath.row];
//        FindViewController *vc = [[FindViewController alloc] init];
//        vc.teamListManager = self.teamListManager;
//        vc.memberId = member.userId;
//        [self.navigationController pushViewController:vc animated:YES];

        //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:member.userId];
        SharedViewController *vc = [[SharedViewController alloc] initWithByFullId:member.userId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}



//: @end
@end
