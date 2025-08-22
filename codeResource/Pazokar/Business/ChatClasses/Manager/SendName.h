// __DEBUG__
// __CLOSE_PRINT__
//
//  SendName.h
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface BusyLanguageManager : NSObject
@interface SendName : NSObject
//: @property (nonatomic,strong) NSMutableDictionary *langDict;
@property (nonatomic,strong) NSMutableDictionary *langDict;
//: + (BusyLanguageManager *)shareInstance;
+ (SendName *)along;
//: - (void)setLanguagre:(NSString *)langType;
- (void)setMagnitudeernationality:(NSString *)langType;
//: + (NSString *)getTextWithKey:(NSString *)key;
+ (NSString *)streetSmart:(NSString *)key;

//: + (NSString *)getLocale;
+ (NSString *)subjectMatter;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
