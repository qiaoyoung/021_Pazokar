
#import <Foundation/Foundation.h>

typedef struct {
    Byte observe;
    Byte *cellAdequate;
    unsigned int sideWith;
	int spiritualBeing;
} StructUndergraduateData;

@interface UndergraduateData : NSObject

+ (instancetype)sharedInstance;

//: image/%@
@property (nonatomic, copy) NSString *showJungleMsg;

//: 手机自带网络
@property (nonatomic, copy) NSString *user_emphasizeMessage;

//: text/javascript
@property (nonatomic, copy) NSString *mPurchaseValue;

//: text/xml
@property (nonatomic, copy) NSString *mainInkTitle;

//: application/json
@property (nonatomic, copy) NSString *app_nearlyId;

//: 未知网络
@property (nonatomic, copy) NSString *userPotentialStr;

//: thumb
@property (nonatomic, copy) NSString *appBuilderTitle;

//: WIFI
@property (nonatomic, copy) NSString *main_makeTitle;

//: text/json
@property (nonatomic, copy) NSString *mDiplomaticValue;

//: error = %@
@property (nonatomic, copy) NSString *user_differentlyTitle;

//: image/jpg
@property (nonatomic, copy) NSString *appShowAcquireStr;

//: Download
@property (nonatomic, copy) NSString *mRespectivelyKey;

//: 无网络
@property (nonatomic, copy) NSString *notiClickMsg;

//: thumb.jpg
@property (nonatomic, copy) NSString *show_pinFormat;

//: jpg
@property (nonatomic, copy) NSString *notiDraftMsg;

//: text/html
@property (nonatomic, copy) NSString *app_oofData;

//: yyyyMMddHHmmss
@property (nonatomic, copy) NSString *user_grayKey;

//: video
@property (nonatomic, copy) NSString *main_liableId;

//: image/*
@property (nonatomic, copy) NSString *appLetterValue;

//: text/plain
@property (nonatomic, copy) NSString *user_preventionData;

//: responseObject = %@
@property (nonatomic, copy) NSString *kFromPath;

@end

@implementation UndergraduateData

+ (instancetype)sharedInstance {
    static UndergraduateData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)UndergraduateDataToData:(NSString *)value {
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

- (Byte *)UndergraduateDataToByte:(StructUndergraduateData *)data {
    for (int i = 0; i < data->sideWith; i++) {
        data->cellAdequate[i] ^= data->observe;
    }
    data->cellAdequate[data->sideWith] = 0;
	if (data->sideWith >= 1) {
		data->spiritualBeing = data->cellAdequate[0];
	}
    return data->cellAdequate;
}

- (NSString *)StringFromUndergraduateData:(StructUndergraduateData *)data {
    return [NSString stringWithUTF8String:(char *)[self UndergraduateDataToByte:data]];
}

//: text/plain
- (NSString *)user_preventionData {
    if (!_user_preventionData) {
		NSString *origin = @"68796468336C707D7572A1";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){28, (Byte *)data.bytes, 10, 58};
        _user_preventionData = [self StringFromUndergraduateData:&value];
    }
    return _user_preventionData;
}

//: responseObject = %@
- (NSString *)kFromPath {
    if (!_kFromPath) {
		NSString *origin = @"677066657A7B66705A777F707661352835305577";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){21, (Byte *)data.bytes, 19, 111};
        _kFromPath = [self StringFromUndergraduateData:&value];
    }
    return _kFromPath;
}

//: image/jpg
- (NSString *)appShowAcquireStr {
    if (!_appShowAcquireStr) {
		NSString *origin = @"9B9F939597DD988295C6";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){242, (Byte *)data.bytes, 9, 47};
        _appShowAcquireStr = [self StringFromUndergraduateData:&value];
    }
    return _appShowAcquireStr;
}

//: WIFI
- (NSString *)main_makeTitle {
    if (!_main_makeTitle) {
		NSString *origin = @"8E909F9047";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){217, (Byte *)data.bytes, 4, 58};
        _main_makeTitle = [self StringFromUndergraduateData:&value];
    }
    return _main_makeTitle;
}

//: text/xml
- (NSString *)mainInkTitle {
    if (!_mainInkTitle) {
		NSString *origin = @"0B1A070B5007121359";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){127, (Byte *)data.bytes, 8, 38};
        _mainInkTitle = [self StringFromUndergraduateData:&value];
    }
    return _mainInkTitle;
}

