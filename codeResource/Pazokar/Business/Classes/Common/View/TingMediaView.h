// __DEBUG__
// __CLOSE_PRINT__
//
//  TingMediaView.h
//  NIM
//
//  Created by chris on 15/12/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESPageView;
@class TingMediaView;

//: @protocol NTESPageViewDataSource <NSObject>
@protocol CeriseIndex <NSObject>
//: - (NSInteger)numberOfPages: (NTESPageView *)pageView;
- (NSInteger)ofses: (TingMediaView *)pageView;
//: - (UIView *)pageView: (NTESPageView *)pageView viewInPage: (NSInteger)index;
- (UIView *)month: (TingMediaView *)pageView input: (NSInteger)index;
//: @end
@end

//: @protocol NTESPageViewDelegate <NSObject>
@protocol StateDate <NSObject>
//: @optional
@optional
//: - (void)pageViewScrollEnd: (NTESPageView *)pageView
- (void)change: (TingMediaView *)pageView
             //: currentIndex: (NSInteger)index
             convert: (NSInteger)index
               //: totolPages: (NSInteger)pages;
               faculty: (NSInteger)pages;

//: - (void)pageViewDidScroll: (NTESPageView *)pageView;
- (void)existed: (TingMediaView *)pageView;
//: - (BOOL)needScrollAnimation;
- (BOOL)requireScrollAnimation;
//: @end
@end


//: @interface NTESPageView : UIView<UIScrollViewDelegate>
@interface TingMediaView : UIView<UIScrollViewDelegate>
//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,weak) id<NTESPageViewDataSource> dataSource;
@property (nonatomic,weak) id<CeriseIndex> dataSource;
//: @property (nonatomic,weak) id<NTESPageViewDelegate> pageViewDelegate;
@property (nonatomic,weak) id<StateDate> pageViewDelegate;
//: - (void)scrollToPage: (NSInteger)pages;
- (void)someMax: (NSInteger)pages;
//: - (void)reloadData;
- (void)commentFor;
//: - (UIView *)viewAtIndex: (NSInteger)index;
- (UIView *)button: (NSInteger)index;
//: - (NSInteger)currentPage;
- (NSInteger)current;


//旋转相关方法,这两个方法必须配对调用,否则会有问题
//: - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)image:(UIInterfaceOrientation)toInterfaceOrientation
                                //: duration:(NSTimeInterval)duration;
                                extraTimeTotalerval:(NSTimeInterval)duration;

//: - (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
- (void)button:(UIInterfaceOrientation)toInterfaceOrientation
                                         //: duration:(NSTimeInterval)duration;
                                         disappear:(NSTimeInterval)duration;
//: @end
@end