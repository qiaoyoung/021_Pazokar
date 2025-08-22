
#import <Foundation/Foundation.h>

@interface NousData : NSObject

@end

@implementation NousData

+ (NSData *)NousDataToData:(NSString *)value {
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

+ (Byte *)NousDataToCache:(Byte *)data {
    int feeVs = data[0];
    Byte winterManager = data[1];
    int nousDecorate = data[2];
    for (int i = nousDecorate; i < nousDecorate + feeVs; i++) {
        int value = data[i] - winterManager;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[nousDecorate + feeVs] = 0;
    return data + nousDecorate;
}

+ (NSString *)StringFromNousData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self NousDataToCache:data]];
}

//: icon_discovery_normal
+ (NSString *)dream_redId {
    /* static */ NSString *dream_redId = nil;
    if (!dream_redId) {
		NSString *origin = @"1504044D6D67737263686D7767737A69767D637273767165700A";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_redId = [self StringFromNousData:value];
    }
    return dream_redId;
}

//: contacts_list_title
+ (NSString *)user_spouseStr {
    /* static */ NSString *user_spouseStr = nil;
    if (!user_spouseStr) {
		NSString *origin = @"1313050B4F7682818774768786727F7C868772877C877F7855";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_spouseStr = [self StringFromNousData:value];
    }
    return user_spouseStr;
}

//: icon_message_pressed
+ (NSString *)dreamSeeContent {
    /* static */ NSString *dreamSeeContent = nil;
    if (!dreamSeeContent) {
		NSString *origin = @"140A059BB5736D797869776F7D7D6B716F697A7C6F7D7D6F6E36";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamSeeContent = [self StringFromNousData:value];
    }
    return dreamSeeContent;
}

//: icon_setting_normal
+ (NSString *)m_seniorName {
    /* static */ NSString *m_seniorName = nil;
    if (!m_seniorName) {
		NSString *origin = @"13030579EC6C66727162766877776C716A6271727570646FA1";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_seniorName = [self StringFromNousData:value];
    }
    return m_seniorName;
}

//: #875FFA
+ (NSString *)showEnemyResentKey {
    /* static */ NSString *showEnemyResentKey = nil;
    if (!showEnemyResentKey) {
		NSString *origin = @"072A034D62615F70706BC2";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showEnemyResentKey = [self StringFromNousData:value];
    }
    return showEnemyResentKey;
}

//: main_tab_my
+ (NSString *)user_doorwayPath {
    /* static */ NSString *user_doorwayPath = nil;
    if (!user_doorwayPath) {
		NSString *origin = @"0B4307C5464053B0A4ACB1A2B7A4A5A2B0BC2C";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_doorwayPath = [self StringFromNousData:value];
    }
    return user_doorwayPath;
}

//: image
+ (NSString *)mViewStr {
    /* static */ NSString *mViewStr = nil;
    if (!mViewStr) {
		NSString *origin = @"051905AF6582867A807E6C";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mViewStr = [self StringFromNousData:value];
    }
    return mViewStr;
}

//: icon_contact_pressed
+ (NSString *)show_idealKey {
    /* static */ NSString *show_idealKey = nil;
    if (!show_idealKey) {
		NSString *origin = @"141C05A280857F8B8A7B7F8B8A907D7F907B8C8E818F8F818046";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_idealKey = [self StringFromNousData:value];
    }
    return show_idealKey;
}

//: #A148FF
+ (NSString *)notiIndicationValue {
    /* static */ NSString *notiIndicationValue = nil;
    if (!notiIndicationValue) {
		NSString *origin = @"073B0D2368A6D3769BE0CBFCA35E7C6C6F73818185";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiIndicationValue = [self StringFromNousData:value];
    }
    return notiIndicationValue;
}

//: icon_contact_normal
+ (NSString *)app_crisisValue {
    /* static */ NSString *app_crisisValue = nil;
    if (!app_crisisValue) {
		NSString *origin = @"130F048678727E7D6E727E7D837072836E7D7E817C707B2E";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_crisisValue = [self StringFromNousData:value];
    }
    return app_crisisValue;
}

