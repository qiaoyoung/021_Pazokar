
#import <Foundation/Foundation.h>

@interface GuitarData : NSObject

@end

@implementation GuitarData

+ (NSData *)GuitarDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)GuitarDataToCache:(Byte *)data {
    int ellEcru = data[0];
    int available = data[1];
    for (int i = 0; i < ellEcru / 2; i++) {
        int begin = available + i;
        int end = available + ellEcru - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[available + ellEcru] = 0;
    return data + available;
}

+ (NSString *)StringFromGuitarData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self GuitarDataToCache:data]];
}  

//: inputImage
+ (NSString *)noti_hormoneTitle {
    /* static */ NSString *noti_hormoneTitle = nil;
    if (!noti_hormoneTitle) {
		NSArray<NSNumber *> *origin = @[@10, @5, @157, @98, @182, @101, @103, @97, @109, @73, @116, @117, @112, @110, @105, @123];
		NSData *data = [GuitarData GuitarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_hormoneTitle = [self StringFromGuitarData:value];
    }
    return noti_hormoneTitle;
}

//: inputCorrectionLevel
+ (NSString *)user_successFormat {
    /* static */ NSString *user_successFormat = nil;
    if (!user_successFormat) {
		NSArray<NSNumber *> *origin = @[@20, @10, @156, @248, @215, @87, @250, @95, @131, @29, @108, @101, @118, @101, @76, @110, @111, @105, @116, @99, @101, @114, @114, @111, @67, @116, @117, @112, @110, @105, @217];
		NSData *data = [GuitarData GuitarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_successFormat = [self StringFromGuitarData:value];
    }
    return user_successFormat;
}

//: inputColor0
+ (NSString *)userSirMessage {
    /* static */ NSString *userSirMessage = nil;
    if (!userSirMessage) {
		NSArray<NSNumber *> *origin = @[@11, @12, @52, @216, @166, @186, @203, @166, @217, @158, @61, @49, @48, @114, @111, @108, @111, @67, @116, @117, @112, @110, @105, @249];
		NSData *data = [GuitarData GuitarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userSirMessage = [self StringFromGuitarData:value];
    }
    return userSirMessage;
}

//: inputColor1
+ (NSString *)app_situationName {
    /* static */ NSString *app_situationName = nil;
    if (!app_situationName) {
		NSArray<NSNumber *> *origin = @[@11, @9, @92, @177, @211, @60, @131, @153, @172, @49, @114, @111, @108, @111, @67, @116, @117, @112, @110, @105, @253];
		NSData *data = [GuitarData GuitarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_situationName = [self StringFromGuitarData:value];
    }
    return app_situationName;
}

//: inputMessage
+ (NSString *)dream_currentlyFormat {
    /* static */ NSString *dream_currentlyFormat = nil;
    if (!dream_currentlyFormat) {
		NSArray<NSNumber *> *origin = @[@12, @7, @168, @183, @173, @47, @107, @101, @103, @97, @115, @115, @101, @77, @116, @117, @112, @110, @105, @177];
		NSData *data = [GuitarData GuitarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_currentlyFormat = [self StringFromGuitarData:value];
    }
    return dream_currentlyFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SGGenerateQRCode.h"
#import "ReloadQrcode.h"

//: @implementation SGGenerateQRCode
@implementation ReloadQrcode

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size {
+ (UIImage *)groupNimSize:(NSString *)data queryed:(CGFloat)size {
    //: return [self generateQRCodeWithData:data size:size color:[UIColor blackColor] backgroundColor:[UIColor whiteColor]];
    return [self nameForStatus:data input:size close:[UIColor blackColor] name:[UIColor whiteColor]];
}

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size color:(UIColor *)color backgroundColor:(UIColor *)backgroundColor {
+ (UIImage *)nameForStatus:(NSString *)data input:(CGFloat)size close:(UIColor *)color name:(UIColor *)backgroundColor {
    //: NSData *string_data = [data dataUsingEncoding:NSUTF8StringEncoding];
    NSData *string_data = [data dataUsingEncoding:NSUTF8StringEncoding];
    // 1、二维码滤镜
    //: CIFilter *fileter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    CIFilter *fileter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    //: [fileter setValue:string_data forKey:@"inputMessage"];
    [fileter setValue:string_data forKey:[GuitarData dream_currentlyFormat]];
    //: [fileter setValue:@"H" forKey:@"inputCorrectionLevel"];
    [fileter setValue:@"H" forKey:[GuitarData user_successFormat]];
    //: CIImage *ciImage = fileter.outputImage;
    CIImage *ciImage = fileter.outputImage;
    // 2、颜色滤镜
    //: CIFilter *color_filter = [CIFilter filterWithName:@"CIFalseColor"];
    CIFilter *color_filter = [CIFilter filterWithName:@"CIFalseColor"];
    //: [color_filter setValue:ciImage forKey:@"inputImage"];
    [color_filter setValue:ciImage forKey:[GuitarData noti_hormoneTitle]];
    //: [color_filter setValue:[CIColor colorWithCGColor:color.CGColor] forKey:@"inputColor0"];
    [color_filter setValue:[CIColor colorWithCGColor:color.CGColor] forKey:[GuitarData userSirMessage]];
    //: [color_filter setValue:[CIColor colorWithCGColor:backgroundColor.CGColor] forKey:@"inputColor1"];
    [color_filter setValue:[CIColor colorWithCGColor:backgroundColor.CGColor] forKey:[GuitarData app_situationName]];
    // 3、生成处理
    //: CIImage *outImage = color_filter.outputImage;
    CIImage *outImage = color_filter.outputImage;
    //: CGFloat scale = size / outImage.extent.size.width;
    CGFloat scale = size / outImage.extent.size.width;
    //: outImage = [outImage imageByApplyingTransform:CGAffineTransformMakeScale(scale, scale)];
    outImage = [outImage imageByApplyingTransform:CGAffineTransformMakeScale(scale, scale)];
    //: return [UIImage imageWithCIImage:outImage];
    return [UIImage imageWithCIImage:outImage];
}

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size logoImage:(UIImage *)logoImage ratio:(CGFloat)ratio {
+ (UIImage *)record:(NSString *)data tap:(CGFloat)size name:(UIImage *)logoImage canScale:(CGFloat)ratio {
    //: return [self generateQRCodeWithData:data size:size logoImage:logoImage ratio:ratio logoImageCornerRadius:5 logoImageBorderWidth:5 logoImageBorderColor:[UIColor whiteColor]];
    return [self asTingDomain:data saveQuantity:size midfield:logoImage red:ratio rangeColor:5 userFloat:5 inventoryItem:[UIColor whiteColor]];
}

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size logoImage:(UIImage *)logoImage ratio:(CGFloat)ratio logoImageCornerRadius:(CGFloat)logoImageCornerRadius logoImageBorderWidth:(CGFloat)logoImageBorderWidth logoImageBorderColor:(UIColor *)logoImageBorderColor {
+ (UIImage *)asTingDomain:(NSString *)data saveQuantity:(CGFloat)size midfield:(UIImage *)logoImage red:(CGFloat)ratio rangeColor:(CGFloat)logoImageCornerRadius userFloat:(CGFloat)logoImageBorderWidth inventoryItem:(UIColor *)logoImageBorderColor {
    //: UIImage *image = [self generateQRCodeWithData:data size:size color:[UIColor blackColor] backgroundColor:[UIColor whiteColor]];
    UIImage *image = [self nameForStatus:data input:size close:[UIColor blackColor] name:[UIColor whiteColor]];
    //: if (logoImage == nil) return image;
    if (logoImage == nil) return image;
    //: if (ratio < 0.0 || ratio > 0.5) {
    if (ratio < 0.0 || ratio > 0.5) {
        //: ratio = 0.25;
        ratio = 0.25;
    }
    //: CGFloat logoImageW = ratio * size;
    CGFloat logoImageW = ratio * size;
    //: CGFloat logoImageH = logoImageW;
    CGFloat logoImageH = logoImageW;
    //: CGFloat logoImageX = 0.5 * (image.size.width - logoImageW);
    CGFloat logoImageX = 0.5 * (image.size.width - logoImageW);
    //: CGFloat logoImageY = 0.5 * (image.size.height - logoImageH);
    CGFloat logoImageY = 0.5 * (image.size.height - logoImageH);
    //: CGRect logoImageRect = CGRectMake(logoImageX, logoImageY, logoImageW, logoImageH);
    CGRect logoImageRect = CGRectMake(logoImageX, logoImageY, logoImageW, logoImageH);
    // 绘制logo
    //: UIGraphicsBeginImageContextWithOptions(image.size, false, [UIScreen mainScreen].scale);
    UIGraphicsBeginImageContextWithOptions(image.size, false, [UIScreen mainScreen].scale);
    //: [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];

    //: logoImageCornerRadius = logoImageW/2.f;
    logoImageCornerRadius = logoImageW/2.f;

    //: UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:logoImageRect cornerRadius:logoImageCornerRadius];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:logoImageRect cornerRadius:logoImageCornerRadius];
    //: if (logoImageBorderWidth < 0.0 || logoImageBorderWidth > 10) {
    if (logoImageBorderWidth < 0.0 || logoImageBorderWidth > 10) {
        //: logoImageBorderWidth = 5;
        logoImageBorderWidth = 5;
    }
    //: path.lineWidth = logoImageBorderWidth;
    path.lineWidth = logoImageBorderWidth;
    //: [logoImageBorderColor setStroke];
    [logoImageBorderColor setStroke];
    //: [path stroke];
    [path stroke];
    //: [path addClip];
    [path addClip];
    //: [logoImage drawInRect:logoImageRect];
    [logoImage drawInRect:logoImageRect];
    //: UIImage *QRCodeImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *QRCodeImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return QRCodeImage;
    return QRCodeImage;
}

//: @end
@end