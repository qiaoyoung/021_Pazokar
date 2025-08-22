
#import <Foundation/Foundation.h>

@interface RegardingData : NSObject

@end

@implementation RegardingData

+ (NSData *)RegardingDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)RegardingDataToCache:(Byte *)data {
    int optionVoice = data[0];
    Byte withNeighborhood = data[1];
    int gateFramePop = data[2];
    for (int i = gateFramePop; i < gateFramePop + optionVoice; i++) {
        int value = data[i] - withNeighborhood;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[gateFramePop + optionVoice] = 0;
    return data + gateFramePop;
}

+ (NSString *)StringFromRegardingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RegardingDataToCache:data]];
}

//: attach
+ (NSString *)app_fullMessageUrl {
    /* static */ NSString *app_fullMessageUrl = nil;
    if (!app_fullMessageUrl) {
		NSArray<NSNumber *> *origin = @[@6, @32, @4, @197, @129, @148, @148, @129, @131, @136, @29];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_fullMessageUrl = [self StringFromRegardingData:value];
    }
    return app_fullMessageUrl;
}

//: group_info_activity_op_failed
+ (NSString *)noti_fullName {
    /* static */ NSString *noti_fullName = nil;
    if (!noti_fullName) {
		NSArray<NSNumber *> *origin = @[@29, @15, @5, @241, @171, @118, @129, @126, @132, @127, @110, @120, @125, @117, @126, @110, @112, @114, @131, @120, @133, @120, @131, @136, @110, @126, @127, @110, @117, @112, @120, @123, @116, @115, @30];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_fullName = [self StringFromRegardingData:value];
    }
    return noti_fullName;
}

//: ic_group_addmember
+ (NSString *)showMVsReadKey {
    /* static */ NSString *showMVsReadKey = nil;
    if (!showMVsReadKey) {
		NSArray<NSNumber *> *origin = @[@18, @42, @3, @147, @141, @137, @145, @156, @153, @159, @154, @137, @139, @142, @142, @151, @143, @151, @140, @143, @156, @245];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showMVsReadKey = [self StringFromRegardingData:value];
    }
    return showMVsReadKey;
}

//: postscript
+ (NSString *)dream_situationMsg {
    /* static */ NSString *dream_situationMsg = nil;
    if (!dream_situationMsg) {
		NSArray<NSNumber *> *origin = @[@10, @10, @8, @245, @77, @193, @168, @137, @122, @121, @125, @126, @125, @109, @124, @115, @122, @126, @44];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_situationMsg = [self StringFromRegardingData:value];
    }
    return dream_situationMsg;
}

//: back_arrow_bl
+ (NSString *)k_handleShouldName {
    /* static */ NSString *k_handleShouldName = nil;
    if (!k_handleShouldName) {
		NSArray<NSNumber *> *origin = @[@13, @61, @5, @174, @234, @159, @158, @160, @168, @156, @158, @175, @175, @172, @180, @156, @159, @169, @122];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_handleShouldName = [self StringFromRegardingData:value];
    }
    return k_handleShouldName;
}

//: 邀请你加入超大群
+ (NSString *)userVsTitle {
    /* static */ NSString *userVsTitle = nil;
    if (!userVsTitle) {
		NSArray<NSNumber *> *origin = @[@24, @86, @10, @122, @9, @175, @143, @241, @251, @34, @63, @216, @214, @62, @5, @13, @58, @19, @246, @59, @224, @246, @59, @219, @251, @62, @12, @219, @59, @250, @253, @61, @20, @250, @37];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userVsTitle = [self StringFromRegardingData:value];
    }
    return userVsTitle;
}

//: 邀请你加入高级群
+ (NSString *)showRemoveIdent {
    /* static */ NSString *showRemoveIdent = nil;
    if (!showRemoveIdent) {
		NSArray<NSNumber *> *origin = @[@24, @2, @11, @204, @128, @82, @241, @177, @212, @46, @77, @235, @132, @130, @234, @177, @185, @230, @191, @162, @231, @140, @162, @231, @135, @167, @235, @173, @154, @233, @188, @169, @233, @192, @166, @31];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showRemoveIdent = [self StringFromRegardingData:value];
    }
    return showRemoveIdent;
}

