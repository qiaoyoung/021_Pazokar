// __DEBUG__
// __CLOSE_PRINT__
//
//  RowCenter.h
// Case
//
//  Created by Netease on 2019/6/17.
//  Copyright © 2019 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "BusyTeamCardMemberItem.h"
#import "HomegirlFormat.h"
//: #import "BusyMembersFetchOption.h"
#import "DateRow.h"

// __M_A_C_R_O__

//: typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
typedef void(^NIMTeamListDataBlock)(NSError * _Nullable error, NSString * _Nullable msg);
//: typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<BusyTeamCardMemberItem *> * _Nullable members);
typedef void(^NIMTeamMuteListDataBlock)(NSError * _Nullable error, NSMutableArray<HomegirlFormat *> * _Nullable members);
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: @protocol BusyTeamOperation <NSObject>
@protocol BubbleDeviceCustom <NSObject>

//加人
//: - (void)addUsers:(NSArray *)userIds
- (void)item:(NSArray *)userIds
            //: info:(NSDictionary *)info
            globule:(NSDictionary *)info
      //: completion:(NIMTeamListDataBlock)completion;
      towardMessageBackground:(NIMTeamListDataBlock)completion;

//踢人
//: - (void)kickUsers:(NSArray *)userIds
- (void)view:(NSArray *)userIds
       //: completion:(NIMTeamListDataBlock)completion;
       clear:(NIMTeamListDataBlock)completion;

//更新群公告
//: - (void)updateTeamAnnouncement:(NSString *)content
- (void)holder:(NSString *)content
                    //: completion:(NIMTeamListDataBlock)completion;
                    iconIndependent:(NIMTeamListDataBlock)completion;

//更新群头像
//: - (void)updateTeamAvatar:(NSString *)filePath
- (void)edgeCompletion:(NSString *)filePath
              //: completion:(NIMTeamListDataBlock)completion;
              fiveItemCompletion:(NIMTeamListDataBlock)completion;

//更新群名称
//: - (void)updateTeamName:(NSString *)name
- (void)send:(NSString *)name
            //: completion:(NIMTeamListDataBlock)completion;
            greenBottom:(NIMTeamListDataBlock)completion;

//更新群昵称
//: - (void)updateTeamNick:(NSString *)nick
- (void)blockCompletion:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            viewCompletion:(NIMTeamListDataBlock)completion;

//更新群简介
//: - (void)updateTeamIntro:(NSString *)intro
- (void)blue:(NSString *)intro
             //: completion:(NIMTeamListDataBlock)completion;
             withDataBlock:(NIMTeamListDataBlock)completion;

//更新群禁言
//: - (void)updateTeamMute:(BOOL)mute
- (void)info:(BOOL)mute
            //: completion:(NIMTeamListDataBlock)completion;
            tinkleDataBlock:(NIMTeamListDataBlock)completion;

//权限更改
//: - (void)updateTeamJoinMode:(NIMTeamJoinMode)mode
- (void)withAvailable:(NIMTeamJoinMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                moreCompletion:(NIMTeamListDataBlock)completion;

//邀请模式更改
//: - (void)updateTeamInviteMode:(NIMTeamInviteMode)mode
- (void)statusBy:(NIMTeamInviteMode)mode
                  //: completion:(NIMTeamListDataBlock)completion;
                  impressionDataBlock:(NIMTeamListDataBlock)completion;

//群信息修改权限更改
//: - (void)updateTeamInfoMode:(NIMTeamUpdateInfoMode)mode
- (void)label:(NIMTeamUpdateInfoMode)mode
                //: completion:(NIMTeamListDataBlock)completion;
                key:(NIMTeamListDataBlock)completion;

//群通知状态修改
//: - (void)updateTeamNotifyState:(NIMTeamNotifyState)state
- (void)origin:(NIMTeamNotifyState)state
                   //: completion:(NIMTeamListDataBlock)completion;
                   content:(NIMTeamListDataBlock)completion;

//被邀请模式更改
//: - (void)updateTeamBeInviteMode:(NIMTeamBeInviteMode)mode
- (void)television:(NIMTeamBeInviteMode)mode
                    //: completion:(NIMTeamListDataBlock)completion;
                    teamDataBlock:(NIMTeamListDataBlock)completion;

//增加管理员
//: - (void)addManagers:(NSArray *)userIds
- (void)phone:(NSArray *)userIds
         //: completion:(NIMTeamListDataBlock)completion;
         cell:(NIMTeamListDataBlock)completion;

//移除管理员
//: - (void)removeManagers:(NSArray *)userIds
- (void)name:(NSArray *)userIds
            //: completion:(NIMTeamListDataBlock)completion;
            removeAndColor:(NIMTeamListDataBlock)completion;

//群主转移
//: - (void)transferOwnerWithUserId:(NSString *)newOwnerId
- (void)bubbleByChecked:(NSString *)newOwnerId
                           //: leave:(BOOL)leave
                           array:(BOOL)leave
                      //: completion:(NIMTeamListDataBlock)completion;
                      atColorDataBlock:(NIMTeamListDataBlock)completion;

//修改用户昵称
//: - (void)updateUserNick:(NSString *)userId
- (void)quick:(NSString *)userId
                  //: nick:(NSString *)nick
                  cell:(NSString *)nick
            //: completion:(NIMTeamListDataBlock)completion;
            northwest:(NIMTeamListDataBlock)completion;

//修改用户禁言状态
//: - (void)updateUserMuteState:(NSString *)userId
- (void)green:(NSString *)userId
                       //: mute:(BOOL)mute
                       custom:(BOOL)mute
                 //: completion:(NIMTeamListDataBlock)completion;
                 stateDataBlock:(NIMTeamListDataBlock)completion;

//查询群成员
//: - (void)fetchTeamMembersWithOption:(BusyMembersFetchOption * _Nullable )option
- (void)read:(DateRow * _Nullable )option
                        //: completion:(NIMTeamListDataBlock)completion;
                        tap:(NIMTeamListDataBlock)completion;

//查询群禁言列表
//: - (void)fetchTeamMutedMembersCompletion:(NIMTeamMuteListDataBlock)completion;
- (void)image:(NIMTeamMuteListDataBlock)completion;

//退群
//: - (void)quitTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)containerCreate:(NIMTeamListDataBlock)completion;

//解散群
//: - (void)dismissTeamCompletion:(NIMTeamListDataBlock)completion;
- (void)dismissCompletion:(NIMTeamListDataBlock)completion;

//: @end
@end



//: @protocol BusyTeamMemberListDataSource <BusyTeamOperation>
@protocol RowCenter <BubbleDeviceCustom>

//: - (NIMTeam *)team;
- (NIMTeam *)length;

//: - (NIMSession *)session;
- (NIMSession *)session;

//: - (NSInteger)memberNumber;
- (NSInteger)cell;

//: - (NSMutableArray <BusyTeamCardMemberItem *> *)members;
- (NSMutableArray <HomegirlFormat *> *)signal;

//: - (BusyTeamCardMemberItem *)myCard;
- (HomegirlFormat *)byShow;

//: - (BusyTeamCardMemberItem *)memberWithUserId:(NSString *)userId;
- (HomegirlFormat *)memberTo:(NSString *)userId;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
