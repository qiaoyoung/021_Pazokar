// __DEBUG__
// __CLOSE_PRINT__
//
//  EastWestDirectionView.h
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFPageView.h"
#import "PageView.h"
//: #import "FFFSessionConfig.h"
#import "QuantityelligenceInformationCan.h"

//: @class NIMInputEmoticonCatalog;
@class ImageColor;
//: @class FFFInputEmoticonTabView;
@class ViewControl;

//: @protocol NIMInputEmoticonProtocol <NSObject>
@protocol LengthPoint <NSObject>

//: - (void)didPressSend:(id)sender;
- (void)someName:(id)sender;

//: - (void)didPressDelete:(id)sender;
- (void)controlled:(id)sender;

//: - (void)selectedEmoticon:(NSString*)emoticonID catalog:(NSString*)emotCatalogID description:(NSString *)description;
- (void)ting:(NSString*)emoticonID userText:(NSString*)emotCatalogID frame:(NSString *)description;

//: - (void)selectedGifEmoticon:(NSString*)gif;
- (void)enable:(NSString*)gif;

//: @end
@end


//: @interface FFFInputEmoticonContainerView : UIView<FFFPageViewDataSource,FFFPageViewDelegate>
@interface EastWestDirectionView : UIView<TingSource,CustomAppear>

//: @property (nonatomic, strong) FFFPageView *emoticonPageView;
@property (nonatomic, strong) PageView *emoticonPageView;
//: @property (nonatomic, strong) UIPageControl *emotPageController;
@property (nonatomic, strong) UIPageControl *emotPageController;
//: @property (nonatomic, strong) NSArray *totalCatalogData;
@property (nonatomic, strong) NSArray *totalCatalogData;
//: @property (nonatomic, strong) NIMInputEmoticonCatalog *currentCatalogData;
@property (nonatomic, strong) ImageColor *currentCatalogData;
//: @property (nonatomic, readonly)NSArray *allEmoticons;
@property (nonatomic, readonly)NSArray *allEmoticons;
//: @property (nonatomic, strong) FFFInputEmoticonTabView *tabView;
@property (nonatomic, strong) ViewControl *tabView;
//: @property (nonatomic, weak) id<NIMInputEmoticonProtocol> delegate;
@property (nonatomic, weak) id<LengthPoint> delegate;
//: @property (nonatomic, weak) id<FFFSessionConfig> config;
@property (nonatomic, weak) id<QuantityelligenceInformationCan> config;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;

//: @end
@end