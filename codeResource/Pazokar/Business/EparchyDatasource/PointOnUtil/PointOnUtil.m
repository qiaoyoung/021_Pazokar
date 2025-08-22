
#import <Foundation/Foundation.h>

NSString *StringFromRepresentData(Byte *data);


//: jpg
Byte userGivenUrl[] = {94, 3, 24, 6, 190, 151, 130, 136, 127, 91};

//: data
Byte kInfoUrl[] = {15, 4, 96, 8, 79, 212, 210, 12, 196, 193, 212, 193, 73};

//: msg
Byte userReallyText[] = {49, 3, 1, 6, 209, 93, 110, 116, 104, 92};

//: text/xml
Byte notiChildCenterStr[] = {6, 8, 29, 7, 61, 51, 52, 145, 130, 149, 145, 76, 149, 138, 137, 128};

//: 连接失败,请检查网络连接
Byte mainNearlyData[] = {55, 34, 4, 12, 156, 45, 215, 91, 245, 205, 147, 75, 236, 195, 162, 234, 146, 169, 233, 168, 181, 236, 184, 169, 48, 236, 179, 187, 234, 167, 132, 234, 163, 169, 235, 193, 149, 235, 191, 160, 236, 195, 162, 234, 146, 169, 26};

//: image
Byte appDoorwayAwlStr[] = {71, 5, 66, 12, 167, 84, 196, 86, 42, 250, 95, 181, 171, 175, 163, 169, 167, 166};

//: image/*
Byte show_eatingIdent[] = {63, 7, 98, 4, 203, 207, 195, 201, 199, 145, 140, 238};

//: gif
Byte appHaoIdent[] = {17, 3, 52, 14, 146, 104, 104, 45, 104, 90, 26, 190, 19, 87, 155, 157, 154, 118};

//: 连接错误
Byte showSoundMsg[] = {56, 12, 15, 13, 81, 196, 235, 61, 75, 202, 153, 198, 86, 247, 206, 173, 245, 157, 180, 248, 163, 168, 247, 190, 190, 164};

//: jpeg
Byte user_numerousTitle[] = {38, 4, 8, 9, 132, 66, 74, 8, 133, 114, 120, 109, 111, 224};

//: file
Byte m_cooperationName[] = {21, 4, 47, 4, 149, 152, 155, 148, 18};

//: text/javascript
Byte m_deserveJungleId[] = {77, 15, 36, 4, 152, 137, 156, 152, 83, 142, 133, 154, 133, 151, 135, 150, 141, 148, 152, 105};

//: http
Byte appControlData[] = {4, 4, 65, 14, 155, 246, 44, 141, 193, 194, 172, 33, 94, 138, 169, 181, 181, 177, 34};

//: text/plain
Byte appNextMessage[] = {93, 10, 41, 11, 134, 36, 116, 33, 114, 10, 186, 157, 142, 161, 157, 88, 153, 149, 138, 146, 151, 16};

//: text/json
Byte user_semenMsg[] = {37, 9, 61, 12, 28, 98, 226, 90, 217, 166, 72, 61, 177, 162, 181, 177, 108, 167, 176, 172, 171, 150};

//: code
Byte main_reliabilityName[] = {4, 4, 18, 6, 236, 242, 117, 129, 118, 119, 106};

//: upload错误：%@
Byte m_aheadLiterallyMessage[] = {90, 17, 34, 12, 72, 142, 87, 65, 122, 11, 253, 85, 151, 146, 142, 145, 131, 134, 11, 182, 187, 10, 209, 209, 17, 222, 188, 71, 98, 40};

//: application/json
Byte mGivenId[] = {81, 16, 44, 13, 140, 151, 155, 95, 102, 1, 153, 70, 220, 141, 156, 156, 152, 149, 143, 141, 160, 149, 155, 154, 91, 150, 159, 155, 154, 212};

//: 系统错误～
Byte dream_spectacularIdent[] = {45, 15, 62, 12, 209, 222, 144, 193, 143, 138, 209, 95, 37, 241, 249, 37, 249, 221, 39, 210, 215, 38, 237, 237, 45, 251, 220, 129};

//: 网络错误
Byte appChildText[] = {71, 12, 52, 8, 70, 201, 24, 5, 27, 241, 197, 27, 239, 208, 29, 200, 205, 28, 227, 227, 135};

//: img_%@.jpg
Byte mainPotatoContent[] = {49, 10, 54, 9, 60, 235, 31, 119, 235, 159, 163, 157, 149, 91, 118, 100, 160, 166, 157, 56};

