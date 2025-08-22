
#import <Foundation/Foundation.h>

@interface DetectConversationData : NSObject

+ (instancetype)sharedInstance;

//: creator
@property (nonatomic, copy) NSString *dream_ladIdent;

//: #FF483D
@property (nonatomic, copy) NSString *app_childAdequateKey;

//: #02D8C9
@property (nonatomic, copy) NSString *m_withName;

//: team_create_helper_create_success
@property (nonatomic, copy) NSString *mainDifferentlyMessage;

//: add_noticess
@property (nonatomic, copy) NSString *noti_graspFormat;

//: icon_add_w
@property (nonatomic, copy) NSString *m_hmIdent;

//: sure_to_clear
@property (nonatomic, copy) NSString *main_defensiveMessage;

//: No_group_announcement
@property (nonatomic, copy) NSString *noti_situationIdent;

//: content
@property (nonatomic, copy) NSString *mLabelIdent;

//: Create_group_announcement
@property (nonatomic, copy) NSString *mainCurrentlyIdent;

//: #999999
@property (nonatomic, copy) NSString *m_reallyText;

//: ic_none_announcement
@property (nonatomic, copy) NSString *showNameIdent;

//: back_arrow_bl
@property (nonatomic, copy) NSString *showDrawingFiveUrl;

//: clear_notice
@property (nonatomic, copy) NSString *m_drawingMsg;

//: user_profile_avtivity_edit
@property (nonatomic, copy) NSString *dream_malePath;

//: activity_group_info_group_toast
@property (nonatomic, copy) NSString *noti_petStr;

//: #F6F7FA
@property (nonatomic, copy) NSString *main_electronId;

//: title
@property (nonatomic, copy) NSString *userSpectacularStr;

//: team_create_helper_create_failed
@property (nonatomic, copy) NSString *kMemberData;

//: Clean_success
@property (nonatomic, copy) NSString *notiListFormat;

//: time
@property (nonatomic, copy) NSString *user_redValue;

//: delete
@property (nonatomic, copy) NSString *m_sharpMessage;

@end

@implementation DetectConversationData

+ (instancetype)sharedInstance {
    static DetectConversationData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)DetectConversationDataToData:(NSString *)value {
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

- (Byte *)DetectConversationDataToCache:(Byte *)data {
    int afterRed = data[0];
    Byte enableRecommend = data[1];
    int homework = data[2];
    for (int i = homework; i < homework + afterRed; i++) {
        int value = data[i] - enableRecommend;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[homework + afterRed] = 0;
    return data + homework;
}

- (NSString *)StringFromDetectConversationData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DetectConversationDataToCache:data]];
}

//: clear_notice
- (NSString *)m_drawingMsg {
    if (!_m_drawingMsg) {
		NSString *origin = @"0C36058EC399A29B97A895A4A5AA9F999BAC";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_drawingMsg = [self StringFromDetectConversationData:value];
    }
    return _m_drawingMsg;
}

//: #FF483D
- (NSString *)app_childAdequateKey {
    if (!_app_childAdequateKey) {
		NSString *origin = @"07520B66C31034528B96A4759898868A85968C";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_childAdequateKey = [self StringFromDetectConversationData:value];
    }
    return _app_childAdequateKey;
}

//: sure_to_clear
- (NSString *)main_defensiveMessage {
    if (!_main_defensiveMessage) {
		NSString *origin = @"0D6209E1A8874AE936D5D7D4C7C1D6D1C1C5CEC7C3D49E";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_defensiveMessage = [self StringFromDetectConversationData:value];
    }
    return _main_defensiveMessage;
}

//: delete
- (NSString *)m_sharpMessage {
    if (!_m_sharpMessage) {
		NSString *origin = @"0654062F8ED1B8B9C0B9C8B950";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_sharpMessage = [self StringFromDetectConversationData:value];
    }
    return _m_sharpMessage;
}

