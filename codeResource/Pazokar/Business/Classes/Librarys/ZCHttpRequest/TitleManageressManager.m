
#import <Foundation/Foundation.h>

typedef struct {
    Byte warm;
    Byte *projectSlice;
    unsigned int liveliness;
} StructRelationshipData;

@interface RelationshipData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation RelationshipData

+ (instancetype)sharedInstance {
    static RelationshipData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RelationshipDataToByte:(StructRelationshipData *)data {
    for (int i = 0; i < data->liveliness; i++) {
        data->projectSlice[i] ^= data->warm;
    }
    data->projectSlice[data->liveliness] = 0;
    return data->projectSlice;
}

- (NSString *)StringFromRelationshipData:(StructRelationshipData *)data {
    return [NSString stringWithUTF8String:(char *)[self RelationshipDataToByte:data]];
}

//: cer
- (NSString *)show_explainStr {
    /* static */ NSString *show_explainStr = nil;
    if (!show_explainStr) {
        StructRelationshipData value = (StructRelationshipData){231, (Byte []){132, 130, 149, 75}, 3};
        show_explainStr = [self StringFromRelationshipData:&value];
    }
    return show_explainStr;
}

//: text/javascript
- (NSString *)mRedId {
    /* static */ NSString *mRedId = nil;
    if (!mRedId) {
        StructRelationshipData value = (StructRelationshipData){45, (Byte []){89, 72, 85, 89, 2, 71, 76, 91, 76, 94, 78, 95, 68, 93, 89, 215}, 15};
        mRedId = [self StringFromRelationshipData:&value];
    }
    return mRedId;
}

//: text/html
- (NSString *)noti_towerValue {
    /* static */ NSString *noti_towerValue = nil;
    if (!noti_towerValue) {
        StructRelationshipData value = (StructRelationshipData){139, (Byte []){255, 238, 243, 255, 164, 227, 255, 230, 231, 169}, 9};
        noti_towerValue = [self StringFromRelationshipData:&value];
    }
    return noti_towerValue;
}

//: CheckSum
- (NSString *)userCliffPath {
    /* static */ NSString *userCliffPath = nil;
    if (!userCliffPath) {
        StructRelationshipData value = (StructRelationshipData){61, (Byte []){126, 85, 88, 94, 86, 110, 72, 80, 224}, 8};
        userCliffPath = [self StringFromRelationshipData:&value];
    }
    return userCliffPath;
}

//: Download
- (NSString *)appBoarSuccessStr {
    /* static */ NSString *appBoarSuccessStr = nil;
    if (!appBoarSuccessStr) {
        StructRelationshipData value = (StructRelationshipData){56, (Byte []){124, 87, 79, 86, 84, 87, 89, 92, 54}, 8};
        appBoarSuccessStr = [self StringFromRelationshipData:&value];
    }
    return appBoarSuccessStr;
}

//: video
- (NSString *)dream_textUrl {
    /* static */ NSString *dream_textUrl = nil;
    if (!dream_textUrl) {
        StructRelationshipData value = (StructRelationshipData){42, (Byte []){92, 67, 78, 79, 69, 39}, 5};
        dream_textUrl = [self StringFromRelationshipData:&value];
    }
    return dream_textUrl;
}

//: http
- (NSString *)k_hmPath {
    /* static */ NSString *k_hmPath = nil;
    if (!k_hmPath) {
        StructRelationshipData value = (StructRelationshipData){5, (Byte []){109, 113, 113, 117, 93}, 4};
        k_hmPath = [self StringFromRelationshipData:&value];
    }
    return k_hmPath;
}

//: AppKey
- (NSString *)dream_nousYaUrl {
    /* static */ NSString *dream_nousYaUrl = nil;
    if (!dream_nousYaUrl) {
        StructRelationshipData value = (StructRelationshipData){184, (Byte []){249, 200, 200, 243, 221, 193, 225}, 6};
        dream_nousYaUrl = [self StringFromRelationshipData:&value];
    }
    return dream_nousYaUrl;
}

//: appSetting
- (NSString *)noti_justicePath {
    /* static */ NSString *noti_justicePath = nil;
    if (!noti_justicePath) {
        StructRelationshipData value = (StructRelationshipData){141, (Byte []){236, 253, 253, 222, 232, 249, 249, 228, 227, 234, 237}, 10};
        noti_justicePath = [self StringFromRelationshipData:&value];
    }
    return noti_justicePath;
}

//: systemSetting
- (NSString *)notiManagerMessage {
    /* static */ NSString *notiManagerMessage = nil;
    if (!notiManagerMessage) {
        StructRelationshipData value = (StructRelationshipData){66, (Byte []){49, 59, 49, 54, 39, 47, 17, 39, 54, 54, 43, 44, 37, 13}, 13};
        notiManagerMessage = [self StringFromRelationshipData:&value];
    }
    return notiManagerMessage;
}

//: Nonce
- (NSString *)showCenterMsg {
    /* static */ NSString *showCenterMsg = nil;
    if (!showCenterMsg) {
        StructRelationshipData value = (StructRelationshipData){8, (Byte []){70, 103, 102, 107, 109, 188}, 5};
        showCenterMsg = [self StringFromRelationshipData:&value];
    }
    return showCenterMsg;
}

//: png
- (NSString *)notiControlStr {
    /* static */ NSString *notiControlStr = nil;
    if (!notiControlStr) {
        StructRelationshipData value = (StructRelationshipData){202, (Byte []){186, 164, 173, 66}, 3};
        notiControlStr = [self StringFromRelationshipData:&value];
    }
    return notiControlStr;
}

//: gif
- (NSString *)mainReplyDetectKey {
    /* static */ NSString *mainReplyDetectKey = nil;
    if (!mainReplyDetectKey) {
        StructRelationshipData value = (StructRelationshipData){162, (Byte []){197, 203, 196, 156}, 3};
        mainReplyDetectKey = [self StringFromRelationshipData:&value];
    }
    return mainReplyDetectKey;
}

//: jpg
- (NSString *)show_pateName {
    /* static */ NSString *show_pateName = nil;
    if (!show_pateName) {
        StructRelationshipData value = (StructRelationshipData){225, (Byte []){139, 145, 134, 233}, 3};
        show_pateName = [self StringFromRelationshipData:&value];
    }
    return show_pateName;
}

//: text/plain
- (NSString *)app_cornerInkId {
    /* static */ NSString *app_cornerInkId = nil;
    if (!app_cornerInkId) {
        StructRelationshipData value = (StructRelationshipData){227, (Byte []){151, 134, 155, 151, 204, 147, 143, 130, 138, 141, 188}, 10};
        app_cornerInkId = [self StringFromRelationshipData:&value];
    }
    return app_cornerInkId;
}

//: video/mp4
- (NSString *)noti_finManagerClotheText {
    /* static */ NSString *noti_finManagerClotheText = nil;
    if (!noti_finManagerClotheText) {
        StructRelationshipData value = (StructRelationshipData){178, (Byte []){196, 219, 214, 215, 221, 157, 223, 194, 134, 87}, 9};
        noti_finManagerClotheText = [self StringFromRelationshipData:&value];
    }
    return noti_finManagerClotheText;
}

//: image
- (NSString *)user_beliefMsg {
    /* static */ NSString *user_beliefMsg = nil;
    if (!user_beliefMsg) {
        StructRelationshipData value = (StructRelationshipData){88, (Byte []){49, 53, 57, 63, 61, 212}, 5};
        user_beliefMsg = [self StringFromRelationshipData:&value];
    }
    return user_beliefMsg;
}

//: yyyyMMddHHmmss
- (NSString *)dream_nameRecordUrl {
    /* static */ NSString *dream_nameRecordUrl = nil;
    if (!dream_nameRecordUrl) {
        StructRelationshipData value = (StructRelationshipData){64, (Byte []){57, 57, 57, 57, 13, 13, 36, 36, 8, 8, 45, 45, 51, 51, 204}, 14};
        dream_nameRecordUrl = [self StringFromRelationshipData:&value];
    }
    return dream_nameRecordUrl;
}

//: token
- (NSString *)show_differentlyName {
    /* static */ NSString *show_differentlyName = nil;
    if (!show_differentlyName) {
        StructRelationshipData value = (StructRelationshipData){21, (Byte []){97, 122, 126, 112, 123, 174}, 5};
        show_differentlyName = [self StringFromRelationshipData:&value];
    }
    return show_differentlyName;
}

//: %@.jpg
- (NSString *)appToolContent {
    /* static */ NSString *appToolContent = nil;
    if (!appToolContent) {
        StructRelationshipData value = (StructRelationshipData){223, (Byte []){250, 159, 241, 181, 175, 184, 27}, 6};
        appToolContent = [self StringFromRelationshipData:&value];
    }
    return appToolContent;
}

//: picture
- (NSString *)kChildTowerId {
    /* static */ NSString *kChildTowerId = nil;
    if (!kChildTowerId) {
        StructRelationshipData value = (StructRelationshipData){109, (Byte []){29, 4, 14, 25, 24, 31, 8, 228}, 7};
        kChildTowerId = [self StringFromRelationshipData:&value];
    }
    return kChildTowerId;
}

//: xiaokaapi.com
- (NSString *)user_makePath {
    /* static */ NSString *user_makePath = nil;
    if (!user_makePath) {
        StructRelationshipData value = (StructRelationshipData){24, (Byte []){96, 113, 121, 119, 115, 121, 121, 104, 113, 54, 123, 119, 117, 133}, 13};
        user_makePath = [self StringFromRelationshipData:&value];
    }
    return user_makePath;
}

//: image/%@
- (NSString *)app_redOilPath {
    /* static */ NSString *app_redOilPath = nil;
    if (!app_redOilPath) {
        StructRelationshipData value = (StructRelationshipData){192, (Byte []){169, 173, 161, 167, 165, 239, 229, 128, 32}, 8};
        app_redOilPath = [self StringFromRelationshipData:&value];
    }
    return app_redOilPath;
}

//: text/json
- (NSString *)mAttemptName {
    /* static */ NSString *mAttemptName = nil;
    if (!mAttemptName) {
        StructRelationshipData value = (StructRelationshipData){65, (Byte []){53, 36, 57, 53, 110, 43, 50, 46, 47, 35}, 9};
        mAttemptName = [self StringFromRelationshipData:&value];
    }
    return mAttemptName;
}

//: ismustmobile
- (NSString *)mPerceiveUrl {
    /* static */ NSString *mPerceiveUrl = nil;
    if (!mPerceiveUrl) {
        StructRelationshipData value = (StructRelationshipData){41, (Byte []){64, 90, 68, 92, 90, 93, 68, 70, 75, 64, 69, 76, 229}, 12};
        mPerceiveUrl = [self StringFromRelationshipData:&value];
    }
    return mPerceiveUrl;
}

//: %@.mp4
- (NSString *)user_redName {
    /* static */ NSString *user_redName = nil;
    if (!user_redName) {
        StructRelationshipData value = (StructRelationshipData){250, (Byte []){223, 186, 212, 151, 138, 206, 139}, 6};
        user_redName = [self StringFromRelationshipData:&value];
    }
    return user_redName;
}

//: image/jpg
- (NSString *)k_doorwayText {
    /* static */ NSString *k_doorwayText = nil;
    if (!k_doorwayText) {
        StructRelationshipData value = (StructRelationshipData){193, (Byte []){168, 172, 160, 166, 164, 238, 171, 177, 166, 155}, 9};
        k_doorwayText = [self StringFromRelationshipData:&value];
    }
    return k_doorwayText;
}

//: lang
- (NSString *)k_draftOilMsg {
    /* static */ NSString *k_draftOilMsg = nil;
    if (!k_draftOilMsg) {
        StructRelationshipData value = (StructRelationshipData){31, (Byte []){115, 126, 113, 120, 110}, 4};
        k_draftOilMsg = [self StringFromRelationshipData:&value];
    }
    return k_draftOilMsg;
}

//: CurTime
- (NSString *)kInputCellCargoMessage {
    /* static */ NSString *kInputCellCargoMessage = nil;
    if (!kInputCellCargoMessage) {
        StructRelationshipData value = (StructRelationshipData){252, (Byte []){191, 137, 142, 168, 149, 145, 153, 146}, 7};
        kInputCellCargoMessage = [self StringFromRelationshipData:&value];
    }
    return kInputCellCargoMessage;
}

//: application/json
- (NSString *)appMemberIdent {
    /* static */ NSString *appMemberIdent = nil;
    if (!appMemberIdent) {
        StructRelationshipData value = (StructRelationshipData){19, (Byte []){114, 99, 99, 127, 122, 112, 114, 103, 122, 124, 125, 60, 121, 96, 124, 125, 171}, 16};
        appMemberIdent = [self StringFromRelationshipData:&value];
    }
    return appMemberIdent;
}

//: loginip
- (NSString *)mShowId {
    /* static */ NSString *mShowId = nil;
    if (!mShowId) {
        StructRelationshipData value = (StructRelationshipData){127, (Byte []){19, 16, 24, 22, 17, 22, 15, 110}, 7};
        mShowId = [self StringFromRelationshipData:&value];
    }
    return mShowId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleManageressManager.m
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import "ZCHttpManager.h"
#import "TitleManageressManager.h"
//: #import<CommonCrypto/CommonDigest.h>
#import<CommonCrypto/CommonDigest.h>

//: @interface ZCHttpManager ()
@interface TitleManageressManager ()

//: @property (nonatomic,strong) AFHTTPSessionManager *manager;
@property (nonatomic,strong) AFHTTPSessionManager *manager;

//: @end
@end

//: @implementation ZCHttpManager
@implementation TitleManageressManager

//: + (instancetype)sharedManager{
+ (instancetype)off{
    //: static ZCHttpManager *sharedManager = nil;
    static TitleManageressManager *sharedManager = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedManager = [ZCHttpManager new];
        sharedManager = [TitleManageressManager new];
    //: });
    });
    //: return sharedManager;
    return sharedManager;
}