//: discovery
+ (NSString *)user_makeName {
    /* static */ NSString *user_makeName = nil;
    if (!user_makeName) {
		NSString *origin = @"095009958A7A4B43BEB4B9C3B3BFC6B5C2C960";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_makeName = [self StringFromNousData:value];
    }
    return user_makeName;
}

//: #612CF9
+ (NSString *)appDrivewayText {
    /* static */ NSString *appDrivewayText = nil;
    if (!appDrivewayText) {
		NSString *origin = @"075B07A329FE4A7E918C8D9EA19424";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appDrivewayText = [self StringFromNousData:value];
    }
    return appDrivewayText;
}

//: activity_user_profile_chat
+ (NSString *)show_inmateMsg {
    /* static */ NSString *show_inmateMsg = nil;
    if (!show_inmateMsg) {
		NSString *origin = @"1A2706852705888A9B909D909BA0869C9A8C99869799968D90938C868A8F889BB6";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_inmateMsg = [self StringFromNousData:value];
    }
    return show_inmateMsg;
}

//: selectedImage
+ (NSString *)userTightenKey {
    /* static */ NSString *userTightenKey = nil;
    if (!userTightenKey) {
		NSString *origin = @"0D2D0AFB5CC2193FADAAA092999290A19291769A8E94927C";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userTightenKey = [self StringFromNousData:value];
    }
    return userTightenKey;
}

//: badgeValue
+ (NSString *)mainScapeMessage {
    /* static */ NSString *mainScapeMessage = nil;
    if (!mainScapeMessage) {
		NSString *origin = @"0A06094B40C30143BC68676A6D6B5C67727B6B4F";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainScapeMessage = [self StringFromNousData:value];
    }
    return mainScapeMessage;
}

//: icon_message_normal
+ (NSString *)appDoorwayRecommendValue {
    /* static */ NSString *appDoorwayRecommendValue = nil;
    if (!appDoorwayRecommendValue) {
		NSString *origin = @"1342063765E0ABA5B1B0A1AFA7B5B5A3A9A7A1B0B1B4AFA3AEA1";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appDoorwayRecommendValue = [self StringFromNousData:value];
    }
    return appDoorwayRecommendValue;
}

//: icon_setting_pressed
+ (NSString *)app_enemyName {
    /* static */ NSString *app_enemyName = nil;
    if (!app_enemyName) {
		NSString *origin = @"14040D92022380BB60109F800C6D67737263776978786D726B6374766977776968C4";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_enemyName = [self StringFromNousData:value];
    }
    return app_enemyName;
}

//: icon_discovery_pressed
+ (NSString *)show_numberUrl {
    /* static */ NSString *show_numberUrl = nil;
    if (!show_numberUrl) {
		NSString *origin = @"161A03837D8988797E838D7D89907F8C93798A8C7F8D8D7F7E75";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_numberUrl = [self StringFromNousData:value];
    }
    return show_numberUrl;
}

//: KEKENotificationLanguageChanged
+ (NSString *)mainRedPath {
    /* static */ NSString *mainRedPath = nil;
    if (!mainRedPath) {
		NSString *origin = @"1F3C0425878187818AABB0A5A2A59F9DB0A5ABAA889DAAA3B19DA3A17FA49DAAA3A1A0B1";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainRedPath = [self StringFromNousData:value];
    }
    return mainRedPath;
}

//: #A3A3A3
+ (NSString *)showPinPathStr {
    /* static */ NSString *showPinPathStr = nil;
    if (!showPinPathStr) {
		NSString *origin = @"07330B63495E66E026483A56746674667466F0";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showPinPathStr = [self StringFromNousData:value];
    }
    return showPinPathStr;
}

//: #02D8C9
+ (NSString *)app_backgroundResentIdent {
    /* static */ NSString *app_backgroundResentIdent = nil;
    if (!app_backgroundResentIdent) {
		NSString *origin = @"070A032D3A3C4E424D4303";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_backgroundResentIdent = [self StringFromNousData:value];
    }
    return app_backgroundResentIdent;
}

