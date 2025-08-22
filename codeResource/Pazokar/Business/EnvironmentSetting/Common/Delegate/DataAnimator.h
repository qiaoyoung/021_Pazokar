// __DEBUG__
// __CLOSE_PRINT__
//
//  DataAnimator.h
//  NIM
//
//  Created by chris on 16/1/31.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef NS_ENUM(NSInteger, NTESNavigationAnimationType) {
typedef NS_ENUM(NSInteger, NTESNavigationAnimationType) {
    //: NTESNavigationAnimationTypeNormal,
    NTESNavigationAnimationTypeNormal,
    //: NTESNavigationAnimationTypeCross,
    NTESNavigationAnimationTypeCross,
//: };
};

//: @class NTESNavigationAnimator;
@class DataAnimator;

//: @protocol NTESNavigationAnimatorDelegate <NSObject>
@protocol NavigationSharedDelegate <NSObject>

//: - (void)animationWillStart:(NTESNavigationAnimator *)animator;
- (void)measureBackground:(DataAnimator *)animator;

//: - (void)animationDidEnd:(NTESNavigationAnimator *)animator;
- (void)taping:(DataAnimator *)animator;

//: @end
@end


//: @interface NTESNavigationAnimator : NSObject <UIViewControllerAnimatedTransitioning>
@interface DataAnimator : NSObject <UIViewControllerAnimatedTransitioning>

//: @property (nonatomic,weak) UINavigationController *navigationController;
@property (nonatomic,weak) UINavigationController *navigationController;

//: @property (nonatomic,assign) UINavigationControllerOperation currentOpearation;
@property (nonatomic,assign) UINavigationControllerOperation currentOpearation;

//: @property (nonatomic,assign) NTESNavigationAnimationType animationType;
@property (nonatomic,assign) NTESNavigationAnimationType animationType;

//: @property (nonatomic,weak) id<NTESNavigationAnimatorDelegate> delegate;
@property (nonatomic,weak) id<NavigationSharedDelegate> delegate;

//: - (instancetype)initWithNavigationController:(UINavigationController *)navigationController;
- (instancetype)initWithShoot:(UINavigationController *)navigationController;

//: @end
@end