//: - (id)init{
- (id)init{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: AFSecurityPolicy *securityPolicy = [ZCHttpManager defaultSecurityPolicy];
        AFSecurityPolicy *securityPolicy = [TitleManageressManager send];
        //: _manager = [AFHTTPSessionManager manager];
        _manager = [AFHTTPSessionManager manager];
        //: _manager.securityPolicy = securityPolicy;
        _manager.securityPolicy = securityPolicy;
        //: _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/plain",@"text/html", nil];
        _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[[RelationshipData sharedInstance] appMemberIdent], [[RelationshipData sharedInstance] mAttemptName], [[RelationshipData sharedInstance] mRedId],[[RelationshipData sharedInstance] app_cornerInkId],[[RelationshipData sharedInstance] noti_towerValue], nil];
        //_dbQueue = [[HMDBManager shareManager] dbQueue];

    }
    //: return self;
    return self;
}

/**
 *不验证https 不验证时
 */
//: + (AFSecurityPolicy *)defaultSecurityPolicy{
+ (AFSecurityPolicy *)send{
    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    //: securityPolicy.allowInvalidCertificates = YES;
    securityPolicy.allowInvalidCertificates = YES;
    //: securityPolicy.validatesDomainName = NO;
    securityPolicy.validatesDomainName = NO;
    //: return securityPolicy;
    return securityPolicy;
}