//: thumb
- (NSString *)appBuilderTitle {
    if (!_appBuilderTitle) {
		NSString *origin = @"FFE3FEE6E99A";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){139, (Byte *)data.bytes, 5, 139};
        _appBuilderTitle = [self StringFromUndergraduateData:&value];
    }
    return _appBuilderTitle;
}

//: image/%@
- (NSString *)showJungleMsg {
    if (!_showJungleMsg) {
		NSString *origin = @"14101C1A1852583D14";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){125, (Byte *)data.bytes, 8, 5};
        _showJungleMsg = [self StringFromUndergraduateData:&value];
    }
    return _showJungleMsg;
}

//: 未知网络
- (NSString *)userPotentialStr {
    if (!_userPotentialStr) {
		NSString *origin = @"32487E334B71336945336F48D8";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){212, (Byte *)data.bytes, 12, 39};
        _userPotentialStr = [self StringFromUndergraduateData:&value];
    }
    return _userPotentialStr;
}

//: text/html
- (NSString *)app_oofData {
    if (!_app_oofData) {
		NSString *origin = @"9F8E939FC4839F8687C1";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){235, (Byte *)data.bytes, 9, 85};
        _app_oofData = [self StringFromUndergraduateData:&value];
    }
    return _app_oofData;
}

//: jpg
- (NSString *)notiDraftMsg {
    if (!_notiDraftMsg) {
		NSString *origin = @"C6DCCBD7";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){172, (Byte *)data.bytes, 3, 217};
        _notiDraftMsg = [self StringFromUndergraduateData:&value];
    }
    return _notiDraftMsg;
}

//: Download
- (NSString *)mRespectivelyKey {
    if (!_mRespectivelyKey) {
		NSString *origin = @"567D657C7E7D7376C1";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){18, (Byte *)data.bytes, 8, 76};
        _mRespectivelyKey = [self StringFromUndergraduateData:&value];
    }
    return _mRespectivelyKey;
}

//: 手机自带网络
- (NSString *)user_emphasizeMessage {
    if (!_user_emphasizeMessage) {
		NSString *origin = @"EF8082EF95B3E18EA3ECB1AFEEB498EEB2952F";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){9, (Byte *)data.bytes, 18, 27};
        _user_emphasizeMessage = [self StringFromUndergraduateData:&value];
    }
    return _user_emphasizeMessage;
}

//: video
- (NSString *)main_liableId {
    if (!_main_liableId) {
		NSString *origin = @"342B26272DFC";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){66, (Byte *)data.bytes, 5, 23};
        _main_liableId = [self StringFromUndergraduateData:&value];
    }
    return _main_liableId;
}

//: image/*
- (NSString *)appLetterValue {
    if (!_appLetterValue) {
		NSString *origin = @"CECAC6C0C2888DB5";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){167, (Byte *)data.bytes, 7, 26};
        _appLetterValue = [self StringFromUndergraduateData:&value];
    }
    return _appLetterValue;
}

//: thumb.jpg
- (NSString *)show_pinFormat {
    if (!_show_pinFormat) {
		NSString *origin = @"DDC1DCC4CB87C3D9CE63";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){169, (Byte *)data.bytes, 9, 14};
        _show_pinFormat = [self StringFromUndergraduateData:&value];
    }
    return _show_pinFormat;
}

//: text/json
- (NSString *)mDiplomaticValue {
    if (!_mDiplomaticValue) {
		NSString *origin = @"FCEDF0FCA7E2FBE7E6EC";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){136, (Byte *)data.bytes, 9, 237};
        _mDiplomaticValue = [self StringFromUndergraduateData:&value];
    }
    return _mDiplomaticValue;
}

//: error = %@
- (NSString *)user_differentlyTitle {
    if (!_user_differentlyTitle) {
		NSString *origin = @"594E4E534E1C011C197CBB";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){60, (Byte *)data.bytes, 10, 84};
        _user_differentlyTitle = [self StringFromUndergraduateData:&value];
    }
    return _user_differentlyTitle;
}

//: yyyyMMddHHmmss
- (NSString *)user_grayKey {
    if (!_user_grayKey) {
		NSString *origin = @"E7E7E7E7D3D3FAFAD6D6F3F3EDED37";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){158, (Byte *)data.bytes, 14, 90};
        _user_grayKey = [self StringFromUndergraduateData:&value];
    }
    return _user_grayKey;
}

//: text/javascript
- (NSString *)mPurchaseValue {
    if (!_mPurchaseValue) {
		NSString *origin = @"1B0A171B40050E190E1C0C1D061F1B65";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){111, (Byte *)data.bytes, 15, 9};
        _mPurchaseValue = [self StringFromUndergraduateData:&value];
    }
    return _mPurchaseValue;
}

