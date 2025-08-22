
#import <Foundation/Foundation.h>

NSString *StringFromTitleRecentData(Byte *data);


//: type
Byte mainSeparateTitle[] = {3, 4, 90, 5, 86, 206, 211, 202, 191, 141};

//: data
Byte mViewFormat[] = {26, 4, 79, 4, 179, 176, 195, 176, 216};

//: personCardId
Byte m_nextShowHeightId[] = {83, 12, 21, 12, 184, 21, 250, 116, 162, 38, 218, 218, 133, 122, 135, 136, 132, 131, 88, 118, 135, 121, 94, 121, 91};

//: title
Byte mainForbidIdent[] = {13, 5, 95, 7, 109, 62, 244, 211, 200, 211, 203, 196, 252};

//: content
Byte dream_memberTitle[] = {3, 7, 41, 7, 91, 219, 136, 140, 152, 151, 157, 142, 151, 157, 24};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithChild.m
//  NIM
//
//  Created by 田玉龙 on 2022/8/22.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESShareCardAttachment.h"
#import "WithChild.h"

//: @implementation NTESShareCardAttachment
@implementation WithChild

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
        //: @"title" : self.title?:@"",
        StringFromTitleRecentData(mainForbidIdent) : self.title?:@"",
        //: @"content" : self.content?:@"",
        StringFromTitleRecentData(dream_memberTitle) : self.content?:@"",
        //: @"personCardId" : self.personCardId?:@"",
        StringFromTitleRecentData(m_nextShowHeightId) : self.personCardId?:@"",
        //: @"type" : self.type?:@"0",
        StringFromTitleRecentData(mainSeparateTitle) : self.type?:@"0",
    //: };
    };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeCard), @"data": dictContent};
    NSDictionary *dict = @{StringFromTitleRecentData(mainSeparateTitle): @(CustomMessageTypeCard), StringFromTitleRecentData(mViewFormat): dictContent};
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


//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)ting:(CGFloat)cellWidth modeAccumulation:(NIMMessage *)message
{
//    NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];

    //: CGSize contentSize = CGSizeMake(170, 36);
    CGSize contentSize = CGSizeMake(170, 36);
    //: return contentSize;
    return contentSize;
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)content:(NIMMessage *)message time:(CGFloat)width {
    //: return CGSizeMake(170, 36);
    return CGSizeMake(170, 36);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)title:(NIMMessage *)message
{
    //: return @"FFFSessionShareCardContentView";
    return @"NameContentView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)select:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Case pastTop].config tool:message].contentInsets;
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

Byte * TitleRecentDataToCache(Byte *data) {
    int redM = data[0];
    int awarenessClick = data[1];
    Byte makeMessage = data[2];
    int laughWooden = data[3];
    if (!redM) return data + laughWooden;
    for (int i = laughWooden; i < laughWooden + awarenessClick; i++) {
        int value = data[i] - makeMessage;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[laughWooden + awarenessClick] = 0;
    return data + laughWooden;
}

NSString *StringFromTitleRecentData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TitleRecentDataToCache(data)];
}
