// __DEBUG__
// __CLOSE_PRINT__
//
//  SharedMaker.h
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: @class MyUserKitLocationPoint;
@class MyUserKitLocationPoint;

//: @interface FFFMessageMaker : NSObject
@interface SharedMaker : NSObject

//: + (NIMMessage*)msgWithText:(NSString *)text;
+ (NIMMessage*)icon:(NSString *)text;

//: + (NIMMessage *)msgWithAudio:(NSString *)filePath;
+ (NIMMessage *)timeCapsule:(NSString *)filePath;

//: + (NIMMessage *)msgWithImage:(UIImage *)image;
+ (NIMMessage *)file:(UIImage *)image;

//: + (NIMMessage *)msgWithImagePath:(NSString *)path;
+ (NIMMessage *)atInfo:(NSString *)path;

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension;
+ (NIMMessage *)tool:(NSData *)data formatExtension:(NSString *)extension;

//: + (NIMMessage *)msgWithVideo:(NSString *)filePath;
+ (NIMMessage *)intervalerval:(NSString *)filePath;


//: @end
@end


//: @interface NIMCommentMaker : NSObject
@interface SortMaker : NSObject

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)text:(int64_t)type
                             //: content:(NSString *)content
                             inputSignal:(NSString *)content
                                 //: ext:(NSString *)ext;
                                 change:(NSString *)ext;

//: @end
@end