//: 无网络
- (NSString *)notiClickMsg {
    if (!_notiClickMsg) {
		NSString *origin = @"D6A790D78DA1D78BAC54";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){48, (Byte *)data.bytes, 9, 196};
        _notiClickMsg = [self StringFromUndergraduateData:&value];
    }
    return _notiClickMsg;
}

//: application/json
- (NSString *)app_nearlyId {
    if (!_app_nearlyId) {
		NSString *origin = @"7D6C6C70757F7D6875737233766F737288";
		NSData *data = [UndergraduateData UndergraduateDataToData:origin];
        StructUndergraduateData value = (StructUndergraduateData){28, (Byte *)data.bytes, 16, 11};
        _app_nearlyId = [self StringFromUndergraduateData:&value];
    }
    return _app_nearlyId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OldBoyNetworkHelper.m
//  OldBoyNetworkHelper
//
//  Created by AndyPang on 16/8/12.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

// __M_A_C_R_O__
//: #import "YLNetworkHelper.h"
#import "OldBoyNetworkHelper.h"
//: #import "AFNetworking.h"
#import "AFNetworking.h"
//: #import "AFNetworkActivityIndicatorManager.h"
#import "AFNetworkActivityIndicatorManager.h"

//: @implementation YLNetworkHelper
@implementation OldBoyNetworkHelper

//: static BOOL _isOpenLog; 
static BOOL show_pathId; // 是否已开启日志打印
//: static NSMutableArray *_allSessionTask;
static NSMutableArray *app_normalKey;
//: static AFHTTPSessionManager *_sessionManager;
static AFHTTPSessionManager *noti_labelValue;

//: #pragma mark - 开始监听网络
#pragma mark - 开始监听网络
//: + (void)networkStatusWithBlock:(YLNetworkStatus)networkStatus {
+ (void)container:(YLNetworkStatus)networkStatus {

    //: [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //: switch (status) {
        switch (status) {
            //: case AFNetworkReachabilityStatusUnknown:
            case AFNetworkReachabilityStatusUnknown:
                //: networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                networkStatus ? networkStatus(YLNetworkStatusUnknown) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"未知网络"] UTF8String]);
                if (show_pathId) printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].userPotentialStr] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusNotReachable:
            case AFNetworkReachabilityStatusNotReachable:
                //: networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                networkStatus ? networkStatus(YLNetworkStatusNotReachable) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"无网络"] UTF8String]);
                if (show_pathId) printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].notiClickMsg] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWWAN:
            case AFNetworkReachabilityStatusReachableViaWWAN:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWWAN) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"手机自带网络"] UTF8String]);
                if (show_pathId) printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].user_emphasizeMessage] UTF8String]);
                //: break;
                break;
            //: case AFNetworkReachabilityStatusReachableViaWiFi:
            case AFNetworkReachabilityStatusReachableViaWiFi:
                //: networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                networkStatus ? networkStatus(YLNetworkStatusReachableViaWiFi) : nil;
                //: if (_isOpenLog) printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"WIFI"] UTF8String]);
                if (show_pathId) printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].main_makeTitle] UTF8String]);
                //: break;
                break;
        }
    //: }];
    }];

}

//: + (BOOL)isNetwork {
+ (BOOL)parent {
    //: return [AFNetworkReachabilityManager sharedManager].reachable;
    return [AFNetworkReachabilityManager sharedManager].reachable;
}

//: + (BOOL)isWWANNetwork {
+ (BOOL)teamDoing {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWWAN;
}

//: + (BOOL)isWiFiNetwork {
+ (BOOL)countRelation {
    //: return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
    return [AFNetworkReachabilityManager sharedManager].reachableViaWiFi;
}

//: + (void)openLog {
+ (void)tag {
    //: _isOpenLog = YES;
    show_pathId = YES;
}

//: + (void)closeLog {
+ (void)disable {
    //: _isOpenLog = NO;
    show_pathId = NO;
}

//: + (void)cancelAllRequest {
+ (void)pop {
    // 锁操作
    //: @synchronized(self) {
    @synchronized(self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self duty] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: [task cancel];
            [task cancel];
        //: }];
        }];
        //: [[self allSessionTask] removeAllObjects];
        [[self duty] removeAllObjects];
    }
}