//: png
Byte main_overseeId[] = {8, 3, 13, 6, 189, 128, 125, 123, 116, 109};

//: text/html
Byte show_sliceImageIfContent[] = {1, 9, 62, 9, 240, 14, 39, 10, 46, 178, 163, 182, 178, 109, 166, 178, 171, 170, 165};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PointOnUtil.m
//  hualiaoshi
//
//  Created by imim on 2017/12/22.
//  Copyright © 2017年 ali.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RestUtil.h"
#import "PointOnUtil.h"
//: #import "YLNetworkHelper.h"
#import "OldBoyNetworkHelper.h"
//: #import "NSDictionaryAdditions.h"
#import "NSDictionaryAdditions.h"
//: #import <NSData+ImageContentType.h>
#import <NSData+ImageContentType.h>
//: #import "AFHTTPSessionManager.h"
#import "AFHTTPSessionManager.h"

//: @implementation RestUtil
@implementation PointOnUtil

//: + (NSURLSessionTask *)post:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)noneTitle:(NSString *)url visualisation:(NSDictionary *)params smallness:(YLRestSuccess)success viewSuccess:(YLRestFail)fail
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
    //    [OldBoyNetworkHelper setValue:@"9" forHTTPHeaderField:@"fromType"];

    //: if (![url containsString:@"http"]){
    if (![url containsString:StringFromRepresentData(appControlData)]){
        //: fail(-1, @"连接失败,请检查网络连接");
        fail(-1, StringFromRepresentData(mainNearlyData));
        //: return nil;
        return nil;
    }

    // 发起请求
    //: return [YLNetworkHelper POST:url parameters:params success:^(id response) {
    return [OldBoyNetworkHelper backgroundPath:url doing:params share:^(id response) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res;
        NSDictionary *res;
        //: if ([response isKindOfClass:[NSData class]]){
        if ([response isKindOfClass:[NSData class]]){
            //: res = [NSJSONSerialization JSONObjectWithData:response options:0 error:0];
            res = [NSJSONSerialization JSONObjectWithData:response options:0 error:0];
        //: } else {
        } else {
            //: res = (NSDictionary *)response;
            res = (NSDictionary *)response;
        }

        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res key:StringFromRepresentData(main_reliabilityName) eigenvalue:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromRepresentData(kInfoUrl)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res screen:StringFromRepresentData(userReallyText) light:StringFromRepresentData(dream_spectacularIdent)];
            //: fail(code, [NSString stringWithFormat:@"%@",msg]);
            fail(code, [NSString stringWithFormat:@"%@",msg]);
        }
    //: } failure:^(NSError *error) {
    } text:^(NSError *error) {
        //: NSArray *array = [url componentsSeparatedByString:@"/"];
        NSArray *array = [url componentsSeparatedByString:@"/"];
        //: if (array.count){
        if (array.count){
            //: fail(-1, [NSString stringWithFormat:@"%@",@"连接错误"]);
            fail(-1, [NSString stringWithFormat:@"%@",StringFromRepresentData(showSoundMsg)]);
        //: } else {
        } else {
            //: fail(-1, @"网络错误");
            fail(-1, StringFromRepresentData(appChildText));
        }
    //: }];
    }];
}

//: + (NSURLSessionTask *)get:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)with:(NSString *)url nim:(NSDictionary *)params backFail:(YLRestSuccess)success color:(YLRestFail)fail
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
    //    [OldBoyNetworkHelper setValue:@"9" forHTTPHeaderField:@"fromType"];

    //: if (![url containsString:@"http"]){
    if (![url containsString:StringFromRepresentData(appControlData)]){
        //: fail(-1, @"连接失败,请检查网络连接");
        fail(-1, StringFromRepresentData(mainNearlyData));
        //: return nil;
        return nil;
    }


    //: AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    //: sessionManager.requestSerializer.timeoutInterval = 5.f;
    sessionManager.requestSerializer.timeoutInterval = 5.f;
    //: sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:StringFromRepresentData(mGivenId), StringFromRepresentData(show_sliceImageIfContent), StringFromRepresentData(user_semenMsg), StringFromRepresentData(appNextMessage), StringFromRepresentData(m_deserveJungleId), StringFromRepresentData(notiChildCenterStr), StringFromRepresentData(show_eatingIdent), nil];
    //: [sessionManager setResponseSerializer:[AFHTTPResponseSerializer serializer]];
    [sessionManager setResponseSerializer:[AFHTTPResponseSerializer serializer]];


    //: NSURLSessionTask *sessionTask = [sessionManager GET:url parameters:@{} headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [sessionManager GET:url parameters:@{} headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if ([responseObject isKindOfClass:[NSData class]]){
        if ([responseObject isKindOfClass:[NSData class]]){
            //: NSString * str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
            NSString * str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
            //: success ? success(str) : nil;
            success ? success(str) : nil;
        //: } else if ([responseObject isKindOfClass:[NSString class]]){
        } else if ([responseObject isKindOfClass:[NSString class]]){
            //: success ? success(responseObject) : nil;
            success ? success(responseObject) : nil;
        }

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: fail(-1, @"网络错误");
        fail(-1, StringFromRepresentData(appChildText));

    //: }];
    }];

    //: return sessionTask;
    return sessionTask;


