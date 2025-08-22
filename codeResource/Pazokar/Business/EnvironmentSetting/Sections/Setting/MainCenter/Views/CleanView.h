// __DEBUG__
// __CLOSE_PRINT__
//
//  CleanView.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/6.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ZMONDeactivateAccountSuccessView : UIView
@interface CleanView : UIView

//: - (void)reloadWithNickname:(NSString *)nickname;
- (void)crunch:(NSString *)nickname;

/** 动画显示 */
//: - (void)animationShow;
- (void)withShow;

/** 动画关闭 */
//: - (void)animationClose;
- (void)tingShould;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END