//: + (void)cancelRequestWithURL:(NSString *)URL {
+ (void)with:(NSString *)URL {
    //: if (!URL) { return; }
    if (!URL) { return; }
    //: @synchronized (self) {
    @synchronized (self) {
        //: [[self allSessionTask] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
        [[self duty] enumerateObjectsUsingBlock:^(NSURLSessionTask *_Nonnull task, NSUInteger idx, BOOL * _Nonnull stop) {
            //: if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
            if ([task.currentRequest.URL.absoluteString hasPrefix:URL]) {
                //: [task cancel];
                [task cancel];
                //: [[self allSessionTask] removeObject:task];
                [[self duty] removeObject:task];
                //: *stop = YES;
                *stop = YES;
            }
        //: }];
        }];
    }
}

//: #pragma mark - GET请求无缓存
#pragma mark - GET请求无缓存
//: + (NSURLSessionTask *)GET:(NSString *)URL
+ (NSURLSessionTask *)bubble:(NSString *)URL
               //: parameters:(id)parameters
               viewDate:(id)parameters
                  //: success:(YLHttpRequestSuccess)success
                  should:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  with:(YLHttpRequestFailed)failure {
    //: return [self GET:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self text:URL panoramicView:parameters successOf:nil benefit:success cacheSessionLength:failure];
}

//: #pragma mark - POST请求无缓存
#pragma mark - POST请求无缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)backgroundPath:(NSString *)URL
                //: parameters:(id)parameters
                doing:(id)parameters
                   //: success:(YLHttpRequestSuccess)success
                   share:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   text:(YLHttpRequestFailed)failure {
    //: return [self POST:URL parameters:parameters responseCache:nil success:success failure:failure];
    return [self must:URL title:parameters asView:nil generateRange:success inputRequestFailed:failure];
}

//: #pragma mark - GET请求自动缓存
#pragma mark - GET请求自动缓存
//: + (NSURLSessionTask *)GET:(NSString *)URL
+ (NSURLSessionTask *)text:(NSString *)URL
               //: parameters:(id)parameters
               panoramicView:(id)parameters
            //: responseCache:(YLHttpRequestCache)responseCache
            successOf:(YLHttpRequestCache)responseCache
                  //: success:(YLHttpRequestSuccess)success
                  benefit:(YLHttpRequestSuccess)success
                  //: failure:(YLHttpRequestFailed)failure {
                  cacheSessionLength:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerHTTP)];
    [self setOpenSerializer:(YLResponseSerializerHTTP)];

    //: NSURLSessionTask *sessionTask = [_sessionManager GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [noti_labelValue GET:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (show_pathId) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].kFromPath,responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self duty] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (show_pathId) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].user_differentlyTitle,error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self duty] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];
    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self duty] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - POST请求自动缓存
#pragma mark - POST请求自动缓存
//: + (NSURLSessionTask *)POST:(NSString *)URL
+ (NSURLSessionTask *)must:(NSString *)URL
                //: parameters:(id)parameters
                title:(id)parameters
             //: responseCache:(YLHttpRequestCache)responseCache
             asView:(YLHttpRequestCache)responseCache
                   //: success:(YLHttpRequestSuccess)success
                   generateRange:(YLHttpRequestSuccess)success
                   //: failure:(YLHttpRequestFailed)failure {
                   inputRequestFailed:(YLHttpRequestFailed)failure {

    //: [self setResponseSerializer:(YLResponseSerializerJSON)];
    [self setOpenSerializer:(YLResponseSerializerJSON)];

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [noti_labelValue POST:URL parameters:parameters headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (show_pathId) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].kFromPath,responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self duty] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (show_pathId) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].user_differentlyTitle,error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self duty] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;

    //: }];
    }];

    // 添加最新的sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self duty] addObject:sessionTask] : nil ;
    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 上传文件
#pragma mark - 上传文件
//: + (NSURLSessionTask *)uploadFileWithURL:(NSString *)URL
+ (NSURLSessionTask *)custom:(NSString *)URL
                             //: parameters:(id)parameters
                             value:(id)parameters
                                   //: name:(NSString *)name
                                   bubble:(NSString *)name
                               //: filePath:(NSString *)filePath
                               viewTitle:(NSString *)filePath
                               //: progress:(YLHttpProgress)progress
                               sendPath:(YLHttpProgress)progress
                                //: success:(YLHttpRequestSuccess)success
                                byFailure:(YLHttpRequestSuccess)success
                                //: failure:(YLHttpRequestFailed)failure {
                                highlight:(YLHttpRequestFailed)failure {

    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [noti_labelValue POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:[NSURL URLWithString:filePath] name:name error:&error];
        [formData appendPartWithFileURL:[NSURL URLWithString:filePath] name:name error:&error];
        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (show_pathId) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].kFromPath,responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self duty] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (show_pathId) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].user_differentlyTitle,error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self duty] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self duty] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: + (__kindof NSURLSessionTask *)uploadVideoWithURL:(NSString *)URL
