// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+Date.h
//  NIMDemo
//
//  Created by chris on 15/2/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NSString * emptyString(NSString *anMaybeEmptyString);
NSString * cornerViewText(NSString *anMaybeEmptyString);

//: @interface NSString (NTES)
@interface NSString (Date)

//: - (CGSize)stringSizeWithFont:(UIFont *)font;
- (CGSize)commentTing:(UIFont *)font;

//: - (NSString *)MD5String;
- (NSString *)show;

//: - (NSUInteger)getBytesLength;
- (NSUInteger)labelSheet;

//: - (NSString *)stringByDeletingPictureResolution;
- (NSString *)stepResolution;

//: - (NSString *)tokenByPassword;
- (NSString *)readToken;

//: - (NSString *)ntes_localized;
- (NSString *)untilNtes;

//: + (NSString *)randomStringWithLength:(NSUInteger)length;
+ (NSString *)snapLength:(NSUInteger)length;

//: @end
@end