//    // 发起请求
//    return [OldBoyNetworkHelper GET:url parameters:params success:^(id response) {
//
//        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
//        //        success(responseObject);
//
//        NSString *dataStr = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
//        if (dataStr.length > 0) {
//            success(dataStr);
//        } else {
//            fail(-1,@"OSS系统错误～");
//        }
//    } failure:^(NSError *error) {
//        NSArray *array = [url componentsSeparatedByString:@"/"];
//        if (array.count){
//            fail(-1, [NSString stringWithFormat:@"%@",@"连接错误"]);
//        } else {
//            fail(-1, @"网络错误");
//        }
//    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params images:(NSArray *)images success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)to:(NSString *)url beforeNeed:(NSDictionary *)params offense:(NSArray *)images tinkle:(YLRestSuccess)success sessionShared:(YLRestFail)fail
{
//    NSString * fileName = [NSString stringWithFormat:@"img_%@.jpg", [[NSDate date] description]];
    //: return [YLNetworkHelper uploadImagesWithURL:url parameters:params name:@"image" images:images fileNames:nil imageScale:0.8f imageType:@"jpeg" progress:nil success:^(id responseObject) {
    return [OldBoyNetworkHelper bottomFailure:url showOn:params bubble:StringFromRepresentData(appDoorwayAwlStr) recordingFailure:images fromRange:nil indexSession:0.8f state:StringFromRepresentData(user_numerousTitle) textHighlight:nil bar:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res key:StringFromRepresentData(main_reliabilityName) eigenvalue:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromRepresentData(kInfoUrl)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res screen:StringFromRepresentData(userReallyText) light:StringFromRepresentData(dream_spectacularIdent)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromRepresentData(m_aheadLiterallyMessage),msg]);
        }
    //: } failure:^(NSError *error) {
    } valueReply:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromRepresentData(appChildText));
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params data:(NSData *)data success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)myFail:(NSString *)url size:(NSDictionary *)params valueCell:(NSData *)data changeRestSuccess:(YLRestSuccess)success with:(YLRestFail)fail
{
    //: NSString * fileName = [NSString stringWithFormat:@"img_%@.jpg",[[NSDate date] description]];
    NSString * fileName = [NSString stringWithFormat:StringFromRepresentData(mainPotatoContent),[[NSDate date] description]];
    //: SDImageFormat imageFormat = [NSData sd_imageFormatForImageData:data];
    SDImageFormat imageFormat = [NSData sd_imageFormatForImageData:data];
    //: NSString *imageType = @"jpg";
    NSString *imageType = StringFromRepresentData(userGivenUrl);
    //: if (imageFormat == SDImageFormatGIF) {
    if (imageFormat == SDImageFormatGIF) {
        //: imageType = @"gif";
        imageType = StringFromRepresentData(appHaoIdent);
    //: } else if (imageFormat == SDImageFormatPNG) {
    } else if (imageFormat == SDImageFormatPNG) {
        //: imageType = @"png";
        imageType = StringFromRepresentData(main_overseeId);
    }
    //: return [YLNetworkHelper uploadImageWithURL:url parameters:params name:@"image" data:data fileName:fileName imageType:imageType progress:nil success:^(id responseObject) {
    return [OldBoyNetworkHelper harvestMoon:url uploadShouldFailure:params tingIcon:StringFromRepresentData(appDoorwayAwlStr) stylus:data edge:fileName uploadMust:imageType advancedFailure:nil success:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res key:StringFromRepresentData(main_reliabilityName) eigenvalue:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromRepresentData(kInfoUrl)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res screen:StringFromRepresentData(userReallyText) light:StringFromRepresentData(dream_spectacularIdent)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromRepresentData(m_aheadLiterallyMessage),msg]);
        }
    //: } failure:^(NSError *error) {
    } tab:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromRepresentData(appChildText));
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params file:(NSString *)file success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)titleFail:(NSString *)url crown:(NSDictionary *)params tipEnable:(NSString *)file send:(YLRestSuccess)success status:(YLRestFail)fail
{
    //: return [YLNetworkHelper uploadFileWithURL:url parameters:params name:@"file" filePath:file progress:nil success:^(id responseObject) {
    return [OldBoyNetworkHelper custom:url value:params bubble:StringFromRepresentData(m_cooperationName) viewTitle:file sendPath:nil byFailure:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res key:StringFromRepresentData(main_reliabilityName) eigenvalue:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromRepresentData(kInfoUrl)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res screen:StringFromRepresentData(userReallyText) light:StringFromRepresentData(dream_spectacularIdent)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromRepresentData(m_aheadLiterallyMessage),msg]);
        }
    //: } failure:^(NSError *error) {
    } highlight:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromRepresentData(appChildText));
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params files:(NSDictionary<NSString*, NSString*> *)files success:(YLRestSuccess)success fail:(YLRestFail)fail {
+ (NSURLSessionTask *)streetSmart:(NSString *)url choke:(NSDictionary *)params resolution:(NSDictionary<NSString*, NSString*> *)files publicationFail:(YLRestSuccess)success path:(YLRestFail)fail {
    //: return [YLNetworkHelper uploadFilesWithURL:url parameters:params files:files progress:nil success:^(id responseObject) {
    return [OldBoyNetworkHelper startUp:url add:params should:files files:nil monitorReceive:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res key:StringFromRepresentData(main_reliabilityName) eigenvalue:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromRepresentData(kInfoUrl)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res screen:StringFromRepresentData(userReallyText) light:StringFromRepresentData(dream_spectacularIdent)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromRepresentData(m_aheadLiterallyMessage),msg]);
        }
    //: } failure:^(NSError *error) {
    } can:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromRepresentData(appChildText));
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params video:(NSString*)videoPath thumb:(UIImage*)thumb success:(YLRestSuccess)success fail:(YLRestFail)fail {
+ (NSURLSessionTask *)quick:(NSString *)url style:(NSDictionary *)params tag:(NSString*)videoPath red:(UIImage*)thumb with:(YLRestSuccess)success item:(YLRestFail)fail {
    //: return [YLNetworkHelper uploadVideoWithURL:url parameters:params video:videoPath thumb:thumb progress:nil success:^(id responseObject) {
    return [OldBoyNetworkHelper video:url from:params userSuccess:videoPath label:thumb array:nil userFailure:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res key:StringFromRepresentData(main_reliabilityName) eigenvalue:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:StringFromRepresentData(kInfoUrl)];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res screen:StringFromRepresentData(userReallyText) light:StringFromRepresentData(dream_spectacularIdent)];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:StringFromRepresentData(m_aheadLiterallyMessage),msg]);
        }
    //: } failure:^(NSError *error) {
    } total:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, StringFromRepresentData(appChildText));
    //: }];
    }];
}

