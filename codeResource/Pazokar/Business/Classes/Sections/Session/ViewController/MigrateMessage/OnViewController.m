
#import <Foundation/Foundation.h>

@interface NextContentData : NSObject

+ (instancetype)sharedInstance;

//: 取消导入
@property (nonatomic, copy) NSString *m_preventionPath;

//: 本地消息导入
@property (nonatomic, copy) NSString *show_recentMsg;

//: unzip
@property (nonatomic, copy) NSString *notiEmphasizeTitle;

//: 解压失败
@property (nonatomic, copy) NSString *appDecorateKey;

//: 返回会话列表
@property (nonatomic, copy) NSString *show_feePath;

//: 确定要取消导入？
@property (nonatomic, copy) NSString *noti_popStr;

//: 消息导入成功
@property (nonatomic, copy) NSString *mExplainData;

//: decryped
@property (nonatomic, copy) NSString *userTrulyUrl;

//: 合并失败
@property (nonatomic, copy) NSString *app_framePath;

//: zip
@property (nonatomic, copy) NSString *k_migrationId;

//: iOS-zip-aes256
@property (nonatomic, copy) NSString *noti_nameAwarenessKey;

//: 继续导入
@property (nonatomic, copy) NSString *dream_djSideMessageKey;

//: NIM
@property (nonatomic, copy) NSString *main_backgroundFormat;

//: 下载消息文件失败
@property (nonatomic, copy) NSString *dream_vsName;

//: 恭喜你
@property (nonatomic, copy) NSString *dreamDrivewayMessage;

//: 导入失败！
@property (nonatomic, copy) NSString *noti_televisionMsg;

//: 重新导入
@property (nonatomic, copy) NSString *user_enemyMakeUrl;

//: 导入本地消息需要较长时间，请耐心等待
@property (nonatomic, copy) NSString *dream_killerMsg;

@end

@implementation NextContentData

+ (instancetype)sharedInstance {
    static NextContentData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)NextContentDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)NextContentDataToCache:(Byte *)data {
    int hmMake = data[0];
    int weepFin = data[1];
    for (int i = 0; i < hmMake / 2; i++) {
        int begin = weepFin + i;
        int end = weepFin + hmMake - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[weepFin + hmMake] = 0;
    return data + weepFin;
}

- (NSString *)StringFromNextContentData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self NextContentDataToCache:data]];
}  

//: 导入本地消息需要较长时间，请耐心等待
- (NSString *)dream_killerMsg {
    if (!_dream_killerMsg) {
		NSArray<NSNumber *> *origin = @[@54, @6, @194, @215, @47, @214, @133, @190, @229, @137, @173, @231, @131, @191, @229, @144, @128, @232, @183, @175, @232, @140, @188, @239, @180, @151, @233, @182, @151, @230, @191, @149, @233, @131, @190, @232, @129, @166, @232, @128, @156, @233, @175, @129, @230, @136, @182, @230, @176, @156, @229, @172, @156, @230, @165, @133, @229, @188, @175, @229, @124];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_killerMsg = [self StringFromNextContentData:value];
    }
    return _dream_killerMsg;
}

//: 重新导入
- (NSString *)user_enemyMakeUrl {
    if (!_user_enemyMakeUrl) {
		NSArray<NSNumber *> *origin = @[@12, @10, @32, @236, @74, @15, @220, @176, @195, @87, @165, @133, @229, @188, @175, @229, @176, @150, @230, @141, @135, @233, @25];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_enemyMakeUrl = [self StringFromNextContentData:value];
    }
    return _user_enemyMakeUrl;
}

//: 合并失败
- (NSString *)app_framePath {
    if (!_app_framePath) {
		NSArray<NSNumber *> *origin = @[@12, @9, @175, @233, @13, @158, @75, @100, @131, @165, @180, @232, @177, @164, @229, @182, @185, @229, @136, @144, @229, @112];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_framePath = [self StringFromNextContentData:value];
    }
    return _app_framePath;
}

//: 继续导入
- (NSString *)dream_djSideMessageKey {
    if (!_dream_djSideMessageKey) {
		NSArray<NSNumber *> *origin = @[@12, @8, @91, @255, @195, @127, @9, @174, @165, @133, @229, @188, @175, @229, @173, @187, @231, @167, @187, @231, @49];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_djSideMessageKey = [self StringFromNextContentData:value];
    }
    return _dream_djSideMessageKey;
}

//: 导入失败！
- (NSString *)noti_televisionMsg {
    if (!_noti_televisionMsg) {
		NSArray<NSNumber *> *origin = @[@15, @9, @190, @98, @242, @72, @64, @15, @206, @129, @188, @239, @165, @180, @232, @177, @164, @229, @165, @133, @229, @188, @175, @229, @230];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_televisionMsg = [self StringFromNextContentData:value];
    }
    return _noti_televisionMsg;
}

