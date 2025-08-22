
#import <Foundation/Foundation.h>

@interface ShowData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ShowData

+ (instancetype)sharedInstance {
    static ShowData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ShowDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ShowDataToCache:(Byte *)data {
    int recentFrom = data[0];
    Byte beggarMyNeighborStrategy = data[1];
    int pathCellTeam = data[2];
    for (int i = pathCellTeam; i < pathCellTeam + recentFrom; i++) {
        int value = data[i] + beggarMyNeighborStrategy;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[pathCellTeam + recentFrom] = 0;
    return data + pathCellTeam;
}

- (NSString *)StringFromShowData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ShowDataToCache:data]];
}

//: back_arrow_bl
- (NSString *)dreamVoiceTitle {
    /* static */ NSString *dreamVoiceTitle = nil;
    if (!dreamVoiceTitle) {
		NSArray<NSNumber *> *origin = @[@13, @1, @8, @28, @135, @249, @9, @90, @97, @96, @98, @106, @94, @96, @113, @113, @110, @118, @94, @97, @107, @219];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamVoiceTitle = [self StringFromShowData:value];
    }
    return dreamVoiceTitle;
}

//: modify_activity_title
- (NSString *)notiMinContent {
    /* static */ NSString *notiMinContent = nil;
    if (!notiMinContent) {
		NSArray<NSNumber *> *origin = @[@21, @36, @3, @73, @75, @64, @69, @66, @85, @59, @61, @63, @80, @69, @82, @69, @80, @85, @59, @80, @69, @80, @72, @65, @4];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiMinContent = [self StringFromShowData:value];
    }
    return notiMinContent;
}

//: deactivate_account
- (NSString *)noti_successDismissFormat {
    /* static */ NSString *noti_successDismissFormat = nil;
    if (!noti_successDismissFormat) {
		NSArray<NSNumber *> *origin = @[@18, @76, @5, @170, @195, @24, @25, @21, @23, @40, @29, @42, @21, @40, @25, @19, @21, @23, @23, @35, @41, @34, @40, @37];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_successDismissFormat = [self StringFromShowData:value];
    }
    return noti_successDismissFormat;
}

//: safe_changepsd
- (NSString *)noti_labelStr {
    /* static */ NSString *noti_labelStr = nil;
    if (!noti_labelStr) {
		NSArray<NSNumber *> *origin = @[@14, @77, @10, @173, @193, @234, @132, @234, @146, @170, @38, @20, @25, @24, @18, @22, @27, @20, @33, @26, @24, @35, @38, @23, @138];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_labelStr = [self StringFromShowData:value];
    }
    return noti_labelStr;
}

//: NotificationLogout
- (NSString *)user_afterCornerUrl {
    /* static */ NSString *user_afterCornerUrl = nil;
    if (!user_afterCornerUrl) {
		NSArray<NSNumber *> *origin = @[@18, @87, @3, @247, @24, @29, @18, @15, @18, @12, @10, @29, @18, @24, @23, @245, @24, @16, @24, @30, @29, @102];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_afterCornerUrl = [self StringFromShowData:value];
    }
    return user_afterCornerUrl;
}

//: AccountDeletion_ja.html
- (NSString *)notiLetterIdent {
    /* static */ NSString *notiLetterIdent = nil;
    if (!notiLetterIdent) {
		NSArray<NSNumber *> *origin = @[@23, @60, @13, @106, @240, @35, @107, @169, @222, @218, @246, @229, @203, @5, @39, @39, @51, @57, @50, @56, @8, @41, @48, @41, @56, @45, @51, @50, @35, @46, @37, @242, @44, @56, @49, @48, @176];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiLetterIdent = [self StringFromShowData:value];
    }
    return notiLetterIdent;
}

//: AccountDeletion_hant.html
- (NSString *)showInputKey {
    /* static */ NSString *showInputKey = nil;
    if (!showInputKey) {
		NSArray<NSNumber *> *origin = @[@25, @80, @5, @173, @80, @241, @19, @19, @31, @37, @30, @36, @244, @21, @28, @21, @36, @25, @31, @30, @15, @24, @17, @30, @36, @222, @24, @36, @29, @28, @1];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showInputKey = [self StringFromShowData:value];
    }
    return showInputKey;
}

