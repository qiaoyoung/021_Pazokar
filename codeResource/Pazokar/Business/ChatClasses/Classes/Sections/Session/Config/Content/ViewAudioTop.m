
#import <Foundation/Foundation.h>

typedef struct {
    Byte administrate;
    Byte *perceiveTightenHomeworkText;
    unsigned int reallyPet;
	int spouseSound;
	int ant;
} StructScalawagData;

@interface ScalawagData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ScalawagData

+ (instancetype)sharedInstance {
    static ScalawagData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ScalawagDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ScalawagDataToByte:(StructScalawagData *)data {
    for (int i = 0; i < data->reallyPet; i++) {
        data->perceiveTightenHomeworkText[i] ^= data->administrate;
    }
    data->perceiveTightenHomeworkText[data->reallyPet] = 0;
	if (data->reallyPet >= 2) {
		data->spouseSound = data->perceiveTightenHomeworkText[0];
		data->ant = data->perceiveTightenHomeworkText[1];
	}
    return data->perceiveTightenHomeworkText;
}

- (NSString *)StringFromScalawagData:(StructScalawagData *)data {
    return [NSString stringWithUTF8String:(char *)[self ScalawagDataToByte:data]];
}

//: message should be audio
- (NSString *)show_textMessage {
    /* static */ NSString *show_textMessage = nil;
    if (!show_textMessage) {
		NSArray<NSNumber *> *origin = @[@181, @189, @171, @171, @185, @191, @189, @248, @171, @176, @183, @173, @180, @188, @248, @186, @189, @248, @185, @173, @188, @177, @183, @200];
		NSData *data = [ScalawagData ScalawagDataToData:origin];
        StructScalawagData value = (StructScalawagData){216, (Byte *)data.bytes, 23, 235, 255};
        show_textMessage = [self StringFromScalawagData:&value];
    }
    return show_textMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewAudioTop.m
// Case
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFAudioContentConfig.h"
#import "ViewAudioTop.h"
//: #import "MyUserKit.h"
#import "Case.h"

//: @implementation FFFAudioContentConfig
@implementation ViewAudioTop

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)read:(CGFloat)cellWidth quantity:(NIMMessage *)message
{
        //使用公式 长度 = (最长－最小)*(2/pi)*artan(时间/10)+最小，在10秒时变化逐渐变缓，随着时间增加 无限趋向于最大值
    //: NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    NIMAudioObject *audioContent = (NIMAudioObject*)[message messageObject];
    //: NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], @"message should be audio");
    NSAssert([audioContent isKindOfClass:[NIMAudioObject class]], [[ScalawagData sharedInstance] show_textMessage]);


    //: CGFloat value = 2*atan((audioContent.duration/1000.0-1)/10.0)/3.14159265358979323846264338327950288;
    CGFloat value = 2*atan((audioContent.duration/1000.0-1)/10.0)/3.14159265358979323846264338327950288;
    //: NSInteger audioContentMinWidth = 90;
    NSInteger audioContentMinWidth = 90;
    //: NSInteger audioContentMaxWidth = (cellWidth - 170);
    NSInteger audioContentMaxWidth = (cellWidth - 170);
    //: NSInteger audioContentHeight = 30;
    NSInteger audioContentHeight = 30;
//    return CGSizeMake((audioContentMaxWidth - audioContentMinWidth)* value + audioContentMinWidth, audioContentHeight);
    //: return CGSizeMake(15 + audioContentMinWidth, audioContentHeight);
    return CGSizeMake(15 + audioContentMinWidth, audioContentHeight);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)picture:(NIMMessage *)message
{
    //: return @"FFFSessionAudioContentView";
    return @"RowTingView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)cut:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Case pastTop].config tool:message].contentInsets;
}

//: @end
@end