//: NIM
- (NSString *)main_backgroundFormat {
    if (!_main_backgroundFormat) {
		NSArray<NSNumber *> *origin = @[@3, @7, @253, @73, @121, @57, @169, @77, @73, @78, @56];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_backgroundFormat = [self StringFromNextContentData:value];
    }
    return _main_backgroundFormat;
}

//: 恭喜你
- (NSString *)dreamDrivewayMessage {
    if (!_dreamDrivewayMessage) {
		NSArray<NSNumber *> *origin = @[@9, @11, @97, @71, @113, @132, @170, @191, @224, @206, @88, @160, @189, @228, @156, @150, @229, @173, @129, @230, @217];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamDrivewayMessage = [self StringFromNextContentData:value];
    }
    return _dreamDrivewayMessage;
}

//: 下载消息文件失败
- (NSString *)dream_vsName {
    if (!_dream_vsName) {
		NSArray<NSNumber *> *origin = @[@24, @7, @61, @136, @201, @124, @175, @165, @180, @232, @177, @164, @229, @182, @187, @228, @135, @150, @230, @175, @129, @230, @136, @182, @230, @189, @189, @232, @139, @184, @228, @65];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_vsName = [self StringFromNextContentData:value];
    }
    return _dream_vsName;
}

//: 本地消息导入
- (NSString *)show_recentMsg {
    if (!_show_recentMsg) {
		NSArray<NSNumber *> *origin = @[@18, @10, @84, @249, @233, @13, @14, @205, @101, @206, @165, @133, @229, @188, @175, @229, @175, @129, @230, @136, @182, @230, @176, @156, @229, @172, @156, @230, @235];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_recentMsg = [self StringFromNextContentData:value];
    }
    return _show_recentMsg;
}

//: unzip
- (NSString *)notiEmphasizeTitle {
    if (!_notiEmphasizeTitle) {
		NSArray<NSNumber *> *origin = @[@5, @3, @110, @112, @105, @122, @110, @117, @211];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiEmphasizeTitle = [self StringFromNextContentData:value];
    }
    return _notiEmphasizeTitle;
}

//: iOS-zip-aes256
- (NSString *)noti_nameAwarenessKey {
    if (!_noti_nameAwarenessKey) {
		NSArray<NSNumber *> *origin = @[@14, @12, @198, @147, @222, @96, @146, @109, @201, @227, @16, @253, @54, @53, @50, @115, @101, @97, @45, @112, @105, @122, @45, @83, @79, @105, @199];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_nameAwarenessKey = [self StringFromNextContentData:value];
    }
    return _noti_nameAwarenessKey;
}

//: decryped
- (NSString *)userTrulyUrl {
    if (!_userTrulyUrl) {
		NSArray<NSNumber *> *origin = @[@8, @5, @57, @166, @129, @100, @101, @112, @121, @114, @99, @101, @100, @75];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userTrulyUrl = [self StringFromNextContentData:value];
    }
    return _userTrulyUrl;
}

//: 返回会话列表
- (NSString *)show_feePath {
    if (!_show_feePath) {
		NSArray<NSNumber *> *origin = @[@18, @4, @96, @15, @168, @161, @232, @151, @136, @229, @157, @175, @232, @154, @188, @228, @158, @155, @229, @148, @191, @232, @93];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_feePath = [self StringFromNextContentData:value];
    }
    return _show_feePath;
}

//: 取消导入
- (NSString *)m_preventionPath {
    if (!_m_preventionPath) {
		NSArray<NSNumber *> *origin = @[@12, @10, @211, @27, @159, @61, @209, @107, @249, @249, @165, @133, @229, @188, @175, @229, @136, @182, @230, @150, @143, @229, @17];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_preventionPath = [self StringFromNextContentData:value];
    }
    return _m_preventionPath;
}

//: zip
- (NSString *)k_migrationId {
    if (!_k_migrationId) {
		NSArray<NSNumber *> *origin = @[@3, @2, @112, @105, @122, @215];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_migrationId = [self StringFromNextContentData:value];
    }
    return _k_migrationId;
}

//: 解压失败
- (NSString *)appDecorateKey {
    if (!_appDecorateKey) {
		NSArray<NSNumber *> *origin = @[@12, @2, @165, @180, @232, @177, @164, @229, @139, @142, @229, @163, @167, @232, @38];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appDecorateKey = [self StringFromNextContentData:value];
    }
    return _appDecorateKey;
}

