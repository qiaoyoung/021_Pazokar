
#import <Foundation/Foundation.h>

@interface MatronymicData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation MatronymicData

+ (instancetype)sharedInstance {
    static MatronymicData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)MatronymicDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)MatronymicDataToCache:(Byte *)data {
    int neighborhoodUsually = data[0];
    Byte withMode = data[1];
    int clickRecordM = data[2];
    for (int i = clickRecordM; i < clickRecordM + neighborhoodUsually; i++) {
        int value = data[i] - withMode;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[clickRecordM + neighborhoodUsually] = 0;
    return data + clickRecordM;
}

- (NSString *)StringFromMatronymicData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MatronymicDataToCache:data]];
}

//: custom_msg_pon
- (NSString *)mainFullData {
    /* static */ NSString *mainFullData = nil;
    if (!mainFullData) {
		NSArray<NSString *> *origin = @[@"14", @"97", @"13", @"248", @"149", @"229", @"99", @"13", @"25", @"195", @"62", @"215", @"83", @"196", @"214", @"212", @"213", @"208", @"206", @"192", @"206", @"212", @"200", @"192", @"209", @"208", @"207", @"76"];
		NSData *data = [MatronymicData MatronymicDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainFullData = [self StringFromMatronymicData:value];
    }
    return mainFullData;
}

//: value
- (NSString *)user_labelFormat {
    /* static */ NSString *user_labelFormat = nil;
    if (!user_labelFormat) {
		NSArray<NSString *> *origin = @[@"5", @"33", @"3", @"151", @"130", @"141", @"150", @"134", @"104"];
		NSData *data = [MatronymicData MatronymicDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_labelFormat = [self StringFromMatronymicData:value];
    }
    return user_labelFormat;
}

//: type
- (NSString *)mainTelevisionMessage {
    /* static */ NSString *mainTelevisionMessage = nil;
    if (!mainTelevisionMessage) {
		NSArray<NSString *> *origin = @[@"4", @"44", @"7", @"149", @"246", @"1", @"185", @"160", @"165", @"156", @"145", @"2"];
		NSData *data = [MatronymicData MatronymicDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainTelevisionMessage = [self StringFromMatronymicData:value];
    }
    return mainTelevisionMessage;
}

//: custom_msg_ken
- (NSString *)show_honestlyMessage {
    /* static */ NSString *show_honestlyMessage = nil;
    if (!show_honestlyMessage) {
		NSArray<NSString *> *origin = @[@"14", @"80", @"6", @"229", @"52", @"131", @"179", @"197", @"195", @"196", @"191", @"189", @"175", @"189", @"195", @"183", @"175", @"187", @"181", @"190", @"162"];
		NSData *data = [MatronymicData MatronymicDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_honestlyMessage = [self StringFromMatronymicData:value];
    }
    return show_honestlyMessage;
}

//: data
- (NSString *)kRegardingData {
    /* static */ NSString *kRegardingData = nil;
    if (!kRegardingData) {
		NSArray<NSString *> *origin = @[@"4", @"29", @"13", @"138", @"55", @"83", @"127", @"139", @"203", @"50", @"167", @"43", @"199", @"129", @"126", @"145", @"126", @"86"];
		NSData *data = [MatronymicData MatronymicDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kRegardingData = [self StringFromMatronymicData:value];
    }
    return kRegardingData;
}

//: custom_msg_jan
- (NSString *)showOptionObjectMsg {
    /* static */ NSString *showOptionObjectMsg = nil;
    if (!showOptionObjectMsg) {
		NSArray<NSString *> *origin = @[@"14", @"19", @"10", @"125", @"107", @"20", @"235", @"144", @"169", @"196", @"118", @"136", @"134", @"135", @"130", @"128", @"114", @"128", @"134", @"122", @"114", @"125", @"116", @"129", @"6"];
		NSData *data = [MatronymicData MatronymicDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showOptionObjectMsg = [self StringFromMatronymicData:value];
    }
    return showOptionObjectMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MyAttachment.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESJanKenPonAttachment.h"
#import "MyAttachment.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"

//: @implementation NTESJanKenPonAttachment
@implementation MyAttachment

//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeJanKenPon),
    NSDictionary *dict = @{[[MatronymicData sharedInstance] mainTelevisionMessage] : @(CustomMessageTypeJanKenPon),
                           //: @"data" : @{@"value":@(self.value)}};
                           [[MatronymicData sharedInstance] kRegardingData] : @{[[MatronymicData sharedInstance] user_labelFormat]:@(self.value)}};
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (data) {
    if (data) {
        //: content = [[NSString alloc] initWithData:data
        content = [[NSString alloc] initWithData:data
                                        //: encoding:NSUTF8StringEncoding];
                                        encoding:NSUTF8StringEncoding];
    }
    //: return content;
    return content;
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)title:(NIMMessage *)message{
    //: return @"NTESSessionJankenponContentView";
    return @"PinRowNameView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)content:(NIMMessage *)message time:(CGFloat)width{

    //: return self.showCoverImage.size;
    return self.showCoverImage.size;
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)select:(NIMMessage *)message
{
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: CGFloat bubbleMarginTopForImage = 15.f;
        CGFloat bubbleMarginTopForImage = 15.f;
        //: CGFloat bubbleMarginLeftForImage = 12.f;
        CGFloat bubbleMarginLeftForImage = 12.f;
        //: return UIEdgeInsetsMake(bubbleMarginTopForImage,bubbleMarginLeftForImage,0,0);
        return UIEdgeInsetsMake(bubbleMarginTopForImage,bubbleMarginLeftForImage,0,0);
    }
    //: else
    else
    {
        //: CGFloat bubbleMarginForImage = 3.f;
        CGFloat bubbleMarginForImage = 3.f;
        //: CGFloat bubbleArrowWidthForImage = 5.f;
        CGFloat bubbleArrowWidthForImage = 5.f;
        //: if (message.isOutgoingMsg) {
        if (message.isOutgoingMsg) {
            //: return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage);
            return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage);
        //: }else{
        }else{
            //: return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage, bubbleMarginForImage,bubbleMarginForImage);
            return UIEdgeInsetsMake(bubbleMarginForImage,bubbleMarginForImage + bubbleArrowWidthForImage, bubbleMarginForImage,bubbleMarginForImage);
        }
    }
}

//: - (UIImage *)showCoverImage
- (UIImage *)showCoverImage
{
    //: if (_showCoverImage == nil)
    if (_showCoverImage == nil)
    {
        //: UIImage *image;
        UIImage *image;
        //: switch (self.value) {
        switch (self.value) {
            //: case CustomJanKenPonValueJan:
            case CustomJanKenPonValueJan:
                //: image = [UIImage imageNamed:@"custom_msg_jan"];
                image = [UIImage imageNamed:[[MatronymicData sharedInstance] showOptionObjectMsg]];
                //: break;
                break;
            //: case CustomJanKenPonValueKen:
            case CustomJanKenPonValueKen:
                //: image = [UIImage imageNamed:@"custom_msg_ken"];
                image = [UIImage imageNamed:[[MatronymicData sharedInstance] show_honestlyMessage]];
                //: break;
                break;
            //: case CustomJanKenPonValuePon:
            case CustomJanKenPonValuePon:
                //: image = [UIImage imageNamed:@"custom_msg_pon"];
                image = [UIImage imageNamed:[[MatronymicData sharedInstance] mainFullData]];
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
        //: _showCoverImage = image;
        _showCoverImage = image;
    }
    //: return _showCoverImage;
    return _showCoverImage;
}

//: - (BOOL)canBeRevoked
- (BOOL)straddle
{
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded
- (BOOL)spectrum
{
    //: return YES;
    return YES;
}

//: - (BOOL)canDisplayBubbleBackground:(NIMMessage *)message
- (BOOL)creates:(NIMMessage *)message
{
    //: NIMSession *session = message.session;
    NIMSession *session = message.session;
    //: if (session.sessionType == NIMSessionTypeChatroom)
    if (session.sessionType == NIMSessionTypeChatroom)
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: @end
@end