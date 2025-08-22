// __DEBUG__
// __CLOSE_PRINT__
//
//  ReadView.h
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

//: @protocol NTESReportDelegate <NSObject>
@protocol ModelDelegate <NSObject>

//: - (void)didTouchSubmitButton:(NSString *)reason;
- (void)isStatus:(NSString *)reason;

//: @end
@end

//: @interface ZMONReportUserView : UIView
@interface ReadView : UIView

//: @property (nonatomic,weak) id<NTESReportDelegate> delegate;
@property (nonatomic,weak) id<ModelDelegate> delegate;

/** 动画显示 */
//: - (void)animationShow;
- (void)enable;

/** 动画关闭 */
//: - (void)animationClose;
- (void)tingShould;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END