//: 消息导入成功
- (NSString *)mExplainData {
    if (!_mExplainData) {
		NSArray<NSNumber *> *origin = @[@18, @10, @105, @174, @19, @52, @62, @196, @78, @193, @159, @138, @229, @144, @136, @230, @165, @133, @229, @188, @175, @229, @175, @129, @230, @136, @182, @230, @165];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mExplainData = [self StringFromNextContentData:value];
    }
    return _mExplainData;
}

//: 确定要取消导入？
- (NSString *)noti_popStr {
    if (!_noti_popStr) {
		NSArray<NSNumber *> *origin = @[@24, @7, @224, @190, @77, @10, @194, @159, @188, @239, @165, @133, @229, @188, @175, @229, @136, @182, @230, @150, @143, @229, @129, @166, @232, @154, @174, @229, @174, @161, @231, @43];
		NSData *data = [NextContentData NextContentDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_popStr = [self StringFromNextContentData:value];
    }
    return _noti_popStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OnViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESImportMessageViewController.h"
#import "OnViewController.h"
//: #import "NTESMigrateProgressView.h"
#import "BarView.h"
//: #import "NTESMigrateCompleteView.h"
#import "BubbleView.h"
//: #import "NSData+NTES.h"
#import "NSData+Date.h"
//: #import "NTESImportMessageDelegateImpl.h"
#import "LengthImpl.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import "NTESMainTabController.h"
#import "LightGreenViewController.h"

//: static NSString * const aesVectorString = @"0123456789012345";
static NSString * const mainObjectName = @"0123456789012345";

//: @interface NTESImportMessageViewController ()
@interface OnViewController ()

//: @property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIView *contentView;
//: @property (nonatomic, weak) UIAlertController *curAlertController;
@property (nonatomic, weak) UIAlertController *curAlertController;

//: @end
@end

//: @implementation NTESImportMessageViewController
@implementation OnViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    self.view.backgroundColor = [UIColor colorWithWhite:0.3 alpha:1];
    //: self.title = @"本地消息导入".ntes_localized;
    self.title = [NextContentData sharedInstance].show_recentMsg.untilNtes;

    //: NTESMigrateProgressView *progressView = [[NTESMigrateProgressView alloc] initWithFrame:self.view.bounds];
    BarView *progressView = [[BarView alloc] initWithFrame:self.view.bounds];
    //: [progressView.stopButton addTarget:self action:@selector(onCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [progressView.stopButton addTarget:self action:@selector(viewTitle:) forControlEvents:UIControlEventTouchUpInside];
    //: progressView.tip = @"导入本地消息需要较长时间，请耐心等待".ntes_localized;
    progressView.tip = [NextContentData sharedInstance].dream_killerMsg.untilNtes;
    //: self.contentView = progressView;
    self.contentView = progressView;

    //: [self downloadRemoteFile];
    [self sumeractMark];
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

//: #pragma mark -- action
#pragma mark -- action
//: - (void)onCancelButton:(id)sender {
- (void)viewTitle:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定要取消导入？".ntes_localized message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[NextContentData sharedInstance].noti_popStr.untilNtes message:nil preferredStyle:UIAlertControllerStyleAlert];

    // 取消导入
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消导入".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:[NextContentData sharedInstance].m_preventionPath.untilNtes style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        //: [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
        [[NIMSDK sharedSDK].conversationManager cancelMigrateMessages];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 继续导入
    //: UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:@"继续导入".ntes_localized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionGoon = [UIAlertAction actionWithTitle:[NextContentData sharedInstance].dream_djSideMessageKey.untilNtes style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
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

    // 返回到会话页
    //: NTESMainTabController *tabController = [NTESMainTabController instance];
    LightGreenViewController *tabController = [LightGreenViewController item];
    //: UIViewController *selectedVC = tabController.selectedViewController;
    UIViewController *selectedVC = tabController.selectedViewController;
    //: if ([selectedVC isKindOfClass:[UINavigationController class]]) {
    if ([selectedVC isKindOfClass:[UINavigationController class]]) {
        //: [((UINavigationController *)selectedVC) popToRootViewControllerAnimated:NO];
        [((UINavigationController *)selectedVC) popToRootViewControllerAnimated:NO];
    }
    //: tabController.selectedIndex = 0;
    tabController.selectedIndex = 0;
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onImportFailed:(NSError *)error description:(NSString *)description {
- (void)table:(NSError *)error disable:(NSString *)description {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"导入失败！".ntes_localized message:description preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[NextContentData sharedInstance].noti_televisionMsg.untilNtes message:description preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionReturn = [UIAlertAction actionWithTitle:@"返回".untilNtes style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [self dismissViewControllerAnimated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
        // todo 导航
    //: }];
    }];
    //: [alertController addAction:actionReturn];
    [alertController addAction:actionReturn];

    // 重新导入
    //: UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:@"重新导入".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionRetry = [UIAlertAction actionWithTitle:[NextContentData sharedInstance].user_enemyMakeUrl.untilNtes style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
        //: [self downloadRemoteFile];
        [self sumeractMark];
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

//: - (void)onImportSuccess {
- (void)teamAlong {
    //: NTESMigrateCompleteView *completeView = [[NTESMigrateCompleteView alloc] initWithFrame:self.view.bounds];
    BubbleView *completeView = [[BubbleView alloc] initWithFrame:self.view.bounds];
    //: completeView.title = @"恭喜你".ntes_localized;
    completeView.title = [NextContentData sharedInstance].dreamDrivewayMessage.untilNtes;
    //: completeView.message = @"消息导入成功".ntes_localized;
    completeView.message = [NextContentData sharedInstance].mExplainData.untilNtes;
    //: [completeView.actionButton setTitle:@"返回会话列表".ntes_localized forState:UIControlStateNormal];
    [completeView.actionButton setTitle:[NextContentData sharedInstance].show_feePath.untilNtes forState:UIControlStateNormal];
    //: [completeView.actionButton addTarget:self action:@selector(onReturnButton:) forControlEvents:UIControlEventTouchUpInside];
    [completeView.actionButton addTarget:self action:@selector(retorting:) forControlEvents:UIControlEventTouchUpInside];
    //: self.contentView = completeView;
    self.contentView = completeView;
}

//: #pragma mark --
#pragma mark --
//: - (void)downloadRemoteFile {
- (void)sumeractMark {
    //: [self removeTempFiles];
    [self files];
    //: NSString *aesFilePath = [self aesFilePath];
    NSString *aesFilePath = [self pendingUser];
    //: [[NIMSDK sharedSDK].resourceManager download:self.remoteFilePath
    [[NIMSDK sharedSDK].resourceManager download:self.remoteFilePath
                                        //: filepath:aesFilePath
                                        filepath:aesFilePath
                                        //: progress:nil
                                        progress:nil
                                      //: completion:^(NSError * _Nullable error)
                                      completion:^(NSError * _Nullable error)
     {
         //: if (error) {
         if (error) {
             //: [self onImportFailed:error description:@"下载消息文件失败".ntes_localized];
             [self table:error disable:[NextContentData sharedInstance].dream_vsName.untilNtes];
             //: return;
             return;
         }

         //: NSString *decrypedPath = self.secureKey ? [self decryptMeessageFileAtPath:aesFilePath] : aesFilePath;
         NSString *decrypedPath = self.secureKey ? [self container:aesFilePath] : aesFilePath;
         //: dispatch_async(dispatch_get_main_queue(), ^{
         dispatch_async(dispatch_get_main_queue(), ^{
             //: NSString *unzipPath = [self unzipMessageFileAtPath:decrypedPath];
             NSString *unzipPath = [self collection:decrypedPath];
             //: [self importMessageFileAtPath:unzipPath];
             [self value:unzipPath];

             // 删除中间文件
             //: [[NSFileManager defaultManager] removeItemAtPath:aesFilePath error:nil];
             [[NSFileManager defaultManager] removeItemAtPath:aesFilePath error:nil];
         //: });
         });
     //: }];
     }];
}

// 如果上传时候有加密，需要先解密
//: - (NSString *)decryptMeessageFileAtPath:(NSString *)path {
- (NSString *)container:(NSString *)path {
    //: @autoreleasepool {
    @autoreleasepool {
        //: NSData *data = [NSData dataWithContentsOfFile:path];
        NSData *data = [NSData dataWithContentsOfFile:path];
        //: NSString *aesKey = self.secureKey;
        NSString *aesKey = self.secureKey;
        //: NSData *decryptedData = [data aes256DecryptWithKey:aesKey vector:aesVectorString];
        NSData *decryptedData = [data tag:aesKey length:mainObjectName];
        //: NSString *directory = [path stringByDeletingPathExtension];
        NSString *directory = [path stringByDeletingPathExtension];
        //: directory = [directory stringByDeletingLastPathComponent];
        directory = [directory stringByDeletingLastPathComponent];
        //: NSString *decryptedPath = [directory stringByAppendingPathComponent:@"decryped"];
        NSString *decryptedPath = [directory stringByAppendingPathComponent:[NextContentData sharedInstance].userTrulyUrl];
        //: decryptedPath = [decryptedPath stringByAppendingPathExtension:@"zip"];
        decryptedPath = [decryptedPath stringByAppendingPathExtension:[NextContentData sharedInstance].k_migrationId];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:decryptedPath]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:decryptedPath]) {
            //: [[NSFileManager defaultManager] removeItemAtPath:decryptedPath error:nil];
            [[NSFileManager defaultManager] removeItemAtPath:decryptedPath error:nil];
        }
        //: [decryptedData writeToFile:decryptedPath atomically:YES];
        [decryptedData writeToFile:decryptedPath atomically:YES];
        //: return decryptedPath;
        return decryptedPath;
    }
}

// 如果上传时候有压缩，解密完了之后要解压缩
//: - (NSString *)unzipMessageFileAtPath:(NSString *)path {
- (NSString *)collection:(NSString *)path {
    //: NSString *dstPath = [path stringByDeletingPathExtension];
    NSString *dstPath = [path stringByDeletingPathExtension];
    //: dstPath = [dstPath stringByAppendingString:@"unzip"];
    dstPath = [dstPath stringByAppendingString:[NextContentData sharedInstance].notiEmphasizeTitle];

    //
    //: NSString *unzipPath = nil;
    NSString *unzipPath = nil;
    //: BOOL directory = NO;
    BOOL directory = NO;
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:dstPath isDirectory:&directory]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:dstPath isDirectory:&directory]) {
        //: if (directory) {
        if (directory) {
            //: NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:dstPath error:nil];
            NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:dstPath error:nil];
            //: unzipPath = files.count > 0 ? files[0] : nil;
            unzipPath = files.count > 0 ? files[0] : nil;
            //: unzipPath = [dstPath stringByAppendingPathComponent:unzipPath];
            unzipPath = [dstPath stringByAppendingPathComponent:unzipPath];
        }
        //: else {
        else {
            //: unzipPath = dstPath;
            unzipPath = dstPath;
        }
    }

    // 删掉中间文件
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
    //: });
    });

    //: return unzipPath;
    return unzipPath;
}