//: activity_group_info_group_toast
- (NSString *)noti_petStr {
    if (!_noti_petStr) {
		NSString *origin = @"1F5F088C9742E82DC0C2D3C8D5C8D3D8BEC6D1CED4CFBEC8CDC5CEBEC6D1CED4CFBED3CEC0D2D388";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_petStr = [self StringFromDetectConversationData:value];
    }
    return _noti_petStr;
}

//: user_profile_avtivity_edit
- (NSString *)dream_malePath {
    if (!_dream_malePath) {
		NSString *origin = @"1A5204B0C7C5B7C4B1C2C4C1B8BBBEB7B1B3C8C6BBC8BBC6CBB1B7B6BBC638";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_malePath = [self StringFromDetectConversationData:value];
    }
    return _dream_malePath;
}

//: Clean_success
- (NSString *)notiListFormat {
    if (!_notiListFormat) {
		NSString *origin = @"0D41084049802AA884ADA6A2AFA0B4B6A4A4A6B4B443";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiListFormat = [self StringFromDetectConversationData:value];
    }
    return _notiListFormat;
}

//: team_create_helper_create_success
- (NSString *)mainDifferentlyMessage {
    if (!_mainDifferentlyMessage) {
		NSString *origin = @"2123060E63579788849082869588849788828B888F938895828695888497888296988686889696B7";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainDifferentlyMessage = [self StringFromDetectConversationData:value];
    }
    return _mainDifferentlyMessage;
}

//: add_noticess
- (NSString *)noti_graspFormat {
    if (!_noti_graspFormat) {
		NSString *origin = @"0C45066EB430A6A9A9A4B3B4B9AEA8AAB8B804";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_graspFormat = [self StringFromDetectConversationData:value];
    }
    return _noti_graspFormat;
}

//: ic_none_announcement
- (NSString *)showNameIdent {
    if (!_showNameIdent) {
		NSString *origin = @"140D0DBF94DDBAAEDF1C301A0276706C7B7C7B726C6E7B7B7C827B70727A727B81F6";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showNameIdent = [self StringFromDetectConversationData:value];
    }
    return _showNameIdent;
}

//: #02D8C9
- (NSString *)m_withName {
    if (!_m_withName) {
		NSString *origin = @"07500373808294889389E5";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_withName = [self StringFromDetectConversationData:value];
    }
    return _m_withName;
}

//: #999999
- (NSString *)m_reallyText {
    if (!_m_reallyText) {
		NSString *origin = @"07590813151BC59D7C92929292929207";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_reallyText = [self StringFromDetectConversationData:value];
    }
    return _m_reallyText;
}

//: back_arrow_bl
- (NSString *)showDrawingFiveUrl {
    if (!_showDrawingFiveUrl) {
		NSString *origin = @"0D2C0CA4465FA5A73E36879B8E8D8F978B8D9E9E9BA38B8E98F4";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showDrawingFiveUrl = [self StringFromDetectConversationData:value];
    }
    return _showDrawingFiveUrl;
}

//: #F6F7FA
- (NSString *)main_electronId {
    if (!_main_electronId) {
		NSString *origin = @"073D0582056083738374837EFA";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_electronId = [self StringFromDetectConversationData:value];
    }
    return _main_electronId;
}

//: team_create_helper_create_failed
- (NSString *)kMemberData {
    if (!_kMemberData) {
		NSString *origin = @"20150BAF5898B0516FEB40897A76827478877A76897A747D7A81857A877478877A76897A747B767E817A79F7";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kMemberData = [self StringFromDetectConversationData:value];
    }
    return _kMemberData;
}

//: Create_group_announcement
- (NSString *)mainCurrentlyIdent {
    if (!_mainCurrentlyIdent) {
		NSString *origin = @"195605C0B999C8BBB7CABBB5BDC8C5CBC6B5B7C4C4C5CBC4B9BBC3BBC4CA0D";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainCurrentlyIdent = [self StringFromDetectConversationData:value];
    }
    return _mainCurrentlyIdent;
}

//: icon_add_w
- (NSString *)m_hmIdent {
    if (!_m_hmIdent) {
		NSString *origin = @"0A0F0378727E7D6E7073736E86D1";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_hmIdent = [self StringFromDetectConversationData:value];
    }
    return _m_hmIdent;
}