/**
 *https验证
 */
//: + (AFSecurityPolicy *)customSecurityPolicy {
+ (AFSecurityPolicy *)from {
    // /先导入证书
    //: NSString *cerPath = [[NSBundle mainBundle] pathForResource:@"xiaokaapi.com" ofType:@"cer"]; 
    NSString *cerPath = [[NSBundle mainBundle] pathForResource:[[RelationshipData sharedInstance] user_makePath] ofType:[[RelationshipData sharedInstance] show_explainStr]]; //证书的路径
    //: NSData *certData = [NSData dataWithContentsOfFile:cerPath];
    NSData *certData = [NSData dataWithContentsOfFile:cerPath];
    // AFSSLPinningModeCertificate 使用证书验证模式
    //: AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModePublicKey];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModePublicKey];

    // allowInvalidCertificates 是否允许无效证书（也就是自建的证书），默认为NO
    // 如果是需要验证自建证书，需要设置为YES
    //: securityPolicy.allowInvalidCertificates = NO;
    securityPolicy.allowInvalidCertificates = NO;

    //validatesDomainName 是否需要验证域名，默认为YES；
    //假如证书的域名与你请求的域名不一致，需把该项设置为NO；如设成NO的话，即服务器使用其他可信任机构颁发的证书，也可以建立连接，这个非常危险，建议打开。
    //置为NO，主要用于这种情况：客户端请求的是子域名，而证书上的是另外一个域名。因为SSL证书上的域名是独立的，假如证书上注册的域名是www.google.com，那么mail.google.com是无法验证通过的；当然，有钱可以注册通配符的域名*.google.com，但这个还是比较贵的。
    //如置为NO，建议自己添加对应域名的校验逻辑。
    //: securityPolicy.validatesDomainName = YES;
    securityPolicy.validatesDomainName = YES;
    //: securityPolicy.pinnedCertificates = [NSSet setWithArray:@[certData]];
    securityPolicy.pinnedCertificates = [NSSet setWithArray:@[certData]];
    //: return securityPolicy;
    return securityPolicy;
}

