
#import <Foundation/Foundation.h>

typedef struct {
    Byte heapPerceive;
    Byte *light;
    unsigned int instead;
	int categorize;
	int virusBoar;
} StructMaleData;

@interface MaleData : NSObject

@end

@implementation MaleData

+ (NSData *)MaleDataToData:(NSString *)value {
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

+ (Byte *)MaleDataToByte:(StructMaleData *)data {
    for (int i = 0; i < data->instead; i++) {
        data->light[i] ^= data->heapPerceive;
    }
    data->light[data->instead] = 0;
	if (data->instead >= 2) {
		data->categorize = data->light[0];
		data->virusBoar = data->light[1];
	}
    return data->light;
}

+ (NSString *)StringFromMaleData:(StructMaleData *)data {
    return [NSString stringWithUTF8String:(char *)[self MaleDataToByte:data]];
}

//: 邀请你加入超大群
+ (NSString *)m_oofCitizenshipPath {
    /* static */ NSString *m_oofCitizenshipPath = nil;
    if (!m_oofCitizenshipPath) {
		NSString *origin = @"acc7c5adeaf2a1f8e5a0cfe5a0c0e0adf3c0a0e1e2a2fbe12f";
		NSData *data = [MaleData MaleDataToData:origin];
        StructMaleData value = (StructMaleData){69, (Byte *)data.bytes, 24, 158, 102};
        m_oofCitizenshipPath = [self StringFromMaleData:&value];
    }
    return m_oofCitizenshipPath;
}

//: group_info_activity_update_failed
+ (NSString *)user_towerIdent {
    /* static */ NSString *user_towerIdent = nil;
    if (!user_towerIdent) {
		NSString *origin = @"7065786267487e797178487674637e617e636e486267737663724871767e7b72731e";
		NSData *data = [MaleData MaleDataToData:origin];
        StructMaleData value = (StructMaleData){23, (Byte *)data.bytes, 33, 47, 10};
        user_towerIdent = [self StringFromMaleData:&value];
    }
    return user_towerIdent;
}

//: 邀请你加入高级群
+ (NSString *)mainAheadSoundMsg {
    /* static */ NSString *mainAheadSoundMsg = nil;
    if (!mainAheadSoundMsg) {
		NSString *origin = @"98f3f199dec695ccd194fbd194f4d498dae996cbd696cfd537";
		NSData *data = [MaleData MaleDataToData:origin];
        StructMaleData value = (StructMaleData){113, (Byte *)data.bytes, 24, 80, 172};
        mainAheadSoundMsg = [self StringFromMaleData:&value];
    }
    return mainAheadSoundMsg;
}

//: jpg
+ (NSString *)k_mallText {
    /* static */ NSString *k_mallText = nil;
    if (!k_mallText) {
		NSString *origin = @"4f554236";
		NSData *data = [MaleData MaleDataToData:origin];
        StructMaleData value = (StructMaleData){37, (Byte *)data.bytes, 3, 228, 17};
        k_mallText = [self StringFromMaleData:&value];
    }
    return k_mallText;
}

//: postscript
+ (NSString *)kDetectValue {
    /* static */ NSString *kDetectValue = nil;
    if (!kDetectValue) {
		NSString *origin = @"627d61666171607b626632";
		NSData *data = [MaleData MaleDataToData:origin];
        StructMaleData value = (StructMaleData){18, (Byte *)data.bytes, 10, 229, 105};
        kDetectValue = [self StringFromMaleData:&value];
    }
    return kDetectValue;
}

//: 邀请你加入讨论组
+ (NSString *)main_idealValue {
    /* static */ NSString *main_idealValue = nil;
    if (!main_idealValue) {
		NSString *origin = @"83e8ea82c5dd8ed7ca8fe0ca8fefcf82c4c282c4d08dd1ee07";
		NSData *data = [MaleData MaleDataToData:origin];
        StructMaleData value = (StructMaleData){106, (Byte *)data.bytes, 24, 1, 162};
        main_idealValue = [self StringFromMaleData:&value];
    }
    return main_idealValue;
}

//: 扩展消息
+ (NSString *)dream_creatureMsg {
    /* static */ NSString *dream_creatureMsg = nil;
    if (!dream_creatureMsg) {
		NSString *origin = @"c1ae8ec296b2c191afc1a68885";
		NSData *data = [MaleData MaleDataToData:origin];
        StructMaleData value = (StructMaleData){39, (Byte *)data.bytes, 12, 225, 9};
        dream_creatureMsg = [self StringFromMaleData:&value];
    }
    return dream_creatureMsg;
}

//: attach
+ (NSString *)userHaoName {
    /* static */ NSString *userHaoName = nil;
    if (!userHaoName) {
		NSString *origin = @"6b7e7e6b6962de";
		NSData *data = [MaleData MaleDataToData:origin];
        StructMaleData value = (StructMaleData){10, (Byte *)data.bytes, 6, 90, 191};
        userHaoName = [self StringFromMaleData:&value];
    }
    return userHaoName;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  RearViewController.m
// Case
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyTeamCardOperationViewController.h"
#import "RearViewController.h"
//: #import "BusyKitProgressHUD.h"
#import "KitEffectView.h"
//: #import "BusyKitDependency.h"
#import "BusyKitDependency.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Case.h"
//: #import "NTESSessionMsgConverter.h"
#import "PraiseConverter.h"

//: @implementation BusyTeamCardOperationViewController
@implementation RearViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (instancetype)initWithTeam:(NIMTeam *)team
- (instancetype)initWith:(NIMTeam *)team
                     //: session:(NIMSession *)session
                     scale:(NIMSession *)session
                      //: option:(BusyTeamCardViewControllerOption *)option {
                      title:(TextTagOption *)option {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _option = option;
        _option = option;
        //: _teamListManager = [[BusyTeamListDataManager alloc] initWithTeam:team session:session];
        _teamListManager = [[FindBaseballTeamManager alloc] initWithTutorial:team dislodge:session];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamInfoUpdate:) name:kNIMTeamListDataTeamInfoUpdate object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(translates:) name:dream_sizeCustomUrl object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(teamMemberUpdate:) name:kNIMTeamListDataTeamMembersChanged object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(frothsed:) name:show_errorIdent object:nil];
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: BusyMembersFetchOption *option = [[BusyMembersFetchOption alloc] init];
    DateRow *option = [[DateRow alloc] init];
    //: option.isRefresh = YES;
    option.isRefresh = YES;
    //: option.offset = 0;
    option.offset = 0;
    //: option.count = (10);
    option.count = (10);
    //: [self didFetchTeamMember:option];
    [self searched:option];
}