//: title
+ (NSString *)dream_electronText {
    /* static */ NSString *dream_electronText = nil;
    if (!dream_electronText) {
		NSString *origin = @"05330A6FA3CA11142718A79CA79F98FE";
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_electronText = [self StringFromNousData:value];
    }
    return dream_electronText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MainTabController.m
//  NIMDemo
//
//  Created by chris on 15/2/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMainTabController.h"
#import "LightGreenViewController.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "NTESSessionListViewController.h"
#import "ExecutiveSessionViewController.h"
//: #import "UIImage+NTESColor.h"
#import "UIImage+Message.h"
//: #import "NTESCustomNotificationDB.h"
#import "AppDb.h"
//: #import "NTESNotificationCenter.h"
#import "CanLabel.h"
//: #import "NTESNavigationHandler.h"
#import "VisualizationLabel.h"
//: #import "NTESNavigationAnimator.h"
#import "DataAnimator.h"
//: #import "NTESBundleSetting.h"
#import "EnvironmentSetting.h"
//: #import "CCCContactsViewController.h"
#import "OffViewController.h"
//: #import "NTESMainCenterViewController.h"
#import "BackgroundViewController.h"
//: #import "DisCorveyViewController.h"
#import "EnableSendViewController.h"
//: #import "Reachability.h"
#import "Reachability.h"

//: typedef NS_ENUM(NSInteger,NTESMainTabType) {
typedef NS_ENUM(NSInteger,NTESMainTabType) {
    //: NTESMainTabTypeMessageList, 
    NTESMainTabTypeMessageList, //聊天
    //: NTESMainTabTypeChatroomList, 
    NTESMainTabTypeChatroomList, //聊天室
    //: NTESMainTabTypeContact, 
    NTESMainTabTypeContact, //通讯录
    //: NTESMainTabTypeSetting, 
    NTESMainTabTypeSetting, //设置
//: };
};



//: @interface NTESMainTabController ()<NIMSystemNotificationManagerDelegate,NIMConversationManagerDelegate,NIMChatManagerDelegate,NIMLoginManagerDelegate,UITabBarControllerDelegate>
@interface LightGreenViewController ()<NIMSystemNotificationManagerDelegate,NIMConversationManagerDelegate,NIMChatManagerDelegate,NIMLoginManagerDelegate,UITabBarControllerDelegate>

//: @property (nonatomic,strong) NSArray *navigationHandlers;
@property (nonatomic,strong) NSArray *navigationHandlers;

//: @property (nonatomic,strong) NTESNavigationAnimator *animator;
@property (nonatomic,strong) DataAnimator *animator;

//: @property (nonatomic,assign) NSInteger sessionUnreadCount;
@property (nonatomic,assign) NSInteger sessionUnreadCount;

//: @property (nonatomic,assign) NSInteger systemUnreadCount;
@property (nonatomic,assign) NSInteger systemUnreadCount;

//: @property (nonatomic,assign) NSInteger customSystemUnreadCount;
@property (nonatomic,assign) NSInteger customSystemUnreadCount;

//: @property (nonatomic,copy) NSDictionary *configs;
@property (nonatomic,copy) NSDictionary *configs;

//: @end
@end

//: @implementation NTESMainTabController
@implementation LightGreenViewController

//: + (instancetype)instance{
+ (instancetype)item{
    //: AppDelegate *delegete = (AppDelegate *)[UIApplication sharedApplication].delegate;
    AppDelegate *delegete = (AppDelegate *)[UIApplication sharedApplication].delegate;
    //: UIViewController *vc = delegete.window.rootViewController;
    UIViewController *vc = delegete.window.rootViewController;
    //: if ([vc isKindOfClass:[NTESMainTabController class]]) {
    if ([vc isKindOfClass:[LightGreenViewController class]]) {
        //: return (NTESMainTabController *)vc;
        return (LightGreenViewController *)vc;
    //: }else{
    }else{
        //: return nil;
        return nil;
    }
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: [self setUpSubNav];
    [self low];
    //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];

    //: extern NSString *NTESCustomNotificationCountChanged;
    extern NSString *NTESCustomNotificationCountChanged;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onCustomNotifyChanged:) name:NTESCustomNotificationCountChanged object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(framing:) name:NTESCustomNotificationCountChanged object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(contented:) name:[NousData mainRedPath] object:nil];

    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#A3A3A3"]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor status:[NousData showPinPathStr]]} forState:UIControlStateNormal];
    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#02D8C9"]} forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor status:[NousData app_backgroundResentIdent]]} forState:UIControlStateSelected];

    //: if (@available(iOS 18, *)) {
    if (@available(iOS 18, *)) {
        //: self.delegate = self;
        self.delegate = self;
    }

    //: [self setupNetworkObserver];
    [self limit];
}