//: + (void)getWithUrl:(NSString *)urlStr
+ (void)size:(NSString *)urlStr
            //: params:(NSDictionary *)params
            read:(NSDictionary *)params
            //: isShow:(BOOL)isShow
            indicator:(BOOL)isShow
           //: success:(ResponseSuccess)success
           spaceOf:(ResponseSuccess)success
            //: failed:(ResponseFailed)failed{
            session:(ResponseFailed)failed{

    //: if (![urlStr containsString:@"http"]){
    if (![urlStr containsString:[[RelationshipData sharedInstance] k_hmPath]]){
        //: urlStr = RestApi(urlStr);
        urlStr = actionApi(urlStr);
    }

    //: [self getWithUrl:urlStr params:params isShow:isShow cacheTime:0 mustResrush:YES success:success failed:failed];
    [self red:urlStr brandContent:params hide:isShow recordingFailed:0 need:YES date:success pluckInwardTingFailed:failed];
}

//: + (void)getWithUrl: (NSString *)urlStr
+ (void)red: (NSString *)urlStr
            //: params: (NSDictionary *)params
            brandContent: (NSDictionary *)params
            //: isShow: (BOOL)isShow
            hide: (BOOL)isShow
         //: cacheTime: (int)cacheDuration
         recordingFailed: (int)cacheDuration
       //: mustResrush: (BOOL)mustResrush
       need: (BOOL)mustResrush
           //: success: (ResponseSuccess)success
           date: (ResponseSuccess)success
            //: failed: (ResponseFailed)failed{
            pluckInwardTingFailed: (ResponseFailed)failed{

    //: if (isShow) {
    if (isShow) {
            //: [SVProgressHUD show];
            [SVProgressHUD show];
        }
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManageressManager off].manager;
    //添加请求头
    //: NSString *loginToken = [NIMUserDefaults standardUserDefaults].loginToken;
    NSString *loginToken = [DataMaxDefaults max].loginToken;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = cornerViewText([DataMaxDefaults max].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[[RelationshipData sharedInstance] k_draftOilMsg]];

    //: if ([NIMUserDefaults standardUserDefaults].loginToken.length > 0) {
    if ([DataMaxDefaults max].loginToken.length > 0) {
        //: NSLog(@"Token--:%@",loginToken);
        //: NSLog(@"%@\n------%@",urlStr,params);

        //: [manager.requestSerializer setValue:loginToken forHTTPHeaderField:@"token"];
        [manager.requestSerializer setValue:loginToken forHTTPHeaderField:[[RelationshipData sharedInstance] show_differentlyName]];
    }
    //: NSURLSessionDataTask *task = [manager GET:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
    NSURLSessionDataTask *task = [manager GET:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if (![urlStr containsString:@"systemSetting"] && ![urlStr containsString:@"loginip"] && ![urlStr containsString:@"appSetting"] && ![urlStr containsString:@"ismustmobile"]) {
        if (![urlStr containsString:[[RelationshipData sharedInstance] notiManagerMessage]] && ![urlStr containsString:[[RelationshipData sharedInstance] mShowId]] && ![urlStr containsString:[[RelationshipData sharedInstance] noti_justicePath]] && ![urlStr containsString:[[RelationshipData sharedInstance] mPerceiveUrl]]) {
            //: NSLog(@"%@\n------%@\n%@",urlStr,params,responseObject);
        }
        //: if (isShow) {
        if (isShow) {
            //: [SVProgressHUD dismissWithDelay:0.25];
            [SVProgressHUD dismissWithDelay:0.25];
        }
        //: success(responseObject);
        success(responseObject);
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: if (isShow) {
        if (isShow) {
            //: [SVProgressHUD dismissWithDelay:0.25];
            [SVProgressHUD dismissWithDelay:0.25];
        }
        //: failed(nil ,error);
        failed(nil ,error);
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:task];
    [[TitleManageressManager off] button:task];
}

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)view: (NSString *)urlStr
           //: checksum: (NSString *)checksum
           searchedOf_strong: (NSString *)checksum
              //: nonce: (NSString *)nonce
              select: (NSString *)nonce
            //: CurTime: (NSString *)CurTime
            chromatic: (NSString *)CurTime
             //: params: (NSDictionary *)params
             media: (NSDictionary *)params
            //: success: (ResponseSuccess)success
            min: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed
             center: (ResponseFailed)failed
{
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManageressManager off].manager;

    //添加请求头
    //: NSString *appKey = [[BusyConfig sharedConfig] appKey];
    NSString *appKey = [[IndexTag ambit] appKey];
    //: [manager.requestSerializer setValue:appKey forHTTPHeaderField:@"AppKey"];
    [manager.requestSerializer setValue:appKey forHTTPHeaderField:[[RelationshipData sharedInstance] dream_nousYaUrl]];
