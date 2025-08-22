// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonCleanView.h
//  NIM
//
//  Created by Yan Wang on 2024/8/9.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESReportContentDelegate <NSObject>
@protocol TapDelegate <NSObject>

//: - (void)didTouchSubmitContentButton:(NSString *)reason;
- (void)fixingButton:(NSString *)reason;

//: @end
@end

//: @interface ZMONTranslateView : UIView
@interface ButtonCleanView : UIView

//: @property (nonatomic,weak) id<NTESReportContentDelegate> delegate;
@property (nonatomic,weak) id<TapDelegate> delegate;
/** 动画显示 */
//: - (void)animationShow;
- (void)before;

/** 动画关闭 */
//: - (void)animationClose;
- (void)tingShould;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END