// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDateFormatter+KIDateFormatter.h
//  Kitalker
//
//  Created by chen on 12-8-23.
//
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSDateFormatter (KIAdditions)
@interface NSDateFormatter (Read)

//: + (NSString *)dateStringWithFormat:(NSString *)format date:(NSDate *)date;
+ (NSString *)sizeShow:(NSString *)format tool:(NSDate *)date;

//: - (NSString *)weekday:(NSDate *)date;
- (NSString *)mode:(NSDate *)date;

//: - (NSString *)day:(NSDate *)date;
- (NSString *)speedy:(NSDate *)date;

//: - (NSString *)month:(NSDate *)date;
- (NSString *)nextBy:(NSDate *)date;

//: - (NSString *)year:(NSDate *)date;
- (NSString *)total:(NSDate *)date;

//: - (NSString *)dateStringWithFormat:(NSString *)format date:(NSDate *)date;
- (NSString *)twentyFourHoursWithCordFormatDate:(NSString *)format recentWith_strong:(NSDate *)date;

//: @end
@end