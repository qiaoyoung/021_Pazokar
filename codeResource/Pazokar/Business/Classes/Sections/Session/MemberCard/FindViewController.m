
#import <Foundation/Foundation.h>

@interface CableTelevisionData : NSObject

+ (instancetype)sharedInstance;

//: back_arrow_bl
@property (nonatomic, copy) NSString *kForbidManagerReplyData;

//: #fffBusy
@property (nonatomic, copy) NSString *noti_myRecordName;

//: account
@property (nonatomic, copy) NSString *notiTextData;

//: head_default
@property (nonatomic, copy) NSString *m_barFileName;

//: icon_me_arrow
@property (nonatomic, copy) NSString *main_seedMessage;

//: modify_activity_modify_success
@property (nonatomic, copy) NSString *main_sizeViewText;

//: ic_sex_woman
@property (nonatomic, copy) NSString *dream_contentTitle;

//: personcart_profile_bg
@property (nonatomic, copy) NSString *show_optionText;

//: 本地不存在
@property (nonatomic, copy) NSString *kShowKey;

//: activity_group_member_info2_inviter
@property (nonatomic, copy) NSString *mainTitleUrl;

//: code
@property (nonatomic, copy) NSString *mAggressivePath;

//: #2C3042
@property (nonatomic, copy) NSString *notiRemoveText;

//: #02D8C9
@property (nonatomic, copy) NSString *show_situationUrl;

//: /user/detail
@property (nonatomic, copy) NSString *appViewTightenValue;

//: ic_card_edit
@property (nonatomic, copy) NSString *dream_guitarUrl;

//: #EEEEEE
@property (nonatomic, copy) NSString *show_procedureKillerValue;

//: #8A8E98
@property (nonatomic, copy) NSString *dreamHockUrl;

//: group_member_info_activity_mute_msg
@property (nonatomic, copy) NSString *k_managerTitle;

//: ic_sex_man
@property (nonatomic, copy) NSString *userInfoIdent;

//: ic_group_lists
@property (nonatomic, copy) NSString *k_inmateFormat;

//: ic_identity_authentication
@property (nonatomic, copy) NSString *dream_fileFormat;

//: activity_group_member_info2_shenfen
@property (nonatomic, copy) NSString *mInputName;

//: #ECECEC
@property (nonatomic, copy) NSString *mRecordData;

//: #F6F7FA
@property (nonatomic, copy) NSString *showRecordFainPath;

//: personCard_bg
@property (nonatomic, copy) NSString *user_memberFullCurrentlyData;

//: message_remark_name
@property (nonatomic, copy) NSString *appSituationId;

//: #FF483D
@property (nonatomic, copy) NSString *userGreenTitle;

//: group_info_activity_op_failed
@property (nonatomic, copy) NSString *mShowMsg;

//: 移出本群
@property (nonatomic, copy) NSString *mBackgroundKey;

//: user_id
@property (nonatomic, copy) NSString *k_teamIdent;

//: ic_invite
@property (nonatomic, copy) NSString *app_successId;

//: data
@property (nonatomic, copy) NSString *noti_overseeModePath;

@end

@implementation CableTelevisionData

+ (instancetype)sharedInstance {
    static CableTelevisionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)CableTelevisionDataToData:(NSString *)value {
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

- (Byte *)CableTelevisionDataToCache:(Byte *)data {
    int currentlyForbid = data[0];
    int chapter = data[1];
    for (int i = 0; i < currentlyForbid / 2; i++) {
        int begin = chapter + i;
        int end = chapter + currentlyForbid - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[chapter + currentlyForbid] = 0;
    return data + chapter;
}

- (NSString *)StringFromCableTelevisionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CableTelevisionDataToCache:data]];
}  

//: personcart_profile_bg
- (NSString *)show_optionText {
    if (!_show_optionText) {
		NSString *origin = @"150b56463e80ac3ef93c8d67625f656c69666f72705f747261636e6f7372657073";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_optionText = [self StringFromCableTelevisionData:value];
    }
    return _show_optionText;
}

//: #8A8E98
- (NSString *)dreamHockUrl {
    if (!_dreamHockUrl) {
		NSString *origin = @"0704081c383945384138230f";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamHockUrl = [self StringFromCableTelevisionData:value];
    }
    return _dreamHockUrl;
}

//: #EEEEEE
- (NSString *)show_procedureKillerValue {
    if (!_show_procedureKillerValue) {
		NSString *origin = @"0709716d4697c10f514545454545452368";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_procedureKillerValue = [self StringFromCableTelevisionData:value];
    }
    return _show_procedureKillerValue;
}

//: ic_group_lists
- (NSString *)k_inmateFormat {
    if (!_k_inmateFormat) {
		NSString *origin = @"0e04f9ee737473696c5f70756f72675f636957";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_inmateFormat = [self StringFromCableTelevisionData:value];
    }
    return _k_inmateFormat;
}

//: group_member_info_activity_mute_msg
- (NSString *)k_managerTitle {
    if (!_k_managerTitle) {
		NSString *origin = @"230ce12dbd6d3a8b98cb96ab67736d5f6574756d5f79746976697463615f6f666e695f7265626d656d5f70756f7267b2";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_managerTitle = [self StringFromCableTelevisionData:value];
    }
    return _k_managerTitle;
}

