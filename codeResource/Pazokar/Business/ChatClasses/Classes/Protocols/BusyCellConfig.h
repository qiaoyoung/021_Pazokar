// __DEBUG__
// __CLOSE_PRINT__
//
//  BusyCellConfig.h
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @class BusySessionMessageContentView;
@class TextControl;
//: @class BusyMessageModel;
@class MoreModel;

//: @protocol BusyCellLayoutConfig <NSObject>
@protocol ParentMargin <NSObject>

//: @optional
@optional

/**
 * @return 返回message的内容大小
 */
//: - (CGSize)contentSize:(BusyMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)big:(MoreModel *)model meanSolarDay:(CGFloat)width;

/**
 *  需要构造的cellContent类名
 */
//: - (NSString *)cellContent:(BusyMessageModel *)model;
- (NSString *)flushCell:(MoreModel *)model;

/**
 *  左对齐的气泡，cell气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)cellInsets:(BusyMessageModel *)model;
- (UIEdgeInsets)keeping:(MoreModel *)model;

/**
 *  左对齐的气泡，cell内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)contentViewInsets:(BusyMessageModel *)model;
- (UIEdgeInsets)skip:(MoreModel *)model;

/**
 * @return 返回message的所回复消息内容大小
 */
//: - (CGSize)replyContentSize:(BusyMessageModel *)model cellWidth:(CGFloat)width;
- (CGSize)asTitle:(MoreModel *)model show:(CGFloat)width;

/**
 *  需要构造的ReplyContent类名
 */
//: - (NSString *)replyContent:(BusyMessageModel *)model;
- (NSString *)language:(MoreModel *)model;

/**
 *  左对齐的气泡，cell reply气泡距离整个cell的内间距
 */
//: - (UIEdgeInsets)replyCellInsets:(BusyMessageModel *)model;
- (UIEdgeInsets)clean:(MoreModel *)model;

/**
 *  左对齐的气泡，cell reply内容距离气泡的内间距，
 */
//: - (UIEdgeInsets)replyContentViewInsets:(BusyMessageModel *)model;
- (UIEdgeInsets)sinceLocationInsets:(MoreModel *)model;

/**
 *  是否显示头像
 */
//: - (BOOL)shouldShowAvatar:(BusyMessageModel *)model;
- (BOOL)team:(MoreModel *)model;


/**
 *  左对齐的气泡，头像控件的 origin 点
 */
//: - (CGPoint)avatarMargin:(BusyMessageModel *)model;
- (CGPoint)green:(MoreModel *)model;

/**
 *  左对齐的气泡，头像控件的 size
 */
//: - (CGSize)avatarSize:(BusyMessageModel *)model;
- (CGSize)session:(MoreModel *)model;

/**
 *  是否显示姓名
 */
//: - (BOOL)shouldShowNickName:(BusyMessageModel *)model;
- (BOOL)should:(MoreModel *)model;

/**
 *  左对齐的气泡，昵称控件的 origin 点
 */
//: - (CGPoint)nickNameMargin:(BusyMessageModel *)model;
- (CGPoint)writerSTitle:(MoreModel *)model;


/**
 *  消息显示在左边
 */
//: - (BOOL)shouldShowLeft:(BusyMessageModel *)model;
- (BOOL)model:(MoreModel *)model;


/**
 *  需要添加到Cell上的自定义视图
 */
//: - (NSArray *)customViews:(BusyMessageModel *)model;
- (NSArray *)subViews:(MoreModel *)model;


/**
 *  是否开启重试叹号开关
 */
//: - (BOOL)disableRetryButton:(BusyMessageModel *)model;
- (BOOL)tiddlerHide:(MoreModel *)model;

/**
 * 是否显示气泡背景图
 */
//: - (BOOL)shouldDisplayBubbleBackground:(BusyMessageModel *)model;
- (BOOL)text:(MoreModel *)model;


//: @end
@end