+ (__kindof NSURLSessionTask *)video:(NSString *)URL
                                      //: parameters:(id)parameters
                                      from:(id)parameters
                                           //: video:(NSString *)videoPath
                                           userSuccess:(NSString *)videoPath
                                           //: thumb:(UIImage *)thumb
                                           label:(UIImage *)thumb
                                        //: progress:(YLHttpProgress)progress
                                        array:(YLHttpProgress)progress
                                         //: success:(YLHttpRequestSuccess)success
                                         userFailure:(YLHttpRequestSuccess)success
                                         //: failure:(YLHttpRequestFailed)failure {
                                         total:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [noti_labelValue POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:@"video" error:&error];
        [formData appendPartWithFileURL:[NSURL fileURLWithPath:videoPath isDirectory:NO] name:[UndergraduateData sharedInstance].main_liableId error:&error];
        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;

        //: NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        NSData *thumbData = UIImageJPEGRepresentation(thumb, 1.f);
        //: [formData appendPartWithFileData:thumbData
        [formData appendPartWithFileData:thumbData
                                    //: name:@"thumb"
                                    name:[UndergraduateData sharedInstance].appBuilderTitle
                                //: fileName:@"thumb.jpg"
                                fileName:[UndergraduateData sharedInstance].show_pinFormat
                                //: mimeType:[NSString stringWithFormat:@"image/jpg"]];
                                mimeType:[NSString stringWithFormat:[UndergraduateData sharedInstance].appShowAcquireStr]];

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (show_pathId) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].kFromPath,responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self duty] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (show_pathId) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].user_differentlyTitle,error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self duty] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self duty] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

/**
 *  上传多个文件
 *
 *  @param URL        请求地址
 *  @param parameters 请求参数
 *  @param files      文件 <文件对应服务器上的字段, 文件本地的沙盒路径>
 *  @param progress   上传进度信息
 *  @param success    请求成功的回调
 *  @param failure    请求失败的回调
 *
 *  @return 返回的对象可取消请求,调用cancel方法
 */
//: + (__kindof NSURLSessionTask *)uploadFilesWithURL:(NSString *)URL
+ (__kindof NSURLSessionTask *)startUp:(NSString *)URL
                                       //: parameters:(id)parameters
                                       add:(id)parameters
                                            //: files:(NSDictionary<NSString*, NSString*> *)files
                                            should:(NSDictionary<NSString*, NSString*> *)files
                                         //: progress:(YLHttpProgress)progress
                                         files:(YLHttpProgress)progress
                                          //: success:(YLHttpRequestSuccess)success
                                          monitorReceive:(YLHttpRequestSuccess)success
                                          //: failure:(YLHttpRequestFailed)failure {
                                          can:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [noti_labelValue POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;

        //: for (NSString * key in files) {
        for (NSString * key in files) {
            //: NSString * value = [files objectForKey:key];
            NSString * value = [files objectForKey:key];
            //: [formData appendPartWithFileURL:[NSURL URLWithString:value] name:key error:&error];
            [formData appendPartWithFileURL:[NSURL URLWithString:value] name:key error:&error];

            //: if (error) {
            if (error) {
                //: break;
                break;
            }
        }

        //: (failure && error) ? failure(error) : nil;
        (failure && error) ? failure(error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (show_pathId) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].kFromPath,responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self duty] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (show_pathId) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].user_differentlyTitle,error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self duty] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self duty] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}