//: + (NSString *)imageType:(NSData *)data
+ (NSString *)hearing:(NSData *)data
{
    //: if (!data) {
    if (!data) {
        //: return @"jpg";
        return StringFromRepresentData(userGivenUrl);
    }
    //: uint8_t c;
    uint8_t c;
    //: [data getBytes:&c length:1];
    [data getBytes:&c length:1];
    //: switch (c) {
    switch (c) {
        //: case 0xFF:
        case 0xFF:
            //: return @"jpg";
            return StringFromRepresentData(userGivenUrl);
        //: case 0x89:
        case 0x89:
            //: return @"png";
            return StringFromRepresentData(main_overseeId);
        //: case 0x47:
        case 0x47:
            //: return @"gif";
            return StringFromRepresentData(appHaoIdent);
        //: default:
        default:
            //: return @"jpg";
            return StringFromRepresentData(userGivenUrl);
    }
}


//: @end
@end

Byte * RepresentDataToCache(Byte *data) {
    int purchaseVoice = data[0];
    int interval = data[1];
    Byte overageDeserve = data[2];
    int pleasing = data[3];
    if (!purchaseVoice) return data + pleasing;
    for (int i = pleasing; i < pleasing + interval; i++) {
        int value = data[i] - overageDeserve;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[pleasing + interval] = 0;
    return data + pleasing;
}

NSString *StringFromRepresentData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RepresentDataToCache(data)];
}
