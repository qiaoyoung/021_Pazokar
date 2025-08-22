// __DEBUG__
// __CLOSE_PRINT__
//
//  CanLabel.h
//  NIM
//
//  Created by Xuhui on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @class NTESCustomNotificationDB;
@class AppDb;

//: extern NSString *NTESCustomNotificationCountChanged;
extern NSString *userTapPath;

//: @interface NTESNotificationCenter : NSObject
@interface CanLabel : NSObject

//: + (instancetype)sharedCenter;
+ (instancetype)name;
//: - (void)start;
- (void)labelCurrent;

//: @end
@end