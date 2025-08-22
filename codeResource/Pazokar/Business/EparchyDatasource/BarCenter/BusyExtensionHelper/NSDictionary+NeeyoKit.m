// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDictionary+NIMKit.m
// Case
//
//  Created by chris on 2017/6/27.
//  Copyright © 2017年 NetEase. All rights reserved.
//
//: #import "NSDictionary+MyUserKit.h"
#import "NSDictionary+Case.h"

// __M_A_C_R_O__

//: @implementation NSDictionary (MyUserKit)
@implementation NSDictionary (Case)

//: - (NSString *)nimkit_jsonString: (NSString *)key
- (NSString *)nimkitWithinSpeakRank: (NSString *)key
{
    //: id object = [self objectForKey:key];
    id object = [self objectForKey:key];
    //: if ([object isKindOfClass:[NSString class]])
    if ([object isKindOfClass:[NSString class]])
    {
        //: return object;
        return object;
    }
    //: else if([object isKindOfClass:[NSNumber class]])
    else if([object isKindOfClass:[NSNumber class]])
    {
        //: return [object stringValue];
        return [object stringValue];
    }
    //: return nil;
    return nil;
}

//: - (NSDictionary *)nimkit_jsonDict: (NSString *)key
- (NSDictionary *)roundArea: (NSString *)key
{
    //: id object = [self objectForKey:key];
    id object = [self objectForKey:key];
    //: return [object isKindOfClass:[NSDictionary class]] ? object : nil;
    return [object isKindOfClass:[NSDictionary class]] ? object : nil;
}


//: - (NSArray *)nimkit_jsonArray: (NSString *)key
- (NSArray *)maxAndArray: (NSString *)key
{
    //: id object = [self objectForKey:key];
    id object = [self objectForKey:key];
    //: return [object isKindOfClass:[NSArray class]] ? object : nil;
    return [object isKindOfClass:[NSArray class]] ? object : nil;

}

//: - (NSArray *)nimkit_jsonStringArray: (NSString *)key
- (NSArray *)titleArray: (NSString *)key
{
    //: NSArray *array = [self nimkit_jsonArray:key];
    NSArray *array = [self nimkit_jsonArray:key];
    //: BOOL invalid = NO;
    BOOL invalid = NO;
    //: for (id item in array)
    for (id item in array)
    {
        //: if (![item isKindOfClass:[NSString class]])
        if (![item isKindOfClass:[NSString class]])
        {
            //: invalid = YES;
            invalid = YES;
        }
    }
    //: return invalid ? nil : array;
    return invalid ? nil : array;
}

//: - (BOOL)nimkit_jsonBool: (NSString *)key
- (BOOL)offGlobalBackground: (NSString *)key
{
    //: id object = [self objectForKey:key];
    id object = [self objectForKey:key];
    //: if ([object isKindOfClass:[NSString class]] ||
    if ([object isKindOfClass:[NSString class]] ||
        //: [object isKindOfClass:[NSNumber class]])
        [object isKindOfClass:[NSNumber class]])
    {
        //: return [object boolValue];
        return [object boolValue];
    }
    //: return NO;
    return NO;
}

//: - (NSInteger)nimkit_jsonInteger: (NSString *)key
- (NSInteger)colorInfo: (NSString *)key
{
    //: id object = [self objectForKey:key];
    id object = [self objectForKey:key];
    //: if ([object isKindOfClass:[NSString class]] ||
    if ([object isKindOfClass:[NSString class]] ||
        //: [object isKindOfClass:[NSNumber class]])
        [object isKindOfClass:[NSNumber class]])
    {
        //: return [object integerValue];
        return [object integerValue];
    }
    //: return 0;
    return 0;
}

//: - (long long)nimkit_jsonLongLong: (NSString *)key
- (long long)nimkit: (NSString *)key
{
    //: id object = [self objectForKey:key];
    id object = [self objectForKey:key];
    //: if ([object isKindOfClass:[NSString class]] ||
    if ([object isKindOfClass:[NSString class]] ||
        //: [object isKindOfClass:[NSNumber class]])
        [object isKindOfClass:[NSNumber class]])
    {
        //: return [object longLongValue];
        return [object longLongValue];
    }
    //: return 0;
    return 0;
}

//: - (unsigned long long)nimkit_jsonUnsignedLongLong:(NSString *)key
- (unsigned long long)sumerminableUnsignedItemLongName:(NSString *)key
{
    //: id object = [self objectForKey:key];
    id object = [self objectForKey:key];
    //: if ([object isKindOfClass:[NSString class]] ||
    if ([object isKindOfClass:[NSString class]] ||
        //: [object isKindOfClass:[NSNumber class]])
        [object isKindOfClass:[NSNumber class]])
    {
        //: return [object unsignedLongLongValue];
        return [object unsignedLongLongValue];
    }
    //: return 0;
    return 0;
}


//: - (double)nimkit_jsonDouble: (NSString *)key{
- (double)diamComplete: (NSString *)key{
    //: id object = [self objectForKey:key];
    id object = [self objectForKey:key];
    //: if ([object isKindOfClass:[NSString class]] ||
    if ([object isKindOfClass:[NSString class]] ||
        //: [object isKindOfClass:[NSNumber class]])
        [object isKindOfClass:[NSNumber class]])
    {
        //: return [object doubleValue];
        return [object doubleValue];
    }
    //: return 0;
    return 0;
}


//: @end
@end