//: #pragma mark - 上传单张图片
#pragma mark - 上传单张图片
//: + (NSURLSessionTask *)uploadImageWithURL:(NSString *)URL parameters:(id)parameters name:(NSString *)name data:(NSData *)data fileName:(NSString *)fileName imageType:(NSString *)imageType progress:(YLHttpProgress)progress success:(YLHttpRequestSuccess)success failure:(YLHttpRequestFailed)failure
+ (NSURLSessionTask *)harvestMoon:(NSString *)URL uploadShouldFailure:(id)parameters tingIcon:(NSString *)name stylus:(NSData *)data edge:(NSString *)fileName uploadMust:(NSString *)imageType advancedFailure:(YLHttpProgress)progress success:(YLHttpRequestSuccess)success tab:(YLHttpRequestFailed)failure
{
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [noti_labelValue POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        // 默认图片的文件名, 若fileNames为nil就使用

        //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //: formatter.dateFormat = @"yyyyMMddHHmmss";
        formatter.dateFormat = [UndergraduateData sharedInstance].user_grayKey;
        //: NSString *str = [formatter stringFromDate:[NSDate date]];
        NSString *str = [formatter stringFromDate:[NSDate date]];
        //: NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:@"jpg"];
        NSString *imageFileName = [NSString stringWithFormat:@"%@.%@",str,imageType?:[UndergraduateData sharedInstance].notiDraftMsg];

        //: [formData appendPartWithFileData:data
        [formData appendPartWithFileData:data
                                    //: name:name
                                    name:name
                                //: fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:@"jpg"] : imageFileName
                                fileName:fileName ? [NSString stringWithFormat:@"%@.%@",fileName,imageType?:[UndergraduateData sharedInstance].notiDraftMsg] : imageFileName
                                //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                mimeType:[NSString stringWithFormat:[UndergraduateData sharedInstance].showJungleMsg,imageType ?: [UndergraduateData sharedInstance].notiDraftMsg]];

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (show_pathId) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].kFromPath,responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self duty] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (show_pathId) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].user_differentlyTitle,error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self duty] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self duty] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}


//: #pragma mark - 上传多张图片
#pragma mark - 上传多张图片
//: + (NSURLSessionTask *)uploadImagesWithURL:(NSString *)URL
+ (NSURLSessionTask *)bottomFailure:(NSString *)URL
                               //: parameters:(id)parameters
                               showOn:(id)parameters
                                     //: name:(NSString *)name
                                     bubble:(NSString *)name
                                   //: images:(NSArray<UIImage *> *)images
                                   recordingFailure:(NSArray<UIImage *> *)images
                                //: fileNames:(NSArray<NSString *> *)fileNames
                                fromRange:(NSArray<NSString *> *)fileNames
                               //: imageScale:(CGFloat)imageScale
                               indexSession:(CGFloat)imageScale
                                //: imageType:(NSString *)imageType
                                state:(NSString *)imageType
                                 //: progress:(YLHttpProgress)progress
                                 textHighlight:(YLHttpProgress)progress
                                  //: success:(YLHttpRequestSuccess)success
                                  bar:(YLHttpRequestSuccess)success
                                  //: failure:(YLHttpRequestFailed)failure {
                                  valueReply:(YLHttpRequestFailed)failure {
    //: NSURLSessionTask *sessionTask = [_sessionManager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionTask *sessionTask = [noti_labelValue POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            // 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            // 默认图片的文件名, 若fileNames为nil就使用

            //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            //: formatter.dateFormat = @"yyyyMMddHHmmss";
            formatter.dateFormat = [UndergraduateData sharedInstance].user_grayKey;
            //: NSString *str = [formatter stringFromDate:[NSDate date]];
            NSString *str = [formatter stringFromDate:[NSDate date]];
            //: NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:@"jpg"];
            NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:[UndergraduateData sharedInstance].notiDraftMsg];

            //: [formData appendPartWithFileData:imageData
            [formData appendPartWithFileData:imageData
                                        //: name:[NSString stringWithFormat:@"%@%ld", name, i]
                                        name:[NSString stringWithFormat:@"%@%ld", name, i]
                                    //: fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:@"jpg"] : imageFileName
                                    fileName:fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:[UndergraduateData sharedInstance].notiDraftMsg] : imageFileName
                                    //: mimeType:[NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"]];
                                    mimeType:[NSString stringWithFormat:[UndergraduateData sharedInstance].showJungleMsg,imageType ?: [UndergraduateData sharedInstance].notiDraftMsg]];
        }

    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //上传进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"responseObject = %@",responseObject] UTF8String]);}
        if (show_pathId) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].kFromPath,responseObject] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self duty] removeObject:task];
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: if (_isOpenLog) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:@"error = %@",error] UTF8String]);}
        if (show_pathId) {printf("[%s] %s [第%d行]: %s\n", "15:01:19" ,__PRETTY_FUNCTION__ ,__LINE__, [[NSString stringWithFormat:[UndergraduateData sharedInstance].user_differentlyTitle,error] UTF8String]);}
        //: [[self allSessionTask] removeObject:task];
        [[self duty] removeObject:task];
        //: failure ? failure(error) : nil;
        failure ? failure(error) : nil;
    //: }];
    }];

    // 添加sessionTask到数组
    //: sessionTask ? [[self allSessionTask] addObject:sessionTask] : nil ;
    sessionTask ? [[self duty] addObject:sessionTask] : nil ;

    //: return sessionTask;
    return sessionTask;
}

