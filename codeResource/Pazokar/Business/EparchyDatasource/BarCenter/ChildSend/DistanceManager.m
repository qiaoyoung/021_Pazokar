
#import <Foundation/Foundation.h>

typedef struct {
    Byte hqFactor;
    Byte *adjacentCentral;
    unsigned int protect;
	int assort;
	int payable;
	int dataConverter;
} StructHmOverseeData;

@interface HmOverseeData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation HmOverseeData

+ (instancetype)sharedInstance {
    static HmOverseeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)HmOverseeDataToData:(NSString *)value {
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

- (Byte *)HmOverseeDataToByte:(StructHmOverseeData *)data {
    for (int i = 0; i < data->protect; i++) {
        data->adjacentCentral[i] ^= data->hqFactor;
    }
    data->adjacentCentral[data->protect] = 0;
	if (data->protect >= 3) {
		data->assort = data->adjacentCentral[0];
		data->payable = data->adjacentCentral[1];
		data->dataConverter = data->adjacentCentral[2];
	}
    return data->adjacentCentral;
}

- (NSString *)StringFromHmOverseeData:(StructHmOverseeData *)data {
    return [NSString stringWithUTF8String:(char *)[self HmOverseeDataToByte:data]];
}

//: nimkit.url.query
- (NSString *)userReallyIdent {
    /* static */ NSString *userReallyIdent = nil;
    if (!userReallyIdent) {
		NSString *origin = @"75727670726f356e6977356a6e7e696294";
		NSData *data = [HmOverseeData HmOverseeDataToData:origin];
        StructHmOverseeData value = (StructHmOverseeData){27, (Byte *)data.bytes, 16, 172, 237, 246};
        userReallyIdent = [self StringFromHmOverseeData:&value];
    }
    return userReallyIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DistanceManager.m
// Case
//
//  Created by Netease on 2019/7/15.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyKitUrlManager.h"
#import "DistanceManager.h"
//: #import "BusyKitTimerHolder.h"
#import "NameWith.h"
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: NSString *const kNIMKitUrlDataKey = @"kNIMKitUrlDataKey";
NSString *const mainMakeNameId = @"kNIMKitUrlDataKey";

//: @interface BusyKitUrlManager ()<BusyKitTimerHolderDelegate>
@interface DistanceManager ()<ChildRefresh>

//: @property (nonatomic, strong) NSMutableDictionary *dic;
@property (nonatomic, strong) NSMutableDictionary *dic;

//: @property (nonatomic, strong) BusyKitTimerHolder *timer;
@property (nonatomic, strong) NameWith *timer;

//: @property (nonatomic, assign) BOOL needSync;
@property (nonatomic, assign) BOOL needSync;

//: @end
@end

//: @implementation BusyKitUrlManager
@implementation DistanceManager

//: + (instancetype)shareManager {
+ (instancetype)fast {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static id instance = nil;
    static id instance = nil;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[BusyKitUrlManager alloc] init];
        instance = [[DistanceManager alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _dic = [self loadLocalFile];
        _dic = [self secret];
        //: if (!_dic) {
        if (!_dic) {
            //: _dic = [NSMutableDictionary dictionary];
            _dic = [NSMutableDictionary dictionary];
        }
        //: _timer = [[BusyKitTimerHolder alloc] init];
        _timer = [[NameWith alloc] init];
        //: [_timer startTimer:5.0f delegate:self repeats:YES];
        [_timer icon:5.0f size:self title:YES];

        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(onEnterBackground:)
                                                 selector:@selector(textImage:)
                                                     //: name:UIApplicationDidEnterBackgroundNotification
                                                     name:UIApplicationDidEnterBackgroundNotification
                                                   //: object:nil];
                                                   object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(onTerminate:)
                                                 selector:@selector(endRange:)
                                                     //: name:UIApplicationWillTerminateNotification
                                                     name:UIApplicationWillTerminateNotification
                                                   //: object:nil];
                                                   object:nil];
    }
    //: return self;
    return self;
}

//: - (void)queryQriginalUrlWithShortUrl:(NSString *)shortUrl
- (void)pressed:(NSString *)shortUrl
                          //: completion:(NIMKitUrlCompletion)completion {
                          momentaryTeam:(NIMKitUrlCompletion)completion {
    //: NSError *error = nil;
    NSError *error = nil;
    //: if (!shortUrl) {
    if (!shortUrl) {
        //: error = [NSError errorWithDomain:@"nimkit.url.query" code:0x1000 userInfo:nil];
        error = [NSError errorWithDomain:[[HmOverseeData sharedInstance] userReallyIdent] code:0x1000 userInfo:nil];
        //: if (completion) {
        if (completion) {
            //: completion(nil, error);
            completion(nil, error);
        }
        //: return;
        return;
    }

    //: NSString *ret = _dic[shortUrl];
    NSString *ret = _dic[shortUrl];
    //: if (ret.length != 0) {
    if (ret.length != 0) {
        //: if (completion) {
        if (completion) {
            //: completion(ret, nil);
            completion(ret, nil);
        }
        //: return;
        return;
    }

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].resourceManager fetchNOSURLWithURL:shortUrl
    [[NIMSDK sharedSDK].resourceManager fetchNOSURLWithURL:shortUrl
                                                //: completion:^(NSError * _Nullable error, NSString * _Nullable urlString) {
                                                completion:^(NSError * _Nullable error, NSString * _Nullable urlString) {
        //: if (!error && urlString) {
        if (!error && urlString) {
            //: [weakSelf storeShortUrl:shortUrl originalUrl:urlString];
            [weakSelf item:shortUrl session:urlString];
        }
        //: if (completion) {
        if (completion) {
            //: completion(urlString, error);
            completion(urlString, error);
        }
    //: }];
    }];

}

