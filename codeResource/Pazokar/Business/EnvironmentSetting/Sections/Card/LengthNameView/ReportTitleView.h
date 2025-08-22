// __DEBUG__
// __CLOSE_PRINT__
//
//  ReportTitleView.h
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NTESReportNextDelegate <NSObject>
@protocol RowDelegate <NSObject>

//: - (void)didTouchBlackButton;
- (void)buttonItem;
//: - (void)didTouchDeleteButton;
- (void)scoopHeight;

//: @end
@end

//: @interface ZMONReportNextView : UIView
@interface ReportTitleView : UIView

//: @property (nonatomic,weak) id<NTESReportNextDelegate> delegate;
@property (nonatomic,weak) id<RowDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)thoughtImage;

/** 动画关闭 */
//: - (void)animationClose;
- (void)tingShould;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END