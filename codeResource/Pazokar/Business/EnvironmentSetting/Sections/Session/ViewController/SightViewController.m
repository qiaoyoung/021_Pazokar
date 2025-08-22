
#import <Foundation/Foundation.h>

typedef struct {
    Byte strangler;
    Byte *given;
    unsigned int slice;
	int fileGuitar;
	int recentVoice;
} StructTextTheologicalData;

@interface TextTheologicalData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation TextTheologicalData

+ (instancetype)sharedInstance {
    static TextTheologicalData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)TextTheologicalDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)TextTheologicalDataToByte:(StructTextTheologicalData *)data {
    for (int i = 0; i < data->slice; i++) {
        data->given[i] ^= data->strangler;
    }
    data->given[data->slice] = 0;
	if (data->slice >= 2) {
		data->fileGuitar = data->given[0];
		data->recentVoice = data->given[1];
	}
    return data->given;
}

- (NSString *)StringFromTextTheologicalData:(StructTextTheologicalData *)data {
    return [NSString stringWithUTF8String:(char *)[self TextTheologicalDataToByte:data]];
}

//: #EEEEEE
- (NSString *)app_virusMsg {
    /* static */ NSString *app_virusMsg = nil;
    if (!app_virusMsg) {
		NSArray<NSString *> *origin = @[@"82", @"52", @"52", @"52", @"52", @"52", @"52", @"102"];
		NSData *data = [TextTheologicalData TextTheologicalDataToData:origin];
        StructTextTheologicalData value = (StructTextTheologicalData){113, (Byte *)data.bytes, 7, 72, 120};
        app_virusMsg = [self StringFromTextTheologicalData:&value];
    }
    return app_virusMsg;
}

//: #5D5F66
- (NSString *)mainDeserveId {
    /* static */ NSString *mainDeserveId = nil;
    if (!mainDeserveId) {
		NSArray<NSString *> *origin = @[@"29", @"11", @"122", @"11", @"120", @"8", @"8", @"199"];
		NSData *data = [TextTheologicalData TextTheologicalDataToData:origin];
        StructTextTheologicalData value = (StructTextTheologicalData){62, (Byte *)data.bytes, 7, 143, 82};
        mainDeserveId = [self StringFromTextTheologicalData:&value];
    }
    return mainDeserveId;
}

//: group_info_activity_op_failed
- (NSString *)notiHandleFormat {
    /* static */ NSString *notiHandleFormat = nil;
    if (!notiHandleFormat) {
		NSArray<NSString *> *origin = @[@"46", @"59", @"38", @"60", @"57", @"22", @"32", @"39", @"47", @"38", @"22", @"40", @"42", @"61", @"32", @"63", @"32", @"61", @"48", @"22", @"38", @"57", @"22", @"47", @"40", @"32", @"37", @"44", @"45", @"8"];
		NSData *data = [TextTheologicalData TextTheologicalDataToData:origin];
        StructTextTheologicalData value = (StructTextTheologicalData){73, (Byte *)data.bytes, 29, 154, 191};
        notiHandleFormat = [self StringFromTextTheologicalData:&value];
    }
    return notiHandleFormat;
}

//: contact_fragment_friend
- (NSString *)app_factorData {
    /* static */ NSString *app_factorData = nil;
    if (!app_factorData) {
		NSArray<NSString *> *origin = @[@"213", @"217", @"216", @"194", @"215", @"213", @"194", @"233", @"208", @"196", @"215", @"209", @"219", @"211", @"216", @"194", @"233", @"208", @"196", @"223", @"211", @"216", @"210", @"159"];
		NSData *data = [TextTheologicalData TextTheologicalDataToData:origin];
        StructTextTheologicalData value = (StructTextTheologicalData){182, (Byte *)data.bytes, 23, 223, 92};
        app_factorData = [self StringFromTextTheologicalData:&value];
    }
    return app_factorData;
}

//: back_arrow_bl
- (NSString *)user_listPath {
    /* static */ NSString *user_listPath = nil;
    if (!user_listPath) {
		NSArray<NSString *> *origin = @[@"231", @"228", @"230", @"238", @"218", @"228", @"247", @"247", @"234", @"242", @"218", @"231", @"233", @"77"];
		NSData *data = [TextTheologicalData TextTheologicalDataToData:origin];
        StructTextTheologicalData value = (StructTextTheologicalData){133, (Byte *)data.bytes, 13, 212, 31};
        user_listPath = [self StringFromTextTheologicalData:&value];
    }
    return user_listPath;
}

