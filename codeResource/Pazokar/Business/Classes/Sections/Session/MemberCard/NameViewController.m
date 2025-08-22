
#import <Foundation/Foundation.h>

@interface NextData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation NextData

+ (instancetype)sharedInstance {
    static NextData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)NextDataToCache:(Byte *)data {
    int sense = data[0];
    Byte redTitle = data[1];
    int superintend = data[2];
    for (int i = superintend; i < superintend + sense; i++) {
        int value = data[i] - redTitle;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[superintend + sense] = 0;
    return data + superintend;
}

- (NSString *)StringFromNextData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self NextDataToCache:data]];
}

//: black_list_activity_black_list_tip
- (NSString *)appSeparatePath {
    /* static */ NSString *appSeparatePath = nil;
    if (!appSeparatePath) {
        Byte value[] = {34, 65, 4, 157, 163, 173, 162, 164, 172, 160, 173, 170, 180, 181, 160, 162, 164, 181, 170, 183, 170, 181, 186, 160, 163, 173, 162, 164, 172, 160, 173, 170, 180, 181, 160, 181, 170, 177, 107};
        appSeparatePath = [self StringFromNextData:value];
    }
    return appSeparatePath;
}

//: #Busy6CF
- (NSString *)app_shouldText {
    /* static */ NSString *app_shouldText = nil;
    if (!app_shouldText) {
        Byte value[] = {7, 88, 4, 7, 123, 158, 158, 158, 142, 155, 158, 154};
        app_shouldText = [self StringFromNextData:value];
    }
    return app_shouldText;
}

//: group_info_activity_without
- (NSString *)m_defensiveNearlyKey {
    /* static */ NSString *m_defensiveNearlyKey = nil;
    if (!m_defensiveNearlyKey) {
        Byte value[] = {27, 23, 13, 57, 85, 27, 28, 72, 66, 170, 65, 87, 28, 126, 137, 134, 140, 135, 118, 128, 133, 125, 134, 118, 120, 122, 139, 128, 141, 128, 139, 144, 118, 142, 128, 139, 127, 134, 140, 139, 98};
        m_defensiveNearlyKey = [self StringFromNextData:value];
    }
    return m_defensiveNearlyKey;
}

//: ic_none_blockList
- (NSString *)main_messageFormat {
    /* static */ NSString *main_messageFormat = nil;
    if (!main_messageFormat) {
        Byte value[] = {17, 44, 12, 102, 15, 82, 134, 169, 158, 31, 47, 50, 149, 143, 139, 154, 155, 154, 145, 139, 142, 152, 155, 143, 151, 120, 149, 159, 160, 185};
        main_messageFormat = [self StringFromNextData:value];
    }
    return main_messageFormat;
}

//: #999999
- (NSString *)dreamManagerIdent {
    /* static */ NSString *dreamManagerIdent = nil;
    if (!dreamManagerIdent) {
        Byte value[] = {7, 10, 6, 172, 235, 35, 45, 67, 67, 67, 67, 67, 67, 88};
        dreamManagerIdent = [self StringFromNextData:value];
    }
    return dreamManagerIdent;
}

//: group_chat_avatar_activity_remove_black_success
- (NSString *)m_nameEcruPath {
    /* static */ NSString *m_nameEcruPath = nil;
    if (!m_nameEcruPath) {
        Byte value[] = {47, 54, 9, 129, 203, 89, 55, 71, 239, 157, 168, 165, 171, 166, 149, 153, 158, 151, 170, 149, 151, 172, 151, 170, 151, 168, 149, 151, 153, 170, 159, 172, 159, 170, 175, 149, 168, 155, 163, 165, 172, 155, 149, 152, 162, 151, 153, 161, 149, 169, 171, 153, 153, 155, 169, 169, 211};
        m_nameEcruPath = [self StringFromNextData:value];
    }
    return m_nameEcruPath;
}

//: black_list_activity_black
- (NSString *)user_recordMsg {
    /* static */ NSString *user_recordMsg = nil;
    if (!user_recordMsg) {
        Byte value[] = {25, 86, 6, 117, 74, 246, 184, 194, 183, 185, 193, 181, 194, 191, 201, 202, 181, 183, 185, 202, 191, 204, 191, 202, 207, 181, 184, 194, 183, 185, 193, 43};
        user_recordMsg = [self StringFromNextData:value];
    }
    return user_recordMsg;
}

