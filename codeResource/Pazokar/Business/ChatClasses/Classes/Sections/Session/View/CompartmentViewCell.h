// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentViewCell.h
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "BusyMessageCellProtocol.h"
#import "BusyMessageCellProtocol.h"
//: #import "BusyTimestampModel.h"
#import "AppRow.h"

//: @class BusySessionMessageContentView;
@class TextControl;
//: @class BusyAvatarImageView;
@class CustomFormatView;
//: @class BusyBadgeView;
@class SharedView;

//: @interface BusyMessageCell : UITableViewCell
@interface CompartmentViewCell : UITableViewCell

//: @property (nonatomic, strong) BusyAvatarImageView *headImageView;
@property (nonatomic, strong) CustomFormatView *headImageView;
//: @property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *nameLabel;//姓名
//: @property (nonatomic, strong) UIView *bubblesBackgroundView; 
@property (nonatomic, strong) UIView *bubblesBackgroundView; //气泡背景视图
//: @property (nonatomic, strong) BusySessionMessageContentView *replyedBubbleView; 
@property (nonatomic, strong) TextControl *replyedBubbleView; //被回复内容区域

//: @property (nonatomic, strong) BusySessionMessageContentView *bubbleView;
@property (nonatomic, strong) TextControl *bubbleView;//内容区域
//: @property (nonatomic, strong) UIActivityIndicatorView *traningActivityIndicator; 
@property (nonatomic, strong) UIActivityIndicatorView *traningActivityIndicator; //发送loading
//: @property (nonatomic, strong) UIButton *retryButton; 
@property (nonatomic, strong) UIButton *retryButton; //重试
//: @property (nonatomic, strong) BusyBadgeView *audioPlayedIcon; 
@property (nonatomic, strong) SharedView *audioPlayedIcon; //语音未读红点
//: @property (nonatomic, strong) UIButton *readButton; 
@property (nonatomic, strong) UIButton *readButton; //已读
//: @property (nonatomic, strong) UIButton *selectButton; 
@property (nonatomic, strong) UIButton *selectButton; //选择
//: @property (nonatomic, strong) UIButton *selectButtonMask; 
@property (nonatomic, strong) UIButton *selectButtonMask; //选择遮罩

//: @property (nonatomic, readonly) BusyMessageModel *model;
@property (nonatomic, readonly) MoreModel *model;

//: @property (nonatomic, weak) id<BusyMessageCellDelegate> delegate;
@property (nonatomic, weak) id<SharedDelegate> delegate;

//: - (void)refreshData:(BusyMessageModel *)data;
- (void)pullSession:(MoreModel *)data;

//: @end
@end
