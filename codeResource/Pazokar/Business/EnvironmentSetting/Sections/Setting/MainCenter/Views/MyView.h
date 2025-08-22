// __DEBUG__
// __CLOSE_PRINT__
//
//  MyView.h
//  NIM
//
//  Created by Yan Wang on 2024/9/3.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESDeleteAccountDelegate <NSObject>
@protocol AccumulationDelegate <NSObject>

//: - (void)didTouchDeleteNextButton;
- (void)replyTag;
//: - (void)didTouchDeleteProtocolButton;
- (void)modelString;

//: @end
@end

//: @interface ZMONDeleteAccountView : UIView
@interface MyView : UIView

//: @property (nonatomic,weak) id<NTESDeleteAccountDelegate> delegate;
@property (nonatomic,weak) id<AccumulationDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)messageHidden;

/** 动画关闭 */
//: - (void)animationClose;
- (void)tingShould;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END