
#import <Foundation/Foundation.h>

@interface ManipulateData : NSObject

+ (instancetype)sharedInstance;

//: /api
@property (nonatomic, copy) NSString *userRisingModeGuitarFormat;

//: https://riverla.oss-cn-hongkong.aliyuncs.com/riv.txt
@property (nonatomic, copy) NSString *noti_labelDistinctiveMsg;

//: pushkit_voice_test
@property (nonatomic, copy) NSString *dreamCreatureId;

//: api
@property (nonatomic, copy) NSString *showTotalerpartBoarStr;

//: http
@property (nonatomic, copy) NSString *main_hqStr;

//: pushDev
@property (nonatomic, copy) NSString *mOverageStr;

//: bb423e522c32002210fe5623f81a89ea
@property (nonatomic, copy) NSString *app_beliefValue;

//: https://riverla.s3.ap-southeast-1.amazonaws.com/riv.txt
@property (nonatomic, copy) NSString *userListStr;

@end

@implementation ManipulateData

+ (instancetype)sharedInstance {
    static ManipulateData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ManipulateDataToData:(NSString *)value {
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

- (Byte *)ManipulateDataToCache:(Byte *)data {
    int hold = data[0];
    Byte creatureManager = data[1];
    int advocate = data[2];
    for (int i = advocate; i < advocate + hold; i++) {
        int value = data[i] + creatureManager;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[advocate + hold] = 0;
    return data + advocate;
}

- (NSString *)StringFromManipulateData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ManipulateDataToCache:data]];
}

