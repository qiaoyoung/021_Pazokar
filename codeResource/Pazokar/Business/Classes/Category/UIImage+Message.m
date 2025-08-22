
#import <Foundation/Foundation.h>

typedef struct {
    Byte constraintAye;
    Byte *potentiality;
    unsigned int contemplate;
} StructAggressiveData;

@interface AggressiveData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AggressiveData

+ (instancetype)sharedInstance {
    static AggressiveData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)AggressiveDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)AggressiveDataToByte:(StructAggressiveData *)data {
    for (int i = 0; i < data->contemplate; i++) {
        data->potentiality[i] ^= data->constraintAye;
    }
    data->potentiality[data->contemplate] = 0;
    return data->potentiality;
}

- (NSString *)StringFromAggressiveData:(StructAggressiveData *)data {
    return [NSString stringWithUTF8String:(char *)[self AggressiveDataToByte:data]];
}

//: Clear_color_image
- (NSString *)dream_childValue {
    /* static */ NSString *dream_childValue = nil;
    if (!dream_childValue) {
		NSArray<NSString *> *origin = @[@"74", @"101", @"108", @"104", @"123", @"86", @"106", @"102", @"101", @"102", @"123", @"86", @"96", @"100", @"104", @"110", @"108", @"225"];
		NSData *data = [AggressiveData AggressiveDataToData:origin];
        StructAggressiveData value = (StructAggressiveData){9, (Byte *)data.bytes, 17};
        dream_childValue = [self StringFromAggressiveData:&value];
    }
    return dream_childValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+Color.m
//  yixin_iphone
//
//  Created by Xuhui on 14-3-17.
//  Copyright (c) 2014年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import "UIImage+NTESColor.h"
#import "UIImage+Message.h"

//: @interface UIColorCache : NSObject
@interface ColorOn : NSObject
//: @property (nonatomic,strong) NSCache *colorImageCache;
@property (nonatomic,strong) NSCache *colorImageCache;
//: @end
@end

//: @implementation UIColorCache
@implementation ColorOn
//: + (instancetype)sharedCache
+ (instancetype)pressed
{
    //: static UIColorCache *instance = nil;
    static ColorOn *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[UIColorCache alloc] init];
        instance = [[ColorOn alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _colorImageCache = [[NSCache alloc] init];
        _colorImageCache = [[NSCache alloc] init];
    }
    //: return self;
    return self;
}

//: - (UIImage *)image:(UIColor *)color
- (UIImage *)disable:(UIColor *)color
{
    //: return color ? [_colorImageCache objectForKey:[color description]] : nil;
    return color ? [_colorImageCache objectForKey:[color description]] : nil;
}

//: - (void)setImage:(UIImage *)image
- (void)nonsolidColourStepUnwishedImage:(UIImage *)image
        //: forColor:(UIColor *)color
        along:(UIColor *)color
{
    //: [_colorImageCache setObject:image
    [_colorImageCache setObject:image
                         //: forKey:[color description]];
                         forKey:[color description]];
}
//: @end
@end

//: @implementation UIImage (NTESColor)
@implementation UIImage (Message)

//: + (UIImage *)clearColorImage {
+ (UIImage *)more {
    //: return [UIImage imageNamed:@"Clear_color_image"];
    return [UIImage imageNamed:[[AggressiveData sharedInstance] dream_childValue]];
}

//: + (UIImage *)imageWithColor:(UIColor *)color {
+ (UIImage *)device:(UIColor *)color {
    //: if (color == nil)
    if (color == nil)
    {
        //: assert(0);
        assert(0);
        //: return nil;
        return nil;
    }
    //: UIImage *image = [[UIColorCache sharedCache] image:color];
    UIImage *image = [[ColorOn pressed] disable:color];
    //: if (image == nil)
    if (image == nil)
    {
        //: CGFloat alphaChannel;
        CGFloat alphaChannel;
        //: [color getRed:NULL green:NULL blue:NULL alpha:&alphaChannel];
        [color getRed:NULL green:NULL blue:NULL alpha:&alphaChannel];
        //: BOOL opaqueImage = (alphaChannel == 1.0);
        BOOL opaqueImage = (alphaChannel == 1.0);
        //: CGRect rect = CGRectMake(0, 0, 1, 1);
        CGRect rect = CGRectMake(0, 0, 1, 1);
        //: UIGraphicsBeginImageContextWithOptions(rect.size, opaqueImage, [UIScreen mainScreen].scale);
        UIGraphicsBeginImageContextWithOptions(rect.size, opaqueImage, [UIScreen mainScreen].scale);
        //: [color setFill];
        [color setFill];
        //: UIRectFill(rect);
        UIRectFill(rect);
        //: image = UIGraphicsGetImageFromCurrentImageContext();
        image = UIGraphicsGetImageFromCurrentImageContext();
        //: UIGraphicsEndImageContext();
        UIGraphicsEndImageContext();
        //: [[UIColorCache sharedCache] setImage:image
        [[ColorOn pressed] nonsolidColourStepUnwishedImage:image
                                    //: forColor:color];
                                    along:color];
    }
    //: return image;
    return image;
}


//: @end
@end