//: #F6F6F6
- (NSString *)kRegardingContent {
    /* static */ NSString *kRegardingContent = nil;
    if (!kRegardingContent) {
		NSArray<NSString *> *origin = @[@"27", @"126", @"14", @"126", @"14", @"126", @"14", @"80"];
		NSData *data = [TextTheologicalData TextTheologicalDataToData:origin];
        StructTextTheologicalData value = (StructTextTheologicalData){56, (Byte *)data.bytes, 7, 24, 99};
        kRegardingContent = [self StringFromTextTheologicalData:&value];
    }
    return kRegardingContent;
}

//: activity_wallet_zhuan
- (NSString *)userDecorateChildSituationValue {
    /* static */ NSString *userDecorateChildSituationValue = nil;
    if (!userDecorateChildSituationValue) {
		NSArray<NSString *> *origin = @[@"110", @"108", @"123", @"102", @"121", @"102", @"123", @"118", @"80", @"120", @"110", @"99", @"99", @"106", @"123", @"80", @"117", @"103", @"122", @"110", @"97", @"251"];
		NSData *data = [TextTheologicalData TextTheologicalDataToData:origin];
        StructTextTheologicalData value = (StructTextTheologicalData){15, (Byte *)data.bytes, 21, 165, 237};
        userDecorateChildSituationValue = [self StringFromTextTheologicalData:&value];
    }
    return userDecorateChildSituationValue;
}

//: contact_fragment_group
- (NSString *)notiInmateMsg {
    /* static */ NSString *notiInmateMsg = nil;
    if (!notiInmateMsg) {
		NSArray<NSString *> *origin = @[@"250", @"246", @"247", @"237", @"248", @"250", @"237", @"198", @"255", @"235", @"248", @"254", @"244", @"252", @"247", @"237", @"198", @"254", @"235", @"246", @"236", @"233", @"46"];
		NSData *data = [TextTheologicalData TextTheologicalDataToData:origin];
        StructTextTheologicalData value = (StructTextTheologicalData){153, (Byte *)data.bytes, 22, 56, 113};
        notiInmateMsg = [self StringFromTextTheologicalData:&value];
    }
    return notiInmateMsg;
}

//: 已发送
- (NSString *)dream_constraintMessage {
    /* static */ NSString *dream_constraintMessage = nil;
    if (!dream_constraintMessage) {
		NSArray<NSString *> *origin = @[@"151", @"197", @"192", @"151", @"253", @"227", @"155", @"242", @"243", @"112"];
		NSData *data = [TextTheologicalData TextTheologicalDataToData:origin];
        StructTextTheologicalData value = (StructTextTheologicalData){114, (Byte *)data.bytes, 9, 102, 46};
        dream_constraintMessage = [self StringFromTextTheologicalData:&value];
    }
    return dream_constraintMessage;
}