//: #pragma mark - 下载文件
#pragma mark - 下载文件
//: + (NSURLSessionTask *)downloadWithURL:(NSString *)URL
+ (NSURLSessionTask *)message:(NSString *)URL
                              //: fileDir:(NSString *)fileDir
                              should:(NSString *)fileDir
                             //: progress:(YLHttpProgress)progress
                             user:(YLHttpProgress)progress
                              //: success:(void(^)(NSString *))success
                              downloadWithMisplay:(void(^)(NSString *))success
                              //: failure:(YLHttpRequestFailed)failure {
                              spectralColour:(YLHttpRequestFailed)failure {
    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    //: __block NSURLSessionDownloadTask *downloadTask = [_sessionManager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
    __block NSURLSessionDownloadTask *downloadTask = [noti_labelValue downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        //下载进度
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{
            //: progress ? progress(downloadProgress) : nil;
            progress ? progress(downloadProgress) : nil;
        //: });
        });
    //: } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        //拼接缓存目录
        //: NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : @"Download"];
        NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : [UndergraduateData sharedInstance].mRespectivelyKey];
        //打开文件管理器
        //: NSFileManager *fileManager = [NSFileManager defaultManager];
        NSFileManager *fileManager = [NSFileManager defaultManager];
        //创建Download目录
        //: [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        [fileManager createDirectoryAtPath:downloadDir withIntermediateDirectories:YES attributes:nil error:nil];
        //拼接文件路径
        //: NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        NSString *filePath = [downloadDir stringByAppendingPathComponent:response.suggestedFilename];
        //返回文件位置的URL路径
        //: return [NSURL fileURLWithPath:filePath];
        return [NSURL fileURLWithPath:filePath];

    //: } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {

        //: [[self allSessionTask] removeObject:downloadTask];
        [[self duty] removeObject:downloadTask];
        //: if(failure && error) {failure(error) ; return ;};
        if(failure && error) {failure(error) ; return ;};
        //: success ? success(filePath.absoluteString /|** NSURL->NSString*|/) : nil;
        success ? success(filePath.absoluteString /** NSURL->NSString*/) : nil;

    //: }];
    }];
    //开始下载
    //: [downloadTask resume];
    [downloadTask resume];
    // 添加sessionTask到数组
    //: downloadTask ? [[self allSessionTask] addObject:downloadTask] : nil ;
    downloadTask ? [[self duty] addObject:downloadTask] : nil ;

    //: return downloadTask;
    return downloadTask;
}

/**
 存储着所有的请求task数组
 */
//: + (NSMutableArray *)allSessionTask {
+ (NSMutableArray *)duty {
    //: if (!_allSessionTask) {
    if (!app_normalKey) {
        //: _allSessionTask = [[NSMutableArray alloc] init];
        app_normalKey = [[NSMutableArray alloc] init];
    }
    //: return _allSessionTask;
    return app_normalKey;
}

//: #pragma mark - 初始化AFHTTPSessionManager相关属性
#pragma mark - 初始化AFHTTPSessionManager相关属性
/**
 开始监测网络状态
 */
