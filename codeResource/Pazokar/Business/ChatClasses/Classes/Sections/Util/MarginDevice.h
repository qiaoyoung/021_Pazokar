// __DEBUG__
// __CLOSE_PRINT__
//
//  MarginDevice.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface FFFKitDevice : NSObject
@interface MarginDevice : NSObject

//: + (FFFKitDevice *)currentDevice;
+ (MarginDevice *)send;

/// 语言
//: + (NSString *)language;
+ (NSString *)title;

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)show;

//: - (CGFloat)compressQuality;
- (CGFloat)ease;

//: - (CGFloat)statusBarHeight;
- (CGFloat)size;

//: @end
@end