//: No_group_announcement
- (NSString *)noti_situationIdent {
    if (!_noti_situationIdent) {
		NSString *origin = @"1504086CD8EA37B85273636B767379746365727273797267697169727891";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_situationIdent = [self StringFromDetectConversationData:value];
    }
    return _noti_situationIdent;
}

//: title
- (NSString *)userSpectacularStr {
    if (!_userSpectacularStr) {
		NSString *origin = @"051F042A9388938B84F0";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userSpectacularStr = [self StringFromDetectConversationData:value];
    }
    return _userSpectacularStr;
}

//: time
- (NSString *)user_redValue {
    if (!_user_redValue) {
		NSString *origin = @"04120D0CB030F2545921DA0673867B7F7704";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_redValue = [self StringFromDetectConversationData:value];
    }
    return _user_redValue;
}

//: creator
- (NSString *)dream_ladIdent {
    if (!_dream_ladIdent) {
		NSString *origin = @"074B06D52123AEBDB0ACBFBABD26";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_ladIdent = [self StringFromDetectConversationData:value];
    }
    return _dream_ladIdent;
}

//: content
- (NSString *)mLabelIdent {
    if (!_mLabelIdent) {
		NSString *origin = @"07340DAAE801F5DAE3ED0B018F97A3A2A899A2A89C";
		NSData *data = [DetectConversationData DetectConversationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mLabelIdent = [self StringFromDetectConversationData:value];
    }
    return _mLabelIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamAnnouncementListViewController.m
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamAnnouncementListViewController.h"
#import "TextViewController.h"
//: #import "FFFUsrInfoData.h"
#import "FFFUsrInfoData.h"
//: #import "FFFCreateTeamAnnouncement.h"
#import "AnnouncementViewController.h"
//: #import "FFFTeamAnnouncementListCell.h"
#import "EdictViewCell.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "FFFKitProgressHUD.h"
#import "KitEffectView.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "LEEAlert.h"
#import "StraddleAlert.h"
//: #import "LEEAlertHelper.h"
#import "LEEAlertHelper.h"
//: #import "ZMONAlartView.h"
#import "CanView.h"

//: @interface FFFTeamAnnouncementListViewController () <UITableViewDelegate,
@interface TextViewController () <UITableViewDelegate,
                                                     //: UITableViewDataSource,
                                                     UITableViewDataSource,
                                                     //: NTESCreateTeamAnnouncementDelegate>
                                                     RedAppDelegate>

//: @property (nonatomic,strong) NSMutableArray *announcements;;
@property (nonatomic,strong) NSMutableArray *announcements;;
//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;
//: @property (nonatomic,strong) NIMTeamAnnouncementListOption *option;
@property (nonatomic,strong) WithOption *option;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @property (nonatomic, strong) ZMONAlartView *groupAlartView;
@property (nonatomic, strong) CanView *groupAlartView;

//: @end
@end

//: @implementation FFFTeamAnnouncementListViewController
@implementation TextViewController

//: - (instancetype)initWithOption:(NIMTeamAnnouncementListOption *)option {
- (instancetype)initWithHigh:(WithOption *)option {
    //: if (self = [super initWithNibName:nil bundle:nil]) {
    if (self = [super initWithNibName:nil bundle:nil]) {
        //: self.option = option;
        self.option = option;
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

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor status:[DetectConversationData sharedInstance].main_electronId];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice statusOrLevel]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice statusOrLevel]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[DetectConversationData sharedInstance].showDrawingFiveUrl] forState:(UIControlStateNormal)];
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
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_group_info_group_toast"];
    labtitle.text = [SendName streetSmart:[DetectConversationData sharedInstance].noti_petStr];//群公告
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];


    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
    //: [self.view addSubview:self.box];
    [self.view addSubview:self.box];
    //: self.box.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, 64);
    self.box.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, 64);

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
}

//: - (void)setOption:(NIMTeamAnnouncementListOption *)option {
- (void)setOption:(WithOption *)option {
    //: _option = option;
    _option = option;
    //: [self updateAnnouncementsWithContent:option.announcement];
    [self format:option.announcement];
}