//: pushDev
- (NSString *)mOverageStr {
    if (!_mOverageStr) {
		NSString *origin = @"0724034c514f4420415226";
		NSData *data = [ManipulateData ManipulateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mOverageStr = [self StringFromManipulateData:value];
    }
    return _mOverageStr;
}

//: bb423e522c32002210fe5623f81a89ea
- (NSString *)app_beliefValue {
    if (!_app_beliefValue) {
		NSString *origin = @"200b0ddc7093e7e8d913a90f5257572927285a2a27275828272525272726255b5a2a2b27285b2d26562d2e5a566e";
		NSData *data = [ManipulateData ManipulateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_beliefValue = [self StringFromManipulateData:value];
    }
    return _app_beliefValue;
}

//: https://riverla.oss-cn-hongkong.aliyuncs.com/riv.txt
- (NSString *)noti_labelDistinctiveMsg {
    if (!_noti_labelDistinctiveMsg) {
		NSString *origin = @"34360a95e05bcf1d4661323e3e3a3d04f9f93c33402f3c362bf8393d3df72d38f73239383135393831f82b3633433f382d3df82d3937f93c3340f83e423e5e";
		NSData *data = [ManipulateData ManipulateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_labelDistinctiveMsg = [self StringFromManipulateData:value];
    }
    return _noti_labelDistinctiveMsg;
}

//: /api
- (NSString *)userRisingModeGuitarFormat {
    if (!_userRisingModeGuitarFormat) {
		NSString *origin = @"042b0d8fb2a5ce072f0445034b0436453eba";
		NSData *data = [ManipulateData ManipulateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userRisingModeGuitarFormat = [self StringFromManipulateData:value];
    }
    return _userRisingModeGuitarFormat;
}

//: api
- (NSString *)showTotalerpartBoarStr {
    if (!_showTotalerpartBoarStr) {
		NSString *origin = @"032b0c3b3b546b4eb81692ed36453e9b";
		NSData *data = [ManipulateData ManipulateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showTotalerpartBoarStr = [self StringFromManipulateData:value];
    }
    return _showTotalerpartBoarStr;
}

//: http
- (NSString *)main_hqStr {
    if (!_main_hqStr) {
		NSString *origin = @"045304521521211d8d";
		NSData *data = [ManipulateData ManipulateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_hqStr = [self StringFromManipulateData:value];
    }
    return _main_hqStr;
}

//: pushkit_voice_test
- (NSString *)dreamCreatureId {
    if (!_dreamCreatureId) {
		NSString *origin = @"12200c8fd20a0c6f30c28644505553484b49543f564f4943453f544553546d";
		NSData *data = [ManipulateData ManipulateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamCreatureId = [self StringFromManipulateData:value];
    }
    return _dreamCreatureId;
}

//: https://riverla.s3.ap-southeast-1.amazonaws.com/riv.txt
- (NSString *)userListStr {
    if (!_userListStr) {
		NSString *origin = @"372d0d8b8392ed1617037e77653b474743460d0202453c4938453f3401460601344300464248473b383446470004013440344d4241344a460136424002453c4901474b4766";
		NSData *data = [ManipulateData ManipulateDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userListStr = [self StringFromManipulateData:value];
    }
    return _userListStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexTag.m
//  NIM
//
//  Created by amao on 4/21/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyConfig.h"
#import "IndexTag.h"
//: #import "RestUtil.h"
#import "PointOnUtil.h"

//: static NSString *const kDefaultDomain = @"https://apple.akunjapan0206chat.com";
static NSString *const userOperationName = @"https://apple.akunjapan0206chat.com";
//: static NSString *const kSavedDomainKey = @"SavedDomainKey";
static NSString *const m_spacePointKey = @"SavedDomainKey";

//: @interface BusyConfig ()
@interface IndexTag ()

//: @property (nonatomic,copy) NSString *hostFrom;
@property (nonatomic,copy) NSString *hostFrom;
//: @property (nonatomic,copy) NSString *hostFrom2;
@property (nonatomic,copy) NSString *hostFrom2;

//: @end
@end

//: @implementation BusyConfig
@implementation IndexTag

//: + (instancetype)sharedConfig
+ (instancetype)ambit
{
    //: static BusyConfig *instance = nil;
    static IndexTag *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[BusyConfig alloc] init];
        instance = [[IndexTag alloc] init];
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
        //: _appKey = @"bb423e522c32002210fe5623f81a89ea";
        _appKey = [ManipulateData sharedInstance].app_beliefValue;//本项目使用
//        _apiURL = @"https://app.netease.im/api";

        //        _apnsCername = @"DEVELOPER";
        //: _apnsCername = @"pushDev";
        _apnsCername =  @"push_Pazokar_release";
        //: _pkCername = @"pushkit_voice_test";
        _pkCername = [ManipulateData sharedInstance].dreamCreatureId;
        //: _allowAutoLogin = YES; 
        _allowAutoLogin = YES; //如果网上的host和本地的一致，允许自动登录

        //: _Gdic = [NSMutableDictionary dictionary];
        _Gdic = [NSMutableDictionary dictionary];

        // 打包OSS-1
        //: self.hostFrom = @"https://riverla.oss-cn-hongkong.aliyuncs.com/riv.txt";
        self.hostFrom = [ManipulateData sharedInstance].noti_labelDistinctiveMsg;

        // 打包OSS-2
        //: self.hostFrom2 = @"https://riverla.s3.ap-southeast-1.amazonaws.com/riv.txt";
        self.hostFrom2 = [ManipulateData sharedInstance].userListStr;

//        保底域名
//        NSString *PreSetHost = @"https://apple.akunjapan0206chat.com";//⚠️警告：最后面不能有斜杠/
//
//        //如果包含了api则不处理了，否则就要加上api
//        if ([PreSetHost containsString:@"/api"])
//        {} else {
//            if ([PreSetHost hasSuffix:@"/"]) {
//                PreSetHost = [PreSetHost stringByAppendingString:@"api"];
//            } else {
//                PreSetHost = [PreSetHost stringByAppendingString:@"/api"];
//            }
//        }
//        self.domainURL = PreSetHost;


//        NSString *defaultHost = [[NSUserDefaults standardUserDefaults] stringForKey:@"HOST_KEY"] ? :@"";//本地存储的host
//        if (defaultHost.length > 0){
//            //如果包含了api则不处理了，否则就要加上api
//            if ([defaultHost containsString:@"/api"])
//            {} else {
//                if ([defaultHost hasSuffix:@"/"]) {
//                    defaultHost = [defaultHost stringByAppendingString:@"api"];
//                } else {
//                    defaultHost = [defaultHost stringByAppendingString:@"/api"];
//                }
//            }
//            self.domainURL = defaultHost;
//        }




//        void (^hostBlock)(NSString *HOST) = ^(NSString *HOST){
//           
////            if (!HOST || HOST.length < 5) {
////                HOST = [[NSString alloc] initWithString:PreSetHost];
////                NSLog(@"========>警告⚠️读不到网上的host");
////            }
//            
////            if ([HOST containsString:defaultHost]) {
////                _allowAutoLogin = YES; //如果网上的host和本地的一致，允许自动登录
////            }
////            else
////            {
////                _allowAutoLogin = NO; //如果网上的host和本地的不一致，则禁止🈲️自动登录
////                [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:@"HOST_KEY"];
////            }
////            
//            
//            //如果包含了api则不处理了，否则就要加上api
//            if ([HOST containsString:@"/api"])
//            {} else {
//                if ([HOST hasSuffix:@"/"]) {
//                    HOST = [HOST stringByAppendingString:@"api"];
//                } else {
//                    HOST = [HOST stringByAppendingString:@"/api"];
//                }
//            }
//                    
//            self.domainURL = [[NSString alloc] initWithString:HOST];//设置host主域名
//
//        };



//        @weakify(self);
//        __block NSString *HOST = @"";
//        [PointOnUtil get:self.hostFrom
//               params:nil
//              success:^(NSString *oss) {
//            
//            @strongify(self);
//            if ([oss hasPrefix:@"http"]) {
//                HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                hostBlock(HOST);
//                
//            } else {
//                [PointOnUtil get:self.hostFrom2
//                       params:nil
//                      success:^(NSString *oss) {
//                    if ([oss hasPrefix:@"http"]) {
//                        HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                    }
//                    hostBlock(HOST);
//                } fail:^(int code, NSString *msg) {
//                    hostBlock(HOST);
//                }];
//            }
//            
//        } fail:^(int code, NSString *msg) {
//            
//            [PointOnUtil get:self.hostFrom2
//                   params:nil
//                  success:^(NSString *oss) {
//                if ([oss hasPrefix:@"http"]) {
//                    HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                }
//                hostBlock(HOST);
//
//            } fail:^(int code, NSString *msg) {
//                hostBlock(HOST);
//
//            }];
//        }];

    }
    //: return self;
    return self;
}

//: - (NSString *)getCurrentDomain {
- (NSString *)size {
    // 优先返回保存的域名，否则返回默认域名
    //: NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:kSavedDomainKey] ?: kDefaultDomain;
    NSString *hostUrl = [[NSUserDefaults standardUserDefaults] stringForKey:m_spacePointKey] ?: userOperationName;
    //如果包含了api则不处理了，否则就要加上api
    //: if ([hostUrl containsString:@"/api"])
    if ([hostUrl containsString:[ManipulateData sharedInstance].userRisingModeGuitarFormat])
    //: {} else {
    {} else {
        //: if ([hostUrl hasSuffix:@"/"]) {
        if ([hostUrl hasSuffix:@"/"]) {
            //: hostUrl = [hostUrl stringByAppendingString:@"api"];
            hostUrl = [hostUrl stringByAppendingString:[ManipulateData sharedInstance].showTotalerpartBoarStr];
        //: } else {
        } else {
            //: hostUrl = [hostUrl stringByAppendingString:@"/api"];
            hostUrl = [hostUrl stringByAppendingString:[ManipulateData sharedInstance].userRisingModeGuitarFormat];
        }
    }

    //: return hostUrl;
    return hostUrl;
}

//: - (void)fetchLatestDomainWithCompletion:(void (^)(BOOL success))completion {
- (void)keep:(void (^)(BOOL success))completion {

            @
             //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
             autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                          ;
            //: __block NSString *HOST = @"";
            __block NSString *HOST = @"";
            //: [RestUtil get:self.hostFrom
            [PointOnUtil with:self.hostFrom
                   //: params:nil
                   nim:nil
                  //: success:^(NSString *oss) {
                  backFail:^(NSString *oss) {

                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: if ([oss hasPrefix:@"http"]) {
                if ([oss hasPrefix:[ManipulateData sharedInstance].main_hqStr]) {
                    //: HOST = [[NSString alloc] initWithString:oss];
                    HOST = [[NSString alloc] initWithString:oss];//设置host主域名
//                    hostBlock(HOST);


                                // 保存新域名
                                //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                                [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:m_spacePointKey];
                                //: [[NSUserDefaults standardUserDefaults] synchronize];
                                [[NSUserDefaults standardUserDefaults] synchronize];
                                //: if (completion) completion(YES);
                                if (completion) completion(YES);

                //: } else {
                } else {
                    //: [RestUtil get:self.hostFrom2
                    [PointOnUtil with:self.hostFrom2
                           //: params:nil
                           nim:nil
                          //: success:^(NSString *oss) {
                          backFail:^(NSString *oss) {
                        //: if ([oss hasPrefix:@"http"]) {
                        if ([oss hasPrefix:[ManipulateData sharedInstance].main_hqStr]) {
                            //: HOST = [[NSString alloc] initWithString:oss];
                            HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                        }
//                        hostBlock(HOST);

                        // 保存新域名
                        //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                        [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:m_spacePointKey];
                        //: [[NSUserDefaults standardUserDefaults] synchronize];
                        [[NSUserDefaults standardUserDefaults] synchronize];
                        //: if (completion) completion(YES);
                        if (completion) completion(YES);

                    //: } fail:^(int code, NSString *msg) {
                    } color:^(int code, NSString *msg) {
//                        hostBlock(HOST);
                        //: if (completion) completion(NO);
                        if (completion) completion(NO);
                    //: }];
                    }];
                }

            //: } fail:^(int code, NSString *msg) {
            } color:^(int code, NSString *msg) {

                //: [RestUtil get:self.hostFrom2
                [PointOnUtil with:self.hostFrom2
                       //: params:nil
                       nim:nil
                      //: success:^(NSString *oss) {
                      backFail:^(NSString *oss) {
                    //: if ([oss hasPrefix:@"http"]) {
                    if ([oss hasPrefix:[ManipulateData sharedInstance].main_hqStr]) {
                        //: HOST = [[NSString alloc] initWithString:oss];
                        HOST = [[NSString alloc] initWithString:oss];//设置host主域名
                    }
//                    hostBlock(HOST);

                    // 保存新域名
                    //: [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:kSavedDomainKey];
                    [[NSUserDefaults standardUserDefaults] setObject:HOST forKey:m_spacePointKey];
                    //: [[NSUserDefaults standardUserDefaults] synchronize];
                    [[NSUserDefaults standardUserDefaults] synchronize];
                    //: if (completion) completion(YES);
                    if (completion) completion(YES);

                //: } fail:^(int code, NSString *msg) {
                } color:^(int code, NSString *msg) {
//                    hostBlock(HOST);
                    //: if (completion) completion(NO);
                    if (completion) completion(NO);
                //: }];
                }];
            //: }];
            }];


//    NSString *configURL = self.hostFrom; // 配置接口地址
//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:configURL]];
//    
//    NSURLSessionTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
//        if (error || !data) {
//            if (completion) completion(NO);
//            return;
//        }
//        
////        // 解析响应数据（假设返回 JSON: {"domain": "https://api.new.com"}）
////        NSError *jsonError;
////        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
////        NSString *newDomain = json[@"domain"];
//        
//
//        NSString *newDomain = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//
//        
//        if (newDomain) {
//            // 保存新域名
//            [[NSUserDefaults standardUserDefaults] setObject:newDomain forKey:kSavedDomainKey];
//            [[NSUserDefaults standardUserDefaults] synchronize];
//            if (completion) completion(YES);
//        } else {
//            if (completion) completion(NO);
//        }
//    }];
//    
//    [task resume];
}




//: @end
@end
