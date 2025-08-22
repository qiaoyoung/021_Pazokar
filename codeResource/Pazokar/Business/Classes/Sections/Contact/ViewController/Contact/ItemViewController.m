
#import <Foundation/Foundation.h>
typedef struct {
    Byte managerImage;
    Byte *show;
    unsigned int from;
    Byte fit;
	int handle;
	int factorMessage;
	int controlFrom;
} SizeData;

NSString *StringFromSizeData(SizeData *data);


//: friend_delete_fail
SizeData m_showTextContent = (SizeData){182, (Byte []){208, 196, 223, 211, 216, 210, 233, 210, 211, 218, 211, 194, 211, 233, 208, 215, 223, 218, 91}, 18, 154, 158, 1, 54};

//: #Busy6CF
SizeData notiRangeName = (SizeData){203, (Byte []){232, 141, 141, 141, 253, 136, 141, 155}, 7, 253, 48, 185, 219};

//: black_list_activity_black_list_tip
SizeData appMinContent = (SizeData){210, (Byte []){176, 190, 179, 177, 185, 141, 190, 187, 161, 166, 141, 179, 177, 166, 187, 164, 187, 166, 171, 141, 176, 190, 179, 177, 185, 141, 190, 187, 161, 166, 141, 166, 187, 162, 71}, 34, 184, 26, 201, 68};

//: group_info_activity_without
SizeData dreamLineValue = (SizeData){174, (Byte []){201, 220, 193, 219, 222, 241, 199, 192, 200, 193, 241, 207, 205, 218, 199, 216, 199, 218, 215, 241, 217, 199, 218, 198, 193, 219, 218, 111}, 27, 215, 18, 169, 156};

//: ic_tip_r
SizeData k_labelTeamMsg = (SizeData){64, (Byte []){41, 35, 31, 52, 41, 48, 31, 50, 79}, 8, 164, 222, 24, 239};

//: ic_none_blockList
SizeData userDoingData = (SizeData){2, (Byte []){107, 97, 93, 108, 109, 108, 103, 93, 96, 110, 109, 97, 105, 78, 107, 113, 118, 156}, 17, 194, 90, 184, 244};

//: #F6F7FA
SizeData m_makeToName = (SizeData){64, (Byte []){99, 6, 118, 6, 119, 6, 1, 153}, 7, 173, 242, 112, 101};

//: back_arrow_bl
SizeData mainMyUrl = (SizeData){108, (Byte []){14, 13, 15, 7, 51, 13, 30, 30, 3, 27, 51, 14, 0, 24}, 13, 250, 174, 214, 122};

//: group_chat_avatar_activity_add_black_success
SizeData k_nameUrl = (SizeData){33, (Byte []){70, 83, 78, 84, 81, 126, 66, 73, 64, 85, 126, 64, 87, 64, 85, 64, 83, 126, 64, 66, 85, 72, 87, 72, 85, 88, 126, 64, 69, 69, 126, 67, 77, 64, 66, 74, 126, 82, 84, 66, 66, 68, 82, 82, 240}, 44, 189, 121, 126, 59};

//: #FF483D
SizeData show_contentStr = (SizeData){211, (Byte []){240, 149, 149, 231, 235, 224, 151, 60}, 7, 158, 185, 114, 136};

//: group_info_activity_op_failed
SizeData dreamRecordName = (SizeData){168, (Byte []){207, 218, 199, 221, 216, 247, 193, 198, 206, 199, 247, 201, 203, 220, 193, 222, 193, 220, 209, 247, 199, 216, 247, 206, 201, 193, 196, 205, 204, 218}, 29, 216, 109, 140, 196};

//: #999999
SizeData dream_numberText = (SizeData){148, (Byte []){183, 173, 173, 173, 173, 173, 173, 250}, 7, 208, 249, 158, 59};

//: black_list_activity_black
SizeData appReadKey = (SizeData){32, (Byte []){66, 76, 65, 67, 75, 127, 76, 73, 83, 84, 127, 65, 67, 84, 73, 86, 73, 84, 89, 127, 66, 76, 65, 67, 75, 21}, 25, 157, 204, 89, 12};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemViewController.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//#import "SmartView.h"
//#import "DateView.h"

