// __DEBUG__
// __CLOSE_PRINT__
//
//  VersionData.h
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESFileLocationHelper : NSObject
@interface VersionData : NSObject

//: + (NSString *)getAppDocumentPath;
+ (NSString *)input;

//: + (NSString *)getAppTempPath;
+ (NSString *)get;

//: + (NSString *)userDirectory;
+ (NSString *)userLanguage;

//: + (NSString *)genFilenameWithExt:(NSString *)ext;
+ (NSString *)circleInputExt:(NSString *)ext;

//: + (NSString *)filepathForVideo:(NSString *)filename;
+ (NSString *)commentAdd:(NSString *)filename;

//: + (NSString *)filepathForImage:(NSString *)filename;
+ (NSString *)cleanVisualisation:(NSString *)filename;

//: + (NSString *)filepathForMergeForwardFile:(NSString *)filename;
+ (NSString *)success:(NSString *)filename;

//: @end
@end