// __DEBUG__
// __CLOSE_PRINT__
//
//  DateViewController.h
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/4/20.
//  Copyright (c) 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol HMViewControllerDelegate;
@protocol CanName;

//: @interface HMViewController : UIViewController <UIGestureRecognizerDelegate> {
@interface DateViewController : UIViewController <UIGestureRecognizerDelegate> {
    //: __weak id<HMViewControllerDelegate> _viewControllerDelegate;
    __weak id<CanName> _viewControllerDelegate;
}
//: @property (nonatomic,weak) id<HMViewControllerDelegate> viewControllerDelegate;
@property (nonatomic,weak) id<CanName> viewControllerDelegate;


//系统返回手势改装
//: - (void)enableFullScreenPopGesture:(BOOL)enable;
- (void)app:(BOOL)enable;

//: @end
@end




//: @protocol HMViewControllerDelegate <NSObject>
@protocol CanName <NSObject>

//: @optional
@optional
//: - (void)viewController:(HMViewController *)viewController key:(NSString *)key infomation:(id)infomation;
- (void)futurism:(DateViewController *)viewController remote_strong:(NSString *)key myInfoTing:(id)infomation;

//: @end
@end




//: @interface UIViewController (HM)
@interface UIViewController (HM)

//: - (void)showEmptyView;
- (void)question;
//: - (void)showEmptyViewWithMessage:(NSString *)message;
- (void)showDown:(NSString *)message;
//: - (void)showEmptyViewWithImageName:(NSString *)imageName inView:(UIView *)inView;
- (void)addTogether:(NSString *)imageName length:(UIView *)inView;
//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView;
- (void)changeSave:(NSString *)message light:(UIView *)inView;
//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView imageName:(NSString *)imageName;
- (void)bringHomeInDba:(NSString *)message valuePress_strong:(UIView *)inView image:(NSString *)imageName;
//: - (void)hideEmptyViewInView:(UIView *)view;
- (void)secondMedia:(UIView *)view;
//: - (void)hideEmptyView;
- (void)backgroundWill;


/**
 子类重写，无网络的处理
 重写这个方法：无网络时，弹出无网络页面，点击刷新数据
 不重写：不会弹出无网络页面
 */
//: - (BOOL)canShowNotNetView;
- (BOOL)sizeColor;
//: - (void)refrushWithNotNet;
- (void)edge;



//: @end
@end