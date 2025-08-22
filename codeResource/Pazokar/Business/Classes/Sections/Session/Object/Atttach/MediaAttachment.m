
#import <Foundation/Foundation.h>

@interface BaseData : NSObject

@end

@implementation BaseData

+ (Byte *)BaseDataToCache:(Byte *)data {
    int address = data[0];
    Byte centerRecord = data[1];
    int cherry = data[2];
    for (int i = cherry; i < cherry + address; i++) {
        int value = data[i] + centerRecord;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[cherry + address] = 0;
    return data + cherry;
}

+ (NSString *)StringFromBaseData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BaseDataToCache:data]];
}

//: session_snapchat_self_unread
+ (NSString *)mPosseId {
    /* static */ NSString *mPosseId = nil;
    if (!mPosseId) {
        Byte value[] = {28, 64, 7, 228, 150, 71, 237, 51, 37, 51, 51, 41, 47, 46, 31, 51, 46, 33, 48, 35, 40, 33, 52, 31, 51, 37, 44, 38, 31, 53, 46, 50, 37, 33, 36, 219};
        mPosseId = [self StringFromBaseData:value];
    }
    return mPosseId;
}

//: session_snapchat_other_unread
+ (NSString *)notiRedContentMessage {
    /* static */ NSString *notiRedContentMessage = nil;
    if (!notiRedContentMessage) {
        Byte value[] = {29, 9, 11, 71, 73, 119, 31, 138, 249, 220, 83, 106, 92, 106, 106, 96, 102, 101, 86, 106, 101, 88, 103, 90, 95, 88, 107, 86, 102, 107, 95, 92, 105, 86, 108, 101, 105, 92, 88, 91, 131};
        notiRedContentMessage = [self StringFromBaseData:value];
    }
    return notiRedContentMessage;
}

//: HEIC
+ (NSString *)user_selectPath {
    /* static */ NSString *user_selectPath = nil;
    if (!user_selectPath) {
        Byte value[] = {4, 13, 3, 59, 56, 60, 54, 120};
        user_selectPath = [self StringFromBaseData:value];
    }
    return user_selectPath;
}

//: url
+ (NSString *)user_inputData {
    /* static */ NSString *user_inputData = nil;
    if (!user_inputData) {
        Byte value[] = {3, 71, 4, 244, 46, 43, 37, 11};
        user_inputData = [self StringFromBaseData:value];
    }
    return user_inputData;
}

//: type
+ (NSString *)user_touristId {
    /* static */ NSString *user_touristId = nil;
    if (!user_touristId) {
        Byte value[] = {4, 71, 11, 129, 163, 114, 93, 4, 167, 213, 124, 45, 50, 41, 30, 149};
        user_touristId = [self StringFromBaseData:value];
    }
    return user_touristId;
}

//: session_snapchat_other_readed
+ (NSString *)appFullValue {
    /* static */ NSString *appFullValue = nil;
    if (!appFullValue) {
        Byte value[] = {29, 74, 9, 159, 108, 179, 190, 53, 188, 41, 27, 41, 41, 31, 37, 36, 21, 41, 36, 23, 38, 25, 30, 23, 42, 21, 37, 42, 30, 27, 40, 21, 40, 27, 23, 26, 27, 26, 250};
        appFullValue = [self StringFromBaseData:value];
    }
    return appFullValue;
}

//: jpg
+ (NSString *)main_tightenMsg {
    /* static */ NSString *main_tightenMsg = nil;
    if (!main_tightenMsg) {
        Byte value[] = {3, 4, 3, 102, 108, 99, 17};
        main_tightenMsg = [self StringFromBaseData:value];
    }
    return main_tightenMsg;
}

//: fired
+ (NSString *)user_seedPath {
    /* static */ NSString *user_seedPath = nil;
    if (!user_seedPath) {
        Byte value[] = {5, 85, 6, 146, 115, 92, 17, 20, 29, 16, 15, 157};
        user_seedPath = [self StringFromBaseData:value];
    }
    return user_seedPath;
}

//: session_snapchat_self_readed
+ (NSString *)m_bottomClickMsg {
    /* static */ NSString *m_bottomClickMsg = nil;
    if (!m_bottomClickMsg) {
        Byte value[] = {28, 78, 12, 116, 66, 72, 112, 253, 110, 71, 73, 178, 37, 23, 37, 37, 27, 33, 32, 17, 37, 32, 19, 34, 21, 26, 19, 38, 17, 37, 23, 30, 24, 17, 36, 23, 19, 22, 23, 22, 20};
        m_bottomClickMsg = [self StringFromBaseData:value];
    }
    return m_bottomClickMsg;
}