//: /team/getTeamSetting
+ (NSString *)notiReplyId {
    /* static */ NSString *notiReplyId = nil;
    if (!notiReplyId) {
		NSArray<NSNumber *> *origin = @[@20, @8, @4, @176, @55, @124, @109, @105, @117, @55, @111, @109, @124, @92, @109, @105, @117, @91, @109, @124, @124, @113, @118, @111, @146];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiReplyId = [self StringFromRegardingData:value];
    }
    return notiReplyId;
}

//: code
+ (NSString *)dreamAfterShowMsg {
    /* static */ NSString *dreamAfterShowMsg = nil;
    if (!dreamAfterShowMsg) {
		NSArray<NSNumber *> *origin = @[@4, @1, @4, @131, @100, @112, @101, @102, @58];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamAfterShowMsg = [self StringFromRegardingData:value];
    }
    return dreamAfterShowMsg;
}

//: group_info_activity_team_member
+ (NSString *)showSourceKey {
    /* static */ NSString *showSourceKey = nil;
    if (!showSourceKey) {
		NSArray<NSNumber *> *origin = @[@31, @60, @5, @171, @170, @163, @174, @171, @177, @172, @155, @165, @170, @162, @171, @155, @157, @159, @176, @165, @178, @165, @176, @181, @155, @176, @161, @157, @169, @155, @169, @161, @169, @158, @161, @174, @168];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showSourceKey = [self StringFromRegardingData:value];
    }
    return showSourceKey;
}

//: modify_activity_modify_success
+ (NSString *)notiListMemberChapterValue {
    /* static */ NSString *notiListMemberChapterValue = nil;
    if (!notiListMemberChapterValue) {
		NSArray<NSNumber *> *origin = @[@30, @13, @8, @128, @28, @128, @111, @163, @122, @124, @113, @118, @115, @134, @108, @110, @112, @129, @118, @131, @118, @129, @134, @108, @122, @124, @113, @118, @115, @134, @108, @128, @130, @112, @112, @114, @128, @128, @57];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiListMemberChapterValue = [self StringFromRegardingData:value];
    }
    return notiListMemberChapterValue;
}

//: canAddFriend
+ (NSString *)kShowUrl {
    /* static */ NSString *kShowUrl = nil;
    if (!kShowUrl) {
		NSArray<NSNumber *> *origin = @[@12, @35, @9, @60, @160, @94, @181, @201, @188, @134, @132, @145, @100, @135, @135, @105, @149, @140, @136, @145, @135, @46];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kShowUrl = [self StringFromRegardingData:value];
    }
    return kShowUrl;
}

//: 扩展消息
+ (NSString *)appExplainMsg {
    /* static */ NSString *appExplainMsg = nil;
    if (!appExplainMsg) {
		NSArray<NSNumber *> *origin = @[@12, @51, @13, @216, @171, @14, @137, @54, @170, @102, @58, @142, @216, @25, @188, @220, @24, @228, @200, @25, @233, @187, @25, @180, @226, @12];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appExplainMsg = [self StringFromRegardingData:value];
    }
    return appExplainMsg;
}

//: 邀请你加入讨论组
+ (NSString *)k_imageKey {
    /* static */ NSString *k_imageKey = nil;
    if (!k_imageKey) {
		NSArray<NSNumber *> *origin = @[@24, @75, @12, @59, @234, @70, @125, @181, @133, @54, @60, @82, @52, @205, @203, @51, @250, @2, @47, @8, @235, @48, @213, @235, @48, @208, @240, @51, @249, @243, @51, @249, @5, @50, @6, @207, @217];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_imageKey = [self StringFromRegardingData:value];
    }
    return k_imageKey;
}