//: - (void)setupNetworkObserver {
- (void)limit {
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(networkChanged:)
                                             selector:@selector(toSessionInfo:)
                                                 //: name:kReachabilityChangedNotification
                                                 name:kReachabilityChangedNotification
                                               //: object:nil];
                                               object:nil];
    //: Reachability *reachability = [Reachability reachabilityForInternetConnection];
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    //: [reachability startNotifier];
    [reachability startNotifier];
}

//: - (void)networkChanged:(NSNotification *)note {
- (void)toSessionInfo:(NSNotification *)note {
    //: Reachability *reachability = [note object];
    Reachability *reachability = [note object];
    //: if ([reachability currentReachabilityStatus] != NotReachable) {
    if ([reachability currentReachabilityStatus] != NotReachable) {
        //: [[FFFConfig sharedConfig] fetchLatestDomainWithCompletion:^(BOOL success) {
        [[IndexTag ambit] keep:^(BOOL success) {
            //: if (success) {
            if (success) {
                //: NSLog(@"域名更新成功: %@", [[FFFConfig sharedConfig] getCurrentDomain]);
            //: } else {
            } else {
                //: NSLog(@"使用默认域名: %@", [[FFFConfig sharedConfig] getCurrentDomain]);
            }
        //: }]; 
        }]; // 网络恢复时更新域名
    }
}

//: - (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    //: [UIView setAnimationsEnabled:NO];
    [UIView setAnimationsEnabled:NO];
    //: return YES;
    return YES;
}
//: - (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    //: [UIView setAnimationsEnabled:YES];
    [UIView setAnimationsEnabled:YES];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];

    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#A3A3A3"]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor status:[NousData showPinPathStr]]} forState:UIControlStateNormal];
    //: [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#02D8C9"]} forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor status:[NousData app_backgroundResentIdent]]} forState:UIControlStateSelected];


}