//: /user/detail
- (NSString *)appViewTightenValue {
    if (!_appViewTightenValue) {
		NSString *origin = @"0c06517f2f706c69617465642f726573752f38";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appViewTightenValue = [self StringFromCableTelevisionData:value];
    }
    return _appViewTightenValue;
}

//: group_info_activity_op_failed
- (NSString *)mShowMsg {
    if (!_mShowMsg) {
		NSString *origin = @"1d08bab6d7e28c0664656c6961665f706f5f79746976697463615f6f666e695f70756f726737";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mShowMsg = [self StringFromCableTelevisionData:value];
    }
    return _mShowMsg;
}

//: head_default
- (NSString *)m_barFileName {
    if (!_m_barFileName) {
		NSString *origin = @"0c0b39b22a481fb885a117746c75616665645f64616568c5";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_barFileName = [self StringFromCableTelevisionData:value];
    }
    return _m_barFileName;
}

//: activity_group_member_info2_shenfen
- (NSString *)mInputName {
    if (!_mInputName) {
		NSString *origin = @"230ae53d04827ac3a01d6e65666e6568735f326f666e695f7265626d656d5f70756f72675f797469766974636117";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mInputName = [self StringFromCableTelevisionData:value];
    }
    return _mInputName;
}

//: account
- (NSString *)notiTextData {
    if (!_notiTextData) {
		NSString *origin = @"070be19891423eea59c333746e756f6363619b";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiTextData = [self StringFromCableTelevisionData:value];
    }
    return _notiTextData;
}

//: data
- (NSString *)noti_overseeModePath {
    if (!_noti_overseeModePath) {
		NSString *origin = @"040537e7c0617461641b";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_overseeModePath = [self StringFromCableTelevisionData:value];
    }
    return _noti_overseeModePath;
}

//: #02D8C9
- (NSString *)show_situationUrl {
    if (!_show_situationUrl) {
		NSString *origin = @"0707cc507f50b93943384432302317";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_situationUrl = [self StringFromCableTelevisionData:value];
    }
    return _show_situationUrl;
}

//: personCard_bg
- (NSString *)user_memberFullCurrentlyData {
    if (!_user_memberFullCurrentlyData) {
		NSString *origin = @"0d0a2c529f869c288eb567625f647261436e6f7372657038";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_memberFullCurrentlyData = [self StringFromCableTelevisionData:value];
    }
    return _user_memberFullCurrentlyData;
}

//: ic_sex_woman
- (NSString *)dream_contentTitle {
    if (!_dream_contentTitle) {
		NSString *origin = @"0c0937bb0eb970a04d6e616d6f775f7865735f636942";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_contentTitle = [self StringFromCableTelevisionData:value];
    }
    return _dream_contentTitle;
}

//: #FF483D
- (NSString *)userGreenTitle {
    if (!_userGreenTitle) {
		NSString *origin = @"070401594433383446462308";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userGreenTitle = [self StringFromCableTelevisionData:value];
    }
    return _userGreenTitle;
}

//: 本地不存在
- (NSString *)kShowKey {
    if (!_kShowKey) {
		NSString *origin = @"0f0668dab7caa89ce598ade58db8e4b09ce5ac9ce606";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kShowKey = [self StringFromCableTelevisionData:value];
    }
    return _kShowKey;
}

//: #F6F7FA
- (NSString *)showRecordFainPath {
    if (!_showRecordFainPath) {
		NSString *origin = @"0703e4414637463646233a";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showRecordFainPath = [self StringFromCableTelevisionData:value];
    }
    return _showRecordFainPath;
}

//: ic_identity_authentication
- (NSString *)dream_fileFormat {
    if (!_dream_fileFormat) {
		NSString *origin = @"1a0bb9ec59d31dd548114e6e6f6974616369746e65687475615f797469746e6564695f636977";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_fileFormat = [self StringFromCableTelevisionData:value];
    }
    return _dream_fileFormat;
}

//: ic_card_edit
- (NSString *)dream_guitarUrl {
    if (!_dream_guitarUrl) {
		NSString *origin = @"0c0315746964655f647261635f636933";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_guitarUrl = [self StringFromCableTelevisionData:value];
    }
    return _dream_guitarUrl;
}

//: #ECECEC
- (NSString *)mRecordData {
    if (!_mRecordData) {
		NSString *origin = @"07071e3e27f1c543454345434523f0";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mRecordData = [self StringFromCableTelevisionData:value];
    }
    return _mRecordData;
}

//: message_remark_name
- (NSString *)appSituationId {
    if (!_appSituationId) {
		NSString *origin = @"1304840f656d616e5f6b72616d65725f6567617373656ded";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appSituationId = [self StringFromCableTelevisionData:value];
    }
    return _appSituationId;
}

//: activity_group_member_info2_inviter
- (NSString *)mainTitleUrl {
    if (!_mainTitleUrl) {
		NSString *origin = @"2303c172657469766e695f326f666e695f7265626d656d5f70756f72675f79746976697463618e";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainTitleUrl = [self StringFromCableTelevisionData:value];
    }
    return _mainTitleUrl;
}

