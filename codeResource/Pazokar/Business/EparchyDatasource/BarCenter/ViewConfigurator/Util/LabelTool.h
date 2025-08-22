// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelTool.h
// Case
//
//  Created by chris on 2017/10/20.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef NS_ENUM(NSUInteger, BusyKitAuthorizationStatus) {
typedef NS_ENUM(NSUInteger, BusyKitAuthorizationStatus) {
    //: BusyKitAuthorizationStatusAuthorized, 
    BusyKitAuthorizationStatusAuthorized, // 已授权
    //: BusyKitAuthorizationStatusDenied, 
    BusyKitAuthorizationStatusDenied, // 拒绝
    //: BusyKitAuthorizationStatusRestricted, 
    BusyKitAuthorizationStatusRestricted, // 应用没有相关权限，且当前用户无法改变这个权限，比如:家长控制
    //: BusyKitAuthorizationStatusNotSupport 
    BusyKitAuthorizationStatusNotSupport // 硬件等不支持
//: };
};

//: @interface BusyKitAuthorizationTool : NSObject
@interface LabelTool : NSObject

//: + (void)requestPhotoLibraryAuthorization:(void(^)(BusyKitAuthorizationStatus status))callback;
+ (void)tool:(void(^)(BusyKitAuthorizationStatus status))callback;

//: + (void)requestCameraAuthorization:(void(^)(BusyKitAuthorizationStatus status))callback;
+ (void)session:(void(^)(BusyKitAuthorizationStatus status))callback;

//: + (void)requestAddressBookAuthorization:(void (^)(BusyKitAuthorizationStatus))callback;
+ (void)passage:(void (^)(BusyKitAuthorizationStatus))callback;

//: @end
@end
