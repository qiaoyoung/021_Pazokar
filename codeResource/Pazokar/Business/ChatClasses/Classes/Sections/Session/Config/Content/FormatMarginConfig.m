
#import <Foundation/Foundation.h>

@interface PotentialData : NSObject

@end

@implementation PotentialData

+ (NSData *)PotentialDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)PotentialDataToCache:(Byte *)data {
    int overageWat = data[0];
    Byte diplomatic = data[1];
    int memberPate = data[2];
    for (int i = memberPate; i < memberPate + overageWat; i++) {
        int value = data[i] - diplomatic;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[memberPate + overageWat] = 0;
    return data + memberPate;
}

+ (NSString *)StringFromPotentialData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PotentialDataToCache:data]];
}

//: message should be video
+ (NSString *)dream_fromTeamValue {
    /* static */ NSString *dream_fromTeamValue = nil;
    if (!dream_fromTeamValue) {
		NSArray<NSString *> *origin = @[@"23", @"9", @"9", @"11", @"74", @"64", @"126", @"15", @"10", @"118", @"110", @"124", @"124", @"106", @"112", @"110", @"41", @"124", @"113", @"120", @"126", @"117", @"109", @"41", @"107", @"110", @"41", @"127", @"114", @"109", @"110", @"120", @"186"];
		NSData *data = [PotentialData PotentialDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_fromTeamValue = [self StringFromPotentialData:value];
    }
    return dream_fromTeamValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FormatMarginConfig.m
// Case
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFVideoContentConfig.h"
#import "FormatMarginConfig.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "MyUserKit.h"
#import "Case.h"

//: @implementation FFFVideoContentConfig
@implementation FormatMarginConfig
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)read:(CGFloat)cellWidth quantity:(NIMMessage *)message
{
    //: NIMVideoObject *videoObject = (NIMVideoObject*)[message messageObject];
    NIMVideoObject *videoObject = (NIMVideoObject*)[message messageObject];
    //: NSAssert([videoObject isKindOfClass:[NIMVideoObject class]], @"message should be video");
    NSAssert([videoObject isKindOfClass:[NIMVideoObject class]], [PotentialData dream_fromTeamValue]);

    //: CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    //: CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    //: CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    //: CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    //: CGSize contentSize = CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight);
    CGSize contentSize = CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight);


    //: if (!__CGSizeEqualToSize(videoObject.coverSize, CGSizeZero)) {
    if (!__CGSizeEqualToSize(videoObject.coverSize, CGSizeZero)) {
        //有封面就直接拿封面大小
        //: contentSize = [UIImage nim_sizeWithImageOriginSize:videoObject.coverSize
        contentSize = [UIImage disable:videoObject.coverSize
                                                   //: minSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   session:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   //: maxSize:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight)];
                                                   direct:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight)];
    }
    //: return contentSize;
    return contentSize;
}


//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)picture:(NIMMessage *)message
{
    //: return @"FFFSessionVideoContentView";
    return @"IndexSessionContentView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)cut:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Case pastTop].config tool:message].contentInsets;
}

//: @end
@end