//: ic_sex_man
- (NSString *)userInfoIdent {
    if (!_userInfoIdent) {
		NSString *origin = @"0a07e8a089c8126e616d5f7865735f6369e9";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userInfoIdent = [self StringFromCableTelevisionData:value];
    }
    return _userInfoIdent;
}

//: #2C3042
- (NSString *)notiRemoveText {
    if (!_notiRemoveText) {
		NSString *origin = @"070b97dd68201dfedf08293234303343322351";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiRemoveText = [self StringFromCableTelevisionData:value];
    }
    return _notiRemoveText;
}

//: #fffBusy
- (NSString *)noti_myRecordName {
    if (!_noti_myRecordName) {
		NSString *origin = @"0703896666666666662338";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_myRecordName = [self StringFromCableTelevisionData:value];
    }
    return _noti_myRecordName;
}

//: icon_me_arrow
- (NSString *)main_seedMessage {
    if (!_main_seedMessage) {
		NSString *origin = @"0d0a6450e32c85e3df45776f7272615f656d5f6e6f636901";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_seedMessage = [self StringFromCableTelevisionData:value];
    }
    return _main_seedMessage;
}

//: modify_activity_modify_success
- (NSString *)main_sizeViewText {
    if (!_main_sizeViewText) {
		NSString *origin = @"1e06075ba8c9737365636375735f796669646f6d5f79746976697463615f796669646f6d2a";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_sizeViewText = [self StringFromCableTelevisionData:value];
    }
    return _main_sizeViewText;
}

//: ic_invite
- (NSString *)app_successId {
    if (!_app_successId) {
		NSString *origin = @"0906b338f731657469766e695f6369ae";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_successId = [self StringFromCableTelevisionData:value];
    }
    return _app_successId;
}

//: user_id
- (NSString *)k_teamIdent {
    if (!_k_teamIdent) {
		NSString *origin = @"0703a164695f72657375b7";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_teamIdent = [self StringFromCableTelevisionData:value];
    }
    return _k_teamIdent;
}

//: code
- (NSString *)mAggressivePath {
    if (!_mAggressivePath) {
		NSString *origin = @"0407e98cf6903865646f6356";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mAggressivePath = [self StringFromCableTelevisionData:value];
    }
    return _mAggressivePath;
}

//: back_arrow_bl
- (NSString *)kForbidManagerReplyData {
    if (!_kForbidManagerReplyData) {
		NSString *origin = @"0d0c70ba9775222529c0901a6c625f776f7272615f6b636162fc";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kForbidManagerReplyData = [self StringFromCableTelevisionData:value];
    }
    return _kForbidManagerReplyData;
}