//: safe_blacklist
- (NSString *)mainTitleValue {
    /* static */ NSString *mainTitleValue = nil;
    if (!mainTitleValue) {
		NSArray<NSNumber *> *origin = @[@14, @68, @5, @151, @138, @47, @29, @34, @33, @27, @30, @40, @29, @31, @39, @40, @37, @47, @48, @230];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainTitleValue = [self StringFromShowData:value];
    }
    return mainTitleValue;
}

//: hant
- (NSString *)showLineStr {
    /* static */ NSString *showLineStr = nil;
    if (!showLineStr) {
		NSArray<NSNumber *> *origin = @[@4, @41, @12, @69, @236, @174, @30, @39, @241, @57, @44, @217, @63, @56, @69, @75, @8];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showLineStr = [self StringFromShowData:value];
    }
    return showLineStr;
}

//: PrivacyPolicy.html
- (NSString *)k_cellMessage {
    /* static */ NSString *k_cellMessage = nil;
    if (!k_cellMessage) {
		NSArray<NSNumber *> *origin = @[@18, @96, @7, @95, @166, @73, @97, @240, @18, @9, @22, @1, @3, @25, @240, @15, @12, @9, @3, @25, @206, @8, @20, @13, @12, @175];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_cellMessage = [self StringFromShowData:value];
    }
    return k_cellMessage;
}

//: AccountDeletion_en.html
- (NSString *)notiReplyValue {
    /* static */ NSString *notiReplyValue = nil;
    if (!notiReplyValue) {
		NSArray<NSNumber *> *origin = @[@23, @3, @3, @62, @96, @96, @108, @114, @107, @113, @65, @98, @105, @98, @113, @102, @108, @107, @92, @98, @107, @43, @101, @113, @106, @105, @17];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiReplyValue = [self StringFromShowData:value];
    }
    return notiReplyValue;
}

//: #F6F7FA
- (NSString *)user_cornerSourceFormat {
    /* static */ NSString *user_cornerSourceFormat = nil;
    if (!user_cornerSourceFormat) {
		NSArray<NSNumber *> *origin = @[@7, @27, @10, @76, @63, @144, @29, @169, @27, @28, @8, @43, @27, @43, @28, @43, @38, @1];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_cornerSourceFormat = [self StringFromShowData:value];
    }
    return user_cornerSourceFormat;
}

//: safe_accountdelete
- (NSString *)userTeamManagerTitle {
    /* static */ NSString *userTeamManagerTitle = nil;
    if (!userTeamManagerTitle) {
		NSArray<NSNumber *> *origin = @[@18, @61, @8, @24, @180, @4, @186, @18, @54, @36, @41, @40, @34, @36, @38, @38, @50, @56, @49, @55, @39, @40, @47, @40, @55, @40, @188];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userTeamManagerTitle = [self StringFromShowData:value];
    }
    return userTeamManagerTitle;
}

//: black_list_activity_black
- (NSString *)dreamMyPath {
    /* static */ NSString *dreamMyPath = nil;
    if (!dreamMyPath) {
		NSArray<NSNumber *> *origin = @[@25, @99, @3, @255, @9, @254, @0, @8, @252, @9, @6, @16, @17, @252, @254, @0, @17, @6, @19, @6, @17, @22, @252, @255, @9, @254, @0, @8, @65];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamMyPath = [self StringFromShowData:value];
    }
    return dreamMyPath;
}

//: activity_comment_setting_cancel_account
- (NSString *)show_redData {
    /* static */ NSString *show_redData = nil;
    if (!show_redData) {
		NSArray<NSNumber *> *origin = @[@39, @65, @8, @121, @97, @191, @109, @52, @32, @34, @51, @40, @53, @40, @51, @56, @30, @34, @46, @44, @44, @36, @45, @51, @30, @50, @36, @51, @51, @40, @45, @38, @30, @34, @32, @45, @34, @36, @43, @30, @32, @34, @34, @46, @52, @45, @51, @220];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_redData = [self StringFromShowData:value];
    }
    return show_redData;
}

