
#import <Foundation/Foundation.h>

typedef struct {
    Byte barroom;
    Byte *candidlySemen;
    unsigned int flexibleJoint;
} StructDeleteData;

@interface DeleteData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DeleteData

+ (instancetype)sharedInstance {
    static DeleteData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)DeleteDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)DeleteDataToByte:(StructDeleteData *)data {
    for (int i = 0; i < data->flexibleJoint; i++) {
        data->candidlySemen[i] ^= data->barroom;
    }
    data->candidlySemen[data->flexibleJoint] = 0;
    return data->candidlySemen;
}

- (NSString *)StringFromDeleteData:(StructDeleteData *)data {
    return [NSString stringWithUTF8String:(char *)[self DeleteDataToByte:data]];
}

//: tyl_NTESLoginData
- (NSString *)appModeNextData {
    /* static */ NSString *appModeNextData = nil;
    if (!appModeNextData) {
		NSArray<NSString *> *origin = @[@"161", @"172", @"185", @"138", @"155", @"129", @"144", @"134", @"153", @"186", @"178", @"188", @"187", @"145", @"180", @"161", @"180", @"35"];
		NSData *data = [DeleteData DeleteDataToData:origin];
        StructDeleteData value = (StructDeleteData){213, (Byte *)data.bytes, 17};
        appModeNextData = [self StringFromDeleteData:&value];
    }
    return appModeNextData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RowTop.m
//  NIM
//
//  Created by amao on 5/26/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCLoginManager.h"
#import "RowTop.h"
//: #import "NTESFileLocationHelper.h"
#import "VersionData.h"

//: @interface NTESLoginData ()
@interface DirectionData ()

//: @end
@end

//: @implementation NTESLoginData
@implementation DirectionData

//: - (BOOL)isValid {
- (BOOL)barImage {
    //: if (_authType == NIMSDKAuthTypeDefault) {
    if (_authType == NIMSDKAuthTypeDefault) {
        //: return [_account length] && [_token length];
        return [_account length] && [_token length];
    }

    //: if (_authType == NIMSDKAuthTypeDynamicToken) {
    if (_authType == NIMSDKAuthTypeDynamicToken) {
        //: return [_account length] && [_token length];
        return [_account length] && [_token length];
    }

    //: if (_authType == NIMSDKAuthTypeThirdParty) {
    if (_authType == NIMSDKAuthTypeThirdParty) {
        //: return [_account length] && [_token length] && [_loginExtension length];
        return [_account length] && [_token length] && [_loginExtension length];
    }

    //: return NO;
    return NO;
}
//: @end
@end



//: @implementation CCCLoginManager
@implementation RowTop

//: + (instancetype)sharedManager
+ (instancetype)heatherMixture
{
    //: static CCCLoginManager *instance = nil;
    static RowTop *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[CCCLoginManager alloc] init];
        instance = [[RowTop alloc] init];
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
        //: [self readData];
        [self alongSession];
    }
    //: return self;
    return self;
}


//: - (void)setCurrentLoginData:(NTESLoginData *)currentLoginData
- (void)setCurrentLoginData:(DirectionData *)currentLoginData
{
    //: _currentLoginData = currentLoginData;
    _currentLoginData = currentLoginData;
    //: [self saveData];
    [self mortal];
}

//从文件中读取和保存用户名密码,建议上层开发对这个地方做加密,DEMO只为了做示范,所以没加密
//: - (void)readData
- (void)alongSession
{
    //: NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:@"tyl_NTESLoginData"];
    NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:[[DeleteData sharedInstance] appModeNextData]];
    //: if (loginDataDic) {
    if (loginDataDic) {
        //: _currentLoginData = [NTESLoginData yy_modelWithDictionary:loginDataDic];
        _currentLoginData = [DirectionData yy_modelWithDictionary:loginDataDic];
    }
}

//: - (void)saveData
- (void)mortal
{
    //: if (_currentLoginData)
    if (_currentLoginData)
    {
        //: [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:@"tyl_NTESLoginData"];
        [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:[[DeleteData sharedInstance] appModeNextData]];
    }
}


//: @end
@end