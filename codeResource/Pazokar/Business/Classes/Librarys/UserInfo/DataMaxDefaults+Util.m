
#import <Foundation/Foundation.h>
typedef struct {
    Byte logicShow;
    Byte *markWeep;
    unsigned int topic;
    Byte woody;
} LiterallyData;

NSString *StringFromLiterallyData(LiterallyData *data);


//: e6548ec2fe71a38961430ee520b0ad47
LiterallyData showIntervalerviewId = (LiterallyData){163, (Byte []){198, 149, 150, 151, 155, 198, 192, 145, 197, 198, 148, 146, 194, 144, 155, 154, 149, 146, 151, 144, 147, 198, 198, 150, 145, 147, 193, 147, 194, 199, 151, 148, 152}, 32, 186};

//: Webpage
LiterallyData userGateName = (LiterallyData){7, (Byte []){80, 98, 101, 119, 102, 96, 98, 45}, 7, 220};

//: appkey
LiterallyData user_apartmentUrl = (LiterallyData){202, (Byte []){171, 186, 186, 161, 175, 179, 237}, 6, 244};

//: isclose
LiterallyData show_mallTitle = (LiterallyData){228, (Byte []){141, 151, 135, 136, 139, 151, 129, 141}, 7, 205};

//: logininfo
LiterallyData mainSourceFormat = (LiterallyData){54, (Byte []){90, 89, 81, 95, 88, 95, 88, 80, 89, 232}, 9, 228};

//: Hello World
LiterallyData dream_deserveIdent = (LiterallyData){37, (Byte []){109, 64, 73, 73, 74, 5, 114, 74, 87, 73, 65, 134}, 11, 194};

//: isregitor
LiterallyData dreamWinterIdent = (LiterallyData){144, (Byte []){249, 227, 226, 245, 247, 249, 228, 255, 226, 110}, 9, 160};

//: KEKENotificationLanguageChanged
LiterallyData kAvailableStr = (LiterallyData){247, (Byte []){188, 178, 188, 178, 185, 152, 131, 158, 145, 158, 148, 150, 131, 158, 152, 153, 187, 150, 153, 144, 130, 150, 144, 146, 180, 159, 150, 153, 144, 146, 147, 117}, 31, 199};

//: webViewURL
LiterallyData dreamMessageValue = (LiterallyData){155, (Byte []){236, 254, 249, 205, 242, 254, 236, 206, 201, 215, 74}, 10, 226};

//: NSUserDefault%@
LiterallyData dreamVerticalData = (LiterallyData){142, (Byte []){192, 221, 219, 253, 235, 252, 202, 235, 232, 239, 251, 226, 250, 171, 206, 67}, 15, 183};

//: language
LiterallyData user_dismissKey = (LiterallyData){59, (Byte []){87, 90, 85, 92, 78, 90, 92, 94, 134}, 8, 245};

//: webViewTitle
LiterallyData dream_sideName = (LiterallyData){3, (Byte []){116, 102, 97, 85, 106, 102, 116, 87, 106, 119, 111, 102, 36}, 12, 198};

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataMaxDefaults+Util.m
//  译同行
//
//  Created by 曹宇 on 2017/8/29.
//  Copyright © 2017年 caoyu. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NIMUserDefaults+Util.h"
#import "DataMaxDefaults+Util.h"
//: #import "ZCHttpManager.h"
#import "TitleManageressManager.h"

//: @implementation NIMUserDefaults (Util)
@implementation DataMaxDefaults (Util)

//: @dynamic webViewTitle;
@dynamic webViewTitle;
//: @dynamic webViewURL;
@dynamic webViewURL;
//: @dynamic appkey;
@dynamic appkey;
//: @dynamic isclose;
@dynamic isclose;

//: @dynamic isregitor;
@dynamic isregitor;
//: @dynamic accountName;
@dynamic accountName;

//: @dynamic loginToken;
@dynamic loginToken;
//: @dynamic language;
@dynamic language;



//: - (NSDictionary *)setupDefaults {
- (NSDictionary *)add {
    //: return @{
    return @{
             //: @"webViewTitle" : @"Webpage",
             StringFromLiterallyData(&dream_sideName) : StringFromLiterallyData(&userGateName),
             //: @"webViewURL" : @"",
             StringFromLiterallyData(&dreamMessageValue) : @"",
             //: @"appkey" : @"e6548ec2fe71a38961430ee520b0ad47",
             StringFromLiterallyData(&user_apartmentUrl) : StringFromLiterallyData(&showIntervalerviewId),
             //: @"isclose" : @"0",
             StringFromLiterallyData(&show_mallTitle) : @"0",
             //: @"logininfo" : @"Hello World",
             StringFromLiterallyData(&mainSourceFormat) : StringFromLiterallyData(&dream_deserveIdent),
             //: @"isregitor" : @"1",
             StringFromLiterallyData(&dreamWinterIdent) : @"1",
             //: @"language" : @""
             StringFromLiterallyData(&user_dismissKey) : @""
             //: };
             };
}

//: - (void)updateLanguageWith:(NSString *)lang; {
- (void)can:(NSString *)lang; {

    //: if (lang.length == 0) {
    if (lang.length == 0) {
        //: return;
        return;
    }

    //: [ZCHttpManager sharedManager].lastLang = lang;
    [TitleManageressManager off].lastLang = lang;

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    DataMaxDefaults *userDefaults = [DataMaxDefaults max];

    //: userDefaults.language = lang;
    userDefaults.language = lang;
    //: [[BusyLanguageManager shareInstance] setLanguagre:lang];
    [[SendName along] setMagnitudeernationality:lang];

    //: [MyUserKit sharedKit].languageBundle = nil;
    [Case pastTop].languageBundle = nil;

    //: [[NSNotificationCenter defaultCenter] postNotificationName:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:StringFromLiterallyData(&kAvailableStr) object:nil];

    //: AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    //: if (delegate.deviceToken) {
    if (delegate.deviceToken) {
        //: [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
        [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
                           //: customContentKey:lang];
                           customContentKey:lang];

        //: dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((DISPATCH_TIME_NOW), (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            //: setting.type = NIMPushNotificationDisplayTypeNoDetail;
            setting.type = NIMPushNotificationDisplayTypeNoDetail;

            //: [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
            [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
                //: if (error)
                if (error)
                {

                }
            //: }];
            }];
        //: });
        });
    }
}

//: - (NSString *)transformKey:(NSString *)key {
- (NSString *)keyBy:(NSString *)key {
    //: key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    key = [key stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[key substringToIndex:1] uppercaseString]];
    //: return [NSString stringWithFormat:@"NSUserDefault%@", key];
    return [NSString stringWithFormat:StringFromLiterallyData(&dreamVerticalData), key];
}
//: @end
@end

Byte *LiterallyDataToByte(LiterallyData *data) {
    if (data->woody < 113) return data->markWeep;
    for (int i = 0; i < data->topic; i++) {
        data->markWeep[i] ^= data->logicShow;
    }
    data->markWeep[data->topic] = 0;
    data->woody = 55;
    return data->markWeep;
}

NSString *StringFromLiterallyData(LiterallyData *data) {
    return [NSString stringWithUTF8String:(char *)LiterallyDataToByte(data)];
}