//: safe_setting_activity_title
- (NSString *)dream_memberMsg {
    /* static */ NSString *dream_memberMsg = nil;
    if (!dream_memberMsg) {
		NSArray<NSNumber *> *origin = @[@27, @86, @9, @129, @189, @147, @48, @165, @106, @29, @11, @16, @15, @9, @29, @15, @30, @30, @19, @24, @17, @9, @11, @13, @30, @19, @32, @19, @30, @35, @9, @30, @19, @30, @22, @15, @171];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_memberMsg = [self StringFromShowData:value];
    }
    return dream_memberMsg;
}

//: AccountDeletion_ko.html
- (NSString *)userMemberToTitle {
    /* static */ NSString *userMemberToTitle = nil;
    if (!userMemberToTitle) {
		NSArray<NSNumber *> *origin = @[@23, @81, @5, @176, @235, @240, @18, @18, @30, @36, @29, @35, @243, @20, @27, @20, @35, @24, @30, @29, @14, @26, @30, @221, @23, @35, @28, @27, @148];
		NSData *data = [ShowData ShowDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userMemberToTitle = [self StringFromShowData:value];
    }
    return userMemberToTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReloadViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSafetySetingController.h"
#import "ReloadViewController.h"
//: #import "NTESSafetySetingCell.h"
#import "AppearViewCell.h"
//: #import "NTESChangePasswordController.h"
#import "MyViewController.h"
//: #import "NTESSafetyTableViewCell.h"
#import "FindViewCell.h"
//: #import "LEEAlert.h"
#import "StraddleAlert.h"
//: #import "LEEAlertHelper.h"
#import "LEEAlertHelper.h"
//: #import "CCCBlackListViewController.h"
#import "ItemViewController.h"
//: #import "ZMONDeleteAccountView.h"
#import "MyView.h"
//: #import "ZMONDeactivateAccountView.h"
#import "ParentView.h"
//: #import "ZMONPrivacyPolicyView.h"
#import "ImageUltramontanismView.h"
//: #import "ZMONDeactivateAccountNextView.h"
#import "TapView.h"
//: #import "ZMONDeactivateAccountSuccessView.h"
#import "CleanView.h"
//: #import "ZMONAccountPolicyViewController.h"
#import "NameTopViewController.h"
//: #import "DeleteAccountTipView.h"
#import "FormatView.h"
//: #import "SSZipArchiveManager.h"
#import "ValuePraise.h"

//: @interface NTESSafetySetingController ()<UITableViewDataSource,UITableViewDelegate,NTESDeactivateAccountDelegate,NTESDeleteAccountDelegate,NTESDeleteAccountTIPDelegate>
@interface ReloadViewController ()<UITableViewDataSource,UITableViewDelegate,OnDelegate,AccumulationDelegate,DirectionMessage>

//: @property (nonatomic ,strong) UITableView *tableView;
@property (nonatomic ,strong) UITableView *tableView;
//: @property (nonatomic ,strong) ZMONDeleteAccountView *deleteAccountView;
@property (nonatomic ,strong) MyView *deleteAccountView;
//: @property (nonatomic ,strong) ZMONDeactivateAccountView *deactivateView;
@property (nonatomic ,strong) ParentView *deactivateView;
//: @property (nonatomic, strong) ZMONPrivacyPolicyView *policyView;
@property (nonatomic, strong) ImageUltramontanismView *policyView;
//: @property (nonatomic, strong) ZMONDeactivateAccountNextView *deactivateNextView;
@property (nonatomic, strong) TapView *deactivateNextView;
//: @property (nonatomic, strong) ZMONDeactivateAccountSuccessView *deactivateSuccessView;
@property (nonatomic, strong) CleanView *deactivateSuccessView;
//: @property (nonatomic, strong) DeleteAccountTipView *deactivateTipView;
@property (nonatomic, strong) FormatView *deactivateTipView;



//: @end
@end

//: @implementation NTESSafetySetingController
@implementation ReloadViewController

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

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor status:[[ShowData sharedInstance] user_cornerSourceFormat]];
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
    [backButton setImage:[UIImage imageNamed:[[ShowData sharedInstance] dreamVoiceTitle]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(numberernationalTing) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice statusOrLevel]+4, 200, 40)];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"safe_setting_activity_title"];
    labtitle.text = [SendName streetSmart:[[ShowData sharedInstance] dream_memberMsg]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: [self initTableView];
    [self initInstallmentView];
}

//: - (void)initTableView{
- (void)initInstallmentView{
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


}