//: - (void)updateAnnouncementsWithContent:(NSString *)content {
- (void)format:(NSString *)content {
    //: if (content) {
    if (content) {
        //: NSData *contentData = [content dataUsingEncoding:NSUTF8StringEncoding];
        NSData *contentData = [content dataUsingEncoding:NSUTF8StringEncoding];
        //: NSArray *datas = [NSJSONSerialization JSONObjectWithData:contentData options:0 error:0];
        NSArray *datas = [NSJSONSerialization JSONObjectWithData:contentData options:0 error:0];
        //: _announcements = [NSMutableArray arrayWithArray:datas];
        _announcements = [NSMutableArray arrayWithArray:datas];
    //: } else {
    } else {
        //: _announcements = nil;
        _announcements = nil;
    }
    //: if(_announcements == nil){
    if(_announcements == nil){
        //: self.tableView.hidden = YES;
        self.tableView.hidden = YES;
        //: self.defView.hidden = NO;
        self.defView.hidden = NO;
        //: self.box.hidden = YES;
        self.box.hidden = YES;
    //: }else{
    }else{
        //: self.tableView.hidden = NO;
        self.tableView.hidden = NO;
        //: self.defView.hidden = YES;
        self.defView.hidden = YES;
        //: if(_option.canCreateAnnouncement) {
        if(_option.canCreateAnnouncement) {
            //: self.box.hidden = NO;
            self.box.hidden = NO;
        }
    }
}

