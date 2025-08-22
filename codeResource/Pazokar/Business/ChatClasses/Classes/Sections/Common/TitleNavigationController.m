
#import <Foundation/Foundation.h>

@interface MessageStatueData : NSObject

+ (instancetype)sharedInstance;

//: #875FFA
@property (nonatomic, copy) NSString *userDrivewayFrameIdent;

//: 图片在iCloud上
@property (nonatomic, copy) NSString *kManagerName;

//: 图片在本地不存在
@property (nonatomic, copy) NSString *dream_drivewaySeniorText;

//: 图片在本地不存在，无法发送
@property (nonatomic, copy) NSString *user_virusMsg;

//: #612CF9
@property (nonatomic, copy) NSString *app_weepIdent;

//: 文件在iCloud上，无法发送
@property (nonatomic, copy) NSString *notiStatueMsg;

//: nimdemo.netease.fetcher
@property (nonatomic, copy) NSString *app_redName;

//: mp4
@property (nonatomic, copy) NSString *kHaoFainFormat;

@end

@implementation MessageStatueData

+ (instancetype)sharedInstance {
    static MessageStatueData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)MessageStatueDataToData:(NSString *)value {
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

- (Byte *)MessageStatueDataToCache:(Byte *)data {
    int migrationHock = data[0];
    Byte childDj = data[1];
    int weepNext = data[2];
    for (int i = weepNext; i < weepNext + migrationHock; i++) {
        int value = data[i] - childDj;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[weepNext + migrationHock] = 0;
    return data + weepNext;
}

- (NSString *)StringFromMessageStatueData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MessageStatueDataToCache:data]];
}