//: - (void)importMessageFileAtPath:(NSString *)path {
- (void)value:(NSString *)path {
    //: if (!path) {
    if (!path) {
        //: [self onImportFailed:nil description:@"解压失败".ntes_localized];
        [self table:nil disable:[NextContentData sharedInstance].appDecorateKey.untilNtes];
        //: return;
        return;
    }

    // 用户自定义的导入过滤器，对于 custom 消息，需要用户自己处理
    //: NTESImportMessageDelegateImpl *importImpl = [[NTESImportMessageDelegateImpl alloc] init];
    LengthImpl *importImpl = [[LengthImpl alloc] init];

    //: [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
    [[NIMSDK sharedSDK].conversationManager importMessageInfosAtPath:path
                                                            //: delegate:importImpl
                                                            delegate:importImpl
                                                            //: progress:^(float progress)
                                                            progress:^(float progress)
    {
        //NSLog(@"import progress %f", progress);
        //: NTESMigrateProgressView *progressView = (NTESMigrateProgressView *)self.contentView;
        BarView *progressView = (BarView *)self.contentView;
        //: if ([progressView isKindOfClass:[NTESMigrateProgressView class]]) {
        if ([progressView isKindOfClass:[BarView class]]) {
            //: progressView.progress = progress;
            progressView.progress = progress;
        }
    //: } completion:^(NSError * _Nullable error) {
    } completion:^(NSError * _Nullable error) {
        //: if (error) {
        if (error) {
            //: [self onImportFailed:error description:@"合并失败".ntes_localized];
            [self table:error disable:[NextContentData sharedInstance].app_framePath.untilNtes];
        }
        //: else {
        else {
            //: [self onImportSuccess];
            [self teamAlong];
        }
    //: }];
    }];
}

//: #pragma mark -- temp
#pragma mark -- temp
//: - (NSString *)aesFilePath {
- (NSString *)pendingUser {
    //: NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:@"NIM"];
    NSString *ret = [NSTemporaryDirectory() stringByAppendingPathComponent:[NextContentData sharedInstance].main_backgroundFormat];
    //: ret = [ret stringByAppendingPathComponent:@"iOS-zip-aes256"];
    ret = [ret stringByAppendingPathComponent:[NextContentData sharedInstance].noti_nameAwarenessKey];
    //: return ret;
    return ret;
}

//: - (void)removeTempFiles {
- (void)files {
    //: NSFileManager *fileManager = [NSFileManager defaultManager];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //: [fileManager removeItemAtPath:[self aesFilePath] error:nil];
    [fileManager removeItemAtPath:[self pendingUser] error:nil];
}

//: @end
@end