//: #02D8C9
- (NSString *)mainJusticeValue {
    /* static */ NSString *mainJusticeValue = nil;
    if (!mainJusticeValue) {
		NSArray<NSString *> *origin = @[@"123", @"104", @"106", @"28", @"96", @"27", @"97", @"87"];
		NSData *data = [TextTheologicalData TextTheologicalDataToData:origin];
        StructTextTheologicalData value = (StructTextTheologicalData){88, (Byte *)data.bytes, 7, 21, 3};
        mainJusticeValue = [self StringFromTextTheologicalData:&value];
    }
    return mainJusticeValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SightViewController.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/8.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZOMNForwardViewController.h"
#import "SightViewController.h"
//: #import "NTESFriendListTableViewCell.h"
#import "InsertViewCell.h"
//: #import "NTESContactDataCell.h"
#import "IndexPointDataCell.h"

//: @interface ZOMNForwardViewController ()<UITableViewDataSource,UITableViewDelegate>
@interface SightViewController ()<UITableViewDataSource,UITableViewDelegate>


//: @property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, strong) UITableView *tableView;
//: @property (nonatomic ,assign) NSInteger sliderIndex;
@property (nonatomic ,assign) NSInteger sliderIndex;

//: @property (nonatomic,strong) UIImageView *topborder1;
@property (nonatomic,strong) UIImageView *topborder1;
//: @property (nonatomic,strong) UIButton *btnfriend;
@property (nonatomic,strong) UIButton *btnfriend;

//: @property (nonatomic,strong) UIImageView *topborder2;
@property (nonatomic,strong) UIImageView *topborder2;
//: @property (nonatomic,strong) UIButton *btngroup;
@property (nonatomic,strong) UIButton *btngroup;

//: @property (nonatomic ,strong) NSArray *groupArray;
@property (nonatomic ,strong) NSArray *groupArray;
//: @property (nonatomic ,strong) NSArray *friendArray;
@property (nonatomic ,strong) NSArray *friendArray;


//: @end
@end

//: @implementation ZOMNForwardViewController
@implementation SightViewController

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
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight])+64)];
    UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice statusOrLevel])+64)];
    //: [self.view addSubview:navView];
    [self.view addSubview:navView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice statusOrLevel]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[TextTheologicalData sharedInstance] user_listPath]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(numberernationalTing) forControlEvents:UIControlEventTouchUpInside];
    //: [navView addSubview:backButton];
    [navView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice statusOrLevel]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [BusyLanguageManager getTextWithKey:@"activity_wallet_zhuan"];
    labtitle.text = [SendName streetSmart:[[TextTheologicalData sharedInstance] userDecorateChildSituationValue]];
    //: [navView addSubview:labtitle];
    [navView addSubview:labtitle];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice statusOrLevel])+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    topview.backgroundColor = [UIColor status:[[TextTheologicalData sharedInstance] kRegardingContent]];
    //: topview.layer.cornerRadius = 24;
    topview.layer.cornerRadius = 24;
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;

    //: _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnfriend.frame = CGRectMake(6, 6, width, 36);
    _btnfriend.frame = CGRectMake(6, 6, width, 36);
    //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
    _btnfriend.backgroundColor = [UIColor status:[[TextTheologicalData sharedInstance] mainJusticeValue]];
    //: _btnfriend.layer.cornerRadius = 18;
    _btnfriend.layer.cornerRadius = 18;
    //: _btnfriend.tag = 0;
    _btnfriend.tag = 0;
    //: _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_btnfriend setTitle:[BusyLanguageManager getTextWithKey:@"contact_fragment_friend"] forState:UIControlStateNormal];
    [_btnfriend setTitle:[SendName streetSmart:[[TextTheologicalData sharedInstance] app_factorData]] forState:UIControlStateNormal];
    //: [_btnfriend addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btnfriend addTarget:self action:@selector(voiced:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btnfriend];
    [topview addSubview:_btnfriend];

    //: _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    //: _btngroup.tag = 1;
    _btngroup.tag = 1;
    //: _btngroup.layer.cornerRadius = 18;
    _btngroup.layer.cornerRadius = 18;
    //: _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_btngroup setTitleColor:[UIColor status:[[TextTheologicalData sharedInstance] mainDeserveId]] forState:UIControlStateNormal];
    //: [_btngroup setTitle:[BusyLanguageManager getTextWithKey:@"contact_fragment_group"] forState:UIControlStateNormal];
    [_btngroup setTitle:[SendName streetSmart:[[TextTheologicalData sharedInstance] notiInmateMsg]] forState:UIControlStateNormal];
    //: [_btngroup addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btngroup addTarget:self action:@selector(voiced:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btngroup];
    [topview addSubview:_btngroup];

    //: UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    //: lineview.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    lineview.backgroundColor = [UIColor status:[[TextTheologicalData sharedInstance] app_virusMsg]];
    //: [navView addSubview:lineview];
    [navView addSubview:lineview];

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: _sliderIndex = 0;
    _sliderIndex = 0;
    //: [self prepareData];
    [self table];
}

//: -(void)sliderButtonClick:(UIButton *)sender
-(void)voiced:(UIButton *)sender
{
    //: sender.selected = YES;
    sender.selected = YES;

    //: if(sender == self.btnfriend){
    if(sender == self.btnfriend){
        //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        _btnfriend.backgroundColor = [UIColor status:[[TextTheologicalData sharedInstance] mainJusticeValue]];
        //: _btngroup.backgroundColor = [UIColor clearColor];
        _btngroup.backgroundColor = [UIColor clearColor];
        //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor status:[[TextTheologicalData sharedInstance] mainDeserveId]] forState:UIControlStateNormal];
        //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

    //: }else if (sender == self.btngroup){
    }else if (sender == self.btngroup){
        //: _btngroup.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        _btngroup.backgroundColor = [UIColor status:[[TextTheologicalData sharedInstance] mainJusticeValue]];
        //: _btnfriend.backgroundColor = [UIColor clearColor];
        _btnfriend.backgroundColor = [UIColor clearColor];
        //: [_btnfriend setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor status:[[TextTheologicalData sharedInstance] mainDeserveId]] forState:UIControlStateNormal];
        //: [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

    }

    //: _sliderIndex = sender.tag;
    _sliderIndex = sender.tag;
    //: [_tableView reloadData];
    [_tableView reloadData];

}

