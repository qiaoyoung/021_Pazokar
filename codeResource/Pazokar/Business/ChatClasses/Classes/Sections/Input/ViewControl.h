// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewControl.h
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFInputEmoticonTabView;
@class ViewControl;

//: @protocol NIMInputEmoticonTabDelegate <NSObject>
@protocol BirthdayDelegate <NSObject>

//: - (void)tabView:(FFFInputEmoticonTabView *)tabView didSelectTabIndex:(NSInteger) index;
- (void)send:(ViewControl *)tabView childShared:(NSInteger) index;

//: @end
@end

//: @interface FFFInputEmoticonTabView : UIControl
@interface ViewControl : UIControl

//: @property (nonatomic,strong) UIButton * sendButton;
@property (nonatomic,strong) UIButton * sendButton;

//: @property (nonatomic,weak) id<NIMInputEmoticonTabDelegate> delegate;
@property (nonatomic,weak) id<BirthdayDelegate> delegate;

//: - (void)selectTabIndex:(NSInteger)index;
- (void)cookieReply:(NSInteger)index;

//: - (void)loadCatalogs:(NSArray*)emoticonCatalogs;
- (void)on:(NSArray*)emoticonCatalogs;

//: @end
@end