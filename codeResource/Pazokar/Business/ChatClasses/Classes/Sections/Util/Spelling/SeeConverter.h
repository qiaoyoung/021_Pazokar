// __DEBUG__
// __CLOSE_PRINT__
//
//  SeeConverter.h
//  NIM
//
//  Created by amao on 10/15/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface FFFPinyinConverter : NSObject
@interface SeeConverter : NSObject

//: + (FFFPinyinConverter *)sharedInstance;
+ (SeeConverter *)remove;

//: - (NSString *)toPinyin: (NSString *)source;
- (NSString *)modelDigitizer: (NSString *)source;

//: @end
@end