//    NSString *nonce = [NSString stringWithFormat:@"%d",arc4random() % 100 ];
    //: [manager.requestSerializer setValue:nonce forHTTPHeaderField:@"Nonce"];
    [manager.requestSerializer setValue:nonce forHTTPHeaderField:[[RelationshipData sharedInstance] showCenterMsg]];
//    NSString *time = [self getNowTimeTimestamp];
    //: [manager.requestSerializer setValue:CurTime forHTTPHeaderField:@"CurTime"];
    [manager.requestSerializer setValue:CurTime forHTTPHeaderField:[[RelationshipData sharedInstance] kInputCellCargoMessage]];
//    NSString *CheckSums = [self sha1:[NSString stringWithFormat:@"%@%@%@",appKey,nonce,time]];
    //: [manager.requestSerializer setValue:checksum forHTTPHeaderField:@"CheckSum"];
    [manager.requestSerializer setValue:checksum forHTTPHeaderField:[[RelationshipData sharedInstance] userCliffPath]];

    //: NSLog(@"%@\n------%@",urlStr,params);
    //: NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: success(responseObject);
        success(responseObject);
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed(nil ,error);
        failed(nil ,error);
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:task];
    [[TitleManageressManager off] button:task];
}

//: + (NSString *)getNowTimeTimestamp{
+ (NSString *)time{

    //: NSDate *datenow = [NSDate date];
    NSDate *datenow = [NSDate date];
    //: NSTimeZone *zone = [NSTimeZone localTimeZone];
    NSTimeZone *zone = [NSTimeZone localTimeZone];
  // 获取指定时间所在时区与UTC时区的间隔秒数
  //: NSInteger seconds = [zone secondsFromGMTForDate:[NSDate date]];
  NSInteger seconds = [zone secondsFromGMTForDate:[NSDate date]];
  //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970] - seconds];
  NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970] - seconds];
  //: return timeSp;
  return timeSp;
}

//sha1加密方式
//: + (NSString *)sha1:(NSString *)input
+ (NSString *)format1:(NSString *)input
{
    //const char *cstr = [input cStringUsingEncoding:NSUTF8StringEncoding];
    //NSData *data = [NSData dataWithBytes:cstr length:input.length];

     //: NSData *data = [input dataUsingEncoding:NSUTF8StringEncoding];
     NSData *data = [input dataUsingEncoding:NSUTF8StringEncoding];
    //: uint8_t digest[20];
    uint8_t digest[20];

    //: CC_SHA1(data.bytes, (unsigned int)data.length, digest);
    CC_SHA1(data.bytes, (unsigned int)data.length, digest);
    //: NSMutableString *output = [NSMutableString stringWithCapacity:20 * 2];
    NSMutableString *output = [NSMutableString stringWithCapacity:20 * 2];
    //: for(int i=0; i<20; i++) {
    for(int i=0; i<20; i++) {
        //: [output appendFormat:@"%02x", digest[i]];
        [output appendFormat:@"%02x", digest[i]];
    }

    //: return output;
    return output;
}

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)empty: (NSString *)urlStr
             //: params: (NSDictionary *)params
             change: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             time: (BOOL)isShow
            //: success: (ResponseSuccess)success
            ting: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed{
             showResponseFailed: (ResponseFailed)failed{

    //: if (![urlStr containsString:@"http"]){
    if (![urlStr containsString:[[RelationshipData sharedInstance] k_hmPath]]){
        //: urlStr = RestApi(urlStr);
        urlStr = actionApi(urlStr);
    }

    //: [self postWithUrl:urlStr params:params isShow:isShow cacheTime:0 mustResrush:YES success:success failed:failed];
    [self eventResrush:urlStr container:params compartment:isShow data:0 filter:YES towardReload:success timeLanguage:failed];
}

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)eventResrush: (NSString *)urlStr
             //: params: (NSDictionary *)params
             container: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             compartment: (BOOL)isShow
          //: cacheTime: (int)cacheDuration
          data: (int)cacheDuration
        //: mustResrush: (BOOL)mustResrush
        filter: (BOOL)mustResrush
            //: success: (ResponseSuccess)success
            towardReload: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed{
             timeLanguage: (ResponseFailed)failed{
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManageressManager off].manager;
//    manager.requestSerializer = [AFJSONRequestSerializer serializer];

    //添加请求头
    //: NSString *loginToken = [NIMUserDefaults standardUserDefaults].loginToken;
    NSString *loginToken = [DataMaxDefaults max].loginToken;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = cornerViewText([DataMaxDefaults max].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[[RelationshipData sharedInstance] k_draftOilMsg]];

    //: NSLog(@"lang--:%@",lang);
    //: if ([NIMUserDefaults standardUserDefaults].loginToken.length > 0) {
    if ([DataMaxDefaults max].loginToken.length > 0) {
        //: NSLog(@"Token--:%@",loginToken);
        //: NSLog(@"%@\n------%@",urlStr,params);

        //: [manager.requestSerializer setValue:loginToken forHTTPHeaderField:@"token"];
        [manager.requestSerializer setValue:loginToken forHTTPHeaderField:[[RelationshipData sharedInstance] show_differentlyName]];
    }

    //: NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionDataTask *task = [manager POST:urlStr parameters:params headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"image%@\n%@\n--------\n%@",urlStr,params,responseObject);
        //: success(responseObject);
        success(responseObject);
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed(nil ,error);
        failed(nil ,error);
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:task];
    [[TitleManageressManager off] button:task];
}


