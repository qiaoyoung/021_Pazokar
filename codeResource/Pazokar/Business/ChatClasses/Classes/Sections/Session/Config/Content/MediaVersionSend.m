
#import <Foundation/Foundation.h>

@interface HappinessData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation HappinessData

+ (instancetype)sharedInstance {
    static HappinessData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)HappinessDataToData:(NSString *)value {
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

- (Byte *)HappinessDataToCache:(Byte *)data {
    int oil = data[0];
    Byte nanna = data[1];
    int spatialRelation = data[2];
    for (int i = spatialRelation; i < spatialRelation + oil; i++) {
        int value = data[i] - nanna;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[spatialRelation + oil] = 0;
    return data + spatialRelation;
}

- (NSString *)StringFromHappinessData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HappinessDataToCache:data]];
}

//: 未知类型消息
- (NSString *)notiManagerContent {
    /* static */ NSString *notiManagerContent = nil;
    if (!notiManagerContent) {
		NSString *origin = @"1202090678B02E9C0AE89EACE9A1A7E9B3BDE7A08DE8B88AE883B191";
		NSData *data = [HappinessData HappinessDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiManagerContent = [self StringFromHappinessData:value];
    }
    return notiManagerContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MediaVersionSend.m
// Case
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyUnsupportContentConfig.h"
#import "MediaVersionSend.h"
//: #import "MyUserKit.h"
#import "Case.h"

//: @interface BusyUnsupportContentConfig ()
@interface MediaVersionSend ()

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @end
@end

//: @implementation BusyUnsupportContentConfig
@implementation MediaVersionSend

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.text = @"未知类型消息".nim_localized;
        _label.text = [[HappinessData sharedInstance] notiManagerContent].maxColor;
    }
    //: return self;
    return self;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)read:(CGFloat)cellWidth quantity:(NIMMessage *)message
{
    //: CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    //: return CGSizeMake(size.width, 40.f);
    return CGSizeMake(size.width, 40.f);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)picture:(NIMMessage *)message
{
    //: BusyKitSetting *setting = [[MyUserKit sharedKit].config setting:message];
    GreenSetting *setting = [[Case pastTop].config tool:message];
    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;

    //: return @"BusySessionUnknowContentView";
    return @"DateControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)cut:(NIMMessage *)message
{
    //: BusyKitSettings *settings = message.isOutgoingMsg? [MyUserKit sharedKit].config.rightBubbleSettings : [MyUserKit sharedKit].config.leftBubbleSettings;
    ImageTitle *settings = message.isOutgoingMsg? [Case pastTop].config.rightBubbleSettings : [Case pastTop].config.leftBubbleSettings;
    //: return settings.unsupportSetting.contentInsets;
    return settings.unsupportSetting.contentInsets;
}

//: @end
@end
