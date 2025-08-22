
#import <Foundation/Foundation.h>

@interface InclusionData : NSObject

+ (instancetype)sharedInstance;

//: friend_info_activity_nv
@property (nonatomic, copy) NSString *dream_solutionMessage;

//: friend_info_activity_nan
@property (nonatomic, copy) NSString *k_happinessName;

//: friend_info_activity_xu
@property (nonatomic, copy) NSString *kSeedStr;

@end

@implementation InclusionData

+ (instancetype)sharedInstance {
    static InclusionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)InclusionDataToData:(NSString *)value {
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

- (Byte *)InclusionDataToCache:(Byte *)data {
    int totalerview = data[0];
    Byte hao = data[1];
    int project = data[2];
    for (int i = project; i < project + totalerview; i++) {
        int value = data[i] - hao;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[project + totalerview] = 0;
    return data + project;
}

- (NSString *)StringFromInclusionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self InclusionDataToCache:data]];
}

//: friend_info_activity_xu
- (NSString *)kSeedStr {
    if (!_kSeedStr) {
		NSString *origin = @"1746094FF6B890862DACB8AFABB4AAA5AFB4ACB5A5A7A9BAAFBCAFBABFA5BEBB27";
		NSData *data = [InclusionData InclusionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kSeedStr = [self StringFromInclusionData:value];
    }
    return _kSeedStr;
}

//: friend_info_activity_nan
- (NSString *)k_happinessName {
    if (!_k_happinessName) {
		NSString *origin = @"183E04B5A4B0A7A3ACA29DA7ACA4AD9D9FA1B2A7B4A7B2B79DAC9FACD7";
		NSData *data = [InclusionData InclusionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_happinessName = [self StringFromInclusionData:value];
    }
    return _k_happinessName;
}

//: friend_info_activity_nv
- (NSString *)dream_solutionMessage {
    if (!_dream_solutionMessage) {
		NSString *origin = @"170C03727E75717A706B757A727B6B6D6F8075827580856B7A8299";
		NSData *data = [InclusionData InclusionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_solutionMessage = [self StringFromInclusionData:value];
    }
    return _dream_solutionMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  InformationUtil.m
//  NIM
//
//  Created by chris on 15/9/17.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESUserUtil.h"
#import "InformationUtil.h"
//: #import "BusyKitUtil.h"
#import "OffMore.h"

//: @implementation NTESUserUtil
@implementation InformationUtil

//: + (NSString *)genderString:(NIMUserGender)gender{
+ (NSString *)packthread:(NIMUserGender)gender{
    //: NSString *genderStr = @"";
    NSString *genderStr = @"";
    //: switch (gender) {
    switch (gender) {
        //: case NIMUserGenderMale:
        case NIMUserGenderMale:
            //: genderStr = [BusyLanguageManager getTextWithKey:@"friend_info_activity_nan"];
            genderStr = [SendName streetSmart:[InclusionData sharedInstance].k_happinessName];
            //: break;
            break;
        //: case NIMUserGenderFemale:
        case NIMUserGenderFemale:
            //: genderStr = [BusyLanguageManager getTextWithKey:@"friend_info_activity_nv"];
            genderStr = [SendName streetSmart:[InclusionData sharedInstance].dream_solutionMessage];
            //: break;
            break;
        //: case NIMUserGenderUnknown:
        case NIMUserGenderUnknown:
            //: genderStr = [BusyLanguageManager getTextWithKey:@"friend_info_activity_xu"];
            genderStr = [SendName streetSmart:[InclusionData sharedInstance].kSeedStr];
        //: default:
        default:
            //: break;
            break;
    }
    //: return genderStr;
    return genderStr;
}

//: @end
@end
