// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamMemberCardViewController.h
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "BusyTeamCardMemberItem.h"
#import "HomegirlFormat.h"
//: #import "BusyTeamMemberListDataSource.h"
#import "RowCenter.h"
//: #import "BusyTeamListDataManager.h"
#import "FindBaseballTeamManager.h"

//: @protocol NIMTeamMemberCardActionDelegate <NSObject>
@protocol TradingCardDate <NSObject>
//: @optional
@optional

//: - (void)onTeamMemberMuted:(BusyTeamCardMemberItem *)member mute:(BOOL)mute;
- (void)send:(HomegirlFormat *)member comment:(BOOL)mute;
//: - (void)onTeamMemberKicked:(BusyTeamCardMemberItem *)member;
- (void)interval:(HomegirlFormat *)member;

//: @end
@end

//: @interface BusyTeamMemberCardViewController : UIViewController
@interface FindViewController : UIViewController

//: @property (nonatomic, strong) id<NIMTeamMemberCardActionDelegate> delegate;
@property (nonatomic, strong) id<TradingCardDate> delegate;

//: @property (nonatomic, strong) BusyTeamListDataManager *teamListManager;
@property (nonatomic, strong) FindBaseballTeamManager *teamListManager;
//: @property (nonatomic, strong) NSString *memberId;
@property (nonatomic, strong) NSString *memberId;
//: @property (nonatomic, strong) NIMTeamMember *member;
@property (nonatomic, strong) NIMTeamMember *member;

//: @end
@end
