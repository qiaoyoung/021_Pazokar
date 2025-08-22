// __DEBUG__
// __CLOSE_PRINT__
//
//  UIAlertView+Enable.h
//  eim_iphone
//
//  Created by amao on 12-11-7.
//  Copyright (c) 2012年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef void (^AlertBlock)(NSInteger);
typedef void (^AlertBlock)(NSInteger);
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN
//: @interface UIAlertView (NTESBlock)
@interface UIAlertView (Enable)
//: - (void)showAlertWithCompletionHandler: (__nullable AlertBlock)block;
- (void)alertHandler: (__nullable AlertBlock)block;
//: - (void)clearActionBlock;
- (void)refresh;
//: @end
@end



//: @interface UIAlertController (NTESBlock)
@interface UIAlertController (Enable)
//: - (UIAlertController *)addAction:(NSString *)title
- (UIAlertController *)convert:(NSString *)title
                           //: style:(UIAlertActionStyle)style
                           image:(UIAlertActionStyle)style
                         //: handler:(void (^ __nullable)(UIAlertAction *action))handler;
                         concatenateInsideHandler:(void (^ __nullable)(UIAlertAction *action))handler;

//: - (void)show;
- (void)accumulation;
//: @end
@end
//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END