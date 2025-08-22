// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionMsgHelper.h
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NTESJanKenPonAttachment;
@class MyAttachment;
//: @class NTESSnapchatAttachment;
@class MediaAttachment;
//: @class NTESWhiteboardAttachment;
@class TagAttachment;
//: @class NTESRedPacketAttachment;
@class BubbleTitleLabel;
//: @class NTESRedPacketTipAttachment;
@class Attachment;
//: @class NTESMultiRetweetAttachment;
@class ModelText;
//: @class NTESShareCardAttachment;
@class WithChild;

//: @interface NTESSessionMsgConverter : NSObject
@interface PraiseConverter : NSObject

//: + (NIMMessage *)msgWithText:(NSString *)text;
+ (NIMMessage *)showOf:(NSString *)text;

//: + (NIMMessage *)msgWithImage:(UIImage *)image;
+ (NIMMessage *)image:(UIImage *)image;

//: + (NIMMessage *)msgWithImagePath:(NSString *)path;
+ (NIMMessage *)entryPath:(NSString *)path;

//: + (NIMMessage *)msgWithAudio:(NSString *)filePath;
+ (NIMMessage *)erase:(NSString *)filePath;

//: + (NIMMessage *)msgWithVideo:(NSString *)filePath;
+ (NIMMessage *)inputVideo:(NSString *)filePath;

//: + (NIMMessage *)msgWithJenKenPon:(NTESJanKenPonAttachment *)attachment;
+ (NIMMessage *)item:(MyAttachment *)attachment;

//: + (NIMMessage *)msgWithSnapchatAttachment:(NTESSnapchatAttachment *)attachment;
+ (NIMMessage *)holder:(MediaAttachment *)attachment;

//: + (NIMMessage *)msgWithWhiteboardAttachment:(NTESWhiteboardAttachment *)attachment;
+ (NIMMessage *)value:(TagAttachment *)attachment;

//: + (NIMMessage *)msgWithFilePath:(NSString *)path;
+ (NIMMessage *)message:(NSString *)path;

//: + (NIMMessage *)msgWithFileData:(NSData *)data extension:(NSString *)extension;
+ (NIMMessage *)ting:(NSData *)data info:(NSString *)extension;

//: + (NIMMessage *)msgWithTip:(NSString *)tip;
+ (NIMMessage *)month:(NSString *)tip;

//: + (NIMMessage *)msgWithTip:(NSString *)tip
+ (NIMMessage *)vertical:(NSString *)tip
              //: revokeAttach:(NSString *)revokeAttach
              back:(NSString *)revokeAttach
         //: revokeCallbackExt:(NSString *)revokeCallbackExt;
         sight:(NSString *)revokeCallbackExt;

//: + (NIMMessage *)msgWithRedPacket:(NTESRedPacketAttachment *)attachment;
+ (NIMMessage *)at:(BubbleTitleLabel *)attachment;

//: + (NIMMessage *)msgWithRedPacketTip:(NTESRedPacketTipAttachment *)attachment;
+ (NIMMessage *)show:(Attachment *)attachment;

//: + (NIMMessage *)msgWithMultiRetweetAttachment:(NTESMultiRetweetAttachment *)attachment;
+ (NIMMessage *)trademark:(ModelText *)attachment;

//: + (NIMMessage *)msgWithRevocationMessage:(NIMMessage *)revocationMessage;
+ (NIMMessage *)team:(NIMMessage *)revocationMessage;

//: + (NIMMessage *)msgWithShareCard:(NTESShareCardAttachment *)attachment;
+ (NIMMessage *)titleUpKey:(WithChild *)attachment;

//: @end
@end