//: 移出本群
- (NSString *)mBackgroundKey {
    if (!_mBackgroundKey) {
		NSString *origin = @"0c0b7a016570d41e26d792a4bee7ac9ce6ba87e5bba7e761";
		NSData *data = [CableTelevisionData CableTelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mBackgroundKey = [self StringFromCableTelevisionData:value];
    }
    return _mBackgroundKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamMemberCardViewController.m
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyTeamMemberCardViewController.h"
#import "FindViewController.h"
//: #import "BusyCommonTableData.h"
#import "BusyCommonTableData.h"
//: #import "BusyCommonTableDelegate.h"
#import "MessageDelegate.h"
//: #import "BusyAvatarImageView.h"
#import "CustomFormatView.h"
//: #import "BusyTeamCardMemberItem.h"
#import "HomegirlFormat.h"
//: #import "BusyKitUtil.h"
#import "OffMore.h"
//: #import "BusyKitDependency.h"
#import "BusyKitDependency.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "ZMONSetGroupNickNameView.h"
#import "ColorView.h"
//: #import "BusyKitColorButtonCell.h"
#import "FastenerViewCell.h"
//: #import "BusyKitSwitcherCell.h"
#import "ParentViewCell.h"
//: #import "BusyKitInfoFetchOption.h"
#import "InfoGreenImage.h"
//: #import "BusyTeamHelper.h"
#import "EnvelopingTitle.h"

//: @interface BusyTeamMemberCardViewController ()<NIMUserManagerDelegate>
@interface FindViewController ()<NIMUserManagerDelegate>

//: @property (nonatomic, strong) ZMONSetGroupNickNameView *groupNickNameView;
@property (nonatomic, strong) ColorView *groupNickNameView;

//: @property (nonatomic,strong) NIMUser *user;
@property (nonatomic,strong) NIMUser *user;

//: @property (nonatomic,strong) BusyCommonTableDelegate *delegator;
@property (nonatomic,strong) MessageDelegate *delegator;

//: @property (nonatomic,weak) id <BusyTeamMemberListDataSource> dataSource;
@property (nonatomic,weak) id <RowCenter> dataSource;

//: @property (nonatomic,strong) NSArray *data;
@property (nonatomic,strong) NSArray *data;

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
//: @property (nonatomic, strong) NSString *userAcount;
@property (nonatomic, strong) NSString *userAcount;

//: @property (nonatomic, strong) UIView *personView;
@property (nonatomic, strong) UIView *personView;
//: @property (strong, nonatomic) UIButton *btnDelete;
@property (strong, nonatomic) UIButton *btnDelete;
//: @property (strong, nonatomic) UIButton *btnChat;
@property (strong, nonatomic) UIButton *btnChat;
//: @property (strong, nonatomic) UISwitch *switchNotice;
@property (strong, nonatomic) UISwitch *switchNotice;
//: @property (strong, nonatomic) UISwitch *switchBlack;
@property (strong, nonatomic) UISwitch *switchBlack;
//: @property (strong, nonatomic) UIButton *btnRes;
@property (strong, nonatomic) UIButton *btnRes;
//: @property (strong, nonatomic) UIButton *btnReport;
@property (strong, nonatomic) UIButton *btnReport;
//: @property (strong, nonatomic) UILabel *labRemark;
@property (strong, nonatomic) UILabel *labRemark;
//: @property (strong, nonatomic) UILabel *labTitleRemark;
@property (strong, nonatomic) UILabel *labTitleRemark;
//: @property (strong, nonatomic) UILabel *labTitlenotice;
@property (strong, nonatomic) UILabel *labTitlenotice;
//: @property (strong, nonatomic) UILabel *labTitleBlack;
@property (strong, nonatomic) UILabel *labTitleBlack;
//: @property (strong, nonatomic) UILabel *labTitleResport;
@property (strong, nonatomic) UILabel *labTitleResport;
//: @property (strong, nonatomic) UIButton *btnAdd;
@property (strong, nonatomic) UIButton *btnAdd;
//: @property (strong, nonatomic) UILabel *labSign;
@property (strong, nonatomic) UILabel *labSign;
//: @property (strong, nonatomic) UILabel *labTitSign;
@property (strong, nonatomic) UILabel *labTitSign;

//: @end
@end

//: @implementation BusyTeamMemberCardViewController
@implementation FindViewController

//: - (void)dealloc {
- (void)dealloc {

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
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor status:[CableTelevisionData sharedInstance].showRecordFainPath];

    //: self.member = [[NIMSDK sharedSDK].teamManager teamMember:self.memberId inTeam:self.teamListManager.team.teamId];
    self.member = [[NIMSDK sharedSDK].teamManager teamMember:self.memberId inTeam:self.teamListManager.team.teamId];


    //: UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    //: scrollView.showsVerticalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    //: scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
    //: [self.view addSubview:scrollView];
    [self.view addSubview:scrollView];
    //: scrollView.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width,900);
    scrollView.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width,900);
    //: scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;

    //: [scrollView addSubview:self.userView];
    [scrollView addSubview:self.userView];
    //: self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250);
    self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250);

    //: [scrollView addSubview:self.personView];
    [scrollView addSubview:self.personView];
    //: self.personView.frame = CGRectMake(0, 250, [[UIScreen mainScreen] bounds].size.width, 300);
    self.personView.frame = CGRectMake(0, 250, [[UIScreen mainScreen] bounds].size.width, 300);

//    [self refresh];

    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = self.memberId;
    dict[[CableTelevisionData sharedInstance].k_teamIdent] = self.memberId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[CableTelevisionData sharedInstance].appViewTightenValue] read:dict indicator:NO spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict tag:[CableTelevisionData sharedInstance].mAggressivePath];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict selected:[CableTelevisionData sharedInstance].noti_overseeModePath];
            //: self.userAcount = [data newStringValueForKey:@"account"];
            self.userAcount = [data tag:[CableTelevisionData sharedInstance].notiTextData];
//            NSString *avatar = [data newStringValueForKey:@"avatar"];

            //: self.accountId.text = self.userAcount;
            self.accountId.text = self.userAcount;
//            [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:avatar] placeholderImage:[UIImage imageNamed:@"head_default"]];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];
}


//: - (void)backAction{
- (void)numberernationalTing{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)updateTeamNick
- (void)restoreKeyGhb
{
    //: [self.view addSubview:self.groupNickNameView];
    [self.view addSubview:self.groupNickNameView];
    //: [self.groupNickNameView animationShow];
    [self.groupNickNameView bubbleUser];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
        self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [[NIMSDK sharedSDK].teamManager updateUserNick:self.memberId
            [[NIMSDK sharedSDK].teamManager updateUserNick:self.memberId
                                                   //: newNick:Name
                                                   newNick:Name
                                                    //: inTeam:self.teamListManager.team.teamId
                                                    inTeam:self.teamListManager.team.teamId
                                                //: completion:^(NSError *error) {
                                                completion:^(NSError *error) {
                //: self.accountNickname.text = Name;
                self.accountNickname.text = Name;
                //: [self.groupNickNameView animationClose];
                [self.groupNickNameView tingShould];
            //: }];
            }];
        //: };
        };
}

