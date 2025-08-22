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

//: @class BusyPageView;
@class PageView;

//: @protocol BusyPageViewDataSource <NSObject>
@protocol TingSource <NSObject>
//: - (NSInteger)numberOfPages: (BusyPageView *)pageView;
- (NSInteger)ofses: (PageView *)pageView;
//: - (UIView *)pageView: (BusyPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)month: (PageView *)pageView input: (NSInteger)index;
//: @end
@end

//: @protocol BusyPageViewDelegate <NSObject>
@protocol CustomAppear <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (BusyPageView *)pageView
- (void)change: (PageView *)pageView
             //: currentIndex: (NSInteger)index
             convert: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               faculty: (NSInteger)pages;

//: - (void)pageViewDidScroll: (BusyPageView *)pageView;
- (void)existed: (PageView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)requireScrollAnimation;
//: @end
@end


//: @interface BusyPageView : UIView<UIScrollViewDelegate>
@interface PageView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<BusyPageViewDataSource> dataSource;
@property (nonatomic,weak) id<TingSource> dataSource;
//: @property (nonatomic,weak) id<BusyPageViewDelegate> pageViewDelegate;
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