//: - (void)viewDidAppear:(BOOL)animated
- (void)viewDidAppear:(BOOL)animated
{
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];
    //会话界面发送拍摄的视频，拍摄结束后点击发送后可能顶部会有红条，导致的界面错位。
    //: self.view.frame = [UIScreen mainScreen].bounds;
    self.view.frame = [UIScreen mainScreen].bounds;
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (NSArray*)tabbars{
- (NSArray*)sendOn{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: NSMutableArray *items = [[NSMutableArray alloc] init];
    NSMutableArray *items = [[NSMutableArray alloc] init];

    //: [items addObject:@(0)];
    [items addObject:@(0)];
    //: [items addObject:@(1)];
    [items addObject:@(1)];
    //: [items addObject:@(2)];
    [items addObject:@(2)];
    //: [items addObject:@(3)];
    [items addObject:@(3)];
    //: return items;
    return items;
}

//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)languageChanged:(NSNotification *)noti {
- (void)contented:(NSNotification *)noti {
    //: [self setUpSubNav];
    [self low];


}


//: - (void)setUpSubNav{
- (void)low{
    //: NSMutableArray *handleArray = [[NSMutableArray alloc] init];
    NSMutableArray *handleArray = [[NSMutableArray alloc] init];
    //: NSMutableArray *vcArray = [[NSMutableArray alloc] init];
    NSMutableArray *vcArray = [[NSMutableArray alloc] init];
    //: [self.tabbars enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self.sendOn enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: NSDictionary * item =[self vcInfoForTabType:[obj integerValue]];
        NSDictionary * item =[self button:[obj integerValue]];
        //: NSString *vcName = item[@"vc"];
        NSString *vcName = item[@"vc"];
//        NSString *title  = item[TabbarTitle];
        //: NSString *title = @"";
        NSString *title = @"";
        //: if(idx == 0){
        if(idx == 0){
            //: title = [FFFLanguageManager getTextWithKey:@"activity_user_profile_chat"];
            title = [SendName streetSmart:[NousData show_inmateMsg]];
        //: }else if (idx == 1){
        }else if (idx == 1){
            //: title = [FFFLanguageManager getTextWithKey:@"discovery"];
            title = [SendName streetSmart:[NousData user_makeName]];
        //: }else if (idx == 2){
        }else if (idx == 2){
            //: title = [FFFLanguageManager getTextWithKey:@"contacts_list_title"];
            title = [SendName streetSmart:[NousData user_spouseStr]];
        //: }else if (idx == 3){
        }else if (idx == 3){
            //: title = [FFFLanguageManager getTextWithKey:@"main_tab_my"];
            title = [SendName streetSmart:[NousData user_doorwayPath]];
        }

        //: NSString *imageName = item[@"image"];
        NSString *imageName = item[[NousData mViewStr]];
        //: NSString *imageSelected = item[@"selectedImage"];
        NSString *imageSelected = item[[NousData userTightenKey]];
        //: Class clazz = NSClassFromString(vcName);
        Class clazz = NSClassFromString(vcName);
        //: UIViewController *vc = [[clazz alloc] initWithNibName:nil bundle:nil];
        UIViewController *vc = [[clazz alloc] initWithNibName:nil bundle:nil];
        //: vc.hidesBottomBarWhenPushed = NO;
        vc.hidesBottomBarWhenPushed = NO;
        //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];

        //: UIImage *normalImage = [UIImage imageNamed:imageName];
        UIImage *normalImage = [UIImage imageNamed:imageName];
        //: normalImage = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        normalImage = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //: UIImage *selectImage = [UIImage imageNamed:imageSelected];
        UIImage *selectImage = [UIImage imageNamed:imageSelected];
        //: selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

        //: nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title
        nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title
                                                       //: image:normalImage
                                                       image:normalImage
                                               //: selectedImage:selectImage];
                                               selectedImage:selectImage];
        //: nav.tabBarItem.tag = idx;
        nav.tabBarItem.tag = idx;
        //: NSInteger badge = [item[@"badgeValue"] integerValue];
        NSInteger badge = [item[[NousData mainScapeMessage]] integerValue];
        //: if (badge) {
        if (badge) {
            //: nav.tabBarItem.badgeValue = [NSString stringWithFormat:@"%zd",badge];
            nav.tabBarItem.badgeValue = [NSString stringWithFormat:@"%zd",badge];
        }
        //: NTESNavigationHandler *handler = [[NTESNavigationHandler alloc] initWithNavigationController:nav];
        VisualizationLabel *handler = [[VisualizationLabel alloc] initWith:nav];
        //: nav.delegate = handler;
        nav.delegate = handler;

        //: if (@available(iOS 15.0, *)) {
        if (@available(iOS 15.0, *)) {

            //: NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor whiteColor],
            NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor whiteColor],
                                  //: NSFontAttributeName : [UIFont boldSystemFontOfSize:11]};
                                  NSFontAttributeName : [UIFont boldSystemFontOfSize:11]};

            //: UINavigationBarAppearance *barApp = [UINavigationBarAppearance new];
            UINavigationBarAppearance *barApp = [UINavigationBarAppearance new];
            //: barApp.backgroundColor = [UIColor colorWithHexString:@"#A148FF"];
            barApp.backgroundColor = [UIColor status:[NousData notiIndicationValue]];
            //: barApp.shadowColor = [UIColor colorWithHexString:@"#A148FF"];
            barApp.shadowColor = [UIColor status:[NousData notiIndicationValue]];
            //: barApp.titleTextAttributes = dic;
            barApp.titleTextAttributes = dic;

            //: nav.navigationBar.scrollEdgeAppearance = barApp;
            nav.navigationBar.scrollEdgeAppearance = barApp;
            //: nav.navigationBar.standardAppearance = barApp;
            nav.navigationBar.standardAppearance = barApp;
        }

        //: [vcArray addObject:nav];
        [vcArray addObject:nav];
        //: [handleArray addObject:handler];
        [handleArray addObject:handler];
    //: }];
    }];
    //: self.viewControllers = [NSArray arrayWithArray:vcArray];
    self.viewControllers = [NSArray arrayWithArray:vcArray];
    //: self.navigationHandlers = [NSArray arrayWithArray:handleArray];
    self.navigationHandlers = [NSArray arrayWithArray:handleArray];


    //: UINavigationBar *navBar = [UINavigationBar appearance];
    UINavigationBar *navBar = [UINavigationBar appearance];

    //: NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor blackColor],
    NSDictionary *dic = @{NSForegroundColorAttributeName : [UIColor blackColor],
                          //: NSFontAttributeName : [UIFont boldSystemFontOfSize:16]};
                          NSFontAttributeName : [UIFont boldSystemFontOfSize:16]};

    //: navBar.barTintColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionVertical]];
    navBar.barTintColor = [UIColor colorWithPatternImage:[ColorSort center:[UIColor status:[NousData showEnemyResentKey]] name:[UIColor status:[NousData appDrivewayText]] sendGradientDirection:SNLinearGradientDirectionVertical]];
    //: [navBar setTitleTextAttributes:dic];
    [navBar setTitleTextAttributes:dic];
    //: [navBar setShadowImage:[UIImage new]];
    [navBar setShadowImage:[UIImage new]];
    //: [navBar setBackgroundImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];
    [navBar setBackgroundImage:[ColorSort center:[UIColor status:[NousData showEnemyResentKey]] name:[UIColor status:[NousData appDrivewayText]] sendGradientDirection:SNLinearGradientDirectionLevel] forBarMetrics:UIBarMetricsDefault];

    //: navBar.translucent = YES;
    navBar.translucent = YES;
    //: navBar.tintColor = [UIColor grayColor];
    navBar.tintColor = [UIColor grayColor];