//: md5
+ (NSString *)m_motorIdent {
    /* static */ NSString *m_motorIdent = nil;
    if (!m_motorIdent) {
        Byte value[] = {3, 77, 3, 32, 23, 232, 145};
        m_motorIdent = [self StringFromBaseData:value];
    }
    return m_motorIdent;
}

//: data
+ (NSString *)userCellValue {
    /* static */ NSString *userCellValue = nil;
    if (!userCellValue) {
        Byte value[] = {4, 69, 5, 38, 89, 31, 28, 47, 28, 40};
        userCellValue = [self StringFromBaseData:value];
    }
    return userCellValue;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  SnapchatAttachment.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSnapchatAttachment.h"
#import "MediaAttachment.h"
//: #import "NTESFileLocationHelper.h"
#import "VersionData.h"
//: #import "NSData+NTES.h"
#import "NSData+Date.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"

//: @interface NTESSnapchatAttachment()
@interface MediaAttachment()

//: @property (nonatomic,assign) BOOL isFromMe;
@property (nonatomic,assign) BOOL isFromMe;

//: @end
@end

//: @implementation NTESSnapchatAttachment
@implementation MediaAttachment

//: - (void)setImage:(UIImage *)image
- (void)setStatisticalTable:(UIImage *)image
{
    //: NSData *data = UIImageJPEGRepresentation(image, 0.3);
    NSData *data = UIImageJPEGRepresentation(image, 0.3);
    //: NSString *md5= [data MD5String];
    NSString *md5= [data modeHandle];
    //: self.md5 = md5;
    self.md5 = md5;

    //: [data writeToFile:[self filepath]
    [data writeToFile:[self straitAndNarrow]
           //: atomically:YES];
           atomically:YES];
}

//: - (void)setImageFilePath:(NSString *)path
- (void)setTargetText:(NSString *)path
{
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
        //: NSData *jpgData = nil;
        NSData *jpgData = nil;
        //: if ([path.pathExtension.uppercaseString isEqualToString:@"HEIC"]) {
        if ([path.pathExtension.uppercaseString isEqualToString:[BaseData user_selectPath]]) {
            //: CIImage *ciImage = [CIImage imageWithContentsOfURL:[NSURL fileURLWithPath:path]];
            CIImage *ciImage = [CIImage imageWithContentsOfURL:[NSURL fileURLWithPath:path]];
                                //: CIContext *context = [CIContext context];
                                CIContext *context = [CIContext context];
            //: jpgData = [context JPEGRepresentationOfImage:ciImage colorSpace:ciImage.colorSpace options:@{}];
            jpgData = [context JPEGRepresentationOfImage:ciImage colorSpace:ciImage.colorSpace options:@{}];
        //: } else {
        } else {
            //: jpgData = [NSData dataWithContentsOfFile:path];
            jpgData = [NSData dataWithContentsOfFile:path];
        }

        //: self.md5 = [jpgData MD5String];
        self.md5 = [jpgData modeHandle];

        //: [jpgData writeToFile:[self filepath]
        [jpgData writeToFile:[self straitAndNarrow]
               //: atomically:YES];
               atomically:YES];
     }
}

//: - (void)setIsFired:(BOOL)isFired{
- (void)setIsFired:(BOOL)isFired{
    //: if (_isFired != isFired) {
    if (_isFired != isFired) {
        //: _isFired = isFired;
        _isFired = isFired;
        //: [self updateCover];
        [self mobile];
    }
}