//: - (void)onCreateAnnouncement:(id)sender {
- (void)sent:(id)sender {
    //: FFFCreateTeamAnnouncement *vc = [[FFFCreateTeamAnnouncement alloc] initWithNibName:nil bundle:nil];
    AnnouncementViewController *vc = [[AnnouncementViewController alloc] initWithNibName:nil bundle:nil];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onEditAnnouncement:(id)sender {
- (void)bottomAnnouncement:(id)sender {

    //: NSDictionary *announcement = _announcements.lastObject;
    NSDictionary *announcement = _announcements.lastObject;

    //: FFFCreateTeamAnnouncement *vc = [[FFFCreateTeamAnnouncement alloc] initWithNibName:nil bundle:nil];
    AnnouncementViewController *vc = [[AnnouncementViewController alloc] initWithNibName:nil bundle:nil];
    //: vc.delegate = self;
    vc.delegate = self;
    //: vc.defaultTitle = [announcement objectForKey:@"title"] ?: @"";
    vc.defaultTitle = [announcement objectForKey:[DetectConversationData sharedInstance].userSpectacularStr] ?: @"";
    //: vc.defaultContent = [announcement objectForKey:@"content"] ?: @"";
    vc.defaultContent = [announcement objectForKey:[DetectConversationData sharedInstance].mLabelIdent] ?: @"";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onCleanAnnouncement:(id)sender {
- (void)machined:(id)sender {

    //: [self.view addSubview:self.groupAlartView];
    [self.view addSubview:self.groupAlartView];
    //: [self.groupAlartView reloadWithTitlename:[FFFLanguageManager getTextWithKey:@"sure_to_clear"]];
    [self.groupAlartView completeOf:[SendName streetSmart:[DetectConversationData sharedInstance].main_defensiveMessage]];
    //: [self.groupAlartView animationShow];
    [self.groupAlartView equal];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupAlartView.speiceBackBlock = ^(NSString *Name){
        self.groupAlartView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            // 删除点击事件Block
            //: [self cleanTeamAnnouncement];
            [self unspottedTeamAnnouncement];
            //: [self.groupAlartView animationClose];
            [self.groupAlartView tingShould];
        //: };
        };

//    __weak typeof(self) wself = self;
//
//    [StraddleAlert alert].config
//        .LeeAddTitle(^(UILabel *label) {
//            label.text = LangKey(@"sure_to_clear");
//            label.textColor = [UIColor grayColor];
//        })
//        .LeeAddAction(^(FormatRedApp *action) {
//            
//            action.type = LEEActionTypeCancel;
//            action.title = LangKey(@"contact_tag_fragment_cancel");//@"取消"
//            action.titleColor = [UIColor grayColor];
//            action.backgroundColor = [UIColor whiteColor];
//            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
//            action.borderWidth = 1.0f;
//            action.borderColor = action.backgroundHighlightColor;
//            action.clickBlock = ^{
//                
//                // 取消点击事件Block
//            };
//        })
//        .LeeAddAction(^(FormatRedApp *action) {
//            
//            action.type = LEEActionTypeDefault;
//            action.title = LangKey(@"contact_tag_fragment_sure"); //@"确定";
//            action.titleColor = [UIColor redColor];
//            action.backgroundColor = [UIColor whiteColor];
//            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
//            action.borderWidth = 1.0f;
//            action.borderColor = action.backgroundHighlightColor;
//            action.clickBlock = ^{
//                // 删除点击事件Block
//                [wself cleanTeamAnnouncement];
//            };
//        })
//        .LeeHeaderColor([UIColor whiteColor])
//        .LeeShow();
}

//: - (void)cleanTeamAnnouncement
- (void)unspottedTeamAnnouncement
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [FFFKitProgressHUD show];
    [KitEffectView nim];
//    NSDictionary *announcement = @{@"title": @"",
//                                   @"content": @"",
//                                   @"creator": [[NIMSDK sharedSDK].loginManager currentAccount],
//                                   @"time": @((NSInteger)[NSDate date].timeIntervalSince1970)};
//    NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
//    self.option.team.announcement = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

    //: [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:@"" teamId:wself.option.team.teamId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].teamManager updateTeamAnnouncement:@"" teamId:wself.option.team.teamId completion:^(NSError *error) {
        //: [FFFKitProgressHUD dismiss];
        [KitEffectView area];
        //: if(!error && wself) {
        if(!error && wself) {
            //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"Clean_success"]];
            [wself.view makeToast:[SendName streetSmart:[DetectConversationData sharedInstance].notiListFormat]];// @"清理成功"
            //: wself.announcements = nil;
            wself.announcements = nil;
//            [wself.tableView reloadData];

            //: self.tableView.hidden = YES;
            self.tableView.hidden = YES;
            //: self.defView.hidden = NO;
            self.defView.hidden = NO;
            //: self.box.hidden = YES;
            self.box.hidden = YES;
        }
    //: }];
    }];
}


//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return _announcements.lastObject ? 1 : 0;
    return _announcements.lastObject ? 1 : 0;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: NSDictionary *announcement = _announcements.lastObject;
    NSDictionary *announcement = _announcements.lastObject;
    //: NSString *content = [announcement objectForKey:@"content"];
    NSString *content = [announcement objectForKey:[DetectConversationData sharedInstance].mLabelIdent];

    //: return [FFFTeamAnnouncementListCell cellHeight:content];
    return [EdictViewCell along:content];
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: NSDictionary *announcement = _announcements.lastObject;
    NSDictionary *announcement = _announcements.lastObject;
    //: FFFTeamAnnouncementListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FFFTeamAnnouncementListCell"];
    EdictViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EdictViewCell"];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[FFFTeamAnnouncementListCell alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:@"FFFTeamAnnouncementListCell"];
        cell = [[EdictViewCell alloc] initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:@"EdictViewCell"];
    }
    //: [cell refreshData:announcement nick:_option.nick];
    [cell refreshMemberCell:announcement selectedViewNick:_option.nick];
//
//    EdictViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EdictViewCell"];
//    [cell refreshData:announcement nick:_option.nick];
    //: return cell;
    return cell;
}