//: - (void)prepareData
- (void)table
{
    //: self.friendArray = [NIMSDK sharedSDK].userManager.myFriends;
    self.friendArray = [NIMSDK sharedSDK].userManager.myFriends;
    //: self.groupArray = [NIMSDK sharedSDK].teamManager.allMyTeams;
    self.groupArray = [NIMSDK sharedSDK].teamManager.allMyTeams;

    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    //: if(_sliderIndex <= 0){
    if(_sliderIndex <= 0){
        //: NIMUser *friend = self.friendArray[indexPath.section];
        NIMUser *friend = self.friendArray[indexPath.section];
        //: self.session = [NIMSession session:friend.userId type:NIMSessionTypeP2P];
        self.session = [NIMSession session:friend.userId type:NIMSessionTypeP2P];
    //: }else{
    }else{
        //: NIMTeam *team = self.groupArray[indexPath.section];
        NIMTeam *team = self.groupArray[indexPath.section];
        //: self.session = [NIMSession session:team.teamId type:NIMSessionTypeTeam];
        self.session = [NIMSession session:team.teamId type:NIMSessionTypeTeam];
    }

    //: NSError *err;
    NSError *err;
    //: if (self.isCard) {
    if (self.isCard) {
        //: [[[NIMSDK sharedSDK] chatManager] sendForwardMessage:self.message toSession:self.session error:&err];
        [[[NIMSDK sharedSDK] chatManager] sendForwardMessage:self.message toSession:self.session error:&err];
    //: }else{
    }else{
        //: [[[NIMSDK sharedSDK] chatManager] forwardMessage:self.message toSession:self.session error:&err];
        [[[NIMSDK sharedSDK] chatManager] forwardMessage:self.message toSession:self.session error:&err];
    }


    //: if(!err){
    if(!err){
        //: [self.view makeToast:@"已发送".nim_localized duration:1.0 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
        [self.view makeToast:[[TextTheologicalData sharedInstance] dream_constraintMessage].maxColor duration:1.0 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: }];
        }];
    //: }else{
    }else{
        //: [self.view makeToast:[BusyLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[SendName streetSmart:[[TextTheologicalData sharedInstance] notiHandleFormat]] duration:2.0 position:CSToastPositionCenter];
    }

}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: return 64;
    return 64;
}

//: - (NIMSession *)didGetSessionWithTeam:(id)team {
- (NIMSession *)value:(id)team {
    //: NIMTeam *teamItem = (NIMTeam *)team;
    NIMTeam *teamItem = (NIMTeam *)team;
    //: NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    //: return session;
    return session;
}

//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return self.friendArray.count;
        return self.friendArray.count;
    //: }else{
    }else{
        //: return self.groupArray.count;
        return self.groupArray.count;
    }
}
//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //: return 1;
    return 1;
}
//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    //: return 0.01f;
    return 0.01f;
}
//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    //: return 0.01f;
    return 0.01f;
}
//: - (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}
//: - (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}
//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    if (_sliderIndex <= 0) {
//        NIMUser *user = self.friendArray[indexPath.section];
//
//        InsertViewCell *cell = [InsertViewCell cellWithTableView:tableView];
////        cell.delegate = self;
//        [cell reloadUserItem:user];
//        cell.messageBtn.hidden = YES;
//        
//        return cell;
//        
//    }else{
//        
//        NIMTeam *team = self.groupArray[indexPath.section];
//
//        IndexPointDataCell * cell = [tableView dequeueReusableCellWithIdentifier:@"KEKEItemCell"];
//        if (!cell) {
//            cell = [[IndexPointDataCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"KEKEItemCell"];
//        }
//        cell.backgroundColor = [UIColor clearColor];
//        cell.accessoryType = UITableViewCellAccessoryNone;
//        [cell refreshTeam:team];
////        [cell setDelegate:self];
//        
//        return cell;
//    }

    //: NTESFriendListTableViewCell *cell = [NTESFriendListTableViewCell cellWithTableView:tableView];
    InsertViewCell *cell = [InsertViewCell compartment:tableView];
    //        cell.delegate = self;
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: NIMUser *user = self.friendArray[indexPath.section];
        NIMUser *user = self.friendArray[indexPath.section];
        //: [cell reloadUserItem:user];
        [cell selected:user];
    //: }else{
    }else{
        //: NIMTeam *team = self.groupArray[indexPath.section];
        NIMTeam *team = self.groupArray[indexPath.section];
        //: [cell refreshTeam:team];
        [cell sample:team];
    }
    //: return cell;
    return cell;
}

//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-64) style:UITableViewStyleGrouped];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice statusOrLevel])+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice statusOrLevel])-64) style:UITableViewStyleGrouped];
        //: _tableView.delegate = self;
        _tableView.delegate = self;
        //: _tableView.dataSource = self;
        _tableView.dataSource = self;
        //: _tableView.backgroundColor = [UIColor clearColor];
        _tableView.backgroundColor = [UIColor clearColor];
        //: _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    //: return _tableView;
    return _tableView;
}

//: @end
@end
