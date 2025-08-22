// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionary+Doing.h
//  NIM
//
//  Created by amao on 13-7-12.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDictionary (NTESJson)
@interface NSDictionary (Doing)
//: - (NSString *)jsonString: (NSString *)key;
- (NSString *)withCord: (NSString *)key;

//: - (NSDictionary *)jsonDict: (NSString *)key;
- (NSDictionary *)styleOld: (NSString *)key;
//: - (NSArray *)jsonArray: (NSString *)key;
- (NSArray *)sizeArray: (NSString *)key;
//: - (NSArray *)jsonStringArray: (NSString *)key;
- (NSArray *)byIndex: (NSString *)key;


//: - (BOOL)jsonBool: (NSString *)key;
- (BOOL)shouldDoing: (NSString *)key;
//: - (NSInteger)jsonInteger: (NSString *)key;
- (NSInteger)reply: (NSString *)key;
//: - (long long)jsonLongLong: (NSString *)key;
- (long long)excerptMedia: (NSString *)key;
//: - (unsigned long long)jsonUnsignedLongLong:(NSString *)key;
- (unsigned long long)hideNumber:(NSString *)key;

//: - (double)jsonDouble: (NSString *)key;
- (double)cameraOf: (NSString *)key;
//: @end
@end