
#import <Foundation/Foundation.h>

@interface KillerData : NSObject

+ (instancetype)sharedInstance;

//: message must be custom
@property (nonatomic, copy) NSString *m_sideMessage;

@end

@implementation KillerData

+ (instancetype)sharedInstance {
    static KillerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)KillerDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)KillerDataToCache:(Byte *)data {
    int unshared = data[0];
    Byte titleFile = data[1];
    int lagerBeer = data[2];
    for (int i = lagerBeer; i < lagerBeer + unshared; i++) {
        int value = data[i] + titleFile;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[lagerBeer + unshared] = 0;
    return data + lagerBeer;
}

- (NSString *)StringFromKillerData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self KillerDataToCache:data]];
}

//: message must be custom
- (NSString *)m_sideMessage {
    if (!_m_sideMessage) {
		NSString *origin = @"16300B72715259CDAF60EA3D354343313735F03D454344F03235F0334543443F3DBE";
		NSData *data = [KillerData KillerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_sideMessage = [self StringFromKillerData:value];
    }
    return _m_sideMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SkimOverConfig.m
//  NIM
//
//  Created by chris on 16/1/14.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionCustomContentConfig.h"
#import "SkimOverConfig.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: @interface NTESSessionCustomContentConfig()
@interface SkimOverConfig()

//: @end
@end

//: @implementation NTESSessionCustomContentConfig
@implementation SkimOverConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)read:(CGFloat)cellWidth quantity:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], [KillerData sharedInstance].m_sideMessage);
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<AnglicismTing> info = (id<AnglicismTing>)object.attachment;
    //: return [info contentSize:message cellWidth:cellWidth];
    return [info content:message time:cellWidth];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)picture:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], [KillerData sharedInstance].m_sideMessage);
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<AnglicismTing> info = (id<AnglicismTing>)object.attachment;
    //: return [info cellContent:message];
    return [info title:message];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)cut:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], [KillerData sharedInstance].m_sideMessage);
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<AnglicismTing> info = (id<AnglicismTing>)object.attachment;
    //: return [info contentViewInsets:message];
    return [info select:message];
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)quantityVideo:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMCustomObject class]], @"message must be custom");
    NSAssert([object isKindOfClass:[NIMCustomObject class]], [KillerData sharedInstance].m_sideMessage);
    //: id<NTESCustomAttachmentInfo> info = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<AnglicismTing> info = (id<AnglicismTing>)object.attachment;
    //: if (![info respondsToSelector:@selector(canDisplayBubbleBackground:)])
    if (![info respondsToSelector:@selector(creates:)])
    {
        //: return YES;
        return YES;
    }
    //: return [info canDisplayBubbleBackground:message];
    return [info creates:message];
}


//: @end
@end