//: - (void)updateMute:(UISwitch *)switcher
- (void)tinkling:(UISwitch *)switcher
{
    //: BOOL mute = switcher.on;
    BOOL mute = switcher.on;
    //: [[NIMSDK sharedSDK].teamManager updateMuteState:mute
    [[NIMSDK sharedSDK].teamManager updateMuteState:mute
                                             //: userId:self.memberId
                                             userId:self.memberId
                                             //: inTeam:self.teamListManager.team.teamId
                                             inTeam:self.teamListManager.team.teamId
                                         //: completion:^(NSError *error) {
                                         completion:^(NSError *error) {
        //: NSString *msg = nil;
        NSString *msg = nil;
        //: if (!error) {
        if (!error) {
            //: msg = [BusyLanguageManager getTextWithKey:@"modify_activity_modify_success"];
            msg = [SendName streetSmart:[CableTelevisionData sharedInstance].main_sizeViewText];
        //: }else{
        }else{
            //: msg = [BusyLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
            msg = [SendName streetSmart:[CableTelevisionData sharedInstance].mShowMsg];
            //: switcher.on = !mute;
            switcher.on = !mute;
        }
        //: [self showToastMsg:msg];
        [self dedication:msg];
     //: }];
     }];
}

//: -(void)removeMember
-(void)anyInvite
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].teamManager kickUsers:@[self.memberId]
    [[NIMSDK sharedSDK].teamManager kickUsers:@[self.memberId]
                                     //: fromTeam:self.teamListManager.team.teamId
                                     fromTeam:self.teamListManager.team.teamId
                                   //: completion:^(NSError *error) {
                                   completion:^(NSError *error) {
        //: [weakSelf.navigationController popViewControllerAnimated:NO];
        [weakSelf.navigationController popViewControllerAnimated:NO];
    //: }];
    }];
}
//: #pragma mark - Private
#pragma mark - Private
//: - (void)showToastMsg:(NSString *)msg {
- (void)dedication:(NSString *)msg {
    //: if (msg) {
    if (msg) {
        //: [self.view makeToast:msg
        [self.view makeToast:msg
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UIView *)userView
- (UIView *)userView
{
    //: if(!_userView){
    if(!_userView){
        //: _userView = [[UIView alloc] init];
        _userView = [[UIView alloc] init];
        //: self.user = [[NIMSDK sharedSDK].userManager userInfo:self.memberId];
        self.user = [[NIMSDK sharedSDK].userManager userInfo:self.memberId];

        //: UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
        UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
        //: Bg.image = [UIImage imageNamed:@"personCard_bg"];
        Bg.image = [UIImage imageNamed:[CableTelevisionData sharedInstance].user_memberFullCurrentlyData];
        //: [_userView addSubview:Bg];
        [_userView addSubview:Bg];

        //: UIImageView *userBg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-345)/2, [UIDevice vg_statusBarHeight]+44+20, 345, 140)];
        UIImageView *userBg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-345)/2, [UIDevice statusOrLevel]+44+20, 345, 140)];
        //: userBg.image = [UIImage imageNamed:@"personcart_profile_bg"];
        userBg.image = [UIImage imageNamed:[CableTelevisionData sharedInstance].show_optionText];
        //: [_userView addSubview:userBg];
        [_userView addSubview:userBg];

        //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-100)/2, [UIDevice vg_statusBarHeight]+20, 88, 88)];
        self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-100)/2, [UIDevice statusOrLevel]+20, 88, 88)];
        //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
        [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[CableTelevisionData sharedInstance].m_barFileName]];
        //: self.accountheadImg.layer.cornerRadius = 44;
        self.accountheadImg.layer.cornerRadius = 44;
        //: self.accountheadImg.layer.masksToBounds = YES;
        self.accountheadImg.layer.masksToBounds = YES;
        //: self.accountheadImg.layer.borderWidth = 2;
        self.accountheadImg.layer.borderWidth = 2;
        //: self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        //: [_userView addSubview:self.accountheadImg];
        [_userView addSubview:self.accountheadImg];

        //: self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20)];
        self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20)];
        //: self.accountNickname.font = [UIFont boldSystemFontOfSize:20];
        self.accountNickname.font = [UIFont boldSystemFontOfSize:20];
        //: self.accountNickname.textColor = [UIColor blackColor];
        self.accountNickname.textColor = [UIColor blackColor];
        //: self.accountNickname.text = self.user.userInfo.nickName;
        self.accountNickname.text = self.user.userInfo.nickName;
        //: self.accountNickname.textAlignment = NSTextAlignmentCenter;
        self.accountNickname.textAlignment = NSTextAlignmentCenter;
        //: [_userView addSubview:self.accountNickname];
        [_userView addSubview:self.accountNickname];
        //: [self.accountNickname sizeToFit];
        [self.accountNickname sizeToFit];
        //: self.accountNickname.centerX = self.view.centerX-12;
        self.accountNickname.centerX = self.view.centerX-12;

        //: UIImageView *sexImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14)];
        UIImageView *sexImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14)];
        //: if (self.user.userInfo.gender == NIMUserGenderMale) {
        if (self.user.userInfo.gender == NIMUserGenderMale) {
            //: sexImg.image = [UIImage imageNamed:@"ic_sex_man"];
            sexImg.image = [UIImage imageNamed:[CableTelevisionData sharedInstance].userInfoIdent];
        //: }else if (self.user.userInfo.gender == NIMUserGenderFemale){
        }else if (self.user.userInfo.gender == NIMUserGenderFemale){
            //: sexImg.image = [UIImage imageNamed:@"ic_sex_woman"];
            sexImg.image = [UIImage imageNamed:[CableTelevisionData sharedInstance].dream_contentTitle];
        }
        //: [_userView addSubview:sexImg];
        [_userView addSubview:sexImg];

        //: self.accountId = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        self.accountId = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 15)];