//    self.tabBar.backgroundColor = [UIColor colorWithPatternImage:[ColorSort getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionVertical]];
    //: self.tabBar.backgroundColor = [UIColor whiteColor];
    self.tabBar.backgroundColor = [UIColor whiteColor];
    //: self.tabBar.barTintColor = [UIColor blackColor];
    self.tabBar.barTintColor = [UIColor blackColor];
    //: self.tabBar.backgroundImage = [UIImage new];
    self.tabBar.backgroundImage = [UIImage new];
    //: self.tabBar.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [UIScreen mainScreen].bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
    self.tabBar.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [UIScreen mainScreen].bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
//    self.tabBar.layer.cornerRadius = (49/2);
    //: self.tabBar.translucent = YES;
    self.tabBar.translucent = YES;
    //: self.tabBar.layer.shadowColor = [UIColor blackColor].CGColor;
    self.tabBar.layer.shadowColor = [UIColor blackColor].CGColor;
    //: self.tabBar.layer.shadowOpacity = 0.05; 
    self.tabBar.layer.shadowOpacity = 0.05; // 透明度 5%
    //: self.tabBar.layer.shadowOffset = CGSizeMake(0, -3);
    self.tabBar.layer.shadowOffset = CGSizeMake(0, -3);
    //: self.tabBar.layer.shadowRadius = 5;
    self.tabBar.layer.shadowRadius = 5;
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
    //防止UITabbar上跳，这里重置一下
    //: self.tabBar.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [UIScreen mainScreen].bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
    self.tabBar.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49), [UIScreen mainScreen].bounds.size.width, (({ BOOL isPhoneX = NO; if (@available(iOS 11.0, *)) { isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0; } isPhoneX;}) ? 49 + 35 : 49));
