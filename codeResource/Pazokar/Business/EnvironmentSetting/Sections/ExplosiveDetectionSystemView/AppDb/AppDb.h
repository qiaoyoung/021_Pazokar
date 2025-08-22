// __DEBUG__
// __CLOSE_PRINT__
//
//  AppDb.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NTESCustomNotificationObject;
@class TopSortDate;
//: @interface NTESCustomNotificationDB : NSObject
@interface AppDb : NSObject

//: + (instancetype)sharedInstance;;
+ (instancetype)onCommon;;

//: @property (nonatomic,assign) NSInteger unreadCount;
@property (nonatomic,assign) NSInteger unreadCount;

//: - (NSArray *)fetchNotifications:(NTESCustomNotificationObject *)notification
- (NSArray *)origin:(TopSortDate *)notification
                          //: limit:(NSInteger)limit;
                          window:(NSInteger)limit;

//: - (BOOL)saveNotification:(NTESCustomNotificationObject *)notification;
- (BOOL)viewText:(TopSortDate *)notification;

//: - (void)deleteNotification:(NTESCustomNotificationObject *)notification;
- (void)myNotification:(TopSortDate *)notification;

//: - (void)deleteAllNotification;
- (void)message;

//: - (void)markAllNotificationsAsRead;
- (void)showRead;

//: @end
@end