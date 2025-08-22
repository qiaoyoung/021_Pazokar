
#import <Foundation/Foundation.h>

@interface MissiveData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation MissiveData

+ (instancetype)sharedInstance {
    static MissiveData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)MissiveDataToCache:(Byte *)data {
    int forthright = data[0];
    Byte usuallyControl = data[1];
    int handleName = data[2];
    for (int i = handleName; i < handleName + forthright; i++) {
        int value = data[i] - usuallyControl;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[handleName + forthright] = 0;
    return data + handleName;
}

- (NSString *)StringFromMissiveData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MissiveDataToCache:data]];
}

//: data
- (NSString *)show_dismissFormationName {
    /* static */ NSString *show_dismissFormationName = nil;
    if (!show_dismissFormationName) {
        Byte value[] = {4, 91, 7, 161, 114, 199, 73, 191, 188, 207, 188, 125};
        show_dismissFormationName = [self StringFromMissiveData:value];
    }
    return show_dismissFormationName;
}

//: code
- (NSString *)mainPotatoCrisisStr {
    /* static */ NSString *mainPotatoCrisisStr = nil;
    if (!mainPotatoCrisisStr) {
        Byte value[] = {4, 2, 12, 66, 3, 42, 98, 173, 218, 249, 32, 158, 101, 113, 102, 103, 230};
        mainPotatoCrisisStr = [self StringFromMissiveData:value];
    }
    return mainPotatoCrisisStr;
}

//: /wallet/questionList
- (NSString *)userInmateStr {
    /* static */ NSString *userInmateStr = nil;
    if (!userInmateStr) {
        Byte value[] = {20, 50, 3, 97, 169, 147, 158, 158, 151, 166, 97, 163, 167, 151, 165, 166, 155, 161, 160, 126, 155, 165, 166, 250};
        userInmateStr = [self StringFromMissiveData:value];
    }
    return userInmateStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundManager.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESGlobalConfigManager.h"
#import "BackgroundManager.h"

//: @interface NTESGlobalConfigManager ()
@interface BackgroundManager ()
//: @property (nonatomic ,strong) NSArray *secretQuestionArray;
@property (nonatomic ,strong) NSArray *secretQuestionArray;
//: @end
@end

//: @implementation NTESGlobalConfigManager
@implementation BackgroundManager

//: static NTESGlobalConfigManager *shareConfigManager = nil;
static BackgroundManager *kResultUrl = nil;

//: + (NTESGlobalConfigManager *)shareConfigManager{
+ (BackgroundManager *)cut{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareConfigManager == nil) {
        if (kResultUrl == nil) {
            //: shareConfigManager = [[NTESGlobalConfigManager alloc] init];
            kResultUrl = [[BackgroundManager alloc] init];
        }
        //: return shareConfigManager;
        return kResultUrl;
    }
}



//: + (NSArray *)getSecretQuestionList{
+ (NSArray *)should{
    //: return [NTESGlobalConfigManager shareConfigManager].secretQuestionArray;
    return [BackgroundManager cut].secretQuestionArray;
}

//: + (void)refreshSecretQuestionConfig{
+ (void)toolConfig{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/questionList"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[[MissiveData sharedInstance] userInmateStr]] read:nil indicator:NO spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict tag:[[MissiveData sharedInstance] mainPotatoCrisisStr]];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: [NTESGlobalConfigManager shareConfigManager].secretQuestionArray = [resultDict valueObjectForKey:@"data"];
            [BackgroundManager cut].secretQuestionArray = [resultDict selected:[[MissiveData sharedInstance] show_dismissFormationName]];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: @end
@end