//: data
+ (NSString *)show_listIdealTitle {
    /* static */ NSString *show_listIdealTitle = nil;
    if (!show_listIdealTitle) {
		NSArray<NSNumber *> *origin = @[@4, @19, @13, @166, @132, @246, @108, @80, @200, @58, @66, @119, @108, @119, @116, @135, @116, @101];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_listIdealTitle = [self StringFromRegardingData:value];
    }
    return show_listIdealTitle;
}

//: group_member_info_activity_team_creator
+ (NSString *)kExplainUrl {
    /* static */ NSString *kExplainUrl = nil;
    if (!kExplainUrl) {
		NSArray<NSNumber *> *origin = @[@39, @82, @6, @97, @135, @99, @185, @196, @193, @199, @194, @177, @191, @183, @191, @180, @183, @196, @177, @187, @192, @184, @193, @177, @179, @181, @198, @187, @200, @187, @198, @203, @177, @198, @183, @179, @191, @177, @181, @196, @183, @179, @198, @193, @196, @233];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kExplainUrl = [self StringFromRegardingData:value];
    }
    return kExplainUrl;
}

//: kNIMTeamListDataTeamMembersChanged
+ (NSString *)showVerticalMsg {
    /* static */ NSString *showVerticalMsg = nil;
    if (!showVerticalMsg) {
		NSArray<NSNumber *> *origin = @[@34, @16, @6, @130, @162, @45, @123, @94, @89, @93, @100, @117, @113, @125, @92, @121, @131, @132, @84, @113, @132, @113, @100, @117, @113, @125, @93, @117, @125, @114, @117, @130, @131, @83, @120, @113, @126, @119, @117, @116, @30];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showVerticalMsg = [self StringFromRegardingData:value];
    }
    return showVerticalMsg;
}

//: #02D8C9
+ (NSString *)user_rangeName {
    /* static */ NSString *user_rangeName = nil;
    if (!user_rangeName) {
		NSArray<NSNumber *> *origin = @[@7, @12, @6, @65, @45, @194, @47, @60, @62, @80, @68, @79, @69, @111];
		NSData *data = [RegardingData RegardingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_rangeName = [self StringFromRegardingData:value];
    }
    return user_rangeName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamMemberListViewController.m
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCTeamMemberListViewController.h"
#import "VersionViewController.h"
//: #import "BusyCardHeaderCell.h"
#import "FastenerView.h"
//: #import "BusyTeamCardMemberItem.h"
#import "HomegirlFormat.h"
//: #import "BusyTeamMemberCardViewController.h"
#import "FindViewController.h"
//: #import "BusyKitDependency.h"
#import "BusyKitDependency.h"
//: #import "BusyKitProgressHUD.h"
#import "KitEffectView.h"
//: #import "BusyGlobalMacro.h"
#import "BusyGlobalMacro.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Case.h"
//: #import "BusyTeamListDataManager.h"
#import "FindBaseballTeamManager.h"
//: #import "NTESPersonalCardViewController.h"
#import "SharedViewController.h"
//: #import "NTESContactDataCell.h"
#import "IndexPointDataCell.h"
//: #import "BusyGroupMemberTableViewCell.h"
#import "SortView.h"
//: #import "BusyContactSelectViewController.h"
#import "BrandViewController.h"

//: typedef void(^NIMTeamMemberListFetchDataBlock)(BOOL isCompletion);
typedef void(^NIMTeamMemberListFetchDataBlock)(BOOL isCompletion);

//: @interface CCCTeamMemberListViewController ()<UITableViewDataSource,UITableViewDelegate,NIMContactSelectDelegate,NIMMemberCardCellDelegate>
@interface VersionViewController ()<UITableViewDataSource,UITableViewDelegate,NoticeBar,PlayerDelegate>

//@property (nonatomic, strong) UICollectionView *collectionView;
//@property (nonatomic, weak) id <RowCenter> dataSource;
//: @property (nonatomic, assign) NSInteger pageIndex;
@property (nonatomic, assign) NSInteger pageIndex;
//: @property (nonatomic, assign) NSInteger totalPageCount;
@property (nonatomic, assign) NSInteger totalPageCount;
//: @property (nonatomic, strong) UIButton *nextBtn;
@property (nonatomic, strong) UIButton *nextBtn;
//: @property (nonatomic, strong) UIButton *lastBtn;
@property (nonatomic, strong) UIButton *lastBtn;
//: @property (nonatomic, strong) NSDictionary *teamSettingConfig;
@property (nonatomic, strong) NSDictionary *teamSettingConfig;

//: @property (nonatomic ,strong) UITableView *tableView;
@property (nonatomic ,strong) UITableView *tableView;

//: @property (nonatomic ,copy) NSArray *muteArray;
@property (nonatomic ,copy) NSArray *muteArray;

//: @end
@end

//: @implementation CCCTeamMemberListViewController
@implementation VersionViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
//: - (instancetype)initWithDataSource:(BusyTeamListDataManager *)dataSource {
- (instancetype)initWithOffSource:(FindBaseballTeamManager *)dataSource {
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _teamListManager = dataSource;
        _teamListManager = dataSource;
        //: NSString *kNIMTeamListDataTeamMembersChanged = @"kNIMTeamListDataTeamMembersChanged";
        NSString *kNIMTeamListDataTeamMembersChanged = [RegardingData showVerticalMsg];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(frothsed:) name:kNIMTeamListDataTeamMembersChanged object:nil];
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
//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
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


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self setupUI];
    [self marginName];
    //: [self loadMuteListData];
    [self readData];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"id"] = self.teamListManager.team.teamId?:@"";
    dict[@"id"] = self.teamListManager.team.teamId?:@"";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getTeamSetting"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[RegardingData notiReplyId]] read:dict indicator:NO spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict tag:[RegardingData dreamAfterShowMsg]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict selected:[RegardingData show_listIdealTitle]];
            //: _teamSettingConfig = data;
            _teamSettingConfig = data;
        }
    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {
    //: }];
    }];
}

