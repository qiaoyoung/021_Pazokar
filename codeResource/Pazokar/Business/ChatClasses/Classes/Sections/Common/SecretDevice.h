// __DEBUG__
// __CLOSE_PRINT__
//
//  SecretDevice.h
// Case
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFKitTimerHolder.h"
#import "NameWith.h"

//: @class NIMKitFirerInfo;
@class StateText;

//: @interface FFFKitNotificationFirer : NSObject<FFFKitTimerHolderDelegate>
@interface SecretDevice : NSObject<ChildRefresh>

//: @property (nonatomic,strong) NSMutableDictionary *cachedInfo;
@property (nonatomic,strong) NSMutableDictionary *cachedInfo;

//: @property (nonatomic,strong) FFFKitTimerHolder *timer;
@property (nonatomic,strong) NameWith *timer;

//: @property (nonatomic,assign) NSTimeInterval timeInterval;
@property (nonatomic,assign) NSTimeInterval timeInterval;

//: - (void)addFireInfo:(NIMKitFirerInfo *)info;
- (void)putOff:(StateText *)info;

//: @end
@end


//: @interface NIMKitFirerInfo : NSObject
@interface StateText : NSObject

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @property (nonatomic,copy) NSString *notificationName;
@property (nonatomic,copy) NSString *notificationName;

//: - (NSObject *)fireObject;
- (NSObject *)searched;

//: - (NSString *)saveIdentity;
- (NSString *)tingIdentity;

//: @end
@end