//: back_arrow_bl
- (NSString *)userHonestlyMsg {
    /* static */ NSString *userHonestlyMsg = nil;
    if (!userHonestlyMsg) {
        Byte value[] = {13, 10, 10, 70, 169, 36, 106, 61, 92, 192, 108, 107, 109, 117, 105, 107, 124, 124, 121, 129, 105, 108, 118, 158};
        userHonestlyMsg = [self StringFromNextData:value];
    }
    return userHonestlyMsg;
}

//: ic_tip_r
- (NSString *)m_backgroundValue {
    /* static */ NSString *m_backgroundValue = nil;
    if (!m_backgroundValue) {
        Byte value[] = {8, 24, 9, 10, 254, 92, 27, 88, 208, 129, 123, 119, 140, 129, 136, 119, 138, 95};
        m_backgroundValue = [self StringFromNextData:value];
    }
    return m_backgroundValue;
}

//: #F6F7FA
- (NSString *)showContentMessage {
    /* static */ NSString *showContentMessage = nil;
    if (!showContentMessage) {
        Byte value[] = {7, 51, 11, 107, 197, 97, 28, 13, 87, 127, 129, 86, 121, 105, 121, 106, 121, 116, 11};
        showContentMessage = [self StringFromNextData:value];
    }
    return showContentMessage;
}

//: #FF483D
- (NSString *)app_barPath {
    /* static */ NSString *app_barPath = nil;
    if (!app_barPath) {
        Byte value[] = {7, 54, 4, 19, 89, 124, 124, 106, 110, 105, 122, 201};
        app_barPath = [self StringFromNextData:value];
    }
    return app_barPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameViewController.m
// Case
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyTeamMuteMemberListViewController.h"
#import "NameViewController.h"
//: #import "BusyTeamMemberCardViewController.h"
#import "FindViewController.h"
//: #import "BusyCardHeaderCell.h"
#import "FastenerView.h"
//: #import "BusyTeamCardMemberItem.h"
#import "HomegirlFormat.h"
//: #import "BusyKitDependency.h"
#import "BusyKitDependency.h"
//: #import "BusyKitProgressHUD.h"
#import "KitEffectView.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Case.h"
//: #import "NTESContactDataMember.h"
#import "TextMember.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESBlackListTableViewCell.h"
#import "TagPraiseViewCell.h"

//: @interface BusyTeamMuteMemberListViewController ()<UITableViewDataSource,UITableViewDelegate,NTESUserListCellDelegate>
@interface NameViewController ()<UITableViewDataSource,UITableViewDelegate,CompartmentReload>

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;
//: @property (nonatomic,strong) NSMutableArray *memberList;
@property (nonatomic,strong) NSMutableArray *memberList;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation BusyTeamMuteMemberListViewController
@implementation NameViewController


//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];

    //: self.memberList = [NSMutableArray array];
    self.memberList = [NSMutableArray array];
    //: [self loadTeamManageList];
    [self direction];
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

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor status:[[NextData sharedInstance] showContentMessage]];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice statusOrLevel]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice statusOrLevel]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[NextData sharedInstance] userHonestlyMsg]] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [BusyLanguageManager getTextWithKey:@"black_list_activity_black"];
    labtitle.text = [SendName streetSmart:[[NextData sharedInstance] user_recordMsg]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: [self.view addSubview:self.box];
    [self.view addSubview:self.box];
    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+30, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-30) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice statusOrLevel])+30, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice statusOrLevel])-30) style:UITableViewStyleGrouped];
    //: self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.backgroundColor = [UIColor whiteColor];
        //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        //: [self.view addSubview:self.tableView];
        [self.view addSubview:self.tableView];
        //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //: self.tableView.delegate = self;
        self.tableView.delegate = self;
        //: self.tableView.dataSource = self;
        self.tableView.dataSource = self;

    //: [self loadTeamManageList];
    [self direction];
}