//        self.accountId.backgroundColor = RGB_COLOR_String(@"#FDF4C9");
        //: self.accountId.font = [UIFont systemFontOfSize:14];
        self.accountId.font = [UIFont systemFontOfSize:14];
        //: self.accountId.textColor = [UIColor colorWithHexString:@"#2C3042"];
        self.accountId.textColor = [UIColor status:[CableTelevisionData sharedInstance].notiRemoveText];
        //: self.accountId.textAlignment = NSTextAlignmentCenter;
        self.accountId.textAlignment = NSTextAlignmentCenter;
        //: [_userView addSubview:self.accountId];
        [_userView addSubview:self.accountId];

        //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: self.closeBtn.backgroundColor = [UIColor clearColor];
        self.closeBtn.backgroundColor = [UIColor clearColor];
        //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
        [self.closeBtn setImage:[UIImage imageNamed:[CableTelevisionData sharedInstance].kForbidManagerReplyData] forState:(UIControlStateNormal)];
        //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        [self.closeBtn addTarget:self action:@selector(numberernationalTing) forControlEvents:UIControlEventTouchUpInside];
        //: [_userView addSubview:self.closeBtn];
        [_userView addSubview:self.closeBtn];
        //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 36, 36);
        self.closeBtn.frame = CGRectMake(15, 4+[UIDevice statusOrLevel], 36, 36);

    }
    //: return _userView;
    return _userView;
}