//: - (void)reloadData {
- (void)isSession {
    //: [self reloadTableHeaderData];
    [self change];
    //: [self reloadTableViewData];
    [self limitData];
    //: [self reloadOtherData];
    [self off];
}

//: - (void)didFetchTeamMember:(BusyMembersFetchOption *)option {
- (void)searched:(DateRow *)option {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self.teamListManager fetchTeamMembersWithOption:option
    [self.teamListManager read:option
                                          //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                                          tap:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself isSession];
        }
        //: [wself showToastMsg:msg];
        [wself signature:msg];
    //: }];
    }];
}

//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)nameShow:(NSArray<NSString *> *)userIds
            //: completion:(dispatch_block_t)completion {
            independent:(dispatch_block_t)completion {

    //: if (userIds.count == 0) {
    if (userIds.count == 0) {
        //: return;
        return;
    }

    //: NSMutableDictionary *info = [NSMutableDictionary dictionary];
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    //: info[@"attach"] = @"扩展消息";
    info[[MaleData userHaoName]] = [MaleData dream_creatureMsg];
    //: switch (_teamListManager.team.type) {
    switch (_teamListManager.team.type) {
        //: case NIMTeamTypeNormal:
        case NIMTeamTypeNormal:
            //: info[@"postscript"] = @"邀请你加入讨论组".nim_localized;
            info[[MaleData kDetectValue]] = [MaleData main_idealValue].maxColor;
            //: break;
            break;
        //: case NIMTeamTypeAdvanced:
        case NIMTeamTypeAdvanced:
            //: info[@"postscript"] = @"邀请你加入高级群".nim_localized;
            info[[MaleData kDetectValue]] = [MaleData mainAheadSoundMsg].maxColor;
            //: break;
            break;
        //: case NIMTeamTypeSuper:
        case NIMTeamTypeSuper:
            //: info[@"postscript"] = @"邀请你加入超大群".nim_localized;
            info[[MaleData kDetectValue]] = [MaleData m_oofCitizenshipPath].maxColor;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self.teamListManager addUsers:userIds info:info completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager item:userIds globule:info towardMessageBackground:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself change];
        }
        //: [wself showToastMsg:msg];
        [wself signature:msg];
        //: if (completion) {
        if (completion) {
            //: completion();
            completion();
        }
    //: }];
    }];
}

