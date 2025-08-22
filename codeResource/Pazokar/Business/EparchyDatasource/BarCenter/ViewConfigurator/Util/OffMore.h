// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMUtil.h
// Case
//
//  Created by chris on 15/8/10.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "BusyGlobalMacro.h"
#import "BusyGlobalMacro.h"

//: @interface BusyKitUtil : NSObject
@interface OffMore : NSObject

//: + (NSString *)showNick:(NSString *)uid inMessage:(NIMMessage *)message;
+ (NSString *)target:(NSString *)uid exist:(NIMMessage *)message;

//: + (NSString *)showNick:(NSString *)uid inSession:(NIMSession *)session;
+ (NSString *)smallness:(NSString *)uid flush:(NIMSession *)session;

//: + (NSString *)showTime:(NSTimeInterval)msglastTime showDetail:(BOOL)showDetail;
+ (NSString *)readShow:(NSTimeInterval)msglastTime voiceOver:(BOOL)showDetail;

//: + (NSString *)messageTipContent:(NIMMessage *)message;
+ (NSString *)impanel:(NIMMessage *)message;

//: + (NSString *)durationTextWithSeconds:(NSTimeInterval)seconds;
+ (NSString *)ting:(NSTimeInterval)seconds;

//: + (BOOL)canEditTeamInfo:(NIMTeamMember *)member;
+ (BOOL)complete:(NIMTeamMember *)member;

//: + (BOOL)canInviteMemberToTeam:(NIMTeamMember *)member;
+ (BOOL)include:(NIMTeamMember *)member;

//: + (BOOL)canEditSuperTeamInfo:(NIMTeamMember *)member;
+ (BOOL)varsity:(NIMTeamMember *)member;

//: + (BOOL)canInviteMemberToSuperTeam:(NIMTeamMember *)member;
+ (BOOL)name:(NIMTeamMember *)member;

//: @end
@end
