// __DEBUG__
// __CLOSE_PRINT__
//
//  RearViewController.h
// Case
//
//  Created by Genning-Work on 2019/12/12.
//  Copyright © 2019 NetEase. All rights reserved.
//  群组操作

// __M_A_C_R_O__
//: #import "BusyTeamCardViewController.h"
#import "ReadOutViewController.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: #pragma mark - 外部配置项
#pragma mark - 外部配置项
//: @interface BusyTeamCardViewControllerOption : NSObject
@interface TextTagOption : NSObject

//: @property (nonatomic, assign) BOOL isTop;
@property (nonatomic, assign) BOOL isTop;

//: @end
@end

//: @interface BusyTeamCardOperationViewController : BusyTeamCardViewController
@interface RearViewController : ReadOutViewController

//外部配置
//: @property (nonatomic,strong) BusyTeamCardViewControllerOption *option;
@property (nonatomic,strong) TextTagOption *option;

//群组管理
//: @property (nonatomic,strong) BusyTeamListDataManager *teamListManager;
@property (nonatomic,strong) FindBaseballTeamManager *teamListManager;


//初始化
//: - (instancetype)initWithTeam:(NIMTeam *)team
- (instancetype)initWith:(NIMTeam *)team
                     //: session:(NIMSession *)session
                     scale:(NIMSession *)session
                      //: option:(BusyTeamCardViewControllerOption * _Nullable)option;
                      title:(TextTagOption * _Nullable)option;
//查询全部群成员
//: - (void)didFetchTeamMember:(nullable BusyMembersFetchOption *)option;
- (void)searched:(nullable DateRow *)option;

//加人
//: - (void)didInviteUsers:(NSArray<NSString *> *)userIds
- (void)nameShow:(NSArray<NSString *> *)userIds
            //: completion:(nullable dispatch_block_t)completion;
            independent:(nullable dispatch_block_t)completion;

//踢人
//: - (void)didKickUser:(NSString *)userId;
- (void)build:(NSString *)userId;

//更新群名称
//: - (void)didUpdateTeamName:(NSString *)name;
- (void)putUp:(NSString *)name;

//更新群昵称
//: - (void)didUpdateTeamNick:(NSString *)nick;
- (void)userShadow:(NSString *)nick;

//更新群公告
//: - (void)didUpdateTeamIntro:(NSString *)intro;
- (void)direction:(NSString *)intro;

//更新群禁言
//: - (void)didUpdateTeamMute:(BOOL)mute;
- (void)path:(BOOL)mute;

//更新群头像
//: - (void)didUpdateTeamAvatarWithType:(UIImagePickerControllerSourceType)type;
- (void)cry:(UIImagePickerControllerSourceType)type;

//更新群组验证方式
//: - (void)didupdateTeamJoinMode:(NIMTeamJoinMode)mode;
- (void)tip:(NIMTeamJoinMode)mode;

//更新邀请模式
//: - (void)didUpdateTeamInviteMode:(NIMTeamInviteMode)mode;
- (void)imageOf:(NIMTeamInviteMode)mode;

//更新被邀请模式
//: - (void)didUpdateTeamBeInviteMode:(NIMTeamBeInviteMode)mode;
- (void)state:(NIMTeamBeInviteMode)mode;

//更新群信息修改权限
//: - (void)didUpdateTeamInfoMode:(NIMTeamUpdateInfoMode)mode;
- (void)syncopateStyleModeView:(NIMTeamUpdateInfoMode)mode;

//更新群消息接受状态
//: - (void)didUpdateNotifiyState:(NIMTeamNotifyState)state;
- (void)contentFor:(NIMTeamNotifyState)state;

//转移群组
//: - (void)didOntransferToUser:(NSString *)userId leave:(BOOL)leave;
- (void)size:(NSString *)userId total:(BOOL)leave;

//退出群组
//: - (void)didQuitTeam;
- (void)diam;

//解散群组
//: - (void)didDismissTeam;
- (void)at;

//: - (void)reloadData;
- (void)isSession;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
