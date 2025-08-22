
#import <Foundation/Foundation.h>

@interface VirusData : NSObject

+ (instancetype)sharedInstance;

//: data
@property (nonatomic, copy) NSString *appNameUrl;

//: redPacketSendID
@property (nonatomic, copy) NSString *noti_differentlyViewFormat;

//: content
@property (nonatomic, copy) NSString *mFinStr;

//: redPacketId
@property (nonatomic, copy) NSString *dream_verticalData;

//: type
@property (nonatomic, copy) NSString *app_minVirusName;

//: title
@property (nonatomic, copy) NSString *mWithTitle;

@end

@implementation VirusData

+ (instancetype)sharedInstance {
    static VirusData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)VirusDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)VirusDataToCache:(Byte *)data {
    int inMigration = data[0];
    int book = data[1];
    for (int i = 0; i < inMigration / 2; i++) {
        int begin = book + i;
        int end = book + inMigration - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[book + inMigration] = 0;
    return data + book;
}

- (NSString *)StringFromVirusData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self VirusDataToCache:data]];
}  

//: redPacketId
- (NSString *)dream_verticalData {
    if (!_dream_verticalData) {
		NSArray<NSNumber *> *origin = @[@11, @8, @36, @140, @14, @18, @197, @228, @100, @73, @116, @101, @107, @99, @97, @80, @100, @101, @114, @202];
		NSData *data = [VirusData VirusDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_verticalData = [self StringFromVirusData:value];
    }
    return _dream_verticalData;
}

//: redPacketSendID
- (NSString *)noti_differentlyViewFormat {
    if (!_noti_differentlyViewFormat) {
		NSArray<NSNumber *> *origin = @[@15, @2, @68, @73, @100, @110, @101, @83, @116, @101, @107, @99, @97, @80, @100, @101, @114, @241];
		NSData *data = [VirusData VirusDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_differentlyViewFormat = [self StringFromVirusData:value];
    }
    return _noti_differentlyViewFormat;
}

//: data
- (NSString *)appNameUrl {
    if (!_appNameUrl) {
		NSArray<NSNumber *> *origin = @[@4, @9, @72, @157, @90, @146, @58, @121, @220, @97, @116, @97, @100, @201];
		NSData *data = [VirusData VirusDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appNameUrl = [self StringFromVirusData:value];
    }
    return _appNameUrl;
}

//: content
- (NSString *)mFinStr {
    if (!_mFinStr) {
		NSArray<NSNumber *> *origin = @[@7, @12, @163, @156, @54, @72, @81, @60, @70, @137, @238, @135, @116, @110, @101, @116, @110, @111, @99, @4];
		NSData *data = [VirusData VirusDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mFinStr = [self StringFromVirusData:value];
    }
    return _mFinStr;
}

//: title
- (NSString *)mWithTitle {
    if (!_mWithTitle) {
		NSArray<NSNumber *> *origin = @[@5, @11, @241, @134, @163, @216, @84, @59, @16, @64, @146, @101, @108, @116, @105, @116, @149];
		NSData *data = [VirusData VirusDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mWithTitle = [self StringFromVirusData:value];
    }
    return _mWithTitle;
}

//: type
- (NSString *)app_minVirusName {
    if (!_app_minVirusName) {
		NSArray<NSNumber *> *origin = @[@4, @6, @183, @212, @93, @208, @101, @112, @121, @116, @250];
		NSData *data = [VirusData VirusDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_minVirusName = [self StringFromVirusData:value];
    }
    return _app_minVirusName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BubbleTitleLabel.m
//  NIM
//
//  Created by chris on 2017/7/14.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPacketAttachment.h"
#import "BubbleTitleLabel.h"

//: @implementation NTESRedPacketAttachment
@implementation BubbleTitleLabel

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"title" : self.title,
                                  [VirusData sharedInstance].mWithTitle : self.title,
                                  //: @"content" : self.content,
                                  [VirusData sharedInstance].mFinStr : self.content,
                                  //: @"redPacketId" : self.redPacketId,
                                  [VirusData sharedInstance].dream_verticalData : self.redPacketId,
                                  //: @"redPacketSendID" : self.sendID
                                  [VirusData sharedInstance].noti_differentlyViewFormat : self.sendID
                                 //: };
                                 };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacket), @"data": dictContent};
    NSDictionary *dict = @{[VirusData sharedInstance].app_minVirusName: @(CustomMessageTypeRedPacket), [VirusData sharedInstance].appNameUrl: dictContent};
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
                                                       //: options:0
                                                       options:0
                                                         //: error:nil];
                                                         error:nil];
    //: return [[NSString alloc] initWithData:jsonData
    return [[NSString alloc] initWithData:jsonData
                                 //: encoding:NSUTF8StringEncoding];
                                 encoding:NSUTF8StringEncoding];
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)content:(NIMMessage *)message time:(CGFloat)width {
    //: return CGSizeMake(150, 165);
    return CGSizeMake(150, 165);
}


//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message {
- (UIEdgeInsets)select:(NIMMessage *)message {
    //: CGFloat bubblePaddingForImage = 3.f;
    CGFloat bubblePaddingForImage = 3.f;
    //: CGFloat bubbleArrowWidthForImage = 5.f;
    CGFloat bubbleArrowWidthForImage = 5.f;
    //: if (message.isOutgoingMsg) {
    if (message.isOutgoingMsg) {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
    //: }else{
    }else{
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage, bubblePaddingForImage,bubblePaddingForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage, bubblePaddingForImage,bubblePaddingForImage);
    }
}

//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)title:(NIMMessage *)message{
   //: return @"NTESSessionRedPacketContentView";
   return @"TitleControl";
}

//: - (BOOL)canBeForwarded
- (BOOL)spectrum
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)straddle
{
    //: return NO;
    return NO;
}


//: @end
@end