//: #pragma mark - CreateTeamAnnouncementDelegate
#pragma mark - CreateTeamAnnouncementDelegate
//: - (void)createTeamAnnouncementCompleteWithTitle:(NSString *)title content:(NSString *)content {
- (void)twineFromAccumulation:(NSString *)title team:(NSString *)content {
    //: NSString *ret = nil;
    NSString *ret = nil;
    //: NSDictionary *announcement = @{@"title": title ?: @"",
    NSDictionary *announcement = @{[DetectConversationData sharedInstance].userSpectacularStr: title ?: @"",
                                   //: @"content": content ?: @"",
                                   [DetectConversationData sharedInstance].mLabelIdent: content ?: @"",
                                   //: @"creator": [[NIMSDK sharedSDK].loginManager currentAccount],
                                   [DetectConversationData sharedInstance].dream_ladIdent: [[NIMSDK sharedSDK].loginManager currentAccount],
                                   //: @"time": @((NSInteger)[NSDate date].timeIntervalSince1970)};
                                   [DetectConversationData sharedInstance].user_redValue: @((NSInteger)[NSDate date].timeIntervalSince1970)};

    //: NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
    NSData *data = [NSJSONSerialization dataWithJSONObject:@[announcement] options:0 error:nil];
    //: ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

    //: [FFFKitProgressHUD show];
    [KitEffectView nim];
    //: if ([_delegate respondsToSelector:@selector(didUpdateAnnouncement:completion:)]) {
    if ([_delegate respondsToSelector:@selector(lastCompletion:redCompletion:)]) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [_delegate didUpdateAnnouncement:ret completion:^(NSError *error) {
        [_delegate lastCompletion:ret redCompletion:^(NSError *error) {
            //: [FFFKitProgressHUD dismiss];
            [KitEffectView area];
            //: if(!error) {
            if(!error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_success"]];
                [wself.view makeToast:[SendName streetSmart:[DetectConversationData sharedInstance].mainDifferentlyMessage]];
                //: [wself updateAnnouncementsWithContent:ret];
                [wself format:ret];
                //: [wself.tableView reloadData];
                [wself.tableView reloadData];
            //: } else {
            } else {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"]];
                [wself.view makeToast:[SendName streetSmart:[DetectConversationData sharedInstance].kMemberData]];
            }
        //: }];
        }];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-15-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)) style:UITableViewStylePlain];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice statusOrLevel])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice statusOrLevel])-15-64-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)) style:UITableViewStylePlain];
        //: _tableView.backgroundColor = [UIColor clearColor];
        _tableView.backgroundColor = [UIColor clearColor];
//        _tableView.rowHeight = SCREEN_HEIGHT;
        //: [_tableView setTableFooterView:[UIView new]];
        [_tableView setTableFooterView:[UIView new]];
        //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //: _tableView.delegate = self;
        _tableView.delegate = self;
        //: _tableView.dataSource = self;
        _tableView.dataSource = self;
    }
    //: return _tableView;
    return _tableView;
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]))];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice statusOrLevel]), [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice statusOrLevel]))];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_announcement"];
        defImg.image = [UIImage imageNamed:[DetectConversationData sharedInstance].showNameIdent];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor status:[DetectConversationData sharedInstance].m_reallyText];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"No_group_announcement"];
        emptyTipLabel.text = [SendName streetSmart:[DetectConversationData sharedInstance].noti_situationIdent];

        //: if(_option.canCreateAnnouncement) {
        if(_option.canCreateAnnouncement) {
            //: UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
            UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
            //: emptyButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-44-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 44);
            emptyButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice statusOrLevel])-44-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 44);
            //: emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
            emptyButton.titleLabel.font = [UIFont systemFontOfSize:15];
            //: [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            //: [emptyButton setTitle:[FFFLanguageManager getTextWithKey:@"Create_group_announcement"] forState:UIControlStateNormal];
            [emptyButton setTitle:[SendName streetSmart:[DetectConversationData sharedInstance].mainCurrentlyIdent] forState:UIControlStateNormal];
            //: [emptyButton setImage:[UIImage imageNamed:@"icon_add_w"] forState:UIControlStateNormal];
            [emptyButton setImage:[UIImage imageNamed:[DetectConversationData sharedInstance].m_hmIdent] forState:UIControlStateNormal];
            //: [emptyButton addTarget:self action:@selector(onCreateAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
            [emptyButton addTarget:self action:@selector(sent:) forControlEvents:UIControlEventTouchUpInside];
            //: [_defView addSubview:emptyButton];
            [_defView addSubview:emptyButton];
            //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
            emptyButton.backgroundColor = [UIColor status:[DetectConversationData sharedInstance].m_withName];
            //: emptyButton.layer.cornerRadius = 22;
            emptyButton.layer.cornerRadius = 22;
            //: [emptyButton layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
            [emptyButton reloadSession:(MKButtonEdgeInsetsStyleLeft) text:10];
        }

    }
    //: return _defView;
    return _defView;
}

