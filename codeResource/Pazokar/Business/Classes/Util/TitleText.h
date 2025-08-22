// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleText.h
//  NIM
//
//  Created by Netease on 15/8/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESCADisplayLinkHolder;
@class TitleText;

//: @protocol NTESCADisplayLinkHolderDelegate <NSObject>
@protocol TapMaxDelegate <NSObject>

//: - (void)onDisplayLinkFire:(NTESCADisplayLinkHolder *)holder
- (void)picture:(TitleText *)holder
                 //: duration:(NSTimeInterval)duration
                 bar:(NSTimeInterval)duration
              //: displayLink:(CADisplayLink *)displayLink;
              should:(CADisplayLink *)displayLink;

//: @end
@end


//: @interface NTESCADisplayLinkHolder : NSObject
@interface TitleText : NSObject

//: @property (nonatomic,weak ) id<NTESCADisplayLinkHolderDelegate> delegate;
@property (nonatomic,weak ) id<TapMaxDelegate> delegate;
//: @property (nonatomic,assign) NSInteger frameInterval;
@property (nonatomic,assign) NSInteger frameInterval;

//: - (void)startCADisplayLinkWithDelegate: (id<NTESCADisplayLinkHolderDelegate>)delegate;
- (void)length: (id<TapMaxDelegate>)delegate;

//: - (void)stop;
- (void)behindRecent;

//: @end
@end