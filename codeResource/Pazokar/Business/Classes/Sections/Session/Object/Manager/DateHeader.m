
#import <Foundation/Foundation.h>

NSString *StringFromContentKillerData(Byte *data);        


//: CFBundleShortVersionString
Byte mRedStr[] = {13, 26, 6, 5, 67, 61, 64, 60, 111, 104, 94, 102, 95, 77, 98, 105, 108, 110, 80, 95, 108, 109, 99, 105, 104, 77, 110, 108, 99, 104, 97, 116};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DateHeader.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMigrateHeader.h"
#import "DateHeader.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Doing.h"

//: static NSString *const kNTESMigrateHeaderVersion = @"version";
static NSString *const userControlModeId = @"version";
//: static NSString *const kNTESMigrateHeaderTerminal = @"terminal";
static NSString *const noti_resultUrl = @"terminal";
//: static NSString *const kNTESMigrateHeaderSDKVersion = @"sdk_version";
static NSString *const app_handleIdent = @"sdk_version";
//: static NSString *const kNTESMigrateHeaderAPPVersion = @"app_version";
static NSString *const k_errorData = @"app_version";
//: static NSString *const kNTESMigrateHeaderMessageCount = @"message_count";
static NSString *const appEventKey = @"message_count";

//: @implementation NTESMigrateHeader
@implementation DateHeader


//: + (instancetype)initWithDefaultConfig {
+ (instancetype)initWithRecentOn {
    //: NTESMigrateHeader *ret = [[NTESMigrateHeader alloc] init];
    DateHeader *ret = [[DateHeader alloc] init];
    //: ret.version = 0;
    ret.version = 0;
    //: ret.clientType = NIMLoginClientTypeiOS;
    ret.clientType = NIMLoginClientTypeiOS;
    //: ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    //: ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:StringFromContentKillerData(mRedStr)];
    //: return ret;
    return ret;
}

//: + (instancetype)initWithRawContent:(NSData *)data {
+ (instancetype)initWithAtText:(NSData *)data {
    //: if (!data) {
    if (!data) {
        //: return nil;
        return nil;
    }
    //: id jsonData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    id jsonData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    //: if (![jsonData isKindOfClass:[NSDictionary class]]) {
    if (![jsonData isKindOfClass:[NSDictionary class]]) {
        //: return nil;
        return nil;
    }

    //: NSDictionary *dict = (NSDictionary *)jsonData;
    NSDictionary *dict = (NSDictionary *)jsonData;
    //: NTESMigrateHeader *info = [[NTESMigrateHeader alloc] init];
    DateHeader *info = [[DateHeader alloc] init];
    //: info.version = [dict jsonInteger:kNTESMigrateHeaderVersion];
    info.version = [dict reply:userControlModeId];
    //: info.clientType = [dict jsonInteger:kNTESMigrateHeaderTerminal];
    info.clientType = [dict reply:noti_resultUrl];
    //: info.sdkVersion = [dict jsonString:kNTESMigrateHeaderSDKVersion];
    info.sdkVersion = [dict withCord:app_handleIdent];
    //: info.appVersion = [dict jsonString:kNTESMigrateHeaderAPPVersion];
    info.appVersion = [dict withCord:k_errorData];
    //: info.totalInfoCount = [dict jsonInteger:kNTESMigrateHeaderMessageCount];
    info.totalInfoCount = [dict reply:appEventKey];
    //: return info;
    return info;
}

//: - (nullable NSData *)toRawContent {
- (nullable NSData *)messageShould {

    //: if ([self invalid]) {
    if ([self ground]) {
        //: return nil;
        return nil;
    }

    //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    //: dic[kNTESMigrateHeaderVersion] = @(_version);
    dic[userControlModeId] = @(_version);
    //: dic[kNTESMigrateHeaderTerminal] = @(_clientType);
    dic[noti_resultUrl] = @(_clientType);
    //: dic[kNTESMigrateHeaderSDKVersion] = _sdkVersion;
    dic[app_handleIdent] = _sdkVersion;
    //: dic[kNTESMigrateHeaderAPPVersion] = _appVersion;
    dic[k_errorData] = _appVersion;
    //: dic[kNTESMigrateHeaderMessageCount] = @(_totalInfoCount);
    dic[appEventKey] = @(_totalInfoCount);
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    //: return jsonData;
    return jsonData;
}

//: - (BOOL)invalid {
- (BOOL)ground {
    //: return (_totalInfoCount == 0 ||
    return (_totalInfoCount == 0 ||
            //: _version != 0);
            _version != 0);
}

//: @end
@end

Byte * ContentKillerDataToCache(Byte *data) {
    int toolLetter = data[0];
    int fainObject = data[1];
    Byte field = data[2];
    int heading = data[3];
    if (!toolLetter) return data + heading;
    for (int i = heading; i < heading + fainObject; i++) {
        int value = data[i] + field;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[heading + fainObject] = 0;
    return data + heading;
}

NSString *StringFromContentKillerData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ContentKillerDataToCache(data)];
}