//: + (void)load {
+ (void)load {
    //: [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}
/**
 *  所有的HTTP请求共享一个AFHTTPSessionManager
 *  原理参考地址:http://www.jianshu.com/p/5969bbb4af9f
 */
//: + (void)initialize {
+ (void)initialize {
    //: _sessionManager = [AFHTTPSessionManager manager];
    noti_labelValue = [AFHTTPSessionManager manager];
    //: _sessionManager.requestSerializer.timeoutInterval = 15.f;
    noti_labelValue.requestSerializer.timeoutInterval = 15.f;
    //: _sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    noti_labelValue.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[UndergraduateData sharedInstance].app_nearlyId, [UndergraduateData sharedInstance].app_oofData, [UndergraduateData sharedInstance].mDiplomaticValue, [UndergraduateData sharedInstance].user_preventionData, [UndergraduateData sharedInstance].mPurchaseValue, [UndergraduateData sharedInstance].mainInkTitle, [UndergraduateData sharedInstance].appLetterValue, nil];
    // 打开状态栏的等待菊花
    //: [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
}

//: #pragma mark - 重置AFHTTPSessionManager相关属性
#pragma mark - 重置AFHTTPSessionManager相关属性

//: + (void)setAFHTTPSessionManagerProperty:(void (^)(AFHTTPSessionManager *))sessionManager {
+ (void)setSession:(void (^)(AFHTTPSessionManager *))sessionManager {
    //: sessionManager ? sessionManager(_sessionManager) : nil;
    sessionManager ? sessionManager(noti_labelValue) : nil;
}

//: + (void)setRequestSerializer:(YLRequestSerializer)requestSerializer {
+ (void)setKey:(YLRequestSerializer)requestSerializer {
    //: _sessionManager.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
    noti_labelValue.requestSerializer = requestSerializer==YLRequestSerializerHTTP ? [AFHTTPRequestSerializer serializer] : [AFJSONRequestSerializer serializer];
}

//: + (void)setResponseSerializer:(YLResponseSerializer)responseSerializer {
+ (void)setOpenSerializer:(YLResponseSerializer)responseSerializer {
    //: _sessionManager.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
    noti_labelValue.responseSerializer = responseSerializer==YLResponseSerializerHTTP ? [AFHTTPResponseSerializer serializer] : [AFJSONResponseSerializer serializer];
}

//: + (void)setRequestTimeoutInterval:(NSTimeInterval)time {
+ (void)setText:(NSTimeInterval)time {
    //: _sessionManager.requestSerializer.timeoutInterval = time;
    noti_labelValue.requestSerializer.timeoutInterval = time;
}

//: + (void)setValue:(NSString *)value forHTTPHeaderField:(NSString *)field {
+ (void)file:(NSString *)value status:(NSString *)field {
    //: [_sessionManager.requestSerializer setValue:value forHTTPHeaderField:field];
    [noti_labelValue.requestSerializer setValue:value forHTTPHeaderField:field];
}

//: + (void)openNetworkActivityIndicator:(BOOL)open {
+ (void)indexIndicator:(BOOL)open {
    //: [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:open];
}

//: + (void)setSecurityPolicyWithCerPath:(NSString *)cerPath validatesDomainName:(BOOL)validatesDomainName {
+ (void)size:(NSString *)cerPath should:(BOOL)validatesDomainName {
    //: NSData *cerData = [NSData dataWithContentsOfFile:cerPath];
    NSData *cerData = [NSData dataWithContentsOfFile:cerPath];
    // 使用证书验证模式
    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate];
    // 如果需要验证自建证书(无效证书)，需要设置为YES
    //: securityPolicy.allowInvalidCertificates = YES;
    securityPolicy.allowInvalidCertificates = YES;
    // 是否需要验证域名，默认为YES;
    //: securityPolicy.validatesDomainName = validatesDomainName;
    securityPolicy.validatesDomainName = validatesDomainName;
    //: securityPolicy.pinnedCertificates = [[NSSet alloc] initWithObjects:cerData, nil];
    securityPolicy.pinnedCertificates = [[NSSet alloc] initWithObjects:cerData, nil];

    //: [_sessionManager setSecurityPolicy:securityPolicy];
    [noti_labelValue setSecurityPolicy:securityPolicy];
}

//: @end
@end


//: #pragma mark - NSDictionary,NSArray的分类
#pragma mark - NSDictionary,NSArray的分类
/*
 ************************************************************************************
 *新建NSDictionary与NSArray的分类, 控制台打印json数据中的中文
 ************************************************************************************
 */


//: @implementation NSArray (PP)
@implementation NSArray (PP)

//: - (NSString *)descriptionWithLocale:(id)locale {
- (NSString *)descriptionWithLocale:(id)locale {
    //: NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    //: [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        //: [strM appendFormat:@"\t%@,\n", obj];
        [strM appendFormat:@"\t%@,\n", obj];
    //: }];
    }];
    //: [strM appendString:@")"];
    [strM appendString:@")"];

    //: return strM;
    return strM;
}

//: @end
@end

//: @implementation NSDictionary (PP)
@implementation NSDictionary (PP)

//: - (NSString *)descriptionWithLocale:(id)locale {
- (NSString *)descriptionWithLocale:(id)locale {
    //: NSMutableString *strM = [NSMutableString stringWithString:@"{\n"];
    NSMutableString *strM = [NSMutableString stringWithString:@"{\n"];
    //: [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        //: [strM appendFormat:@"\t%@ = %@;\n", key, obj];
        [strM appendFormat:@"\t%@ = %@;\n", key, obj];
    //: }];
    }];

    //: [strM appendString:@"}\n"];
    [strM appendString:@"}\n"];

    //: return strM;
    return strM;
}
//: @end
@end