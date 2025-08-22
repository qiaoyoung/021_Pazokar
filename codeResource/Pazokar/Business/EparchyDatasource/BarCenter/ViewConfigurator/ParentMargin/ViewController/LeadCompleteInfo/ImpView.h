// __DEBUG__
// __CLOSE_PRINT__
//
//  ImpView.h
//  ImpView
//
//  Created by youyou on 16/12/5.
//  Copyright © 2016年 iceyouyou. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class UUMarqueeView;
@class ImpView;

//: typedef NS_ENUM(NSUInteger, UUMarqueeViewDirection) {
typedef NS_ENUM(NSUInteger, UUMarqueeViewDirection) {
    //: UUMarqueeViewDirectionUpward, 
    UUMarqueeViewDirectionUpward, // scroll from bottom to top
    //: UUMarqueeViewDirectionLeftward 
    UUMarqueeViewDirectionLeftward // scroll from right to left
//: };
};

//: #pragma mark - UUMarqueeViewDelegate
#pragma mark - RawDataImage
//: @protocol UUMarqueeViewDelegate <NSObject>
@protocol RawDataImage <NSObject>
//: - (NSUInteger)numberOfDataForMarqueeView:(UUMarqueeView*)marqueeView;
- (NSUInteger)ofView:(ImpView*)marqueeView;
//: - (void)createItemView:(UIView*)itemView forMarqueeView:(UUMarqueeView*)marqueeView;
- (void)viewTo:(UIView*)itemView scarlet:(ImpView*)marqueeView;
//: - (void)updateItemView:(UIView*)itemView atIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView;
- (void)soapBubble:(UIView*)itemView color:(NSUInteger)index by:(ImpView*)marqueeView;
//: @optional
@optional
//: - (NSUInteger)numberOfVisibleItemsForMarqueeView:(UUMarqueeView*)marqueeView; 
- (NSUInteger)beIn:(ImpView*)marqueeView; // only for [UUMarqueeViewDirectionUpward]
//: - (CGFloat)itemViewWidthAtIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView; 
- (CGFloat)time:(NSUInteger)index nearSuccess:(ImpView*)marqueeView; // only for [UUMarqueeViewDirectionLeftward]
//: - (CGFloat)itemViewHeightAtIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView; 
- (CGFloat)view:(NSUInteger)index corner:(ImpView*)marqueeView; // only for [UUMarqueeViewDirectionUpward] and [useDynamicHeight = YES]
//: - (void)didTouchItemViewAtIndex:(NSUInteger)index forMarqueeView:(UUMarqueeView*)marqueeView;
- (void)sprechstimme:(NSUInteger)index thumb:(ImpView*)marqueeView;
//: @end
@end

//: #pragma mark - UUMarqueeView
#pragma mark - ImpView
//: @interface UUMarqueeView : UIView
@interface ImpView : UIView
//: @property (nonatomic, weak) id<UUMarqueeViewDelegate> delegate;
@property (nonatomic, weak) id<RawDataImage> delegate;
//: @property (nonatomic, assign) NSTimeInterval timeIntervalPerScroll;
@property (nonatomic, assign) NSTimeInterval timeIntervalPerScroll;
//: @property (nonatomic, assign) NSTimeInterval timeDurationPerScroll; 
@property (nonatomic, assign) NSTimeInterval timeDurationPerScroll; // only for [UUMarqueeViewDirectionUpward] and [useDynamicHeight = NO]
//: @property (nonatomic, assign) BOOL useDynamicHeight; 
@property (nonatomic, assign) BOOL useDynamicHeight; // only for [UUMarqueeViewDirectionUpward]
//: @property (nonatomic, assign) float scrollSpeed; 
@property (nonatomic, assign) float scrollSpeed; // only for [UUMarqueeViewDirectionLeftward] or [UUMarqueeViewDirectionUpward] with [useDynamicHeight = YES]
//: @property (nonatomic, assign) float itemSpacing; 
@property (nonatomic, assign) float itemSpacing; // only for [UUMarqueeViewDirectionLeftward]
//: @property (nonatomic, assign) BOOL stopWhenLessData; 
@property (nonatomic, assign) BOOL stopWhenLessData; // do not scroll when all data has been shown
//: @property (nonatomic, assign) BOOL clipsToBounds;
@property (nonatomic, assign) BOOL clipsToBounds;
//: @property (nonatomic, assign, getter=isTouchEnabled) BOOL touchEnabled;
@property (nonatomic, assign, getter=isTouchEnabled) BOOL touchEnabled;
//: @property (nonatomic, assign) UUMarqueeViewDirection direction;
@property (nonatomic, assign) UUMarqueeViewDirection direction;
//: - (instancetype)initWithDirection:(UUMarqueeViewDirection)direction;
- (instancetype)initWithOption:(UUMarqueeViewDirection)direction;
//: - (instancetype)initWithFrame:(CGRect)frame direction:(UUMarqueeViewDirection)direction;
- (instancetype)initWithActuarialTable:(CGRect)frame titleImage:(UUMarqueeViewDirection)direction;
//: - (void)reloadData;
- (void)streetSmart;
//: - (void)start;
- (void)search;
//: - (void)pause;
- (void)model;
//: @end
@end

//: #pragma mark - UUMarqueeViewTouchResponder(Private)
#pragma mark - CenterDevice(Private)
//: @protocol UUMarqueeViewTouchResponder <NSObject>
@protocol CenterDevice <NSObject>
//: - (void)touchesBegan;
- (void)give;
//: - (void)touchesEndedAtPoint:(CGPoint)point;
- (void)readSize:(CGPoint)point;
//: - (void)touchesCancelled;
- (void)insert;
//: @end
@end

//: #pragma mark - UUMarqueeViewTouchReceiver(Private)
#pragma mark - MarqueeVersionReceivingSystemView(Private)
//: @interface UUMarqueeViewTouchReceiver : UIView
@interface MarqueeVersionReceivingSystemView : UIView
//: @property (nonatomic, weak) id<UUMarqueeViewTouchResponder> touchDelegate;
@property (nonatomic, weak) id<CenterDevice> touchDelegate;
//: @end
@end

//: #pragma mark - UUMarqueeItemView(Private)
#pragma mark - InnerCityView(Private)
//: @interface UUMarqueeItemView : UIView 
@interface InnerCityView : UIView // InnerCityView's [tag] is the index of data source. if none data source then [tag] is -1
//: @property (nonatomic, assign) BOOL didFinishCreate;
@property (nonatomic, assign) BOOL didFinishCreate;
//: @property (nonatomic, assign) CGFloat width; 
@property (nonatomic, assign) CGFloat width; // cache the item width, only for [UUMarqueeViewDirectionLeftward]
//: @property (nonatomic, assign) CGFloat height; 
@property (nonatomic, assign) CGFloat height; // cache the item height, only for [UUMarqueeViewDirectionUpward]
//: - (void)clear;
- (void)path;
//: @end
@end