//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return 3;
    return 3;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 56;
    return 56;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
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
    //: return 16.f;
    return 16.f;
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

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: NTESSafetyTableViewCell *cell = [NTESSafetyTableViewCell cellWithTableView:tableView];
    FindViewCell *cell = [FindViewCell after:tableView];

    //: if(indexPath.section == 0){
    if(indexPath.section == 0){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_blacklist"];
        cell.iconImageView.image = [UIImage imageNamed:[[ShowData sharedInstance] mainTitleValue]];
        //: cell.titleLabel.text = [FFFLanguageManager getTextWithKey:@"black_list_activity_black"];
        cell.titleLabel.text = [SendName streetSmart:[[ShowData sharedInstance] dreamMyPath]];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
    //: else if (indexPath.section == 1){
    else if (indexPath.section == 1){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_changepsd"];
        cell.iconImageView.image = [UIImage imageNamed:[[ShowData sharedInstance] noti_labelStr]];
        //: cell.titleLabel.text = [FFFLanguageManager getTextWithKey:@"modify_activity_title"];
        cell.titleLabel.text = [SendName streetSmart:[[ShowData sharedInstance] notiMinContent]];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
//    else if (indexPath.section == 2){
//        cell.iconImageView.image = [UIImage imageNamed:@"safe_accountDeactivate"];
//        cell.titleLabel.text = LangKey(@"deactivate_account");
//        cell.labSubtitle.hidden = YES;
//    }
    //: else if (indexPath.section == 2){
    else if (indexPath.section == 2){
        //: cell.iconImageView.image = [UIImage imageNamed:@"safe_accountdelete"];
        cell.iconImageView.image = [UIImage imageNamed:[[ShowData sharedInstance] userTeamManagerTitle]];
        //: cell.titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        cell.titleLabel.text = [SendName streetSmart:[[ShowData sharedInstance] show_redData]];
        //: cell.labSubtitle.hidden = YES;
        cell.labSubtitle.hidden = YES;
    }
//    else if (indexPath.section == 4){
//        cell.iconImageView.image = [UIImage imageNamed:@"safe_email"];
//        cell.titleLabel.text = LangKey(@"user_profile_avtivity_email");
//        cell.labSubtitle.hidden = NO;
//        cell.labSubtitle.text = self.bindEmail;
//    }

    //: return cell;
    return cell;


}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: if(indexPath.section == 0){
    if(indexPath.section == 0){
        //: [self blacklist];
        [self getRollingBlacklist];
    }
    //: else if (indexPath.section == 1){
    else if (indexPath.section == 1){
        //: [self changedpwd];
        [self button];
    }
//    else if (indexPath.section == 2){
//        [self deactivateAccount];
//    }
    //: else if (indexPath.section == 2){
    else if (indexPath.section == 2){
        //: [self cancelaccount];
        [self path];
    }
//    else if (indexPath.section == 4){
//        [self bindEmailVC];
//    }
}

//: - (void)didTouchNextButton
- (void)menuFor
{
    //: [self.view addSubview:self.deactivateNextView];
    [self.view addSubview:self.deactivateNextView];
    //: [self.deactivateNextView reloadWithNickname:[FFFLanguageManager getTextWithKey:@"deactivate_account"]];
    [self.deactivateNextView along:[SendName streetSmart:[[ShowData sharedInstance] noti_successDismissFormat]]];
    //: [self.deactivateNextView animationShow];
    [self.deactivateNextView showOpen];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
    self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
//        [self.deactivateNextView animationClose];
//        [self.view addSubview:self.deactivateSuccessView];
//        [self.deactivateSuccessView reloadWithNickname:LangKey(@"deactivated_success")];
//        [self.deactivateSuccessView animationShow];

    //: };
    };
}

