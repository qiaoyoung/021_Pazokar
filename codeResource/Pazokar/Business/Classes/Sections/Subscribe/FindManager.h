// __DEBUG__
// __CLOSE_PRINT__
//
//  FindManager.h
//  NIM
//
//  Created by chris on 2017/4/5.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @interface NTESSubscribeManager : NSObject
@interface FindManager : NSObject

//: + (instancetype)sharedManager;
+ (instancetype)value;

//: - (void)start;
- (void)quick;

//: - (NSDictionary<NIMSubscribeEvent *, NSString *> *)eventsForType:(NSInteger)type;
- (NSDictionary<NIMSubscribeEvent *, NSString *> *)noBreed:(NSInteger)type;

//: - (void)subscribeTempUserOnlineState:(NSString *)userId;
- (void)nearBar:(NSString *)userId;

//: - (void)unsubscribeTempUserOnlineState:(NSString *)userId;
- (void)shareTemp:(NSString *)userId;

//: @end
@end