//: + (void)uploadFileWithURL:(NSString *)URL
+ (void)item:(NSString *)URL
               //: parameters:(id)parameters
               occurrent:(id)parameters
                     //: name:(NSString *)name
                     pressed:(NSString *)name
                 //: filePath:(NSURL *)filePath
                 textFailed:(NSURL *)filePath
                 //: progress:(HttpProgress)progress
                 paradigmHttpProgress:(HttpProgress)progress
                  //: success:(ResponseSuccess)success
                  title:(ResponseSuccess)success
                   //: failed:(ResponseFailed)failed{
                   remote:(ResponseFailed)failed{


    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[[RelationshipData sharedInstance] k_hmPath]]){
        //: URL = RestApi(URL);
        URL = actionApi(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManageressManager off].manager;

    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: [formData appendPartWithFileURL:filePath name:name error:&error];
        [formData appendPartWithFileURL:filePath name:name error:&error];
        //: (failed && error) ? failed(nil ,error) : nil;
        (failed && error) ? failed(nil ,error) : nil;
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_sync(dispatch_get_main_queue(), ^{//上传进度
            //: progress ? progress(uploadProgress) : nil;
            progress ? progress(uploadProgress) : nil;
        //: });
        });
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];
    //: [[ZCHttpManager sharedManager] addTask:t];
    [[TitleManageressManager off] button:t];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)loadItem:(NSString *)URL
                 //: parameters:(id)parameters
                 disableView:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     uploadLineBigness_strong:(NSArray<NSData *> *)images
                   //: progress:(HttpProgress)progress
                   on:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    tap:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     prolusionResponseFailed:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[[RelationshipData sharedInstance] k_hmPath]]){
        //: URL = RestApi(URL);
        URL = actionApi(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManageressManager off].manager;
    //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
    NSString *lang = cornerViewText([DataMaxDefaults max].language);
    //: [manager.requestSerializer setValue:lang forHTTPHeaderField:@"lang"];
    [manager.requestSerializer setValue:lang forHTTPHeaderField:[[RelationshipData sharedInstance] k_draftOilMsg]];

    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            //NSData *imageData = UIImageJPEGRepresentation(images[i], 0.5);// 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = images[i];
            NSData *imageData = images[i];

            //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
            NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];

            //: NSString *imageTypeSuffix = @"jpg";
            NSString *imageTypeSuffix = [[RelationshipData sharedInstance] show_pateName];
            //: SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            //: switch (imageType) {
            switch (imageType) {
                //: case SDImageFormatJPEG:
                case SDImageFormatJPEG:
                    //: imageTypeSuffix = @"jpg";
                    imageTypeSuffix = [[RelationshipData sharedInstance] show_pateName];
                    //: break;
                    break;
                //: case SDImageFormatPNG:
                case SDImageFormatPNG:
                    //: imageTypeSuffix = @"png";
                    imageTypeSuffix = [[RelationshipData sharedInstance] notiControlStr];
                    //: break;
                    break;
                //: case SDImageFormatGIF:
                case SDImageFormatGIF:
                    //: imageTypeSuffix = @"gif";
                    imageTypeSuffix = [[RelationshipData sharedInstance] mainReplyDetectKey];
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            //: NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageTypeSuffix];
            NSString *mimeType = [NSString stringWithFormat:[[RelationshipData sharedInstance] app_redOilPath],imageTypeSuffix];
//            NSString *mimeType = @"video/mp4";
            //: [formData appendPartWithFileData:imageData name:@"image" fileName:fileName mimeType:mimeType];
            [formData appendPartWithFileData:imageData name:[[RelationshipData sharedInstance] user_beliefMsg] fileName:fileName mimeType:mimeType];
        }
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"image%@\n%@\n--------\n%@",URL,parameters,responseObject);
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[TitleManageressManager off] button:t];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)title:(NSString *)URL
                 //: parameters:(id)parameters
                 maxProgress:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     with:(NSArray<NSData *> *)images
                 //: imageNames:(NSArray<NSString *> *)imageNames
                 messageQuick:(NSArray<NSString *> *)imageNames
                   //: progress:(HttpProgress)progress
                   independent:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    should:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     display:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[[RelationshipData sharedInstance] k_hmPath]]){
        //: URL = RestApi(URL);
        URL = actionApi(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManageressManager off].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            //NSData *imageData = UIImageJPEGRepresentation(images[i], 0.5);// 图片经过等比压缩后得到的二进制文件
            //: NSData *imageData = images[i];
            NSData *imageData = images[i];

            //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
            NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];

            //: NSString *imageTypeSuffix = @"jpg";
            NSString *imageTypeSuffix = [[RelationshipData sharedInstance] show_pateName];
            //: SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            SDImageFormat imageType = [NSData sd_imageFormatForImageData:imageData];
            //: switch (imageType) {
            switch (imageType) {
                //: case SDImageFormatJPEG:
                case SDImageFormatJPEG:
                    //: imageTypeSuffix = @"jpg";
                    imageTypeSuffix = [[RelationshipData sharedInstance] show_pateName];
                    //: break;
                    break;
                //: case SDImageFormatPNG:
                case SDImageFormatPNG:
                    //: imageTypeSuffix = @"png";
                    imageTypeSuffix = [[RelationshipData sharedInstance] notiControlStr];
                    //: break;
                    break;
                //: case SDImageFormatGIF:
                case SDImageFormatGIF:
                    //: imageTypeSuffix = @"gif";
                    imageTypeSuffix = [[RelationshipData sharedInstance] mainReplyDetectKey];
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            NSString *fileName = [NSString stringWithFormat:@"%@%ld.%@",timeSp,i,imageTypeSuffix];
            //: NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageTypeSuffix];
            NSString *mimeType = [NSString stringWithFormat:[[RelationshipData sharedInstance] app_redOilPath],imageTypeSuffix];
//            NSString *mimeType = @"video/mp4";

            //: NSString *name = [imageNames objectAtIndex:i] ? :@"image";
            NSString *name = [imageNames objectAtIndex:i] ? :[[RelationshipData sharedInstance] user_beliefMsg];
            //: [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
            [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
        }
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"%@\n%@\n--------\n%@",URL,parameters,responseObject);
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[TitleManageressManager off] button:t];
}

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)image:(NSString *)URL
                 //: parameters:(id)parameters
                 straddle:(id)parameters
                       //: name:(NSString *)name
                       show:(NSString *)name
                     //: images:(NSArray<UIImage *> *)images
                     streetSmart:(NSArray<UIImage *> *)images
                  //: fileNames:(NSArray<NSString *> *)fileNames
                  text:(NSArray<NSString *> *)fileNames
                 //: imageScale:(CGFloat)imageScale
                 input:(CGFloat)imageScale
                  //: imageType:(NSString *)imageType
                  name_strong:(NSString *)imageType
                   //: progress:(HttpProgress)progress
                   tableFor:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    commissioner:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     should:(ResponseFailed)failed{

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManageressManager off].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: for (NSUInteger i = 0; i < images.count; i++) {
        for (NSUInteger i = 0; i < images.count; i++) {
            //: NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);
            NSData *imageData = UIImageJPEGRepresentation(images[i], imageScale ?: 1.f);// 图片经过等比压缩后得到的二进制文件
            //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];// 默认图片的文件名, 若fileNames为nil就使用
            //: formatter.dateFormat = @"yyyyMMddHHmmss";
            formatter.dateFormat = [[RelationshipData sharedInstance] dream_nameRecordUrl];
            //: NSString *str = [formatter stringFromDate:[NSDate date]];
            NSString *str = [formatter stringFromDate:[NSDate date]];
            //: NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:@"jpg"];
            NSString *imageFileName = [NSString stringWithFormat:@"%@%ld.%@",str,i,imageType?:[[RelationshipData sharedInstance] show_pateName]];

            //: NSString *fileName = fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:@"jpg"] : imageFileName;
            NSString *fileName = fileNames ? [NSString stringWithFormat:@"%@.%@",fileNames[i],imageType?:[[RelationshipData sharedInstance] show_pateName]] : imageFileName;
            //: NSString *mimeType = [NSString stringWithFormat:@"image/%@",imageType ?: @"jpg"];
            NSString *mimeType = [NSString stringWithFormat:[[RelationshipData sharedInstance] app_redOilPath],imageType ?: [[RelationshipData sharedInstance] show_pateName]];
            //: [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
            [formData appendPartWithFileData:imageData name:name fileName:fileName mimeType:mimeType];
        }
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[TitleManageressManager off] button:t];
}


