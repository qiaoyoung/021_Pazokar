// __DEBUG__
// __CLOSE_PRINT__
//
//  ParentView.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/5.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESDeactivateAccountDelegate <NSObject>
@protocol OnDelegate <NSObject>

//: - (void)didTouchNextButton;
- (void)menuFor;
//: - (void)didTouchProtocolButton;
- (void)replacementButton;

//: @end
@end

//: @interface ZMONDeactivateAccountView : UIView
@interface ParentView : UIView

//: @property (nonatomic,weak) id<NTESDeactivateAccountDelegate> delegate;
@property (nonatomic,weak) id<OnDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)animation;

/** 动画关闭 */
//: - (void)animationClose;
- (void)tingShould;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END