//: - (NSString *)filepath
- (NSString *)straitAndNarrow
{
    //: NSString *filename = [_md5 stringByAppendingFormat:@".%@",(@"jpg")];
    NSString *filename = [_md5 stringByAppendingFormat:@".%@",([BaseData main_tightenMsg])];
    //: return [NTESFileLocationHelper filepathForImage:filename];
    return [VersionData cleanVisualisation:filename];
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)title:(NIMMessage *)message{
    //: self.isFromMe = message.isOutgoingMsg;
    self.isFromMe = message.isOutgoingMsg;
    //: return @"NTESSessionSnapchatContentView";
    return @"StyleTitleView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)content:(NIMMessage *)message time:(CGFloat)width{
    //: self.isFromMe = message.isOutgoingMsg;
    self.isFromMe = message.isOutgoingMsg;
    //: CGSize size = self.showCoverImage.size;
    CGSize size = self.showCoverImage.size;
    //: CGFloat customSnapMessageImageRightToText = 5;
    CGFloat customSnapMessageImageRightToText = 5;
    //: return CGSizeMake(size.width + customSnapMessageImageRightToText, size.height);
    return CGSizeMake(size.width + customSnapMessageImageRightToText, size.height);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)select:(NIMMessage *)message
{
    //: CGFloat bubblePaddingForImage = 3.f;
    CGFloat bubblePaddingForImage = 3.f;
    //: CGFloat bubbleArrowWidthForImage = -4.f;
    CGFloat bubbleArrowWidthForImage = -4.f;
    //: if (message.isOutgoingMsg) {
    if (message.isOutgoingMsg) {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
    //: } else {
    } else {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage + 4, bubblePaddingForImage,bubblePaddingForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage + 4, bubblePaddingForImage,bubblePaddingForImage);
    }
}

//: - (void)setIsFromMe:(BOOL)isFromMe{
- (void)setIsFromMe:(BOOL)isFromMe{
    //: if (_isFromMe != isFromMe) {
    if (_isFromMe != isFromMe) {
        //: _isFromMe = isFromMe;
        _isFromMe = isFromMe;
        //: [self updateCover];
        [self mobile];
    }
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
    //: return YES;
    return YES;
}



//: #pragma NIMCustomAttachment
#pragma NIMCustomAttachment
//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: NSMutableDictionary *data = [NSMutableDictionary dictionary];
    NSMutableDictionary *data = [NSMutableDictionary dictionary];
    //: [dict setObject:@(CustomMessageTypeSnapchat) forKey:@"type"];
    [dict setObject:@(CustomMessageTypeSnapchat) forKey:[BaseData user_touristId]];
    //: [data setObject:_md5?_md5:@"" forKey:@"md5"];
    [data setObject:_md5?_md5:@"" forKey:[BaseData m_motorIdent]];
    //: [data setObject:@(_isFired) forKey:@"fired"];
    [data setObject:@(_isFired) forKey:[BaseData user_seedPath]];
    //: if ([_url length])
    if ([_url length])
    {
        //: [data setObject:_url forKey:@"url"];
        [data setObject:_url forKey:[BaseData user_inputData]];
    }
    //: [dict setObject:data forKey:@"data"];
    [dict setObject:data forKey:[BaseData userCellValue]];

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


//: #pragma mark - 实现文件上传需要接口
#pragma mark - 实现文件上传需要接口
//: - (BOOL)attachmentNeedsUpload
- (BOOL)attachmentNeedsUpload
{
    //: return [_url length] == 0;
    return [_url length] == 0;
}

//: - (NSString *)attachmentPathForUploading
- (NSString *)attachmentPathForUploading
{
    //: return [self filepath];
    return [self straitAndNarrow];
}

//: - (void)updateAttachmentURL:(NSString *)urlString
- (void)updateAttachmentURL:(NSString *)urlString
{
    //: self.url = urlString;
    self.url = urlString;
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)updateCover{
- (void)mobile{
    //: UIImage *image;
    UIImage *image;
    //: if (!self.isFromMe) {
    if (!self.isFromMe) {
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_other_readed"];
            image = [UIImage imageNamed:[BaseData appFullValue]];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_other_unread"];
            image = [UIImage imageNamed:[BaseData notiRedContentMessage]];
        }
    //: }else{
    }else{
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_self_readed"];
            image = [UIImage imageNamed:[BaseData m_bottomClickMsg]];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_self_unread"];
            image = [UIImage imageNamed:[BaseData mPosseId]];
        }
    }
    //: self.showCoverImage = image;
    self.showCoverImage = image;
}

//: - (UIImage *)showCoverImage
- (UIImage *)showCoverImage
{
    //: if (_showCoverImage == nil)
    if (_showCoverImage == nil)
    {
        //: [self updateCover];
        [self mobile];
    }
    //: return _showCoverImage;
    return _showCoverImage;
}

//: #pragma mark - https
#pragma mark - https
//: - (NSString *)url
- (NSString *)url
{
    //: return [_url length] ?
    return [_url length] ?
    //: [[[NIMSDK sharedSDK] resourceManager] normalizeURLString:_url] : nil;
    [[[NIMSDK sharedSDK] resourceManager] normalizeURLString:_url] : nil;
}

//: @end
@end