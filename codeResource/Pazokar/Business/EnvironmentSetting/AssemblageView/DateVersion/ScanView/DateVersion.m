
#import <Foundation/Foundation.h>

@interface LaughAwayData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation LaughAwayData

+ (instancetype)sharedInstance {
    static LaughAwayData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)LaughAwayDataToData:(NSString *)value {
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

- (Byte *)LaughAwayDataToCache:(Byte *)data {
    int drivewayHandle = data[0];
    Byte slowVirus = data[1];
    int gangSeniorDetect = data[2];
    for (int i = gangSeniorDetect; i < gangSeniorDetect + drivewayHandle; i++) {
        int value = data[i] + slowVirus;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[gangSeniorDetect + drivewayHandle] = 0;
    return data + gangSeniorDetect;
}

- (NSString *)StringFromLaughAwayData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self LaughAwayDataToCache:data]];
}

//: #24E8B9
- (NSString *)user_gateId {
    /* static */ NSString *user_gateId = nil;
    if (!user_gateId) {
		NSString *origin = @"075f0452c4d3d5e6d9e3dacb";
		NSData *data = [LaughAwayData LaughAwayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_gateId = [self StringFromLaughAwayData:value];
    }
    return user_gateId;
}

//: scan_scanline_wc
- (NSString *)app_scapeName {
    /* static */ NSString *app_scapeName = nil;
    if (!app_scapeName) {
		NSString *origin = @"103b0831290582ef382826332438282633312e332a243c2894";
		NSData *data = [LaughAwayData LaughAwayDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_scapeName = [self StringFromLaughAwayData:value];
    }
    return app_scapeName;
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
//: #import "SGScanViewConfigure.h"
#import "DateVersion.h"

//: @implementation SGScanViewConfigure
@implementation DateVersion

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
//        _isShowBorder = NO;
        //: _isShowBorder = YES;
        _isShowBorder = YES;
    }
    //: return self;
    return self;
}

//: + (instancetype)configure {
+ (instancetype)showMessage {
    //: return [[self alloc] init];
    return [[self alloc] init];
}

//: - (NSString *)scanline {
- (NSString *)scanline {
    //: if (!_scanline) {
    if (!_scanline) {
        //: return @"scan_scanline_wc";
        return [[LaughAwayData sharedInstance] app_scapeName];
    }
    //: return _scanline;
    return _scanline;
}

//: - (CGFloat)scanlineStep {
- (CGFloat)scanlineStep {
    //: if (!_scanlineStep) {
    if (!_scanlineStep) {
        //: return 3.5;
        return 3.5;
    }
    //: return _scanlineStep;
    return _scanlineStep;
}

//: - (UIColor *)color {
- (UIColor *)color {
    //: if (!_color) {
    if (!_color) {
        //: return [[UIColor blackColor] colorWithAlphaComponent:0.5];
        return [[UIColor blackColor] colorWithAlphaComponent:0.5];
    }
    //: return _color;
    return _color;
}

//: - (UIColor *)borderColor {
- (UIColor *)borderColor {
    //: if (!_borderColor) {
    if (!_borderColor) {
        //: return [UIColor whiteColor];
        return [UIColor whiteColor];
    }
    //: return _borderColor;
    return _borderColor;
}

//: - (CGFloat)borderWidth {
- (CGFloat)borderWidth {
    //: if (!_borderWidth) {
    if (!_borderWidth) {
        //: return 0.2;
        return 0.2;
    }
    //: return _borderWidth;
    return _borderWidth;
}

//: - (SGCornerLoaction)cornerLocation {
- (SGCornerLoaction)cornerLocation {
    //: if (!_cornerLocation) {
    if (!_cornerLocation) {
        //: return SGCornerLoactionDefault;
        return SGCornerLoactionDefault;
    }
    //: return _cornerLocation;
    return _cornerLocation;
}

//: - (UIColor *)cornerColor {
- (UIColor *)cornerColor {
    //: if (!_cornerColor) {
    if (!_cornerColor) {
//        _cornerColor = [UIColor greenColor];
        //: _cornerColor = [UIColor colorWithHexString:@"#24E8B9"];
        _cornerColor = [UIColor status:[[LaughAwayData sharedInstance] user_gateId]];
    }
    //: return _cornerColor;
    return _cornerColor;
}

//: - (CGFloat)cornerWidth {
- (CGFloat)cornerWidth {
    //: if (!_cornerWidth) {
    if (!_cornerWidth) {
        //: return 2.0;
        return 2.0;
    }
    //: return _cornerWidth;
    return _cornerWidth;
}

//: - (CGFloat)cornerLength {
- (CGFloat)cornerLength {
    //: if (!_cornerLength) {
    if (!_cornerLength) {
//        return 20.0;
        //: return 40.0;
        return 40.0;
    }
    //: return _cornerLength;
    return _cornerLength;
}

//: @end
@end