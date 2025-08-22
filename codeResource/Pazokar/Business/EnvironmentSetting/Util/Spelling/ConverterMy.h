// __DEBUG__
// __CLOSE_PRINT__
//
//  ConverterMy.h
//  NIM
//
//  Created by amao on 10/15/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESPinyinConverter : NSObject
@interface ConverterMy : NSObject
//: + (NTESPinyinConverter *)sharedInstance;
+ (ConverterMy *)canAt;

//: - (NSString *)toPinyin: (NSString *)source;
- (NSString *)read: (NSString *)source;
//: @end
@end