
#import <Foundation/Foundation.h>

typedef struct {
    Byte happiness;
    Byte *spy;
    unsigned int demon;
	int apartment;
	int conversation;
	int domainName;
} StructForbidData;

@interface ForbidData : NSObject

@end

@implementation ForbidData

+ (NSData *)ForbidDataToData:(NSString *)value {
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

+ (Byte *)ForbidDataToByte:(StructForbidData *)data {
    for (int i = 0; i < data->demon; i++) {
        data->spy[i] ^= data->happiness;
    }
    data->spy[data->demon] = 0;
	if (data->demon >= 3) {
		data->apartment = data->spy[0];
		data->conversation = data->spy[1];
		data->domainName = data->spy[2];
	}
    return data->spy;
}

+ (NSString *)StringFromForbidData:(StructForbidData *)data {
    return [NSString stringWithUTF8String:(char *)[self ForbidDataToByte:data]];
}

//: 取消导出
+ (NSString *)noti_recordStr {
    /* static */ NSString *noti_recordStr = nil;
    if (!noti_recordStr) {
		NSString *origin = @"5e342d5d0d335e14075e3c015c";
		NSData *data = [ForbidData ForbidDataToData:origin];
        StructForbidData value = (StructForbidData){187, (Byte *)data.bytes, 12, 105, 235, 140};
        noti_recordStr = [self StringFromForbidData:&value];
    }
    return noti_recordStr;
}

//: 导出失败!
+ (NSString *)mainRepresentText {
    /* static */ NSString *mainRepresentText = nil;
    if (!mainRepresentText) {
		NSString *origin = @"440e1d44261b4405104915048098";
		NSData *data = [ForbidData ForbidDataToData:origin];
        StructForbidData value = (StructForbidData){161, (Byte *)data.bytes, 13, 59, 139, 188};
        mainRepresentText = [self StringFromForbidData:&value];
    }
    return mainRepresentText;
}

//: 重新导出
+ (NSString *)k_enableTitle {
    /* static */ NSString *k_enableTitle = nil;
    if (!k_enableTitle) {
		NSString *origin = @"e48a80eb9bbde8a2b1e88ab7d6";
		NSData *data = [ForbidData ForbidDataToData:origin];
        StructForbidData value = (StructForbidData){13, (Byte *)data.bytes, 12, 90, 17, 214};
        k_enableTitle = [self StringFromForbidData:&value];
    }
    return k_enableTitle;
}

//: 本地消息导出
+ (NSString *)show_voiceBeerTextMessage {
    /* static */ NSString *show_voiceBeerTextMessage = nil;
    if (!show_voiceBeerTextMessage) {
		NSString *origin = @"4933034a331f491927492e004a00134a2815ff";
		NSData *data = [ForbidData ForbidDataToData:origin];
        StructForbidData value = (StructForbidData){175, (Byte *)data.bytes, 18, 181, 153, 140};
        show_voiceBeerTextMessage = [self StringFromForbidData:&value];
    }
    return show_voiceBeerTextMessage;
}

//: 可导出的消息记录总数为空
+ (NSString *)dream_regardingStr {
    /* static */ NSString *dream_regardingStr = nil;
    if (!dream_regardingStr) {
		NSString *origin = @"7d17377d37247d1f227f021c7e2e107e19377036287d250d7e18237e0d287c20227f312210";
		NSData *data = [ForbidData ForbidDataToData:origin];
        StructForbidData value = (StructForbidData){152, (Byte *)data.bytes, 36, 216, 42, 99};
        dream_regardingStr = [self StringFromForbidData:&value];
    }
    return dream_regardingStr;
}

//: aes256
+ (NSString *)k_imageFormat {
    /* static */ NSString *k_imageFormat = nil;
    if (!k_imageFormat) {
		NSString *origin = @"868294d5d2d178";
		NSData *data = [ForbidData ForbidDataToData:origin];
        StructForbidData value = (StructForbidData){231, (Byte *)data.bytes, 6, 208, 255, 201};
        k_imageFormat = [self StringFromForbidData:&value];
    }
    return k_imageFormat;
}

//: 恭喜你
+ (NSString *)mainMigrationKey {
    /* static */ NSString *mainMigrationKey = nil;
    if (!mainMigrationKey) {
		NSString *origin = @"a4c3efa7d4dea6ffe289";
		NSData *data = [ForbidData ForbidDataToData:origin];
        StructForbidData value = (StructForbidData){66, (Byte *)data.bytes, 9, 120, 126, 66};
        mainMigrationKey = [self StringFromForbidData:&value];
    }
    return mainMigrationKey;
}

//: 确定要取消导出?
+ (NSString *)noti_seedKey {
    /* static */ NSString *noti_seedKey = nil;
    if (!noti_seedKey) {
		NSString *origin = @"88cec18ac1f587c9ee8ae0f989d9e78ac0d38ae8d55043";
		NSData *data = [ForbidData ForbidDataToData:origin];
        StructForbidData value = (StructForbidData){111, (Byte *)data.bytes, 22, 155, 36, 131};
        noti_seedKey = [self StringFromForbidData:&value];
    }
    return noti_seedKey;
}

//: 本地消息格式化导出失败
+ (NSString *)userJusticeUrl {
    /* static */ NSString *userJusticeUrl = nil;
    if (!userJusticeUrl) {
		NSString *origin = @"f983b3fa83aff9a997f99eb0f9bfa3faa390fa9389fab0a3fa98a5fabbaef7abba86";
		NSData *data = [ForbidData ForbidDataToData:origin];
        StructForbidData value = (StructForbidData){31, (Byte *)data.bytes, 33, 120, 141, 58};
        userJusticeUrl = [self StringFromForbidData:&value];
    }
    return userJusticeUrl;
}

//: 继续导出
+ (NSString *)noti_bottomBackgroundFormat {
    /* static */ NSString *noti_bottomBackgroundFormat = nil;
    if (!noti_bottomBackgroundFormat) {
		NSString *origin = @"ebb7abebb7a1e9a3b0e98bb664";
		NSData *data = [ForbidData ForbidDataToData:origin];
        StructForbidData value = (StructForbidData){12, (Byte *)data.bytes, 12, 254, 79, 106};
        noti_bottomBackgroundFormat = [self StringFromForbidData:&value];
    }
    return noti_bottomBackgroundFormat;
}

//: 本地消息导出成功，请在新设备上点击导入吧
+ (NSString *)noti_seeModeIdent {
    /* static */ NSString *noti_seeModeIdent = nil;
    if (!noti_seeModeIdent) {
		NSString *origin = @"067c4c057c5006566806614f054f5c05675a066870056a7f0f5c6c084f57057c48067650084e5e05446704586a07625905675b054f5c05654505704750";
		NSData *data = [ForbidData ForbidDataToData:origin];
        StructForbidData value = (StructForbidData){224, (Byte *)data.bytes, 60, 178, 138, 143};
        noti_seeModeIdent = [self StringFromForbidData:&value];
    }
    return noti_seeModeIdent;
}

//: 导出本地消息需要较长时间，请耐心等待
+ (NSString *)show_migrationName {
    /* static */ NSString *show_migrationName = nil;
    if (!show_migrationName) {
		NSString *origin = @"1b51421b79441862521b624e184876187f5117627e16587f16407d176b4118694817694a114272165149167e6e1b417d1953771b407b22";
		NSData *data = [ForbidData ForbidDataToData:origin];
        StructForbidData value = (StructForbidData){254, (Byte *)data.bytes, 54, 202, 150, 59};
        show_migrationName = [self StringFromForbidData:&value];
    }
    return show_migrationName;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  SmartViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESExportMessageViewController.h"
#import "SmartViewController.h"
//: #import "NTESMigrateProgressView.h"
#import "BarView.h"
//: #import "NTESMigrateCompleteView.h"
#import "BubbleView.h"
//: #import "NSString+NTES.h"
#import "NSString+Date.h"
//: #import "NSData+NTES.h"
#import "NSData+Date.h"
//: #import "NTESExportMessageDelegateImpl.h"
#import "ArgumentImpl.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: static NSString * const aesVectorString = @"0123456789012345";
static NSString * const mainObjectName = @"0123456789012345";

//: @interface NTESExportMessageViewController ()
@interface SmartViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;
//: @property (nonatomic, copy) NSString *secureKey;
@property (nonatomic, copy) NSString *secureKey;

//: @end
@end

//: @implementation NTESExportMessageViewController
@implementation SmartViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息导出".ntes_localized;
    self.title = [ForbidData show_voiceBeerTextMessage].untilNtes;

    //: NTESMigrateProgressView *progressView = [[NTESMigrateProgressView alloc] initWithFrame:self.view.bounds];
    BarView *progressView = [[BarView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(viewTitle:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导出本地消息需要较长时间，请耐心等待".ntes_localized;
    progressView.tip = [ForbidData show_migrationName].untilNtes;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self exportMessageInfos];
    [self locationContent];
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];

    //: const CGRect bounds = self.view.bounds;
    const CGRect bounds = self.view.bounds;
    //: self.contentView.frame = bounds;
    self.contentView.frame = bounds;
}

//: - (void)setContentView:(UIView *)contentView {
- (void)setContentView:(UIView *)contentView {
    //: if (_contentView == contentView) {
    if (_contentView == contentView) {
        //: return;
        return;
    }
    //: if (contentView) {
    if (contentView) {
        //: [self.view addSubview:contentView];
        [self.view addSubview:contentView];
    }
    //: if (_contentView) {
    if (_contentView) {
        //: [_contentView removeFromSuperview];
        [_contentView removeFromSuperview];
    }
    //: _contentView = contentView;
    _contentView = contentView;
}

//: #pragma mark
#pragma mark
//: - (void)exportMessageInfos {
- (void)locationContent {
    //: NTESExportMessageDelegateImpl *exportImpl = [[NTESExportMessageDelegateImpl alloc] init];
    ArgumentImpl *exportImpl = [[ArgumentImpl alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
    [[NIMSDK sharedSDK].conversationManager exportMeessageInfosWithDelegate:exportImpl
                                                                   //: progress:^(float progress)
                                                                   progress:^(float progress)
    {
        //: if ([self.contentView isKindOfClass:[NTESMigrateProgressView class]]) {
        if ([self.contentView isKindOfClass:[BarView class]]) {
            //: NTESMigrateProgressView *progressView = (NTESMigrateProgressView *)self.contentView;
            BarView *progressView = (BarView *)self.contentView;
            //: progressView.progress = progress;
            progressView.progress = progress;
        }
    //: } completion:^(NSError * _Nullable error, NSString * _Nullable resultFilePath) {
    } completion:^(NSError * _Nullable error, NSString * _Nullable resultFilePath) {
        //: if (error || !resultFilePath) {
        if (error || !resultFilePath) {
            //: if (error.code == 1001) {
            if (error.code == 1001) {
                //: [self onExportEmpty:error];
                [self rubric:error];
            }
            //: else {
            else {
                //: [self onExportFailed:error];
                [self doing:error];
            }
        }
        //: else {
        else {
            //: [self onExportSuccessAtPath:resultFilePath];
            [self doingYear:resultFilePath];
        }
    //: }];
    }];
}

//: #pragma mark -- action
#pragma mark -- action
//: - (void)onCancelButton:(id)sender {
- (void)viewTitle:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导出?".ntes_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[ForbidData noti_seedKey].untilNtes message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导出
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:[ForbidData noti_recordStr].untilNtes style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
        [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 继续导出
    //: UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:@"继续导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:[ForbidData noti_bottomBackgroundFormat].untilNtes style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];

    //: }];
    }];
    //: [alertController addAction:actionGoon];
    [alertController addAction:actionGoon];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
    //: self.curAlertController = alertController;
    self.curAlertController = alertController;
}

//: - (void)onReturnButton:(id)sender {
- (void)retorting:(id)sender {
    //: [self dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onExportFailed:(NSError *)error {
- (void)doing:(NSError *)error {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导出失败!".ntes_localized message:@"本地消息格式化导出失败".ntes_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[ForbidData mainRepresentText].untilNtes message:[ForbidData userJusticeUrl].untilNtes preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionBack = [UIAlertAction actionWithTitle:@"返回".untilNtes style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionBack];
    [alertController addAction:actionBack];

    // 重新导出
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导出".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:[ForbidData k_enableTitle].untilNtes style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self exportMessageInfos];
        [self locationContent];
    //: }];
    }];
    //: [alertController addAction:actionRetry];
    [alertController addAction:actionRetry];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
    //: self.curAlertController = alertController;
    self.curAlertController = alertController;
}

//: - (void)onExportSuccessAtPath:(NSString *)infoFilePath {
- (void)doingYear:(NSString *)infoFilePath {
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    // 对导出结果进行压缩，可以有效减少文件尺寸
    //: NSString *zipFilePath = [self zipMessageFileAtPath:infoFilePath];
    NSString *zipFilePath = [self min:infoFilePath];
    //: if (!zipFilePath) {
    if (!zipFilePath) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: return;
        return;
    }

    // 对导出结果进行加密，避免明文消息的泄露
    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: NSString *encryptedFilePath = [self encryptMessageDataAtPath:zipFilePath];
        NSString *encryptedFilePath = [self current:zipFilePath];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [self uploadMessageFileToServer:encryptedFilePath];
            [self value:encryptedFilePath];
        //: });
        });
    //: });
    });
}