//: - (void)didKickUser:(NSString *)userId {
- (void)build:(NSString *)userId {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self.teamListManager kickUsers:@[userId] completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager view:@[userId] clear:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: if (!error) {
        if (!error) {
            //: [wself reloadTableHeaderData];
            [wself change];
        }
        //: [wself showToastMsg:msg];
        [wself signature:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamName:(NSString *)name {
- (void)putUp:(NSString *)name {
    //: if (!name) {
    if (!name) {
        //: return;
        return;
    }
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self.teamListManager updateTeamName:name
    [self.teamListManager send:name
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              greenBottom:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: if (!error) {
        if (!error) {
            //: [wself reloadData];
            [wself isSession];
        }
        //: [wself showToastMsg:msg];
        [wself signature:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamNick:(NSString *)nick{
- (void)userShadow:(NSString *)nick{
    //: if (!nick) {
    if (!nick) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self.teamListManager updateTeamNick:nick
    [self.teamListManager blockCompletion:nick
                              //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                              viewCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf isSession];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf signature:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamIntro:(NSString *)intro{
- (void)direction:(NSString *)intro{
    //: if (!intro) {
    if (!intro) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self.teamListManager updateTeamIntro:intro completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager blue:intro withDataBlock:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf isSession];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf signature:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamMute:(BOOL)mute {
- (void)path:(BOOL)mute {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self.teamListManager updateTeamMute:mute
    [self.teamListManager info:mute
                              //: completion:^(NSError * _Nullable error, NSString * _Nullable msg) {
                              tinkleDataBlock:^(NSError * _Nullable error, NSString * _Nullable msg) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf isSession];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf signature:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type {
- (void)cry:(UIImagePickerControllerSourceType)type {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self showImagePicker:type completion:^(UIImage * _Nonnull image) {
    [self title:type find:^(UIImage * _Nonnull image) {
        //: [weakSelf uploadImage:image];
        [weakSelf join:image];
    //: }];
    }];
}

//: - (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode {
- (void)tip:(NIMTeamJoinMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self.teamListManager updateTeamJoinMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager withAvailable:mode moreCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf isSession];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf signature:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode {
- (void)imageOf:(NIMTeamInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self.teamListManager updateTeamInviteMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager statusBy:mode impressionDataBlock:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf isSession];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf signature:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode {
- (void)state:(NIMTeamBeInviteMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self.teamListManager updateTeamBeInviteMode:mode
    [self.teamListManager television:mode
                                      //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                      teamDataBlock:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf isSession];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf signature:msg];
    //: }];
    }];
}

//: - (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode {
- (void)syncopateStyleModeView:(NIMTeamUpdateInfoMode)mode {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self.teamListManager updateTeamInfoMode:mode completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager label:mode key:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadData];
            [weakSelf isSession];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf signature:msg];
    //: }];
    }];
}

//: - (void)didUpdateNotifiyState:(NIMTeamNotifyState)state {
- (void)contentFor:(NIMTeamNotifyState)state {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self.teamListManager updateTeamNotifyState:state completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager origin:state content:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: if (!error) {
        if (!error) {
            //: [weakSelf reloadTableViewData];
            [weakSelf limitData];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf signature:msg];
    //: }];
    }];
}

//: - (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave {
- (void)size:(NSString *)userId total:(BOOL)leave {
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self.teamListManager transferOwnerWithUserId:userId
    [self.teamListManager bubbleByChecked:userId
                                         //: leave:leave
                                         array:leave
                                    //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                                    atColorDataBlock:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: if (leave) {
        if (leave) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];
        //: }else{
        }else{
            //: [self reloadData];
            [self isSession];
        }
        //: [self showToastMsg:msg];
        [self signature:msg];
    //: }];
    }];
}

//: - (void)didDismissTeam{
- (void)at{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self.teamListManager dismissTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager dismissCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: if (!error) {
        if (!error) {
            //: [weakSelf.navigationController popToRootViewControllerAnimated:YES];
            [weakSelf.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [weakSelf showToastMsg:msg];
        [weakSelf signature:msg];
    //: }];
    }];
}

//: - (void)didQuitTeam{
- (void)diam{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self.teamListManager quitTeamCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
    [self.teamListManager containerCreate:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: if (!error) {
        if (!error) {
            //: [wself.navigationController popToRootViewControllerAnimated:YES];
            [wself.navigationController popToRootViewControllerAnimated:YES];
        }
        //: [wself showToastMsg:msg];
        [wself signature:msg];
    //: }];
    }];
}

//: #pragma mark - Notication
#pragma mark - Notication
//: - (void)teamInfoUpdate:(NSNotification *)note {
- (void)translates:(NSNotification *)note {
    //: [self reloadData];
    [self isSession];
}

//: - (void)teamMemberUpdate:(NSNotification *)note {
- (void)frothsed:(NSNotification *)note {

    //: [self reloadData];
    [self isSession];
//    [self loadTeamManageList];

}

//: - (void)loadTeamManageList
- (void)container
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
            //: if (members.count>20) {
            if (members.count>20) {

                //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.teamListManager.team.teamId completion:^(NSError *error){
                [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.teamListManager.team.teamId completion:^(NSError *error){

                 //: }];
                 }];

            //: }else{
            }else{
//                [self didUpdateNotifiyState:NIMTeamNotifyStateAll];
                //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.teamListManager.team.teamId completion:^(NSError *error){
                [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.teamListManager.team.teamId completion:^(NSError *error){

                 //: }];
                 }];
            }
            //: [self reloadData];
            [self isSession];
        //: }else{
        }else{
            //: NSLog(@"error:%@",error);
        }
    //: }];
    }];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)uploadImage:(UIImage *)image {
- (void)join:(UIImage *)image {
    //: UIImage *imageForAvatarUpload = [image nim_imageForAvatarUpload];
    UIImage *imageForAvatarUpload = [image doseUpload];
    //: NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:[MaleData k_mallText]];
    //: NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [BusyKitProgressHUD show];
        [KitEffectView nim];
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        [self.teamListManager edgeCompletion:filePath fiveItemCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
            //: [BusyKitProgressHUD dismiss];
            [KitEffectView area];
            //: if (!error) {
            if (!error) {
                //: NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
                NSString *urlString = weakSelf.teamListManager.team.avatarUrl;
                //: SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                SDWebImageManager *sdManager = [SDWebImageManager sharedManager];
                //: [sdManager.imageCache storeImage:imageForAvatarUpload
                [sdManager.imageCache storeImage:imageForAvatarUpload
                                       //: imageData:data
                                       imageData:data
                                          //: forKey:urlString
                                          forKey:urlString
                                       //: cacheType:SDImageCacheTypeAll
                                       cacheType:SDImageCacheTypeAll
                                      //: completion:nil];
                                      completion:nil];
                //: [wself reloadTableHeaderData];
                [wself change];
            }
            //: [wself showToastMsg:msg];
            [wself signature:msg];
        //: }];
        }];
    //: } else {
    } else {
        //: [wself showToastMsg:[BusyLanguageManager getTextWithKey:@"group_info_activity_update_failed"]];
        [wself signature:[SendName streetSmart:[MaleData user_towerIdent]]];
    }
}

//: @end
@end

//: @implementation BusyTeamCardViewControllerOption
@implementation TextTagOption

//: @end
@end