//: - (UIView *)personView
- (UIView *)personView
{
    //: if(!_personView){
    if(!_personView){
        //: _personView = [[UIView alloc]init];
        _personView = [[UIView alloc]init];
        //: _personView.backgroundColor = [UIColor clearColor];
        _personView.backgroundColor = [UIColor clearColor];
        //: _personView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 300);
        _personView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 300);

        //: UIView *contView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30, 220)];
        UIView *contView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30, 220)];
        //: [_personView addSubview:contView];
        [_personView addSubview:contView];
        //: contView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        contView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        //: contView.layer.cornerRadius = 12;
        contView.layer.cornerRadius = 12;
        //: contView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        contView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: contView.layer.shadowOffset = CGSizeMake(0,4);
        contView.layer.shadowOffset = CGSizeMake(0,4);
        //: contView.layer.shadowOpacity = 1;
        contView.layer.shadowOpacity = 1;
        //: contView.layer.shadowRadius = 16;
        contView.layer.shadowRadius = 16;

        //: UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        //: [contView addSubview:nameView];
        [contView addSubview:nameView];
        //: UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(updateTeamNick)];
        UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(restoreKeyGhb)];
        //: [nameView addGestureRecognizer:panGesture];
        [nameView addGestureRecognizer:panGesture];
        //: UIImageView *pic1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        UIImageView *pic1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        //: pic1.image = [UIImage imageNamed:@"ic_card_edit"];
        pic1.image = [UIImage imageNamed:[CableTelevisionData sharedInstance].dream_guitarUrl];
        //: [nameView addSubview:pic1];
        [nameView addSubview:pic1];
        //: self.labTitleRemark = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+15, 10, 150, 24)];
        self.labTitleRemark = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+15, 10, 150, 24)];
        //: self.labTitleRemark.font = [UIFont systemFontOfSize:14.f];
        self.labTitleRemark.font = [UIFont systemFontOfSize:14.f];
        //: self.labTitleRemark.textColor = [UIColor colorWithHexString:@"#2C3042"];
        self.labTitleRemark.textColor = [UIColor status:[CableTelevisionData sharedInstance].notiRemoveText];
        //: self.labTitleRemark.text = [BusyLanguageManager getTextWithKey:@"message_remark_name"];
        self.labTitleRemark.text = [SendName streetSmart:[CableTelevisionData sharedInstance].appSituationId];
        //: [nameView addSubview:self.labTitleRemark];
        [nameView addSubview:self.labTitleRemark];
        //: self.labRemark = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-150-20, 10, 150, 30)];
        self.labRemark = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-150-20, 10, 150, 30)];
        //: self.labRemark.textAlignment = NSTextAlignmentRight;
        self.labRemark.textAlignment = NSTextAlignmentRight;
        //: self.labRemark.font = [UIFont systemFontOfSize:14.f];
        self.labRemark.font = [UIFont systemFontOfSize:14.f];
        //: self.labRemark.textColor = [UIColor colorWithHexString:@"#8A8E98"];
        self.labRemark.textColor = [UIColor status:[CableTelevisionData sharedInstance].dreamHockUrl];
        //: [nameView addSubview:self.labRemark];
        [nameView addSubview:self.labRemark];
        //: UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        //: arrow.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrow.image = [UIImage imageNamed:[CableTelevisionData sharedInstance].main_seedMessage];
        //: [nameView addSubview:arrow];
        [nameView addSubview:arrow];
        //: UIView *line1 = [[UIView alloc]initWithFrame:CGRectMake(36, 49, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line1 = [[UIView alloc]initWithFrame:CGRectMake(36, 49, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line1.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line1.backgroundColor = [UIColor status:[CableTelevisionData sharedInstance].mRecordData];
        //: [nameView addSubview:line1];
        [nameView addSubview:line1];

        //: UIView *box2 = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, [[UIScreen mainScreen] bounds].size.width-30, 60)];
        UIView *box2 = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, [[UIScreen mainScreen] bounds].size.width-30, 60)];
        //: [contView addSubview:box2];
        [contView addSubview:box2];
        //: UIImageView *icon2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        UIImageView *icon2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        //: icon2.image = [UIImage imageNamed:@"ic_identity_authentication"];
        icon2.image = [UIImage imageNamed:[CableTelevisionData sharedInstance].dream_fileFormat];
        //: [box2 addSubview:icon2];
        [box2 addSubview:icon2];
        //: UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, 10, 200, 20)];
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, 10, 200, 20)];
        //: lab2.font = [UIFont systemFontOfSize:14];
        lab2.font = [UIFont systemFontOfSize:14];
        //: lab2.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lab2.textColor = [UIColor status:[CableTelevisionData sharedInstance].notiRemoveText];
        //: lab2.text = [BusyLanguageManager getTextWithKey:@"activity_group_member_info2_shenfen"];
        lab2.text = [SendName streetSmart:[CableTelevisionData sharedInstance].mInputName];
        //: [box2 addSubview:lab2];
        [box2 addSubview:lab2];
        //: UILabel *sublab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, lab2.bottom, 200, 20)];
        UILabel *sublab2 = [[UILabel alloc] initWithFrame:CGRectMake(icon2.right+15, lab2.bottom, 200, 20)];
        //: sublab2.font = [UIFont systemFontOfSize:12];
        sublab2.font = [UIFont systemFontOfSize:12];
        //: sublab2.textColor = [UIColor colorWithHexString:@"#02D8C9"];
        sublab2.textColor = [UIColor status:[CableTelevisionData sharedInstance].show_situationUrl];
        //: sublab2.text = [BusyTeamHelper memberTypeText:self.member.type];
        sublab2.text = [EnvelopingTitle superstratum:self.member.type];
        //: [box2 addSubview:sublab2];
        [box2 addSubview:sublab2];
        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 24, 12, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 24, 12, 12)];
        //: arrow2.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrow2.image = [UIImage imageNamed:[CableTelevisionData sharedInstance].main_seedMessage];
        //: [box2 addSubview:arrow2];
        [box2 addSubview:arrow2];
        //: UIView *line2 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line2 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line2.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line2.backgroundColor = [UIColor status:[CableTelevisionData sharedInstance].mRecordData];
        //: [box2 addSubview:line2];
        [box2 addSubview:line2];

        //: UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, box2.bottom, [[UIScreen mainScreen] bounds].size.width-30, 60)];
        UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, box2.bottom, [[UIScreen mainScreen] bounds].size.width-30, 60)];
        //: [contView addSubview:box3];
        [contView addSubview:box3];
        //: UIImageView *icon3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        UIImageView *icon3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 18, 24, 24)];
        //: icon3.image = [UIImage imageNamed:@"ic_invite"];
        icon3.image = [UIImage imageNamed:[CableTelevisionData sharedInstance].app_successId];
        //: [box3 addSubview:icon3];
        [box3 addSubview:icon3];
        //: UILabel *lab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, 10, 200, 20)];
        UILabel *lab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, 10, 200, 20)];
        //: lab3.font = [UIFont systemFontOfSize:14];
        lab3.font = [UIFont systemFontOfSize:14];
        //: lab3.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lab3.textColor = [UIColor status:[CableTelevisionData sharedInstance].notiRemoveText];
        //: lab3.text = [BusyLanguageManager getTextWithKey:@"activity_group_member_info2_inviter"];
        lab3.text = [SendName streetSmart:[CableTelevisionData sharedInstance].mainTitleUrl];
        //: [box3 addSubview:lab3];
        [box3 addSubview:lab3];
        //: UILabel *sublab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, lab3.bottom, 200, 20)];
        UILabel *sublab3 = [[UILabel alloc] initWithFrame:CGRectMake(icon3.right+15, lab3.bottom, 200, 20)];
        //: sublab3.font = [UIFont systemFontOfSize:12];
        sublab3.font = [UIFont systemFontOfSize:12];
        //: sublab3.textColor = [UIColor colorWithHexString:@"#02D8C9"];
        sublab3.textColor = [UIColor status:[CableTelevisionData sharedInstance].show_situationUrl];
        //: sublab3.text = _member.inviterAccid ? (_member.inviterAccid.length ? _member.inviterAccid : _member.userId) : @"本地不存在".nim_localized;
        sublab3.text = _member.inviterAccid ? (_member.inviterAccid.length ? _member.inviterAccid : _member.userId) : [CableTelevisionData sharedInstance].kShowKey.maxColor;
        //: [box3 addSubview:sublab3];
        [box3 addSubview:sublab3];
        //: UIImageView *arrow3 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 24, 12, 12)];
        UIImageView *arrow3 = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 24, 12, 12)];
        //: arrow3.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrow3.image = [UIImage imageNamed:[CableTelevisionData sharedInstance].main_seedMessage];
        //: [box3 addSubview:arrow3];
        [box3 addSubview:arrow3];
        //: UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(36, 59, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line3.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line3.backgroundColor = [UIColor status:[CableTelevisionData sharedInstance].mRecordData];
        //: [box3 addSubview:line3];
        [box3 addSubview:line3];

        //: UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, [[UIScreen mainScreen] bounds].size.width-30, 50)];
        UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, [[UIScreen mainScreen] bounds].size.width-30, 50)];
        //: [contView addSubview:box4];
        [contView addSubview:box4];
        //: UIImageView *icon4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        UIImageView *icon4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 13, 24, 24)];
        //: icon4.image = [UIImage imageNamed:@"ic_group_lists"];
        icon4.image = [UIImage imageNamed:[CableTelevisionData sharedInstance].k_inmateFormat];
        //: [box4 addSubview:icon4];
        [box4 addSubview:icon4];
        //: UILabel *lab4 = [[UILabel alloc] initWithFrame:CGRectMake(icon4.right+15, 10, 200, 30)];
        UILabel *lab4 = [[UILabel alloc] initWithFrame:CGRectMake(icon4.right+15, 10, 200, 30)];
        //: lab4.font = [UIFont systemFontOfSize:14];
        lab4.font = [UIFont systemFontOfSize:14];
        //: lab4.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lab4.textColor = [UIColor status:[CableTelevisionData sharedInstance].notiRemoveText];
        //: lab4.text = [BusyLanguageManager getTextWithKey:@"group_member_info_activity_mute_msg"];
        lab4.text = [SendName streetSmart:[CableTelevisionData sharedInstance].k_managerTitle];
        //: [box4 addSubview:lab4];
        [box4 addSubview:lab4];
        //: UISwitch *pushSwitch = [[UISwitch alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 10, 51, 30)];
        UISwitch *pushSwitch = [[UISwitch alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 10, 51, 30)];
        //: [pushSwitch setOnTintColor: [UIColor colorWithHexString:@"#02D8C9"]];
        [pushSwitch setOnTintColor: [UIColor status:[CableTelevisionData sharedInstance].show_situationUrl]];
        //: [pushSwitch addTarget:self action:@selector(updateMute:) forControlEvents:UIControlEventValueChanged];
        [pushSwitch addTarget:self action:@selector(tinkling:) forControlEvents:UIControlEventValueChanged];
        //: pushSwitch.on = _member.isMuted;
        pushSwitch.on = _member.isMuted;
        //: [box4 addSubview:pushSwitch];
        [box4 addSubview:pushSwitch];


        //: BOOL canEdit = [BusyKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
        BOOL canEdit = [OffMore complete:self.teamListManager.myTeamInfo];
        //: if(canEdit){
        if(canEdit){
            //: self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
            self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
            //: self.btnDelete.frame = CGRectMake(15, contView.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
            self.btnDelete.frame = CGRectMake(15, contView.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
            //: self.btnDelete.titleLabel.font = [UIFont systemFontOfSize:14];
            self.btnDelete.titleLabel.font = [UIFont systemFontOfSize:14];
            //: [self.btnDelete setTitleColor:[UIColor colorWithHexString:@"#FF483D"] forState:UIControlStateNormal];
            [self.btnDelete setTitleColor:[UIColor status:[CableTelevisionData sharedInstance].userGreenTitle] forState:UIControlStateNormal];
            //: [self.btnDelete setTitle:@"移出本群".nim_localized forState:UIControlStateNormal];
            [self.btnDelete setTitle:[CableTelevisionData sharedInstance].mBackgroundKey.maxColor forState:UIControlStateNormal];
            //: [self.btnDelete addTarget:self action:@selector(removeMember) forControlEvents:UIControlEventTouchUpInside];
            [self.btnDelete addTarget:self action:@selector(anyInvite) forControlEvents:UIControlEventTouchUpInside];
            //: self.btnDelete.backgroundColor = [UIColor colorWithHexString:@"#fffBusy"];
            self.btnDelete.backgroundColor = [UIColor status:[CableTelevisionData sharedInstance].noti_myRecordName];
            //: self.btnDelete.layer.borderWidth = 1;
            self.btnDelete.layer.borderWidth = 1;
            //: self.btnDelete.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
            self.btnDelete.layer.borderColor = [UIColor status:[CableTelevisionData sharedInstance].show_procedureKillerValue].CGColor;
            //: self.btnDelete.layer.cornerRadius = 24;
            self.btnDelete.layer.cornerRadius = 24;
            //: [_personView addSubview:self.btnDelete];
            [_personView addSubview:self.btnDelete];
        }


    }
    //: return _personView;
    return _personView;
}


//: - (ZMONSetGroupNickNameView *)groupNickNameView{
- (ColorView *)groupNickNameView{
    //: if(!_groupNickNameView){
    if(!_groupNickNameView){
        //: _groupNickNameView = [[ZMONSetGroupNickNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupNickNameView = [[ColorView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupNickNameView;
    return _groupNickNameView;
}



//: @end
@end
