
#import <Foundation/Foundation.h>

typedef struct {
    Byte streetSmartAwareness;
    Byte *cafeteria;
    unsigned int sign;
	int commendation;
	int technical;
	int shortSubject;
} StructWhitePotatoData;

@interface WhitePotatoData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation WhitePotatoData

+ (instancetype)sharedInstance {
    static WhitePotatoData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)WhitePotatoDataToByte:(StructWhitePotatoData *)data {
    for (int i = 0; i < data->sign; i++) {
        data->cafeteria[i] ^= data->streetSmartAwareness;
    }
    data->cafeteria[data->sign] = 0;
	if (data->sign >= 3) {
		data->commendation = data->cafeteria[0];
		data->technical = data->cafeteria[1];
		data->shortSubject = data->cafeteria[2];
	}
    return data->cafeteria;
}

- (NSString *)StringFromWhitePotatoData:(StructWhitePotatoData *)data {
    return [NSString stringWithUTF8String:(char *)[self WhitePotatoDataToByte:data]];
}

//: message should be image
- (NSString *)m_hqKey {
    /* static */ NSString *m_hqKey = nil;
    if (!m_hqKey) {
        StructWhitePotatoData value = (StructWhitePotatoData){67, (Byte []){46, 38, 48, 48, 34, 36, 38, 99, 48, 43, 44, 54, 47, 39, 99, 33, 38, 99, 42, 46, 34, 36, 38, 198}, 23, 132, 148, 77};
        m_hqKey = [self StringFromWhitePotatoData:&value];
    }
    return m_hqKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MoreConfig.m
// Case
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFImageContentConfig.h"
#import "MoreConfig.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "MyUserKit.h"
#import "Case.h"

//: @implementation FFFImageContentConfig
@implementation MoreConfig
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)read:(CGFloat)cellWidth quantity:(NIMMessage *)message
{
    //: NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];
    NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];
    //: NSAssert([imageObject isKindOfClass:[NIMImageObject class]], @"message should be image");
    NSAssert([imageObject isKindOfClass:[NIMImageObject class]], [[WhitePotatoData sharedInstance] m_hqKey]);

    //: CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    //: CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    //: CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    //: CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    CGFloat attachmentImageMaxHeight = (cellWidth - 184);


    //: CGSize imageSize;
    CGSize imageSize;
    //: if (!__CGSizeEqualToSize(imageObject.size, CGSizeZero)) {
    if (!__CGSizeEqualToSize(imageObject.size, CGSizeZero)) {
        //: imageSize = imageObject.size;
        imageSize = imageObject.size;
        //: if(__CGSizeEqualToSize(imageSize, CGSizeMake(200, 200)) || __CGSizeEqualToSize(imageSize, CGSizeMake(300, 300))){
        if(__CGSizeEqualToSize(imageSize, CGSizeMake(200, 200)) || __CGSizeEqualToSize(imageSize, CGSizeMake(300, 300))){
            //: imageSize = CGSizeMake(80, 80);
            imageSize = CGSizeMake(80, 80);
        }
    }
    //: else
    else
    {
        //: UIImage *image = [UIImage imageWithContentsOfFile:imageObject.thumbPath];
        UIImage *image = [UIImage imageWithContentsOfFile:imageObject.thumbPath];
        //: imageSize = image ? image.size : CGSizeZero;
        imageSize = image ? image.size : CGSizeZero;
    }
    //: CGSize contentSize = [UIImage nim_sizeWithImageOriginSize:imageSize
    CGSize contentSize = [UIImage disable:imageSize
                                                   //: minSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   session:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   //: maxSize:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight )];
                                                   direct:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight )];
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)picture:(NIMMessage *)message
{
    //: return @"FFFSessionImageContentView";
    return @"MessageControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)cut:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Case pastTop].config tool:message].contentInsets;
}



//: @end
@end