//: - (void)viewDidAppear:(BOOL)animated {
- (void)viewDidAppear:(BOOL)animated {
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];

//    [_collectionView reloadData];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
}

//: - (void)setupUI {
- (void)marginName {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice statusOrLevel]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice statusOrLevel]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[RegardingData k_handleShouldName]] forState:(UIControlStateNormal)];
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
    labtitle.text = [SendName streetSmart:[RegardingData showSourceKey]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice vg_statusBarHeight]+8, 32, 32);
    submitButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-40, [UIDevice statusOrLevel]+8, 32, 32);
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
    submitButton.backgroundColor = [UIColor status:[RegardingData user_rangeName]];
    //: submitButton.layer.cornerRadius = 16;
    submitButton.layer.cornerRadius = 16;
    //: [submitButton setImage:[UIImage imageNamed:@"ic_group_addmember"] forState:(UIControlStateNormal)];
    [submitButton setImage:[UIImage imageNamed:[RegardingData showMVsReadKey]] forState:(UIControlStateNormal)];
    //: [submitButton addTarget:self action:@selector(rightNavButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(selectDisplay) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:submitButton];
    [bgView addSubview:submitButton];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice statusOrLevel])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice statusOrLevel])) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: _tableView.estimatedSectionHeaderHeight=15.1;
    _tableView.estimatedSectionHeaderHeight=15.1;
    //: _tableView.estimatedSectionFooterHeight=.1;
    _tableView.estimatedSectionFooterHeight=.1;
    //: self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = UITableViewAutomaticDimension;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;

//    [self.view addSubview:self.collectionView];

}

