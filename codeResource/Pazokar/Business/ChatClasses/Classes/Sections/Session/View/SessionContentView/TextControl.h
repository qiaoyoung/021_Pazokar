// __DEBUG__
// __CLOSE_PRINT__
//
//  TextControl.h
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "BusyKitEvent.h"
#import "DirectionEvent.h"

//: typedef NS_ENUM (NSInteger, BusySessionMessageContentViewLayout){
typedef NS_ENUM (NSInteger, BusySessionMessageContentViewLayout){
    //: BusySessionMessageContentViewLayoutAuto = 0, 
    BusySessionMessageContentViewLayoutAuto = 0, //根据消息自动布局
    //: BusySessionMessageContentViewLayoutLeft, 
    BusySessionMessageContentViewLayoutLeft, //左边布局
    //: BusySessionMessageContentViewLayoutRight, 
    BusySessionMessageContentViewLayoutRight, //右边布局
//: };
};

//: @class NIMKitBubbleStyleObject;
@class NIMKitBubbleStyleObject;

//: @protocol NIMMessageContentViewDelegate <NSObject>
@protocol InformationView <NSObject>

//: - (void)onCatchEvent:(BusyKitEvent *)event;
- (void)memberEvent:(DirectionEvent *)event;

//: - (void)disableLongPress:(BOOL)disable;
- (void)chancePress:(BOOL)disable;

//: @optional
@optional
// 长按复制
//: - (BOOL)onLongTap:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)cutGreenColor:(NIMMessage *)message infoThread:(void(^)(id data))complete;
//: - (BOOL)onLongTap:(NIMMessage *)message;
- (BOOL)longLasting:(NIMMessage *)message;


//: @end
@end

//: @class BusyMessageModel;
@class MoreModel;

//: @interface BusySessionMessageContentView : UIControl
@interface TextControl : UIControl

//: @property (nonatomic,strong,readonly) BusyMessageModel *model;
@property (nonatomic,strong,readonly) MoreModel *model;

//: @property (nonatomic,strong) UIImageView * bubbleImageView;
@property (nonatomic,strong) UIImageView * bubbleImageView;

//: @property (nonatomic,assign) BusySessionMessageContentViewLayout layoutStyle;
@property (nonatomic,assign) BusySessionMessageContentViewLayout layoutStyle;

//: @property (nonatomic,weak) id<NIMMessageContentViewDelegate> delegate;
@property (nonatomic,weak) id<InformationView> delegate;

/**
 *  contentView初始化方法
 *
 *  @return content实例
 */
//: - (instancetype)initSessionMessageContentView;
- (instancetype)initColorSession;

/**
 *  刷新方法
 *
 *  @param data 刷新数据
 *
 */
//: - (void)refresh:(BusyMessageModel*)data;
- (void)messagePress:(MoreModel*)data;


/**
 *  手指从contentView内部抬起
 */
//: - (void)onTouchUpInside:(id)sender;
- (void)objects:(id)sender;


/**
 *  手指从contentView外部抬起
 */
//: - (void)onTouchUpOutside:(id)sender;
- (void)cans:(id)sender;

/**
 *  手指按下contentView
 */
//: - (void)onTouchDown:(id)sender;
- (void)bussed:(id)sender;


/**
 *  聊天气泡图
 *
 *  @param state    目前的按压状态
 *  @param outgoing 是否是发出去的消息
 *
 */
//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing;
- (UIImage *)success:(UIControlState)state point:(BOOL)outgoing;

//: @end
@end