//: - (void)didTouchDeleteSureButton
- (void)numberAction
{
    //: [self.view addSubview:self.deactivateNextView];
    [self.view addSubview:self.deactivateNextView];
    //: [self.deactivateNextView reloadWithNickname:[FFFLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"]];
    [self.deactivateNextView along:[SendName streetSmart:[[ShowData sharedInstance] show_redData]]];
    //: [self.deactivateNextView animationShow];
    [self.deactivateNextView showOpen];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
    self.deactivateNextView.speiceBackBlock= ^(NSString *groupName){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [self.deactivateNextView animationClose];
        [self.deactivateNextView tingShould];

            //: [ZCHttpManager deleteUser:^(NSDictionary * _Nonnull configDict) {
            [TitleManageressManager show:^(NSDictionary * _Nonnull configDict) {
                //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
                [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
                 {
                    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                    [[NSNotificationCenter defaultCenter] postNotificationName:[[ShowData sharedInstance] user_afterCornerUrl] object:nil];
                //: }];
                }];
            //: }];
            }];

    //: };
    };
}

//: - (void)didTouchProtocolButton
- (void)replacementButton
{
//    [self.view addSubview:self.policyView];
//    [self.policyView animationShow];

    //: ZMONAccountPolicyViewController *vc = [[ZMONAccountPolicyViewController alloc]init];
    NameTopViewController *vc = [[NameTopViewController alloc]init];
    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"PrivacyPolicy.html"]];
    NSString *htmlFilePath = [[[ValuePraise show] user] stringByAppendingPathComponent:[NSString stringWithFormat:[[ShowData sharedInstance] k_cellMessage]]];
    //: vc.urlString = htmlFilePath;
    vc.urlString = htmlFilePath;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (void)didTouchDeleteNextButton