//: - (void)loadMuteListData {
- (void)readData {

    //: NSString *teamId = self.teamListManager.team.teamId;
    NSString *teamId = self.teamListManager.team.teamId;
    //: if (self.teamListManager.team.type == NIMTeamTypeSuper) {
    if (self.teamListManager.team.type == NIMTeamTypeSuper) {
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: self.muteArray = members;
            self.muteArray = members;
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:teamId completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: self.muteArray = members;
            self.muteArray = members;
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        //: }];
        }];
    }
}

//更新群成员禁言
//: - (void)cellShouldBeMute:(NSString *)uid mute:(BOOL)mute
- (void)language:(NSString *)uid trademark:(BOOL)mute
{
//    [_dataSource updateUserMuteState:uid mute:mute completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
//        [self.tableView reloadData];
//    }];

    //: BOOL ismute = YES;
    BOOL ismute = YES;
    //: for (NIMTeamMember *member in self.muteArray) {
    for (NIMTeamMember *member in self.muteArray) {
        //: if([member.userId isEqualToString:uid]){
        if([member.userId isEqualToString:uid]){
            //: ismute = NO;
            ismute = NO;
        //: }else{
        }else{
            //: ismute = YES;
            ismute = YES;
        }
    }

    //: NSString *teamId = self.teamListManager.team.teamId;
    NSString *teamId = self.teamListManager.team.teamId;
    //: if (self.teamListManager.team.type == NIMTeamTypeSuper) {
    if (self.teamListManager.team.type == NIMTeamTypeSuper) {
        //: NSMutableArray *users = [NSMutableArray array];
        NSMutableArray *users = [NSMutableArray array];
        //: if (uid) {
        if (uid) {
            //: [users addObject:uid];
            [users addObject:uid];
        }
        //: [[NIMSDK sharedSDK].superTeamManager updateMuteState:ismute
        [[NIMSDK sharedSDK].superTeamManager updateMuteState:ismute
                                                      //: userIds:users
                                                      userIds:users
                                                       //: inTeam:teamId
                                                       inTeam:teamId
                                                  //: completion:^(NSError *error) {
                                                  completion:^(NSError *error) {
            //: [self loadMuteListData];
            [self readData];

        //: }];
        }];
    //: } else {
    } else {
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:ismute
        [[NIMSDK sharedSDK].teamManager updateMuteState:ismute
                                                 //: userId:uid
                                                 userId:uid
                                                 //: inTeam:teamId
                                                 inTeam:teamId
                                             //: completion:^(NSError *error) {
                                             completion:^(NSError *error) {
            //: NSString *msg = nil;
            NSString *msg = nil;
            //: if (!error) {
            if (!error) {
                //: msg = [BusyLanguageManager getTextWithKey:@"modify_activity_modify_success"];
                msg = [SendName streetSmart:[RegardingData notiListMemberChapterValue]];
            //: }else{
            }else{
                //: msg = [BusyLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
                msg = [SendName streetSmart:[RegardingData noti_fullName]];
            }
            //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];

//            [self.tableView reloadData];
            //: [self loadMuteListData];
            [self readData];
         //: }];
         }];
    }
}
//: - (void)cellShouldBeRemoved:(NSString *)uid
- (void)adheres:(NSString *)uid
{
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self.teamListManager kickUsers:@[uid] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager view:@[uid] clear:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    //: }];
    }];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return _teamListManager.memberIds.count;
    return _teamListManager.memberIds.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 72;
    return 72;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: BusyGroupMemberTableViewCell *cell = [BusyGroupMemberTableViewCell cellWithTableView:tableView];
    SortView *cell = [SortView voice:tableView];
    //: cell.delegate = self;
    cell.delegate = self;

    //: NSString *uId = _teamListManager.memberIds[indexPath.section];
    NSString *uId = _teamListManager.memberIds[indexPath.section];
    //: BusyKitInfo *usrInfo = [[MyUserKit sharedKit] infoByUser:uId option:nil];
    Info *usrInfo = [[Case pastTop] consumer:uId message:nil];

    //: [cell reloadWithUserId:uId];
    [cell device:uId];
    //: [cell.roleImageView sd_setImageWithURL:[NSURL URLWithString:usrInfo.avatarUrlString] placeholderImage:usrInfo.avatarImage];
    [cell.roleImageView sd_setImageWithURL:[NSURL URLWithString:usrInfo.avatarUrlString] placeholderImage:usrInfo.avatarImage];
    //: cell.titleLabel.text = usrInfo.showName;
    cell.titleLabel.text = usrInfo.showName;
    //: cell.subtitleLabel.text = [BusyLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"];
    cell.subtitleLabel.text = [SendName streetSmart:[RegardingData kExplainUrl]];

    //: BOOL isown = [uId isEqualToString:_teamListManager.team.owner];
    BOOL isown = [uId isEqualToString:_teamListManager.team.owner];
    //: if(isown){
    if(isown){
        //: cell.subtitleLabel.hidden = NO;
        cell.subtitleLabel.hidden = NO;
    //: }else{
    }else{
        //: cell.subtitleLabel.hidden = YES;
        cell.subtitleLabel.hidden = YES;
        //: cell.muteBtn.hidden = YES;
        cell.muteBtn.hidden = YES;
        //: cell.removeBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }

    //: if([_teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
    if([_teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
        //: cell.muteBtn.hidden = NO;
        cell.muteBtn.hidden = NO;
        //: cell.removeBtn.hidden = NO;
        cell.removeBtn.hidden = NO;
        //: cell.muteBtn.selected = NO;
        cell.muteBtn.selected = NO;
        //: for (NIMTeamMember *member in self.muteArray) {
        for (NIMTeamMember *member in self.muteArray) {
            //: if([member.userId isEqualToString:uId] && member.isMuted){
            if([member.userId isEqualToString:uId] && member.isMuted){
                //: cell.muteBtn.selected = YES;
                cell.muteBtn.selected = YES;
            }
        }
    //: }else{
    }else{
        //: cell.muteBtn.hidden = YES;
        cell.muteBtn.hidden = YES;
        //: cell.removeBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }

    //: if(isown){
    if(isown){
        //: cell.muteBtn.hidden = YES;
        cell.muteBtn.hidden = YES;
        //: cell.removeBtn.hidden = YES;
        cell.removeBtn.hidden = YES;
    }

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NSString *canMemberInfo = [_teamSettingConfig newStringValueForKey:@"canAddFriend"];
    NSString *canMemberInfo = [_teamSettingConfig tag:[RegardingData kShowUrl]];
    //: if (canMemberInfo.integerValue > 0) {
    if (canMemberInfo.integerValue > 0) {
        //: NSString *uId = _teamListManager.memberIds[indexPath.section];
        NSString *uId = _teamListManager.memberIds[indexPath.section];
//    FindViewController *vc = [[FindViewController alloc] init];
//    vc.teamListManager = self.teamListManager;
//    vc.memberId = uId;
//        [self.navigationController pushViewController:vc animated:YES];

        //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:uId];
        SharedViewController *vc = [[SharedViewController alloc] initWithByFullId:uId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }

}



//: #pragma mark - ContactSelectDelegate
#pragma mark - ContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)fillInSearch:(NSArray *)selectedContacts{
    //: [self didInviteUsers:selectedContacts completion:nil];
    [self pin:selectedContacts send:nil];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)pin:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            send:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[[RegardingData app_fullMessageUrl]] = [RegardingData appExplainMsg];
    //: switch (self.teamListManager.team.type) {
    switch (self.teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[[RegardingData dream_situationMsg]] = [RegardingData k_imageKey].maxColor;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[[RegardingData dream_situationMsg]] = [RegardingData showRemoveIdent].maxColor;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[[RegardingData dream_situationMsg]] = [RegardingData userVsTitle].maxColor;
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

//: #pragma mark - Actions
#pragma mark - Actions
//: - (void)teamMemberUpdate:(NSNotification *)note {
- (void)frothsed:(NSNotification *)note {

    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: @end
@end
