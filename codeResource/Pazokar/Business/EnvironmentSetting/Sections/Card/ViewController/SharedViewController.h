// __DEBUG__
// __CLOSE_PRINT__
//
//  SharedViewController.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class ContactDataMember;
@class ContactDataMember;

//: @interface NTESPersonalCardViewController : UIViewController
@interface SharedViewController : UIViewController

//: @property (nonatomic ,strong) NSDictionary *teamSetingConfig;
@property (nonatomic ,strong) NSDictionary *teamSetingConfig;

//: @property (nonatomic,strong) NSDictionary *groupDict;
@property (nonatomic,strong) NSDictionary *groupDict;

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithByFullId:(NSString *)userId;

//: - (void)onActionEditAlias:(id)sender;
- (void)clearBlue:(id)sender;

//: -(void)onActionGroup:(id)sender;
-(void)transfer:(id)sender;

//: - (void)onActionNeedNotifyValueChange:(id)sender;
- (void)beAccount:(id)sender;
//: - (void)onActionBlackListValueChange:(id)sender;
- (void)enabled:(id)sender;

//: - (void)chat;
- (void)cutOut;
//: - (void)deleteFriend;
- (void)indexSuccess;
//: -(void)addFriend;
-(void)viewFriend;
//: @end
@end