// __M_A_C_R_O__
//: #import "CCCBlackListViewController.h"
#import "ItemViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "BusyContactSelectViewController.h"
#import "BrandViewController.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "NTESPersonalCardViewController.h"
#import "SharedViewController.h"
//: #import "NTESContactDataMember.h"
#import "TextMember.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESBlackListTableViewCell.h"
#import "TagPraiseViewCell.h"

//: @interface CCCBlackListViewController ()<UITableViewDataSource,UITableViewDelegate,NIMContactSelectDelegate,NTESUserListCellDelegate>
@interface ItemViewController ()<UITableViewDataSource,UITableViewDelegate,NoticeBar,CompartmentReload>

//: @property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,strong) NSMutableArray *data;
//@property (nonatomic,strong) DateView *header;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;


//: @end
@end

//: @implementation CCCBlackListViewController
@implementation ItemViewController

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
    self.view.backgroundColor = [UIColor status:StringFromSizeData(&m_makeToName)];
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
    [backButton setImage:[UIImage imageNamed:StringFromSizeData(&mainMyUrl)] forState:(UIControlStateNormal)];
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
    labtitle.text = [SendName streetSmart:StringFromSizeData(&appReadKey)];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

//    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    submitButton.frame = CGRectMake(SCREEN_WIDTH-15-40, SCREEN_STATUS_HEIGHT+4, 40, 40);
//    [submitButton setImage:[UIImage imageNamed:@"icon_friend_add"] forState:(UIControlStateNormal)];
//    [submitButton addTarget:self action:@selector(onOpera:) forControlEvents:UIControlEventTouchUpInside];
//    [bgView addSubview:submitButton];

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

    //: [self loadTheView];
    [self stem];
}

//: - (void)loadTheView
- (void)stem
{
    //: self.data = self.myBlackListUser;
    self.data = self.keyUser;
    //: if (self.data.count>0) {
    if (self.data.count>0) {
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

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 72.f;
    return 72.f;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return self.data.count;
    return self.data.count;
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
    //: NTESContactDataMember *member = self.data[indexPath.section];
    TextMember *member = self.data[indexPath.section];
    //: [cell refreshWithMember:member];
    [cell image:member];
    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: NTESContactDataMember *member = self.data[indexPath.section];
    TextMember *member = self.data[indexPath.section];

    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:member.info.infoId];
    SharedViewController *vc = [[SharedViewController alloc] initWithByFullId:member.info.infoId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: - (void)didTouchCancleButton:(NTESContactDataMember *)dataMemeber {
- (void)sizes:(TextMember *)dataMemeber {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [SVProgressHUD show];
    [SVProgressHUD show];
    //: [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:dataMemeber.info.infoId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:dataMemeber.info.infoId completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: NSInteger index = [wself.data indexOfObject:dataMemeber];
            NSInteger index = [wself.data indexOfObject:dataMemeber];
            //: if (wself.data.count > index) {
            if (wself.data.count > index) {
                //: [wself.data removeObject:dataMemeber];
                [wself.data removeObject:dataMemeber];
//                [wself.tableView reloadData];
                //: if (wself.data.count>0) {
                if (wself.data.count>0) {
                    //: wself.defView.hidden = YES;
                    wself.defView.hidden = YES;
                    //: wself.tableView.hidden = NO;
                    wself.tableView.hidden = NO;
                    //: [wself.tableView reloadData];
                    [wself.tableView reloadData];
                //: }else{
                }else{
                    //: wself.defView.hidden = NO;
                    wself.defView.hidden = NO;
                    //: wself.tableView.hidden = YES;
                    wself.tableView.hidden = YES;
                }
            }
        //: }else{
        }else{
            //: [wself.view makeToast:[BusyLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
            [wself.view makeToast:[SendName streetSmart:StringFromSizeData(&m_showTextContent)] duration:2.0f position:CSToastPositionCenter];
        }
    //: }];
    }];
}

//: - (void)onOpera:(id)sender{
- (void)behindColor:(id)sender{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //: for (NTESContactDataMember *member in self.data) {
    for (TextMember *member in self.data) {
        //: [users addObject:member.info.infoId];
        [users addObject:member.info.infoId];
    }
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    TitleConfig *config = [[TitleConfig alloc] init];
    //: config.filterIds = users;
    config.filterIds = users;
    //: config.showSelectHeaderview = NO;
    config.showSelectHeaderview = NO;
    //: BusyContactSelectViewController *vc = [[BusyContactSelectViewController alloc] initWithConfig:config];
    BrandViewController *vc = [[BrandViewController alloc] initWithMax:config];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [vc show];
    [vc totalRelation];
}


