// __DEBUG__
// __CLOSE_PRINT__
//
//  PageView.h
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFPageView;
@class PageView;

//: @protocol FFFPageViewDataSource <NSObject>
@protocol TingSource <NSObject>
//: - (NSInteger)numberOfPages: (FFFPageView *)pageView;
- (NSInteger)ofses: (PageView *)pageView;
//: - (UIView *)pageView: (FFFPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)month: (PageView *)pageView input: (NSInteger)index;
//: @end
@end

//: @protocol FFFPageViewDelegate <NSObject>
@protocol CustomAppear <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (FFFPageView *)pageView
- (void)change: (PageView *)pageView
             //: currentIndex: (NSInteger)index
             convert: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               faculty: (NSInteger)pages;

//: - (void)pageViewDidScroll: (FFFPageView *)pageView;
- (void)existed: (PageView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)requireScrollAnimation;
//: @end
@end


//: @interface FFFPageView : UIView<UIScrollViewDelegate>
@interface PageView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<FFFPageViewDataSource> dataSource;
@property (nonatomic,weak) id<TingSource> dataSource;
//: @property (nonatomic,weak) id<FFFPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<CustomAppear> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)encounter: (NSInteger)pages;
//: - (void)reloadData;
- (void)create;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)fullPhaseOfTheMoon: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)sendPage;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)team:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                toehold:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)ambages:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         text:(NSTimeInterval)duration;
//: @end
@end