//: + (void)uploadVideoWithURL:(NSString *)URL
+ (void)bar:(NSString *)URL
                 //: parameters:(id)parameters
                 with:(id)parameters
                     //: images:(NSData *)videoData
                     clear:(NSData *)videoData
                 //: coverImage:(NSData *)coverData
                 domain:(NSData *)coverData
                   //: progress:(HttpProgress)progress
                   fileFailed:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    show:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed{
                     easingFileWillFailed:(ResponseFailed)failed{

    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[[RelationshipData sharedInstance] k_hmPath]]){
        //: URL = RestApi(URL);
        URL = actionApi(URL);
    }

    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManageressManager off].manager;
    //: NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {
    NSURLSessionDataTask *t = [manager POST:URL parameters:parameters headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData> _Nonnull formData) {

        //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
        NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
        //: NSString *fileName = [NSString stringWithFormat:@"%@.mp4",timeSp];
        NSString *fileName = [NSString stringWithFormat:[[RelationshipData sharedInstance] user_redName],timeSp];
        //: NSString *mimeType = @"video/mp4";
        NSString *mimeType = [[RelationshipData sharedInstance] noti_finManagerClotheText];
        //: [formData appendPartWithFileData:videoData name:@"video" fileName:fileName mimeType:mimeType];
        [formData appendPartWithFileData:videoData name:[[RelationshipData sharedInstance] dream_textUrl] fileName:fileName mimeType:mimeType];
        //: [formData appendPartWithFileData:coverData name:@"picture" fileName:[NSString stringWithFormat:@"%@.jpg",timeSp] mimeType:@"image/jpg"];
        [formData appendPartWithFileData:coverData name:[[RelationshipData sharedInstance] kChildTowerId] fileName:[NSString stringWithFormat:[[RelationshipData sharedInstance] appToolContent],timeSp] mimeType:[[RelationshipData sharedInstance] k_doorwayText]];
    //: } progress:^(NSProgress * _Nonnull uploadProgress) {
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(uploadProgress);
            progress(uploadProgress);
        }
    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        //: NSLog(@"%@\n%@\n--------\n%@",URL,parameters,responseObject);
        //: success ? success(responseObject) : nil;
        success ? success(responseObject) : nil;
    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //: failed ? failed(nil ,error) : nil;
        failed ? failed(nil ,error) : nil;
    //: }];
    }];

    //: [[ZCHttpManager sharedManager] addTask:t];
    [[TitleManageressManager off] button:t];
}