//: #pragma mark - NTESContactSelectDelegate
#pragma mark - NTESContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)fillInSearch:(NSArray *)selectedContacts{
    //: if (selectedContacts.count) {
    if (selectedContacts.count) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [[NIMSDK sharedSDK].userManager addToBlackList:selectedContacts.firstObject completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager addToBlackList:selectedContacts.firstObject completion:^(NSError *error) {
            //: if (!error) {
            if (!error) {
                //: [wself.view makeToast:[BusyLanguageManager getTextWithKey:@"group_chat_avatar_activity_add_black_success"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[SendName streetSmart:StringFromSizeData(&k_nameUrl)] duration:2.0 position:CSToastPositionCenter];
                //: wself.data = wself.myBlackListUser;
                wself.data = wself.keyUser;
                //: [wself.tableView reloadData];
                [wself.tableView reloadData];
            //: }else{
            }else{
                //: [wself.view makeToast:[BusyLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[SendName streetSmart:StringFromSizeData(&dreamRecordName)] duration:2.0 position:CSToastPositionCenter];
            }
        //: }];
        }];
    }
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)refreshSubviews
- (void)with
{
}

//: - (NSMutableArray *)myBlackListUser{
- (NSMutableArray *)keyUser{
    //: NSMutableArray *list = [[NSMutableArray alloc] init];
    NSMutableArray *list = [[NSMutableArray alloc] init];
    //: for (NIMUser *user in [NIMSDK sharedSDK].userManager.myBlackList) {
    for (NIMUser *user in [NIMSDK sharedSDK].userManager.myBlackList) {
        //: NTESContactDataMember *member = [[NTESContactDataMember alloc] init];
        TextMember *member = [[TextMember alloc] init];
        //: BusyKitInfo *info = [[MyUserKit sharedKit] infoByUser:user.userId option:nil];
        Info *info = [[Case pastTop] consumer:user.userId message:nil];
        //: member.info = info;
        member.info = info;
        //: [list addObject:member];
        [list addObject:member];
    }
    //: return list;
    return list;
}


//: - (UIView *)box
- (UIView *)box
{
    //: if(!_box){
    if(!_box){
        //: _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 26)];
        _box = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice statusOrLevel]), [[UIScreen mainScreen] bounds].size.width, 26)];
        //: _box.backgroundColor = [UIColor colorWithHexString:@"#Busy6CF"];
        _box.backgroundColor = [UIColor status:StringFromSizeData(&notiRangeName)];

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(15, 6, 14, 14)];
        //: defImg.image = [UIImage imageNamed:@"ic_tip_r"];
        defImg.image = [UIImage imageNamed:StringFromSizeData(&k_labelTeamMsg)];
        //: [_box addSubview:defImg];
        [_box addSubview:defImg];

        //: UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(45, 0, [[UIScreen mainScreen] bounds].size.width-60, 26)];
        //: subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        subtitleLabel.font = [UIFont systemFontOfSize:12.f];
        //: subtitleLabel.textColor = [UIColor colorWithHexString:@"#FF483D"];
        subtitleLabel.textColor = [UIColor status:StringFromSizeData(&show_contentStr)];
//        subtitleLabel.textAlignment = NSTextAlignmentLeft;
        //: subtitleLabel.text = [BusyLanguageManager getTextWithKey:@"black_list_activity_black_list_tip"];
        subtitleLabel.text = [SendName streetSmart:StringFromSizeData(&appMinContent)];
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
        defImg.image = [UIImage imageNamed:StringFromSizeData(&userDoingData)];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor status:StringFromSizeData(&dream_numberText)];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [BusyLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [SendName streetSmart:StringFromSizeData(&dreamLineValue)];


    }
    //: return _defView;
    return _defView;
}

//: @end
@end

Byte *SizeDataToByte(SizeData *data) {
    if (data->fit < 133) return data->show;
    for (int i = 0; i < data->from; i++) {
        data->show[i] ^= data->managerImage;
    }
    data->show[data->from] = 0;
    data->fit = 16;
	if (data->from >= 3) {
		data->handle = data->show[0];
		data->factorMessage = data->show[1];
		data->controlFrom = data->show[2];
	}
    return data->show;
}

NSString *StringFromSizeData(SizeData *data) {
    return [NSString stringWithUTF8String:(char *)SizeDataToByte(data)];
}