- (void)replyTag
{
    //: [self.view addSubview:self.deactivateTipView];
    [self.view addSubview:self.deactivateTipView];
    //: [self.deactivateTipView animationShow];
    [self.deactivateTipView brand];
}
//: - (void)didTouchDeleteProtocolButton
- (void)modelString
{
//    [self.view addSubview:self.policyView];
//    [self.policyView animationShow];

    //: ZMONAccountPolicyViewController *vc = [[ZMONAccountPolicyViewController alloc]init];
    NameTopViewController *vc = [[NameTopViewController alloc]init];
        //: NSString *langType = emptyString([NIMUserDefaults standardUserDefaults].language);
        NSString *langType = cornerViewText([DataMaxDefaults max].language);

    //: NSString *fileName = @"AccountDeletion_en.html";
    NSString *fileName = [[ShowData sharedInstance] notiReplyValue];
        //: if ([langType containsString:@"ja"]){
        if ([langType containsString:@"ja"]){
            //: fileName = @"AccountDeletion_ja.html";
            fileName = [[ShowData sharedInstance] notiLetterIdent];
        //: }else if ([langType containsString:@"ko"]){
        }else if ([langType containsString:@"ko"]){
            //: fileName = @"AccountDeletion_ko.html";
            fileName = [[ShowData sharedInstance] userMemberToTitle];
        //: }else if ([langType containsString:@"hant"]){
        }else if ([langType containsString:[[ShowData sharedInstance] showLineStr]]){
            //: fileName = @"AccountDeletion_hant.html";
            fileName = [[ShowData sharedInstance] showInputKey];
        //: }else{
        }else{
            //: fileName = @"AccountDeletion_en.html";
            fileName = [[ShowData sharedInstance] notiReplyValue];
        }

    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@", fileName]];
    NSString *htmlFilePath = [[[ValuePraise show] user] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@", fileName]];
    //: vc.urlString = htmlFilePath;
    vc.urlString = htmlFilePath;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (void)blacklist {
- (void)getRollingBlacklist {
    //: CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    ItemViewController *vc = [[ItemViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)changedpwd {
- (void)button {
    //: NTESChangePasswordController *vc = [[NTESChangePasswordController alloc] init];
    MyViewController *vc = [[MyViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//- (void)bindPhoneVC {
//    KEKEBindPhoneViewController *vc = [[KEKEBindPhoneViewController alloc] init];
//    vc.bindPhone = self.bindPhone;
//    [self.navigationController pushViewController:vc animated:YES];
//}
//
//- (void)bindEmailVC {
//    KEKEBindEmailViewController *vc = [[KEKEBindEmailViewController alloc] init];
//    vc.bindEmail = self.bindEmail;
//    [self.navigationController pushViewController:vc animated:YES];
//}

//: - (void)deactivateAccount {
- (void)findStop {

    //: [self.view addSubview:self.deactivateView];
    [self.view addSubview:self.deactivateView];
    //: [self.deactivateView animationShow];
    [self.deactivateView animation];

}


//: - (void)cancelaccount {
- (void)path {

    //: [self.view addSubview:self.deleteAccountView];
    [self.view addSubview:self.deleteAccountView];
    //: [self.deleteAccountView animationShow];
    [self.deleteAccountView messageHidden];

}


//-(void)changePassWord{
//    MyViewController *vc = [[MyViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//
//}
//
//-(void)resetQuestion{
//    NTESChangeQuestionViewController *vc = [[NTESChangeQuestionViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//}
//
//-(void)findPayPassWord{
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:LangKey(@"warm_prompt") message:LangKey(@"contact_customer_service") preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *alertA = [UIAlertAction actionWithTitle:LangKey(@"got_it") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//    }];
//    [alert addAction:alertA];
//    [self.navigationController presentViewController:alert animated:YES completion:nil];
//}
//
//-(void)changePayPassword{
//
//    NTESVerifyPayPasswordController *vc = [[NTESVerifyPayPasswordController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//    [vc inputPassword:^(NSString *passwordString) {
//        NTESChangePayPasswordController *vc = [[NTESChangePayPasswordController alloc] initWithType:NTESPayPassword_Change];
//        vc.oldpassword = passwordString;
//        [self.navigationController pushViewController:vc animated:YES];
//    }];
//}

//: - (ZMONDeleteAccountView *)deleteAccountView
- (MyView *)deleteAccountView
{
    //: if(!_deleteAccountView){
    if(!_deleteAccountView){
        //: _deleteAccountView = [[ZMONDeleteAccountView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deleteAccountView = [[MyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deleteAccountView.hidden = YES;
        _deleteAccountView.hidden = YES;
        //: _deleteAccountView.delegate = self;
        _deleteAccountView.delegate = self;
    }
    //: return _deleteAccountView;
    return _deleteAccountView;
}

//: - (ZMONDeactivateAccountView *)deactivateView
- (ParentView *)deactivateView
{
    //: if(!_deactivateView){
    if(!_deactivateView){
        //: _deactivateView = [[ZMONDeactivateAccountView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateView = [[ParentView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateView.hidden = YES;
        _deactivateView.hidden = YES;
        //: _deactivateView.delegate = self;
        _deactivateView.delegate = self;
    }
    //: return _deactivateView;
    return _deactivateView;
}
//: - (ZMONDeactivateAccountNextView *)deactivateNextView
- (TapView *)deactivateNextView
{
    //: if(!_deactivateNextView){
    if(!_deactivateNextView){
        //: _deactivateNextView = [[ZMONDeactivateAccountNextView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateNextView = [[TapView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateNextView.hidden = YES;
        _deactivateNextView.hidden = YES;
//        _deactivateNextView.delegate = self;
    }
    //: return _deactivateNextView;
    return _deactivateNextView;
}

//: - (ZMONDeactivateAccountSuccessView *)deactivateSuccessView
- (CleanView *)deactivateSuccessView
{
    //: if(!_deactivateSuccessView){
    if(!_deactivateSuccessView){
        //: _deactivateSuccessView = [[ZMONDeactivateAccountSuccessView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateSuccessView = [[CleanView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateSuccessView.hidden = YES;
        _deactivateSuccessView.hidden = YES;
//        _deactivateSuccessView.delegate = self;
    }
    //: return _deactivateSuccessView;
    return _deactivateSuccessView;
}
//: - (ZMONPrivacyPolicyView *)policyView
- (ImageUltramontanismView *)policyView
{
    //: if(!_policyView){
    if(!_policyView){
        //: _policyView = [[ZMONPrivacyPolicyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _policyView = [[ImageUltramontanismView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _policyView;
    return _policyView;
}

//: - (DeleteAccountTipView *)deactivateTipView
- (FormatView *)deactivateTipView
{
    //: if(!_deactivateTipView){
    if(!_deactivateTipView){
        //: _deactivateTipView = [[DeleteAccountTipView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _deactivateTipView = [[FormatView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _deactivateTipView.hidden = YES;
        _deactivateTipView.hidden = YES;
        //: _deactivateTipView.delegate = self;
        _deactivateTipView.delegate = self;
    }
    //: return _deactivateTipView;
    return _deactivateTipView;
}

//: @end
@end