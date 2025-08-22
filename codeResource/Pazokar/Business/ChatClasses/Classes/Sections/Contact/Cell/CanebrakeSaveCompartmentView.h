// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactInfoCell.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "BusyContactDefines.h"
#import "BusyContactDefines.h"
//: #import "BusyKitInfo.h"
#import "Info.h"

//: @protocol BusyContactDataCellDelegate <NSObject>
@protocol MediaPinDelegate <NSObject>

//: - (void)onPressAvatar:(NSString *)memberId;
- (void)offLoad:(NSString *)memberId;

//: @end
@end

//: @class BusyAvatarImageView;
@class CustomFormatView;

//: @interface BusyContactDataCell : UITableViewCell
@interface CanebrakeSaveCompartmentView : UITableViewCell

//: @property (nonatomic,copy) NSString *memberId;
@property (nonatomic,copy) NSString *memberId;

//: @property (nonatomic,strong) BusyAvatarImageView * avatarImageView;
@property (nonatomic,strong) CustomFormatView * avatarImageView;
//: @property (nonatomic,strong) UILabel *labName;
@property (nonatomic,strong) UILabel *labName;
//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: @property (nonatomic,weak) id<BusyContactDataCellDelegate> delegate;
@property (nonatomic,weak) id<MediaPinDelegate> delegate;

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member;
- (void)periodOfTimeUser:(id<DatePraise>)member;

//: - (void)refreshTeam:(NIMTeam *)team;
- (void)scaleImage:(NIMTeam *)team;

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member;
- (void)selectChangeTab:(id<DatePraise>)member;

//: @end
@end