//: - (UIView *)box
- (UIView *)box
{
    //: if(!_box){
    if(!_box){
        //: _box = [[UIView alloc]init];
        _box = [[UIView alloc]init];
//        _box.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
////        [self.view addSubview:_box];
//        _box.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
//        _box.layer.shadowOffset = CGSizeMake(0,0);
//        _box.layer.shadowOpacity = 1;
//        _box.layer.shadowRadius = 12;
        //: _box.hidden = YES;
        _box.hidden = YES;

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        //: UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeBtn.frame = CGRectMake(15, 10, width, 44);
        closeBtn.frame = CGRectMake(15, 10, width, 44);
        //: [closeBtn addTarget:self action:@selector(onEditAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
        [closeBtn addTarget:self action:@selector(bottomAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
       //: [closeBtn setImage:[UIImage imageNamed:@"add_noticess"] forState:UIControlStateNormal];
       [closeBtn setImage:[UIImage imageNamed:[DetectConversationData sharedInstance].noti_graspFormat] forState:UIControlStateNormal];
        //: closeBtn.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        closeBtn.backgroundColor = [UIColor status:[DetectConversationData sharedInstance].m_withName];
        //: closeBtn.layer.cornerRadius = 22;
        closeBtn.layer.cornerRadius = 22;
        //: closeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        closeBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        //: [closeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [closeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_edit"] forState:UIControlStateNormal];
        [closeBtn setTitle:[SendName streetSmart:[DetectConversationData sharedInstance].dream_malePath] forState:UIControlStateNormal];
        //: [closeBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [closeBtn reloadSession:(MKButtonEdgeInsetsStyleLeft) text:10];
        //: [_box addSubview:closeBtn];
        [_box addSubview:closeBtn];


        //: UIButton *sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: sureBtn.frame = CGRectMake(width+30, 10, width, 44);
        sureBtn.frame = CGRectMake(width+30, 10, width, 44);
        //: [sureBtn addTarget:self action:@selector(onCleanAnnouncement:) forControlEvents:UIControlEventTouchUpInside];
        [sureBtn addTarget:self action:@selector(machined:) forControlEvents:UIControlEventTouchUpInside];
        //: [sureBtn setImage:[UIImage imageNamed:@"clear_notice"] forState:UIControlStateNormal];
        [sureBtn setImage:[UIImage imageNamed:[DetectConversationData sharedInstance].m_drawingMsg] forState:UIControlStateNormal];
        //: sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        sureBtn.backgroundColor = [UIColor status:[DetectConversationData sharedInstance].app_childAdequateKey];
        //: sureBtn.layer.cornerRadius = 22;
        sureBtn.layer.cornerRadius = 22;
        //: sureBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        sureBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        //: [sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"delete"] forState:UIControlStateNormal];
        [sureBtn setTitle:[SendName streetSmart:[DetectConversationData sharedInstance].m_sharpMessage] forState:UIControlStateNormal];
        //: [sureBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [sureBtn reloadSession:(MKButtonEdgeInsetsStyleLeft) text:10];
        //: [_box addSubview:sureBtn];
        [_box addSubview:sureBtn];
    }
    //: return _box;
    return _box;
}

//: - (ZMONAlartView *)groupAlartView{
- (CanView *)groupAlartView{
    //: if(!_groupAlartView){
    if(!_groupAlartView){
        //: _groupAlartView = [[ZMONAlartView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupAlartView = [[CanView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupAlartView;
    return _groupAlartView;
}


//: @end
@end

//: @implementation NIMTeamAnnouncementListOption
@implementation WithOption
//: @end
@end