//: - (void)storeShortUrl:(NSString *)shortUrl originalUrl:(NSString *)originalUrl {
- (void)item:(NSString *)shortUrl session:(NSString *)originalUrl {
    //: if (!shortUrl || !originalUrl) {
    if (!shortUrl || !originalUrl) {
        //: return;
        return;
    }
    //: if ([shortUrl isEqualToString:originalUrl]) {
    if ([shortUrl isEqualToString:originalUrl]) {
        //: return;
        return;
    }
    //: if (!_dic[shortUrl]) {
    if (!_dic[shortUrl]) {
        //: _dic[shortUrl] = [originalUrl copy];
        _dic[shortUrl] = [originalUrl copy];
        //: _needSync = YES;
        _needSync = YES;
    }
}

//: - (NSString *)originalUrlWithShortUrl:(NSString *)shortUrl {
- (NSString *)custom:(NSString *)shortUrl {
    //: return _dic[shortUrl];
    return _dic[shortUrl];
}

//: - (NSMutableDictionary *)loadLocalFile {
- (NSMutableDictionary *)secret {
    //: NSDictionary *dic = [[NSUserDefaults standardUserDefaults] objectForKey:kNIMKitUrlDataKey];
    NSDictionary *dic = [[NSUserDefaults standardUserDefaults] objectForKey:mainMakeNameId];
    //: return [NSMutableDictionary dictionaryWithDictionary:dic];
    return [NSMutableDictionary dictionaryWithDictionary:dic];
}

//: - (void)syncToLocal {
- (void)bilge {
    //: if (_needSync) {
    if (_needSync) {
        //: [[NSUserDefaults standardUserDefaults] setObject:_dic forKey:kNIMKitUrlDataKey];
        [[NSUserDefaults standardUserDefaults] setObject:_dic forKey:mainMakeNameId];
        //: _needSync = NO;
        _needSync = NO;
    }
}

//: - (void)onNIMKitTimerFired:(BusyKitTimerHolder *)holder {
- (void)alonging:(NameWith *)holder {
    //: if (holder != _timer) {
    if (holder != _timer) {
        //: return;
        return;
    }
    //: [self syncToLocal];
    [self bilge];
}

//: - (void)onEnterBackground:(NSNotification *)note {
- (void)textImage:(NSNotification *)note {
    //: [self syncToLocal];
    [self bilge];
}

//: - (void)onTerminate:(NSNotification *)note {
- (void)endRange:(NSNotification *)note {
    //: [self syncToLocal];
    [self bilge];
}

//: @end
@end