//    self.tabBar.frame = CGRectMake(20, UIScreenHeight - UITabbarHeight, UIScreenWidth-40, 49);
}

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//: - (void)didAddRecentSession:(NIMRecentSession *)recentSession
- (void)didAddRecentSession:(NIMRecentSession *)recentSession
           //: totalUnreadCount:(NSInteger)totalUnreadCount{
           totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self selectSize];
}


//: - (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount{
              totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self selectSize];
}

//: - (void)didUpdateUnreadCountDic:(NSDictionary *)unreadCountDic
- (void)didUpdateUnreadCountDic:(NSDictionary *)unreadCountDic
{
    //: NSLog(@"%@",unreadCountDic);
    //: NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];
    NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];
    //: self.sessionUnreadCount = unreadCount;
    self.sessionUnreadCount = unreadCount;
    //: [self refreshSessionBadge];
    [self selectSize];
}

//: - (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self selectSize];
}

//: - (void)messagesDeletedInSession:(NIMSession *)session{
- (void)messagesDeletedInSession:(NIMSession *)session{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self selectSize];
}

//: - (void)allMessagesDeleted{
- (void)allMessagesDeleted{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self selectSize];
}

//: - (void)allMessagesRead
- (void)allMessagesRead
{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self selectSize];
}

//: - (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
- (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self selectSize];
}

//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    //: self.systemUnreadCount = unreadCount;
    self.systemUnreadCount = unreadCount;
    //: [self refreshContactBadge];
    [self start];
}

//: #pragma mark - Notification
#pragma mark - Notification
//: - (void)onCustomNotifyChanged:(NSNotification *)notification
- (void)framing:(NSNotification *)notification
{
    //: NTESCustomNotificationDB *db = [NTESCustomNotificationDB sharedInstance];
    AppDb *db = [AppDb onCommon];
    //: self.customSystemUnreadCount = db.unreadCount;
    self.customSystemUnreadCount = db.unreadCount;
    //: [self refreshSettingBadge];
    [self page];
}

//: - (void)refreshSessionBadge{
- (void)selectSize{
    //: UINavigationController *nav = self.viewControllers[NTESMainTabTypeMessageList];
    UINavigationController *nav = self.viewControllers[NTESMainTabTypeMessageList];
    //: nav.tabBarItem.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
    nav.tabBarItem.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
}

//: - (void)refreshContactBadge{
- (void)start{
//    UINavigationController *nav = self.viewControllers[NTESMainTabTypeContact];
//    NSInteger badge = self.systemUnreadCount;
//    nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
}

//: - (void)refreshSettingBadge{
- (void)page{
    //: UINavigationController *nav = self.viewControllers[NTESMainTabTypeSetting];
    UINavigationController *nav = self.viewControllers[NTESMainTabTypeSetting];
    //: NSInteger badge = self.customSystemUnreadCount;
    NSInteger badge = self.customSystemUnreadCount;
    //: nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
    nav.tabBarItem.badgeValue = badge ? @(badge).stringValue : nil;
}


//: - (UIStatusBarStyle)preferredStatusBarStyle {
- (UIStatusBarStyle)preferredStatusBarStyle {
    //: return UIStatusBarStyleDefault;
    return UIStatusBarStyleDefault;
}


//: #pragma mark - Rotate
#pragma mark - Rotate

//: - (BOOL)shouldAutorotate{
- (BOOL)shouldAutorotate{
    //: BOOL enableRotate = [NTESBundleSetting sharedConfig].enableRotate;
    BOOL enableRotate = [EnvironmentSetting configLocation].allOrNone;
    //: return enableRotate ? [self.selectedViewController shouldAutorotate] : NO;
    return enableRotate ? [self.selectedViewController shouldAutorotate] : NO;
}