//: + (void)downloadWithURL:(NSString *)URL
+ (void)view:(NSString *)URL
                //: fileDir:(NSString *)fileDir
                input:(NSString *)fileDir
               //: progress:(HttpProgress)progress
               max:(HttpProgress)progress
                //: success:(void(^)(NSString *filePath))success
                ting:(void(^)(NSString *filePath))success
                 //: failed:(ResponseFailed)failed{
                 convert:(ResponseFailed)failed{


    //: if (![URL containsString:@"http"]){
    if (![URL containsString:[[RelationshipData sharedInstance] k_hmPath]]){
        //: URL = RestApi(URL);
        URL = actionApi(URL);
    }

    //: NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    //: AFHTTPSessionManager *manager = [ZCHttpManager sharedManager].manager;
    AFHTTPSessionManager *manager = [TitleManageressManager off].manager;
    //: NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        //: if (progress) {
        if (progress) {
            //: progress(downloadProgress);
            progress(downloadProgress);
        }
    //: } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        //拼接缓存目录
        //: NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : @"Download"];
        NSString *downloadDir = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:fileDir ? fileDir : [[RelationshipData sharedInstance] appBoarSuccessStr]];
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
        //: if(failed && error) {failed(nil ,error) ; return ;};
        if(failed && error) {failed(nil ,error) ; return ;};
        //: success ? success(filePath.absoluteString /|** NSURL->NSString*|/) : nil;
        success ? success(filePath.absoluteString /** NSURL->NSString*/) : nil;
    //: }];
    }];
    //: [downloadTask resume];
    [downloadTask resume];
}




//: #pragma mark - 管理请求队列
#pragma mark - 管理请求队列


//: - (void)addTask:(NSURLSessionDataTask *)task{
- (void)button:(NSURLSessionDataTask *)task{
    //: NSMutableDictionary *taskQueue = [self taskQueue];
    NSMutableDictionary *taskQueue = [self video];

    //: [taskQueue setObject:task forKey:@([NSDate date].timeIntervalSince1970)];
    [taskQueue setObject:task forKey:@([NSDate date].timeIntervalSince1970)];
}

//: - (void)removeTask:(NSURLSessionDataTask *)task{
- (void)optionUp:(NSURLSessionDataTask *)task{
    //: if ([self ifRequesting]) {
    if ([self erase]) {
        //: NSMutableDictionary *taskQueue = [self taskQueue];
        NSMutableDictionary *taskQueue = [self video];

        //: [taskQueue removeObjectForKey:@([NSDate date].timeIntervalSince1970)];
        [taskQueue removeObjectForKey:@([NSDate date].timeIntervalSince1970)];
    }
}

//: - (NSMutableDictionary *)taskQueue{
- (NSMutableDictionary *)video{
//    NSMutableDictionary *taskDic = objc_getAssociatedObject(self, @selector(addTask:));
//
//    if (!taskDic) {
//        taskDic = @{}.mutableCopy;
//        objc_setAssociatedObject(self, @selector(addTask:), taskDic, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//    }
//    return taskDic;
    //: return nil;
    return nil;
}

//: - (BOOL)ifRequesting{
- (BOOL)erase{
//    NSMutableDictionary *taskDic = objc_getAssociatedObject(self, @selector(addTask:));
//
//    if (taskDic && taskDic.allKeys.count>0) {
//        return YES;
//    }
    //: return NO;
    return NO;
}

//: - (void)cancelRequest{
- (void)blue{

    //: if ([self ifRequesting]) {
    if ([self erase]) {
        //: NSMutableDictionary *taskDic = [[ZCHttpManager sharedManager] taskQueue];
        NSMutableDictionary *taskDic = [[TitleManageressManager off] video];
        //HMLog(@"----没有结束的队列====%lu", (unsigned long)taskDic.allKeys.count);

        //: [taskDic enumerateKeysAndObjectsUsingBlock:^(id _Nonnull key, id _Nonnull obj, BOOL * _Nonnull stop) {
        [taskDic enumerateKeysAndObjectsUsingBlock:^(id _Nonnull key, id _Nonnull obj, BOOL * _Nonnull stop) {
            //: if (((NSURLSessionDataTask *)obj).state != NSURLSessionTaskStateCompleted) {
            if (((NSURLSessionDataTask *)obj).state != NSURLSessionTaskStateCompleted) {
                //: [((NSURLSessionDataTask *)obj) cancel];
                [((NSURLSessionDataTask *)obj) cancel];
            }
        //: }];
        }];
    }
}

//取消网络请求
//: + (void)cancelRequestWithURLString:(NSString *)URLString{
+ (void)clean:(NSString *)URLString{

//    if ([[HMDataRequest shareDataRequest] ifRequesting]) {
//        NSMutableDictionary *taskDic = [[HMDataRequest shareDataRequest] taskQueue];
//        //HMLog(@"----没有结束的队列====%lu", (unsigned long)taskDic.allKeys.count);
//
//        [taskDic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
//
//            if (((NSURLSessionDataTask *)obj).state != NSURLSessionTaskStateCompleted
//                && [[((NSURLSessionDataTask *)obj).currentRequest.URL absoluteString] rangeOfString:URLString].location != NSNotFound) {
//
//                HMLog(@"----end----%@", [((NSURLSessionDataTask *)obj).currentRequest.URL absoluteString]);
//
//                [((NSURLSessionDataTask *)obj) cancel];
//
//            }
//        }];
//    }


}

//: @end
@end
