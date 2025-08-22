// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleManageressManager.h
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <AFNetworking/AFNetworking.h>
#import <AFNetworking/AFNetworking.h>
//: #import <SDWebImage/SDWebImage.h>
#import <SDWebImage/SDWebImage.h>

/**
 *  是否开启https SSL 验证
 *  @return YES为开启，NO为关闭
 */


/**
 *  SSL 证书名称，仅支持cer格式。“app.bishe.com.cer”,则填“app.bishe.com”
 */


//请求成功的回调block
//: typedef void(^ResponseSuccess)(id responseObject);
typedef void(^ResponseSuccess)(id responseObject);

//请求失败的回调block
//: typedef void(^ResponseFailed)(id responseObject ,NSError *error);
typedef void(^ResponseFailed)(id responseObject ,NSError *error);

//文件下载的成功回调block
//: typedef void(^DownloadSuccess)(NSURLResponse *response, NSURL *filePath);
typedef void(^DownloadSuccess)(NSURLResponse *response, NSURL *filePath);

//文件下载的失败回调block
//: typedef void(^DownloadFailed)( NSError *error);
typedef void(^DownloadFailed)( NSError *error);

//文件上传下载的进度block
//: typedef void (^HttpProgress)(NSProgress *progress);
typedef void (^HttpProgress)(NSProgress *progress);


//: @interface ZCHttpManager : NSObject
@interface TitleManageressManager : NSObject

/**
 管理者单例
 */
//: + (instancetype)sharedManager;
+ (instancetype)off;

//: @property (nonatomic, copy) NSString *lastLang;
@property (nonatomic, copy) NSString *lastLang;


/**
 get请求

 @param urlStr 请求url
 @param params 参数
 @param success 成功回调
 @param failed 失败回调
 */

//: + (void)getWithUrl:(NSString *)urlStr
+ (void)size:(NSString *)urlStr
            //: params:(NSDictionary *)params
            read:(NSDictionary *)params
            //: isShow:(BOOL)isShow
            indicator:(BOOL)isShow
           //: success:(ResponseSuccess)success
           spaceOf:(ResponseSuccess)success
            //: failed:(ResponseFailed)failed;
            session:(ResponseFailed)failed;

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
            //: failed: (ResponseFailed)failed;
            pluckInwardTingFailed: (ResponseFailed)failed;




/**
 post请求

 @param urlStr 请求url
 @param params 参数
 @param success 成功回调
 @param failed 失败回调
 */
//: + (void)postWithUrl: (NSString *)urlStr
+ (void)empty: (NSString *)urlStr
             //: params: (NSDictionary *)params
             change: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             time: (BOOL)isShow
            //: success: (ResponseSuccess)success
            ting: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             showResponseFailed: (ResponseFailed)failed;

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
             //: failed: (ResponseFailed)failed;
             timeLanguage: (ResponseFailed)failed;

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
             //: failed: (ResponseFailed)failed;
             center: (ResponseFailed)failed;

/**
 * 上传文件
 *  @param URL 请求地址
 *  @param parameters 请求参数
 *  @param name              文件对应服务器上的字段
 *  @param filePath     文件本地的沙盒路径
 *  @param progress     上传进度信息
 *  @param success       请求成功的回调
 *  @param failed    请求失败的回调
 */
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
                   //: failed:(ResponseFailed)failed;
                   remote:(ResponseFailed)failed;


/**
 * 上传单/多张图片
 * 注意：多张图片需要接口支持，有的服务接口只支持数组的第一个数据
 * @param URL  请求地址
 * @param parameters 请求参数
 * @param images 图片数组
 * @param progress 上传进度信息
 * @param success 请求成功的回调
 * @param failed 请求失败的回调
 */
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
                     //: failed:(ResponseFailed)failed;
                     prolusionResponseFailed:(ResponseFailed)failed;



/**
 *  上传单/多张图片
 *
 *  @param URL        请求地址
 *  @param parameters 请求参数
 *  @param name       图片对应服务器上的字段
 *  @param images     图片数组
 *  @param fileNames  图片文件名数组, 可以为nil, 数组内的文件名默认为当前日期时间"yyyyMMddHHmmss"
 *  @param imageScale 图片文件压缩比 范围 (0.f ~ 1.f)
 *  @param imageType  图片文件的类型,例:png、jpg(默认类型)....
 *  @param progress   上传进度信息
 *  @param success    请求成功的回调
 *  @param failed    请求失败的回调
 *
 */

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
                     //: failed:(ResponseFailed)failed;
                     should:(ResponseFailed)failed;



/// 新增
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
                     //: failed:(ResponseFailed)failed;
                     display:(ResponseFailed)failed;




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
                    //: failed:(ResponseFailed)failed;
                    easingFileWillFailed:(ResponseFailed)failed;


/**
 *  下载文件
 *
 *  @param URL      请求地址
 *  @param fileDir  文件存储目录(默认存储目录为Download)
 *  @param progress 文件下载的进度信息
 *  @param success  下载成功的回调(回调参数filePath:文件的路径)
 *  @param failed  下载失败的回调
 *
 *   返回NSURLSessionDownloadTask实例，可用于暂停继续，暂停调用suspend方法，开始下载调用resume方法
 */
//: + (void)downloadWithURL:(NSString *)URL
+ (void)view:(NSString *)URL
                //: fileDir:(NSString *)fileDir
                input:(NSString *)fileDir
               //: progress:(HttpProgress)progress
               max:(HttpProgress)progress
                //: success:(void(^)(NSString *filePath))success
                ting:(void(^)(NSString *filePath))success
                 //: failed:(ResponseFailed)failed;
                 convert:(ResponseFailed)failed;

//: @end
@end