//: - (void)onExportEmpty:(NSError *)error {
- (void)rubric:(NSError *)error {
    //: NSLog(@"error %@", error);
    //: NSString *errorDscription = @"可导出的消息记录总数为空".ntes_localized;
    NSString *errorDscription = [ForbidData dream_regardingStr].untilNtes;
    //: [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDscription duration:3.0 position:CSToastPositionCenter];
}

//: - (void)onMigrateToRemoteFailed:(NSError *)error {
- (void)back:(NSError *)error {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: [self onExportFailed:error];
    [self doing:error];
}

//: - (void)onMigrateToRemoteSuccess {
- (void)pressed {
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];

    //: NTESMigrateCompleteView *completeView = [[NTESMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    BubbleView *completeView = [[BubbleView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".ntes_localized;
    completeView.title = [ForbidData mainMigrationKey].untilNtes;
    //: completeView.message = @"本地消息导出成功，请在新设备上点击导入吧".ntes_localized;
    completeView.message = [ForbidData noti_seeModeIdent].untilNtes;
    //: [completeView.actionButton setTitle:@"返回".ntes_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:@"返回".untilNtes forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(retorting:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark -- 压缩
#pragma mark -- 压缩
//: - (NSString *)zipMessageFileAtPath:(NSString *)infoFilePath {
- (NSString *)min:(NSString *)infoFilePath {
    //: return nil;
    return nil;
}