//: - (UIInterfaceOrientationMask)supportedInterfaceOrientations{
- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    //: BOOL enableRotate = [NTESBundleSetting sharedConfig].enableRotate;
    BOOL enableRotate = [EnvironmentSetting configLocation].allOrNone;
    //: return enableRotate ? [self.selectedViewController supportedInterfaceOrientations] : UIInterfaceOrientationMaskPortrait;
    return enableRotate ? [self.selectedViewController supportedInterfaceOrientations] : UIInterfaceOrientationMaskPortrait;
}


//: #pragma mark - VC
#pragma mark - VC
//: - (NSDictionary *)vcInfoForTabType:(NTESMainTabType)type{
- (NSDictionary *)button:(NTESMainTabType)type{

    //: if (_configs == nil)
    if (_configs == nil)
    {
        //: _configs = @{
        _configs = @{
                     //: @(NTESMainTabTypeMessageList) : @{
                     @(NTESMainTabTypeMessageList) : @{
                             //: @"vc" : @"NTESSessionListViewController",
                             @"vc" : @"ExecutiveSessionViewController",
                             //: @"title" : [FFFLanguageManager getTextWithKey:@"activity_user_profile_chat"],
                             [NousData dream_electronText] : [SendName streetSmart:[NousData show_inmateMsg]],
                             //: @"image" : @"icon_message_normal",
                             [NousData mViewStr] : [NousData appDoorwayRecommendValue],
                             //: @"selectedImage": @"icon_message_pressed",
                             [NousData userTightenKey]: [NousData dreamSeeContent],
                             //: @"badgeValue": @(self.sessionUnreadCount)
                             [NousData mainScapeMessage]: @(self.sessionUnreadCount)
                             //: },
                             },
                     //: @(NTESMainTabTypeChatroomList): @{
                     @(NTESMainTabTypeChatroomList): @{
                             //: @"vc" : @"DisCorveyViewController",
                             @"vc" : @"EnableSendViewController",
                             //: @"title" : [FFFLanguageManager getTextWithKey:@"discovery"],
                             [NousData dream_electronText] : [SendName streetSmart:[NousData user_makeName]],
                             //: @"image" : @"icon_discovery_normal",
                             [NousData mViewStr] : [NousData dream_redId],
                             //: @"selectedImage": @"icon_discovery_pressed",
                             [NousData userTightenKey]: [NousData show_numberUrl],
                             //: },
                             },
                     //: @(NTESMainTabTypeContact) : @{
                     @(NTESMainTabTypeContact) : @{
                             //: @"vc" : @"CCCContactsViewController",
                             @"vc" : @"OffViewController",
                             //: @"title" : [FFFLanguageManager getTextWithKey:@"contacts_list_title"],
                             [NousData dream_electronText] : [SendName streetSmart:[NousData user_spouseStr]],
                             //: @"image" : @"icon_contact_normal",
                             [NousData mViewStr] : [NousData app_crisisValue],
                             //: @"selectedImage": @"icon_contact_pressed",
                             [NousData userTightenKey]: [NousData show_idealKey],
                             //: },
                             },
                     //: @(NTESMainTabTypeSetting) : @{
                     @(NTESMainTabTypeSetting) : @{
                             //: @"vc" : @"NTESMainCenterViewController",
                             @"vc" : @"BackgroundViewController",
                             //: @"title" : [FFFLanguageManager getTextWithKey:@"main_tab_my"],
                             [NousData dream_electronText] : [SendName streetSmart:[NousData user_doorwayPath]],
                             //: @"image" : @"icon_setting_normal",
                             [NousData mViewStr] : [NousData m_seniorName],
                             //: @"selectedImage": @"icon_setting_pressed",
                             [NousData userTightenKey]: [NousData app_enemyName],
                             }
                     //: };
                     };

    }
    //: return _configs[@(type)];
    return _configs[@(type)];

}



//: @end
@end