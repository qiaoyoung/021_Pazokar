
#import <Foundation/Foundation.h>

@interface PreventionData : NSObject

+ (instancetype)sharedInstance;

//: \\[[a-zA-Z0-9\\u4e00-\\u9fa5]+\\]
@property (nonatomic, copy) NSString *dreamFactorStr;

@end

@implementation PreventionData

+ (instancetype)sharedInstance {
    static PreventionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)PreventionDataToData:(NSString *)value {
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

- (Byte *)PreventionDataToCache:(Byte *)data {
    int express = data[0];
    Byte cliffSum = data[1];
    int deserveClick = data[2];
    for (int i = deserveClick; i < deserveClick + express; i++) {
        int value = data[i] + cliffSum;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[deserveClick + express] = 0;
    return data + deserveClick;
}

- (NSString *)StringFromPreventionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PreventionDataToCache:data]];
}

//: \\[[a-zA-Z0-9\\u4e00-\\u9fa5]+\\]
- (NSString *)dreamFactorStr {
    if (!_dreamFactorStr) {
		NSString *origin = @"1D34061F21C32827272DF9460DF926FCF90528410031FCFCF9284105322D0129F7282950";
		NSData *data = [PreventionData PreventionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamFactorStr = [self StringFromPreventionData:value];
    }
    return _dreamFactorStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMEmoticonParser.m
// Case
//
//  Created by chris.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyInputEmoticonParser.h"
#import "ViewApp.h"
//: #import "BusyInputEmoticonManager.h"
#import "DeviceManager.h"

//: @implementation NIMInputTextToken
@implementation Saloon
//: @end
@end

//: @interface BusyInputEmoticonParser ()
@interface ViewApp ()
//: @property (nonatomic,strong) NSCache *tokens;
@property (nonatomic,strong) NSCache *tokens;
//: @end
@end


//: @implementation BusyInputEmoticonParser
@implementation ViewApp
//: + (instancetype)currentParser
+ (instancetype)today
{
    //: static BusyInputEmoticonParser *instance = nil;
    static ViewApp *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[BusyInputEmoticonParser alloc] init];
        instance = [[ViewApp alloc] init];
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
        //: _tokens = [[NSCache alloc] init];
        _tokens = [[NSCache alloc] init];
    }
    //: return self;
    return self;
}

//: - (NSArray *)tokens:(NSString *)text
- (NSArray *)bySumervalRed:(NSString *)text
{
    //: NSArray *tokens = nil;
    NSArray *tokens = nil;
    //: if ([text length])
    if ([text length])
    {
        //: tokens = [_tokens objectForKey:text];
        tokens = [_tokens objectForKey:text];
        //: if (tokens == nil)
        if (tokens == nil)
        {
            //: tokens = [self parseToken:text];
            tokens = [self contentRandomView:text];
            //: [_tokens setObject:tokens
            [_tokens setObject:tokens
                        //: forKey:text];
                        forKey:text];
        }
    }
    //: return tokens;
    return tokens;
}

//: - (NSArray *)parseToken:(NSString *)text
- (NSArray *)contentRandomView:(NSString *)text
{
    //: NSMutableArray *tokens = [NSMutableArray array];
    NSMutableArray *tokens = [NSMutableArray array];
    //: static NSRegularExpression *exp;
    static NSRegularExpression *exp;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: exp = [NSRegularExpression regularExpressionWithPattern:@"\\[[a-zA-Z0-9\\u4e00-\\u9fa5]+\\]"
        exp = [NSRegularExpression regularExpressionWithPattern:[PreventionData sharedInstance].dreamFactorStr
                                                        //: options:NSRegularExpressionCaseInsensitive
                                                        options:NSRegularExpressionCaseInsensitive
                                                          //: error:nil];
                                                          error:nil];
    //: });
    });
    //: __block NSInteger index = 0;
    __block NSInteger index = 0;
    //: [exp enumerateMatchesInString:text
    [exp enumerateMatchesInString:text
                          //: options:0
                          options:0
                            //: range:NSMakeRange(0, [text length])
                            range:NSMakeRange(0, [text length])
                       //: usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
                       usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
                           //: NSString *rangeText = [text substringWithRange:result.range];
                           NSString *rangeText = [text substringWithRange:result.range];
                           //: if ([[BusyInputEmoticonManager sharedManager] emoticonByTag:rangeText])
                           if ([[DeviceManager history] viewText:rangeText])
                           {
                               //: if (result.range.location > index)
                               if (result.range.location > index)
                               {
                                   //: NSString *rawText = [text substringWithRange:NSMakeRange(index, result.range.location - index)];
                                   NSString *rawText = [text substringWithRange:NSMakeRange(index, result.range.location - index)];
                                   //: NIMInputTextToken *token = [[NIMInputTextToken alloc] init];
                                   Saloon *token = [[Saloon alloc] init];
                                   //: token.type = NIMInputTokenTypeText;
                                   token.type = NIMInputTokenTypeText;
                                   //: token.text = rawText;
                                   token.text = rawText;
                                   //: [tokens addObject:token];
                                   [tokens addObject:token];
                               }
                               //: NIMInputTextToken *token = [[NIMInputTextToken alloc] init];
                               Saloon *token = [[Saloon alloc] init];
                               //: token.type = NIMInputTokenTypeEmoticon;
                               token.type = NIMInputTokenTypeEmoticon;
                               //: token.text = rangeText;
                               token.text = rangeText;
                               //: [tokens addObject:token];
                               [tokens addObject:token];

                               //: index = result.range.location + result.range.length;
                               index = result.range.location + result.range.length;
                           }
                       //: }];
                       }];

    //: if (index < [text length])
    if (index < [text length])
    {
        //: NSString *rawText = [text substringWithRange:NSMakeRange(index, [text length] - index)];
        NSString *rawText = [text substringWithRange:NSMakeRange(index, [text length] - index)];
        //: NIMInputTextToken *token = [[NIMInputTextToken alloc] init];
        Saloon *token = [[Saloon alloc] init];
        //: token.type = NIMInputTokenTypeText;
        token.type = NIMInputTokenTypeText;
        //: token.text = rawText;
        token.text = rawText;
        //: [tokens addObject:token];
        [tokens addObject:token];
    }
    //: return tokens;
    return tokens;
}
//: @end
@end
