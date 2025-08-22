
#import <Foundation/Foundation.h>

@interface FromData : NSObject

+ (instancetype)sharedInstance;

//: xia
@property (nonatomic, copy) NSString *app_modeName;

//: shen
@property (nonatomic, copy) NSString *showMemberToolMessage;

//: chong
@property (nonatomic, copy) NSString *show_listMinId;

//: chang
@property (nonatomic, copy) NSString *noti_inputMsg;

@end

@implementation FromData

+ (instancetype)sharedInstance {
    static FromData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)FromDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)FromDataToCache:(Byte *)data {
    int enable = data[0];
    Byte vox = data[1];
    int image = data[2];
    for (int i = image; i < image + enable; i++) {
        int value = data[i] - vox;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[image + enable] = 0;
    return data + image;
}

- (NSString *)StringFromFromData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FromDataToCache:data]];
}

//: xia
- (NSString *)app_modeName {
    if (!_app_modeName) {
		NSArray<NSString *> *origin = @[@"3", @"18", @"6", @"137", @"212", @"65", @"138", @"123", @"115", @"33"];
		NSData *data = [FromData FromDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_modeName = [self StringFromFromData:value];
    }
    return _app_modeName;
}

//: chong
- (NSString *)show_listMinId {
    if (!_show_listMinId) {
		NSArray<NSString *> *origin = @[@"5", @"74", @"6", @"104", @"212", @"244", @"173", @"178", @"185", @"184", @"177", @"147"];
		NSData *data = [FromData FromDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_listMinId = [self StringFromFromData:value];
    }
    return _show_listMinId;
}

//: shen
- (NSString *)showMemberToolMessage {
    if (!_showMemberToolMessage) {
		NSArray<NSString *> *origin = @[@"4", @"17", @"12", @"187", @"55", @"211", @"7", @"140", @"172", @"200", @"93", @"167", @"132", @"121", @"118", @"127", @"142"];
		NSData *data = [FromData FromDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showMemberToolMessage = [self StringFromFromData:value];
    }
    return _showMemberToolMessage;
}

//: chang
- (NSString *)noti_inputMsg {
    if (!_noti_inputMsg) {
		NSArray<NSString *> *origin = @[@"5", @"49", @"13", @"80", @"253", @"240", @"203", @"226", @"53", @"51", @"139", @"67", @"197", @"148", @"153", @"146", @"159", @"152", @"22"];
		NSData *data = [FromData FromDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_inputMsg = [self StringFromFromData:value];
    }
    return _noti_inputMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+Emo.m
//  Demo
//
//  Created by LeeJay on 2018/7/5.
//  Copyright © 2018年 LeeJay. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSString+LJExtension.h"
#import "NSString+Emo.h"

//: @implementation NSString (LJExtension)
@implementation NSString (Emo)

//: + (NSString *)lj_filterSpecialString:(NSString *)string
+ (NSString *)filter:(NSString *)string
{
    //: if (string == nil)
    if (string == nil)
    {
        //: return @"";
        return @"";
    }

    //: string = [string stringByReplacingOccurrencesOfString:@"+86" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"+86" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@"-" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"-" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@"(" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"(" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@")" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@")" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: return string;
    return string;
}

//: + (NSString *)lj_pinyinForString:(NSString *)string
+ (NSString *)max:(NSString *)string
{
    //: if (string.length == 0)
    if (string.length == 0)
    {
        //: return nil;
        return nil;
    }

    //: NSMutableString *mutableString = [NSMutableString stringWithString:string];
    NSMutableString *mutableString = [NSMutableString stringWithString:string];
    //: CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, false);
    CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, false);
    //: NSMutableString *pinyinString = [[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]] mutableCopy];
    NSMutableString *pinyinString = [[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]] mutableCopy];

    //: NSString *str = [string substringToIndex:1];
    NSString *str = [string substringToIndex:1];

    //: if ([str isEqualToString:@"长"])
    if ([str isEqualToString:@"长"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:@"chang"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:[FromData sharedInstance].noti_inputMsg];
    }
    //: if ([str isEqualToString:@"沈"])
    if ([str isEqualToString:@"沈"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 4) withString:@"shen"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 4) withString:[FromData sharedInstance].showMemberToolMessage];
    }
    //: if ([str isEqualToString:@"厦"])
    if ([str isEqualToString:@"厦"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 3) withString:@"xia"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 3) withString:[FromData sharedInstance].app_modeName];
    }
    //: if ([str isEqualToString:@"地"])
    if ([str isEqualToString:@"地"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 2) withString:@"di"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 2) withString:@"di"];
    }
    //: if ([str isEqualToString:@"重"])
    if ([str isEqualToString:@"重"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:@"chong"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:[FromData sharedInstance].show_listMinId];
    }

    //: return [[pinyinString lowercaseString] copy];
    return [[pinyinString lowercaseString] copy];
}

//: @end
@end