//: 图片在本地不存在，无法发送
- (NSString *)user_virusMsg {
    if (!_user_virusMsg) {
		NSString *origin = @"27250CEE7F1B8B12DCD07E610AC0E30CAEAC0AC1CD0BC1D10AC1D509DDB20AD2BD0AC1CD14E1B10BBCC50BD8BA0AB4B60EA5A62E";
		NSData *data = [MessageStatueData MessageStatueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_virusMsg = [self StringFromMessageStatueData:value];
    }
    return _user_virusMsg;
}

//: nimdemo.netease.fetcher
- (NSString *)app_redName {
    if (!_app_redName) {
		NSString *origin = @"17210CD61CBAAD1B9CE8F7B18F8A8E85868E904F8F8695868294864F87869584898693CB";
		NSData *data = [MessageStatueData MessageStatueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_redName = [self StringFromMessageStatueData:value];
    }
    return _app_redName;
}

//: 图片在iCloud上
- (NSString *)kManagerName {
    if (!_kManagerName) {
		NSString *origin = @"12100A036C7F89546A1FF5ABCEF79997F5ACB879537C7F8574F4C89A2C";
		NSData *data = [MessageStatueData MessageStatueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kManagerName = [self StringFromMessageStatueData:value];
    }
    return _kManagerName;
}

//: #875FFA
- (NSString *)userDrivewayFrameIdent {
    if (!_userDrivewayFrameIdent) {
		NSString *origin = @"074F06AED0837287868495959019";
		NSData *data = [MessageStatueData MessageStatueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userDrivewayFrameIdent = [self StringFromMessageStatueData:value];
    }
    return _userDrivewayFrameIdent;
}

//: mp4
- (NSString *)kHaoFainFormat {
    if (!_kHaoFainFormat) {
		NSString *origin = @"0315038285494C";
		NSData *data = [MessageStatueData MessageStatueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kHaoFainFormat = [self StringFromMessageStatueData:value];
    }
    return _kHaoFainFormat;
}

//: 图片在本地不存在
- (NSString *)dream_drivewaySeniorText {
    if (!_dream_drivewaySeniorText) {
		NSString *origin = @"18070AE58096ACB06E10ECA2C5EE908EECA3AFEDA3B3ECA3B7EBBF94ECB49FECA3AF2F";
		NSData *data = [MessageStatueData MessageStatueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_drivewaySeniorText = [self StringFromMessageStatueData:value];
    }
    return _dream_drivewaySeniorText;
}

//: #612CF9
- (NSString *)app_weepIdent {
    if (!_app_weepIdent) {
		NSString *origin = @"07290A4D5D481B819A0E4C5F5A5B6C6F6264";
		NSData *data = [MessageStatueData MessageStatueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_weepIdent = [self StringFromMessageStatueData:value];
    }
    return _app_weepIdent;
}

//: 文件在iCloud上，无法发送
- (NSString *)notiStatueMsg {
    if (!_notiStatueMsg) {
		NSString *origin = @"215E0DE933E15B2C55D26A637B44F4E542191443FA06C7A1CACDD3C24216E84D1AEA44F5FE4411F343EDEF47DEDF2B";
		NSData *data = [MessageStatueData MessageStatueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiStatueMsg = [self StringFromMessageStatueData:value];
    }
    return _notiStatueMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleNavigationController.m
// Case
//
//  Created by Genning on 2020/9/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyKitMediaPickerController.h"
#import "TitleNavigationController.h"
//: #import "BusyKitProgressHUD.h"
#import "KitEffectView.h"
//: #import "BusyKitDependency.h"
#import "BusyKitDependency.h"
//: #import "BusyGlobalMacro.h"
#import "BusyGlobalMacro.h"
//: #import "BusyKitFileLocationHelper.h"
#import "LocationHelper.h"
//: #import <MobileCoreServices/MobileCoreServices.h>
#import <MobileCoreServices/MobileCoreServices.h>

//: @interface BusyKitMediaPickerController ()<TZImagePickerControllerDelegate>
@interface TitleNavigationController ()<TZImagePickerControllerDelegate>

//: @property (nonatomic, assign) UIStatusBarStyle myStatusBarStyle;
@property (nonatomic, assign) UIStatusBarStyle myStatusBarStyle;

//: @end
@end

//: @implementation BusyKitMediaPickerController
@implementation TitleNavigationController

//: - (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount {
- (instancetype)initWithView:(NSInteger)maxImagesCount {
    //: if (self = [super initWithMaxImagesCount:maxImagesCount delegate:nil]) {
    if (self = [super initWithMaxImagesCount:maxImagesCount delegate:nil]) {
        //: self.navigationBar.barStyle = UIBarStyleBlack;
        self.navigationBar.barStyle = UIBarStyleBlack;
        //: self.pickerDelegate = self;
        self.pickerDelegate = self;
        //: self.naviBgColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel]];
        self.naviBgColor = [UIColor colorWithPatternImage:[ColorSort center:[UIColor status:[MessageStatueData sharedInstance].userDrivewayFrameIdent] name:[UIColor status:[MessageStatueData sharedInstance].app_weepIdent] sendGradientDirection:SNLinearGradientDirectionLevel]];
        //: self.naviTitleColor = [UIColor blackColor];
        self.naviTitleColor = [UIColor blackColor];
        //: self.barItemTextColor = [UIColor blackColor];
        self.barItemTextColor = [UIColor blackColor];

        //: self.allowPickingOriginalPhoto = NO;
        self.allowPickingOriginalPhoto = NO;
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount delegate:(id<TZImagePickerControllerDelegate>)delegate {
- (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount delegate:(id<TZImagePickerControllerDelegate>)delegate {
    //: if (self = [super initWithMaxImagesCount:maxImagesCount delegate:delegate]) {
    if (self = [super initWithMaxImagesCount:maxImagesCount delegate:delegate]) {
        //: self.navigationBar.barStyle = UIBarStyleDefault;
        self.navigationBar.barStyle = UIBarStyleDefault;
        //: self.naviBgColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel]];
        self.naviBgColor = [UIColor colorWithPatternImage:[ColorSort center:[UIColor status:[MessageStatueData sharedInstance].userDrivewayFrameIdent] name:[UIColor status:[MessageStatueData sharedInstance].app_weepIdent] sendGradientDirection:SNLinearGradientDirectionLevel]];
        //: self.naviTitleColor = [UIColor blackColor];
        self.naviTitleColor = [UIColor blackColor];
        //: self.barItemTextColor = [UIColor blackColor];
        self.barItemTextColor = [UIColor blackColor];

        //: self.allowPickingOriginalPhoto = NO;
        self.allowPickingOriginalPhoto = NO;
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//: - (void)viewWillAppear:(BOOL)animated
- (void)viewWillAppear:(BOOL)animated
{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
//    [UIApplication sharedApplication].statusBarStyle =  UIStatusBarStyleDarkContent;
//    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];

}

//: #pragma mark - <TZImagePickerControllerDelegate>
#pragma mark - <TZImagePickerControllerDelegate>
//: - (void)imagePickerController:(TZImagePickerController *)picker
- (void)imagePickerController:(TZImagePickerController *)picker
       //: didFinishPickingPhotos:(NSArray<UIImage *> *)photos
       didFinishPickingPhotos:(NSArray<UIImage *> *)photos
                 //: sourceAssets:(NSArray *)assets
                 sourceAssets:(NSArray *)assets
        //: isSelectOriginalPhoto:(BOOL)isSelectOriginalPhoto infos:(NSArray<NSDictionary *> *)infos {
        isSelectOriginalPhoto:(BOOL)isSelectOriginalPhoto infos:(NSArray<NSDictionary *> *)infos {
    //: if (isSelectOriginalPhoto)
    if (isSelectOriginalPhoto)
    {
        //: [self requestAssets:[assets mutableCopy]];
        [self send:[assets mutableCopy]];
    }
    //: else
    else
    {
        //: if ([_nim_delegate respondsToSelector:@selector(onPickerSelectedWithType:images:path:)]) {
        if ([_nim_delegate respondsToSelector:@selector(sub:alongToSunnahPath:selectedReadPath:)]) {
            //: [_nim_delegate onPickerSelectedWithType:PHAssetMediaTypeImage images:photos path:nil];
            [_nim_delegate sub:PHAssetMediaTypeImage alongToSunnahPath:photos selectedReadPath:nil];
        }
    }
}

//: - (void)imagePickerController:(TZImagePickerController *)picker
- (void)imagePickerController:(TZImagePickerController *)picker
        //: didFinishPickingVideo:(UIImage *)coverImage
        didFinishPickingVideo:(UIImage *)coverImage
                 //: sourceAssets:(id)asset{
                 sourceAssets:(id)asset{
    //: NSMutableArray *items = [[NSMutableArray alloc] initWithArray:@[asset]];
    NSMutableArray *items = [[NSMutableArray alloc] initWithArray:@[asset]];
    //: [self requestAssets:items];
    [self send:items];
}

//: - (void)imagePickerController:(TZImagePickerController *)picker
- (void)imagePickerController:(TZImagePickerController *)picker
     //: didFinishPickingGifImage:(UIImage *)animatedImage
     didFinishPickingGifImage:(UIImage *)animatedImage
                 //: sourceAssets:(PHAsset *)asset {
                 sourceAssets:(PHAsset *)asset {
    //: NSMutableArray *items = [[NSMutableArray alloc] initWithArray:@[asset]];
    NSMutableArray *items = [[NSMutableArray alloc] initWithArray:@[asset]];
    //: [self requestAssets:items];
    [self send:items];
}

//: - (void)requestAssets:(NSMutableArray *)assets
- (void)send:(NSMutableArray *)assets
{
    //: if (!assets.count) {
    if (!assets.count) {
        //: return;
        return;
    }

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [BusyKitProgressHUD show];
    [KitEffectView nim];
    //: [self requestAsset:assets.firstObject handler:^(NSString *path, PHAssetMediaType type) {
    [self programRemote:assets.firstObject track:^(NSString *path, PHAssetMediaType type) {
        //: [BusyKitProgressHUD dismiss];
        [KitEffectView area];
        //: if ([weakSelf.nim_delegate respondsToSelector:@selector(onPickerSelectedWithType:images:path:)]) {
        if ([weakSelf.nim_delegate respondsToSelector:@selector(sub:alongToSunnahPath:selectedReadPath:)]) {
            //: [weakSelf.nim_delegate onPickerSelectedWithType:type images:nil path:path];
            [weakSelf.nim_delegate sub:type alongToSunnahPath:nil selectedReadPath:path];
        }
        //: if ([NSThread isMainThread]) {^{ [assets removeObjectAtIndex:0]; [weakSelf requestAssets:assets]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [assets removeObjectAtIndex:0]; [weakSelf requestAssets:assets]; });}
        if ([NSThread isMainThread]) {^{ [assets removeObjectAtIndex:0]; [weakSelf send:assets]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [assets removeObjectAtIndex:0]; [weakSelf send:assets]; });}



    //: }];
    }];
}

//: - (void)requestAsset:(PHAsset *)asset handler:(void(^)(NSString *,PHAssetMediaType)) handler
- (void)programRemote:(PHAsset *)asset track:(void(^)(NSString *,PHAssetMediaType)) handler
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (asset.mediaType == PHAssetMediaTypeVideo) {
    if (asset.mediaType == PHAssetMediaTypeVideo) {

        //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            //: PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
            PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
            //: options.version = PHVideoRequestOptionsVersionCurrent;
            options.version = PHVideoRequestOptionsVersionCurrent;
            //: options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;
            options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;

            //: [PHImageManager.defaultManager requestAVAssetForVideo:asset options:options resultHandler:^(AVAsset * _Nullable assetR, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
            [PHImageManager.defaultManager requestAVAssetForVideo:asset options:options resultHandler:^(AVAsset * _Nullable assetR, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
                //: NSError *error = nil;
                NSError *error = nil;
                //: NSString *outputPath = nil;
                NSString *outputPath = nil;
                //: if ([[info objectForKey:PHImageResultIsInCloudKey] boolValue]) {
                if ([[info objectForKey:PHImageResultIsInCloudKey] boolValue]) {
                    //: outputPath = nil;
                    outputPath = nil;
                    //: error = [NSError errorWithDomain:@"nimdemo.netease.fetcher" code:0x1000 userInfo:@{NSLocalizedDescriptionKey:@"图片在iCloud上"}];
                    error = [NSError errorWithDomain:[MessageStatueData sharedInstance].app_redName code:0x1000 userInfo:@{NSLocalizedDescriptionKey:[MessageStatueData sharedInstance].kManagerName}];
                    //: [weakSelf showErrorMsg:@"文件在iCloud上，无法发送"];
                    [weakSelf tingWith:[MessageStatueData sharedInstance].notiStatueMsg];
                //: } else {
                } else {
                    //: AVURLAsset *URLAsset = (AVURLAsset *)assetR;
                    AVURLAsset *URLAsset = (AVURLAsset *)assetR;
                    //: NSString *outputFileName = [BusyKitFileLocationHelper genFilenameWithExt:@"mp4"];
                    NSString *outputFileName = [LocationHelper post:[MessageStatueData sharedInstance].kHaoFainFormat];
                    //: outputPath = [BusyKitFileLocationHelper filepathForVideo:outputFileName];
                    outputPath = [LocationHelper searchVideo:outputFileName];
                    //: BOOL fileExist = [[NSFileManager defaultManager] fileExistsAtPath:URLAsset.URL.path];
                    BOOL fileExist = [[NSFileManager defaultManager] fileExistsAtPath:URLAsset.URL.path];
                    //: if (!fileExist) {
                    if (!fileExist) {
                        //: error = [NSError errorWithDomain:@"nimdemo.netease.fetcher" code:0x1001 userInfo:@{NSLocalizedDescriptionKey:@"图片在本地不存在"}];
                        error = [NSError errorWithDomain:[MessageStatueData sharedInstance].app_redName code:0x1001 userInfo:@{NSLocalizedDescriptionKey:[MessageStatueData sharedInstance].dream_drivewaySeniorText}];
                        //: [weakSelf showErrorMsg:@"图片在本地不存在，无法发送"];
                        [weakSelf tingWith:[MessageStatueData sharedInstance].user_virusMsg];
                    //: } else {
                    } else {
                        //: [NSFileManager.defaultManager copyItemAtURL:URLAsset.URL toURL:[NSURL fileURLWithPath:outputPath] error:&error];
                        [NSFileManager.defaultManager copyItemAtURL:URLAsset.URL toURL:[NSURL fileURLWithPath:outputPath] error:&error];
                    }
                }

                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: handler(!error ? outputPath : nil, PHAssetMediaTypeVideo);
                    handler(!error ? outputPath : nil, PHAssetMediaTypeVideo);
                //: });
                });
            //: }];
            }];
        //: });
        });
    }

    //: if (asset.mediaType == PHAssetMediaTypeImage)
    if (asset.mediaType == PHAssetMediaTypeImage)
    {
        //: [asset requestContentEditingInputWithOptions:nil completionHandler:^(PHContentEditingInput * _Nullable contentEditingInput, NSDictionary * _Nonnull info) {
        [asset requestContentEditingInputWithOptions:nil completionHandler:^(PHContentEditingInput * _Nullable contentEditingInput, NSDictionary * _Nonnull info) {
            //: NSString *path = contentEditingInput.fullSizeImageURL.relativePath;
            NSString *path = contentEditingInput.fullSizeImageURL.relativePath;
            //: handler(path,contentEditingInput.mediaType);
            handler(path,contentEditingInput.mediaType);
        //: }];
        }];
    }

}

//: - (void)showErrorMsg:(NSString *)msg {
- (void)tingWith:(NSString *)msg {
    //: if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:msg duration:2 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:msg duration:2 position:CSToastPositionCenter]; });};
    if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:msg duration:2 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:msg duration:2 position:CSToastPositionCenter]; });};




}

//: #pragma mark - setter
#pragma mark - setter
//: - (void)setMediaTypes:(NSArray<NSString *> *)mediaTypes {
- (void)setMediaTypes:(NSArray<NSString *> *)mediaTypes {
    //: _mediaTypes = mediaTypes;
    _mediaTypes = mediaTypes;
    //: self.allowPickingVideo = [mediaTypes containsObject:(NSString *)kUTTypeMovie];
    self.allowPickingVideo = [mediaTypes containsObject:(NSString *)kUTTypeMovie];
    //: self.allowPickingImage = [mediaTypes containsObject:(NSString *)kUTTypeImage];
    self.allowPickingImage = [mediaTypes containsObject:(NSString *)kUTTypeImage];
    //: self.allowPickingGif = [mediaTypes containsObject:(NSString *)kUTTypeGIF];
    self.allowPickingGif = [mediaTypes containsObject:(NSString *)kUTTypeGIF];
}

//: @end
@end