//: #pragma mark -- 加密
#pragma mark -- 加密
//: - (NSString *)encryptMessageDataAtPath:(NSString *)path {
- (NSString *)current:(NSString *)path {
    //: NSData *data = [NSData dataWithContentsOfFile:path];
    NSData *data = [NSData dataWithContentsOfFile:path];
    //: NSString *aesKey = [NSString randomStringWithLength:32];
    NSString *aesKey = [NSString snapLength:32];
    //: self.secureKey = aesKey;
    self.secureKey = aesKey;
    //: NSData *encryptedData = [data aes256EncryptWithKey:aesKey vector:aesVectorString];
    NSData *encryptedData = [data chromaticVector:aesKey labelWith:mainObjectName];
    //: NSString *encrypedPath = [path stringByAppendingString:@"aes256"];
    NSString *encrypedPath = [path stringByAppendingString:[ForbidData k_imageFormat]];
    //: [encryptedData writeToFile:encrypedPath atomically:YES];
    [encryptedData writeToFile:encrypedPath atomically:YES];

    // 移除中间文件
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
    //: });
    });

    //: return encrypedPath;
    return encrypedPath;
}

//: #pragma mark -- upload to server
#pragma mark -- upload to server
//: - (void)uploadMessageFileToServer:(NSString *)path {
- (void)value:(NSString *)path {
    //: [[NIMSDK sharedSDK].resourceManager upload:path
    [[NIMSDK sharedSDK].resourceManager upload:path
                                      //: progress:nil
                                      progress:nil
                                    //: completion:^(NSString * _Nullable urlString, NSError * _Nullable error)
                                    completion:^(NSString * _Nullable urlString, NSError * _Nullable error)
    {
        // 删除中间文件
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        //: if (error || !urlString) {
        if (error || !urlString) {
            //: [self onMigrateToRemoteFailed:error];
            [self back:error];
            //: return;
            return;
        }

        //: [self updateMigrateMessageInfoWithURL:urlString];
        [self domain:urlString];
    //: }];
    }];
}

//: - (void)updateMigrateMessageInfoWithURL:(NSString *)url {
- (void)domain:(NSString *)url {

    //: [[NIMSDK sharedSDK].conversationManager updateMigrateMessageInfoWithURL:url
    [[NIMSDK sharedSDK].conversationManager updateMigrateMessageInfoWithURL:url
                                                                        //: key:self.secureKey
                                                                        key:self.secureKey
                                                                 //: completion:^(NSError * _Nullable error)
                                                                 completion:^(NSError * _Nullable error)
    {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];

        //: if (error) {
        if (error) {
            //: [self onMigrateToRemoteFailed:error];
            [self back:error];
        }
        //: else {
        else {
            //: [self onMigrateToRemoteSuccess];
            [self pressed];
        }
    //: }];
    }];
}

//: @end
@end