//: - (void)loadTeamManageList
- (void)direction
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:self.teamListManager.team.teamId
    [[NIMSDK sharedSDK].teamManager fetchTeamMutedMembers:self.teamListManager.team.teamId
                                               //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                               completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: if (!error) {
        if (!error) {
            //: self.memberList = [NSMutableArray arrayWithArray:members];
            self.memberList = [NSMutableArray arrayWithArray:members];
            //: if (self.memberList.count>0) {
            if (self.memberList.count>0) {
                //: self.defView.hidden = YES;
                self.defView.hidden = YES;
                //: self.tableView.hidden = NO;
                self.tableView.hidden = NO;
                //: [self.tableView reloadData];
                [self.tableView reloadData];
            //: }else{
            }else{
                //: self.defView.hidden = NO;
                self.defView.hidden = NO;
                //: self.tableView.hidden = YES;
                self.tableView.hidden = YES;
            }
        }
    //: }];
    }];
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 72.f;
    return 72.f;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.memberList.count;
    return self.memberList.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: static NSString *identity = @"cell";
    static NSString *identity = @"cell";
    //: NTESBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    TagPraiseViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        cell = [[TagPraiseViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        //: cell.delegate = self;
        cell.delegate = self;
    }
    //: NIMTeamMember *member = self.memberList[indexPath.section];
    NIMTeamMember *member = self.memberList[indexPath.section];
    //: [cell refreshData:member];
    [cell montage:member];
    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NIMTeamMember *member = self.memberList[indexPath.section];
    NIMTeamMember *member = self.memberList[indexPath.section];

    //: BusyTeamMemberCardViewController *vc = [[BusyTeamMemberCardViewController alloc] init];
    FindViewController *vc = [[FindViewController alloc] init];
    //: vc.teamListManager = self.teamListManager;
    vc.teamListManager = self.teamListManager;
    //: vc.memberId = member.userId;
    vc.memberId = member.userId;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: - (void)didTouchTeamCancleButton:(NIMTeamMember *)teamMemeber
- (void)emptying:(NIMTeamMember *)teamMemeber
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: [[NIMSDK sharedSDK].teamManager updateMuteState:NO
    [[NIMSDK sharedSDK].teamManager updateMuteState:NO
                                             //: userId:teamMemeber.userId
                                             userId:teamMemeber.userId
                                             //: inTeam:self.teamListManager.team.teamId
                                             inTeam:self.teamListManager.team.teamId
                                         //: completion:^(NSError *error) {
                                         completion:^(NSError *error) {

        //: if(!error) {
        if(!error) {
            //: [self.view makeToast:[BusyLanguageManager getTextWithKey:@"group_chat_avatar_activity_remove_black_success"]
            [self.view makeToast:[SendName streetSmart:[[NextData sharedInstance] m_nameEcruPath]]
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self.memberList removeObject:teamMemeber];
            [self.memberList removeObject:teamMemeber];
            //: if (self.memberList.count>0) {
            if (self.memberList.count>0) {
                //: self.defView.hidden = YES;
                self.defView.hidden = YES;
                //: self.tableView.hidden = NO;
                self.tableView.hidden = NO;
                //: [self.tableView reloadData];
                [self.tableView reloadData];
            //: }else{
            }else{
                //: self.defView.hidden = NO;
                self.defView.hidden = NO;
                //: self.tableView.hidden = YES;
                self.tableView.hidden = YES;
            }
        //: }else{
        }else{
            //: [self.view makeToast:error.description
            [self.view makeToast:error.description
                         //: duration:2
                         duration:2
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
     //: }];
     }];
}


//: - (UIView *)box
- (UIView *)box
{
    //: if(!_box){
    if(!_box){
        //: _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 26)];
        _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice statusOrLevel]), [[UIScreen mainScreen] bounds].size.width, 26)];
        //: _box.backgroundColor = [UIColor colorWithHexString:@"#Busy6CF"];
        _box.backgroundColor = [UIColor status:[[NextData sharedInstance] app_shouldText]];

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        //: defImg.image = [UIImage imageNamed:@"ic_tip_r"];
        defImg.image = [UIImage imageNamed:[[NextData sharedInstance] m_backgroundValue]];
        //: [_box addSubview:defImg];
        [_box addSubview:defImg];

        //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        //: subtitleLabel.textColor = [UIColor colorWithHexString:@"#FF483D"];
        subtitleLabel.textColor = [UIColor status:[[NextData sharedInstance] app_barPath]];
//        subtitleLabel.textAlignment = NSTextAlignmentLeft;
        //: subtitleLabel.text = [BusyLanguageManager getTextWithKey:@"black_list_activity_black_list_tip"];
        subtitleLabel.text = [SendName streetSmart:[[NextData sharedInstance] appSeparatePath]];
        //: [_box addSubview:subtitleLabel];
        [_box addSubview:subtitleLabel];

    }
    //: return _box;
    return _box;
}
//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice statusOrLevel])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_blockList"];
        defImg.image = [UIImage imageNamed:[[NextData sharedInstance] main_messageFormat]];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor status:[[NextData sharedInstance] dreamManagerIdent]];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [BusyLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [SendName streetSmart:[[NextData sharedInstance] m_defensiveNearlyKey]];


    }
    //: return _defView;
    return _defView;
}




//: @end
@end
