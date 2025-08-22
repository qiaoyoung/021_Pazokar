// __DEBUG__
// __CLOSE_PRINT__
//
//  EnvelopingTitle.h
// Case
//
//  Created by Genning-Work on 2019/12/11.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "MyUserKit.h"
#import "Case.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol BusyKitSelectCardData;
@protocol BusyKitSelectCardData;

//: @interface BusyTeamHelper : NSObject
@interface EnvelopingTitle : NSObject

//验证方式
//: + (NSString *)jonModeText:(NIMTeamJoinMode)mode;
+ (NSString *)bar:(NIMTeamJoinMode)mode;

//: + (NSMutableArray<id <BusyKitSelectCardData>> *)joinModeItemsWithSeleced:(NIMTeamJoinMode)mode;
+ (NSMutableArray<id <BusyKitSelectCardData>> *)unite:(NIMTeamJoinMode)mode;

//邀请模式
//: + (NSString *)InviteModeText:(NIMTeamInviteMode)mode;
+ (NSString *)user:(NIMTeamInviteMode)mode;

//: + (NSMutableArray<id <BusyKitSelectCardData>> *)InviteModeItemsWithSeleced:(NIMTeamInviteMode)mode;
+ (NSMutableArray<id <BusyKitSelectCardData>> *)pin:(NIMTeamInviteMode)mode;

//被邀请模式
//: + (NSArray<NSDictionary *> *)allBeInviteModes;
+ (NSArray<NSDictionary *> *)image;

//: + (NSString *)beInviteModeText:(NIMTeamBeInviteMode)mode;
+ (NSString *)onTitle:(NIMTeamBeInviteMode)mode;

//: + (NSMutableArray<id <BusyKitSelectCardData>> *)beInviteModeItemsWithSeleced:(NIMTeamBeInviteMode)mode;
+ (NSMutableArray<id <BusyKitSelectCardData>> *)messageRecord:(NIMTeamBeInviteMode)mode;

//信息修改权限
//: + (NSString *)updateInfoModeText:(NIMTeamUpdateInfoMode)mode;
+ (NSString *)imageNameText:(NIMTeamUpdateInfoMode)mode;

//: + (NSMutableArray<id <BusyKitSelectCardData>> *)updateInfoModeItemsWithSeleced:(NIMTeamUpdateInfoMode)mode;
+ (NSMutableArray<id <BusyKitSelectCardData>> *)bubbleSize:(NIMTeamUpdateInfoMode)mode;

//消息接受状态
//: + (NSString *)notifyStateText:(NIMTeamNotifyState)state;
+ (NSString *)closedSession:(NIMTeamNotifyState)state;

//: + (NSMutableArray<id <BusyKitSelectCardData>> *)notifyStateItemsWithSeleced:(NIMTeamNotifyState)state;
+ (NSMutableArray<id <BusyKitSelectCardData>> *)showAcross:(NIMTeamNotifyState)state;

//: + (NSMutableArray<id <BusyKitSelectCardData>> *)superNotifyStateItemsWithSeleced:(NIMTeamNotifyState)state;
+ (NSMutableArray<id <BusyKitSelectCardData>> *)with:(NIMTeamNotifyState)state;

//成员类型
//: + (NSString *)memberTypeText:(NIMTeamMemberType)type;
+ (NSString *)superstratum:(NIMTeamMemberType)type;

//: + (nullable UIImage *)imageWithMemberType:(NIMTeamMemberType)type;
+ (nullable UIImage *)smart:(NIMTeamMemberType)type;

//群禁言
//: + (NSString *)teamMuteText:(BOOL)isMute;
+ (NSString *)publication:(BOOL)isMute;

//: + (NSMutableArray<id <BusyKitSelectCardData>> *)teamMuteItemsWithSeleced:(BOOL)isMute;
+ (NSMutableArray<id <BusyKitSelectCardData>> *)reply:(BOOL)isMute;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
