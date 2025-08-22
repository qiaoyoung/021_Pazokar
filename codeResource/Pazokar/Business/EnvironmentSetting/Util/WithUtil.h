// __DEBUG__
// __CLOSE_PRINT__
//
//  WithUtil.h
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "NTESSnapchatAttachment.h"
#import "MediaAttachment.h"
//: #import "NTESJanKenPonAttachment.h"
#import "MyAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "TagAttachment.h"
//: #import "NTESRedPacketAttachment.h"
#import "BubbleTitleLabel.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "Attachment.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "ModelText.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMessageUtil : NSObject
@interface WithUtil : NSObject

//: + (NSString *)messageContent:(NIMMessage *)message;
+ (NSString *)imagePull:(NIMMessage *)message;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END