// __DEBUG__
// __CLOSE_PRINT__
//
//  SharedDataParent.h
//  NIM
//
//  Created by chris on 15/9/18.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSUInteger,NTESNetworkType) {
typedef NS_ENUM(NSUInteger,NTESNetworkType) {
    //: NTESNetworkTypeUnknown,
    NTESNetworkTypeUnknown,
    //: NTESNetworkTypeWifi,
    NTESNetworkTypeWifi,
    //: NTESNetworkTypeWwan,
    NTESNetworkTypeWwan,
    //: NTESNetworkType2G,
    NTESNetworkType2G,
    //: NTESNetworkType3G,
    NTESNetworkType3G,
    //: NTESNetworkType4G,
    NTESNetworkType4G,
//: };
};

//: @interface NTESDevice : NSObject
@interface SharedDataParent : NSObject

//: + (NTESDevice *)currentDevice;
+ (SharedDataParent *)date;

//图片/音频推荐参数
//: - (CGFloat)suggestImagePixels;
- (CGFloat)colorByName;

//: - (CGFloat)compressQuality;
- (CGFloat)inside;

//App状态
//: - (BOOL)isUsingWifi;
- (BOOL)blue;
//: - (BOOL)isInBackground;
- (BOOL)backgroundInwards;

//: - (NTESNetworkType)currentNetworkType;
- (NTESNetworkType)liveClean;
//: - (NSString *)networkStatus:(NTESNetworkType)networkType;
- (NSString *)hideOption:(NTESNetworkType)networkType;

//: - (NSInteger)cpuCount;
- (NSInteger)frame;

//: - (BOOL)isLowDevice;
- (BOOL)at;
//: - (BOOL)isIphone;
- (BOOL)dieOutIphone;
//: - (NSString *)machineName;
- (NSString *)path;


//: - (CGFloat)statusBarHeight;
- (CGFloat)toAGreaterExtent;

//: @end
@end