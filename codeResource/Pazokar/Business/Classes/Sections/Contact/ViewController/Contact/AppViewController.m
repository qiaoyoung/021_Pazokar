
#import <Foundation/Foundation.h>

typedef struct {
    Byte voice;
    Byte *titlePath;
    unsigned int quantityrinsicFactor;
	int dismissTeam;
} StructBackgroundData;

@interface BackgroundData : NSObject

+ (instancetype)sharedInstance;

//: /user/search
@property (nonatomic, copy) NSString *dreamLetterRedData;

//: code
@property (nonatomic, copy) NSString *noti_sourceText;

//: data
@property (nonatomic, copy) NSString *noti_textUrl;

//: account
@property (nonatomic, copy) NSString *notiChildMsg;

//: msg
@property (nonatomic, copy) NSString *main_toKey;

//: icon_QR_close
@property (nonatomic, copy) NSString *showViewText;

//: scan_end_sound.caf
@property (nonatomic, copy) NSString *app_labelMessage;

//: warm_prompt
@property (nonatomic, copy) NSString *notiMFromPath;

//: setting_privacy_camera
@property (nonatomic, copy) NSString *mRedData;

//: tag_activity_set
@property (nonatomic, copy) NSString *notiWithStr;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *k_showMessage;

//: uid
@property (nonatomic, copy) NSString *showCenterData;

@end

@implementation BackgroundData

+ (instancetype)sharedInstance {
    static BackgroundData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)BackgroundDataToData:(NSString *)value {
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

- (Byte *)BackgroundDataToByte:(StructBackgroundData *)data {
    for (int i = 0; i < data->quantityrinsicFactor; i++) {
        data->titlePath[i] ^= data->voice;
    }
    data->titlePath[data->quantityrinsicFactor] = 0;
	if (data->quantityrinsicFactor >= 1) {
		data->dismissTeam = data->titlePath[0];
	}
    return data->titlePath;
}

- (NSString *)StringFromBackgroundData:(StructBackgroundData *)data {
    return [NSString stringWithUTF8String:(char *)[self BackgroundDataToByte:data]];
}

//: account
- (NSString *)notiChildMsg {
    if (!_notiChildMsg) {
		NSString *origin = @"3537373b213a20b1";
		NSData *data = [BackgroundData BackgroundDataToData:origin];
        StructBackgroundData value = (StructBackgroundData){84, (Byte *)data.bytes, 7, 41};
        _notiChildMsg = [self StringFromBackgroundData:&value];
    }
    return _notiChildMsg;
}

//: tag_activity_set
- (NSString *)notiWithStr {
    if (!_notiWithStr) {
		NSString *origin = @"1005033b0507100d120d101d3b17011033";
		NSData *data = [BackgroundData BackgroundDataToData:origin];
        StructBackgroundData value = (StructBackgroundData){100, (Byte *)data.bytes, 16, 55};
        _notiWithStr = [self StringFromBackgroundData:&value];
    }
    return _notiWithStr;
}

//: scan_end_sound.caf
- (NSString *)app_labelMessage {
    if (!_app_labelMessage) {
		NSString *origin = @"2d3d3f30013b303a012d312b303a703d3f383b";
		NSData *data = [BackgroundData BackgroundDataToData:origin];
        StructBackgroundData value = (StructBackgroundData){94, (Byte *)data.bytes, 18, 109};
        _app_labelMessage = [self StringFromBackgroundData:&value];
    }
    return _app_labelMessage;
}

//: uid
- (NSString *)showCenterData {
    if (!_showCenterData) {
		NSString *origin = @"abb7babf";
		NSData *data = [BackgroundData BackgroundDataToData:origin];
        StructBackgroundData value = (StructBackgroundData){222, (Byte *)data.bytes, 3, 214};
        _showCenterData = [self StringFromBackgroundData:&value];
    }
    return _showCenterData;
}

//: data
- (NSString *)noti_textUrl {
    if (!_noti_textUrl) {
		NSString *origin = @"6b6e7b6e31";
		NSData *data = [BackgroundData BackgroundDataToData:origin];
        StructBackgroundData value = (StructBackgroundData){15, (Byte *)data.bytes, 4, 98};
        _noti_textUrl = [self StringFromBackgroundData:&value];
    }
    return _noti_textUrl;
}

//: icon_QR_close
- (NSString *)showViewText {
    if (!_showViewText) {
		NSString *origin = @"606a666756585b566a65667a6cb2";
		NSData *data = [BackgroundData BackgroundDataToData:origin];
        StructBackgroundData value = (StructBackgroundData){9, (Byte *)data.bytes, 13, 245};
        _showViewText = [self StringFromBackgroundData:&value];
    }
    return _showViewText;
}

//: /user/search
- (NSString *)dreamLetterRedData {
    if (!_dreamLetterRedData) {
		NSString *origin = @"f1abadbbacf1adbbbfacbdb656";
		NSData *data = [BackgroundData BackgroundDataToData:origin];
        StructBackgroundData value = (StructBackgroundData){222, (Byte *)data.bytes, 12, 60};
        _dreamLetterRedData = [self StringFromBackgroundData:&value];
    }
    return _dreamLetterRedData;
}

//: msg
- (NSString *)main_toKey {
    if (!_main_toKey) {
		NSString *origin = @"607e6aeb";
		NSData *data = [BackgroundData BackgroundDataToData:origin];
        StructBackgroundData value = (StructBackgroundData){13, (Byte *)data.bytes, 3, 178};
        _main_toKey = [self StringFromBackgroundData:&value];
    }
    return _main_toKey;
}

//: contact_tag_fragment_cancel
- (NSString *)k_showMessage {
    if (!_k_showMessage) {
		NSString *origin = @"929e9f85909285ae859096ae978390969c949f85ae92909f92949d51";
		NSData *data = [BackgroundData BackgroundDataToData:origin];
        StructBackgroundData value = (StructBackgroundData){241, (Byte *)data.bytes, 27, 6};
        _k_showMessage = [self StringFromBackgroundData:&value];
    }
    return _k_showMessage;
}

//: warm_prompt
- (NSString *)notiMFromPath {
    if (!_notiMFromPath) {
		NSString *origin = @"c0d6c5dae8c7c5d8dac7c3e6";
		NSData *data = [BackgroundData BackgroundDataToData:origin];
        StructBackgroundData value = (StructBackgroundData){183, (Byte *)data.bytes, 11, 99};
        _notiMFromPath = [self StringFromBackgroundData:&value];
    }
    return _notiMFromPath;
}

//: setting_privacy_camera
- (NSString *)mRedData {
    if (!_mRedData) {
		NSString *origin = @"041203031e19102807051e0116140e2814161a12051655";
		NSData *data = [BackgroundData BackgroundDataToData:origin];
        StructBackgroundData value = (StructBackgroundData){119, (Byte *)data.bytes, 22, 236};
        _mRedData = [self StringFromBackgroundData:&value];
    }
    return _mRedData;
}

//: code
- (NSString *)noti_sourceText {
    if (!_noti_sourceText) {
		NSString *origin = @"c1cdc6c7fc";
		NSData *data = [BackgroundData BackgroundDataToData:origin];
        StructBackgroundData value = (StructBackgroundData){162, (Byte *)data.bytes, 4, 75};
        _noti_sourceText = [self StringFromBackgroundData:&value];
    }
    return _noti_sourceText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AppViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCContactScanViewController.h"
#import "AppViewController.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "NTESPersonalCardViewController.h"
#import "SharedViewController.h"
//: #import "ZMONScanToolBar.h"
#import "MessageView.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Enable.h"
//: #import "SGQRCode.h"
#import "SGQRCode.h"
//: #import "NTESUserQRCodeViewController.h"
#import "ContentViewController.h"

//: @interface CCCContactScanViewController ()<SGScanCodeDelegate, SGScanCodeSampleBufferDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@interface AppViewController ()<ViewModel, MarginGlassFormat, UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    //: SGScanCode *scanCode;
    ImagePoint *scanCode;
}
//: @property (nonatomic, strong) SGScanView *scanView;
@property (nonatomic, strong) DivertView *scanView;
//: @property (nonatomic, strong) ZMONScanToolBar *toolBar;
@property (nonatomic, strong) MessageView *toolBar;
//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;

//: @end
@end

//: @implementation CCCContactScanViewController
@implementation AppViewController

//: - (void)dealloc {
- (void)dealloc {
    //: [self stop];
    [self add];
}

//: - (void)viewWillAppear:(BOOL)animated {
- (void)viewWillAppear:(BOOL)animated {
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
    //: [self start];
    [self tingStart];
}

//: - (void)viewWillDisappear:(BOOL)animated {
- (void)viewWillDisappear:(BOOL)animated {
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
    //: [self stop];
    [self add];
}

//: - (void)start {
- (void)tingStart {
    //: [scanCode startRunning];
    [scanCode runningValue];
    //: [self.scanView startScanning];
    [self.scanView getToTip];
}

//: - (void)stop {
- (void)add {
    //: [scanCode stopRunning];
    [scanCode noView];
    //: [self.scanView stopScanning];
    [self.scanView addBar];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    //: [self configUI];
    [self flush];

    //: [self configScanCode];
    [self select];
}

//: - (void)configUI {
- (void)flush {
    //: [self.view addSubview:self.scanView];
    [self.view addSubview:self.scanView];
    //: [self.view addSubview:self.toolBar];
    [self.view addSubview:self.toolBar];

    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.backgroundColor = [UIColor clearColor];
    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"icon_QR_close"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[BackgroundData sharedInstance].showViewText] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(numberernationalTing) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(15, 25+[UIDevice vg_statusBarHeight], 40, 40);
    self.closeBtn.frame = CGRectMake(15, 25+[UIDevice statusOrLevel], 40, 40);

}

//: - (void)backAction{
- (void)numberernationalTing{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)configScanCode {
- (void)select {
    //: scanCode = [[SGScanCode alloc] init];
    scanCode = [[ImagePoint alloc] init];
    //: if (![scanCode checkCameraDeviceRearAvailable]) {
    if (![scanCode key]) {
        //: return;;
        return;;
    }
    //: scanCode.delegate = self;
    scanCode.delegate = self;
    //: scanCode.sampleBufferDelegate = self;
    scanCode.sampleBufferDelegate = self;
    //: scanCode.preview = self.view;
    scanCode.preview = self.view;
}

//: - (void)scanCode:(SGScanCode *)scanCode result:(NSString *)result {
- (void)back:(ImagePoint *)scanCode pushResult:(NSString *)result {
    //: [self stop];
    [self add];

    //: [scanCode playSoundEffect:@"scan_end_sound.caf"];
    [scanCode scalePhenomenon:[BackgroundData sharedInstance].app_labelMessage];

    //: [self addFriend:result];
    [self month:result];
//    SharedViewController *vc = [[SharedViewController alloc] initWithUserId:result];
//    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)scanCode:(SGScanCode *)scanCode brightness:(CGFloat)brightness {
- (void)close:(ImagePoint *)scanCode sittingOf:(CGFloat)brightness {
    //: if (brightness < - 1.5) {
    if (brightness < - 1.5) {
        //: [self.toolBar showTorch];
        [self.toolBar show];
    }

    //: if (brightness > 0) {
    if (brightness > 0) {
        //: [self.toolBar dismissTorch];
        [self.toolBar dateName];
    }
}

//: - (SGScanView *)scanView {
- (DivertView *)scanView {
    //: if (!_scanView) {
    if (!_scanView) {
        //: SGScanViewConfigure *configure = [[SGScanViewConfigure alloc] init];
        DateVersion *configure = [[DateVersion alloc] init];

        //: CGFloat x = 0;
        CGFloat x = 0;
        //: CGFloat y = 0;
        CGFloat y = 0;
        //: CGFloat w = self.view.frame.size.width;
        CGFloat w = self.view.frame.size.width;
        //: CGFloat h = self.view.frame.size.height;
        CGFloat h = self.view.frame.size.height;
        //: _scanView = [[SGScanView alloc] initWithFrame:CGRectMake(x, y, w, h) configure:configure];
        _scanView = [[DivertView alloc] initWithNearImage:CGRectMake(x, y, w, h) with:configure];

        //: CGFloat scan_x = 0;
        CGFloat scan_x = 0;
        //: CGFloat scan_y = 0.18 * self.view.frame.size.height;
        CGFloat scan_y = 0.18 * self.view.frame.size.height;
        //: CGFloat scan_w = self.view.frame.size.width - 2 * x;
        CGFloat scan_w = self.view.frame.size.width - 2 * x;
        //: CGFloat scan_h = self.view.frame.size.height - 2.55 * scan_y;
        CGFloat scan_h = self.view.frame.size.height - 2.55 * scan_y;
        //: _scanView.scanFrame = CGRectMake(scan_x, scan_y, scan_w, scan_h);
        _scanView.scanFrame = CGRectMake(scan_x, scan_y, scan_w, scan_h);

        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: _scanView.doubleTapBlock = ^(BOOL selected) {
        _scanView.doubleTapBlock = ^(BOOL selected) {
            //: __strong typeof(weakSelf) strongSelf = weakSelf;
            __strong typeof(weakSelf) strongSelf = weakSelf;

            //: if (selected) {
            if (selected) {
                //: [strongSelf->scanCode setVideoZoomFactor:4.0];
                [strongSelf->scanCode setRandomSuccess:4.0];
            //: } else {
            } else {
                //: [strongSelf->scanCode setVideoZoomFactor:1.0];
                [strongSelf->scanCode setRandomSuccess:1.0];
            }
        //: };
        };
    }
    //: return _scanView;
    return _scanView;
}

//: - (ZMONScanToolBar *)toolBar {
- (MessageView *)toolBar {
    //: if (!_toolBar) {
    if (!_toolBar) {
        //: _toolBar = [[ZMONScanToolBar alloc] init];
        _toolBar = [[MessageView alloc] init];
        //: CGFloat y = self.view.frame.size.height - 220;
        CGFloat y = self.view.frame.size.height - 220;
        //: _toolBar.frame = CGRectMake(0, y, self.view.frame.size.width, 220);
        _toolBar.frame = CGRectMake(0, y, self.view.frame.size.width, 220);
        //: [_toolBar addQRCodeTarget:self action:@selector(qrcode_action)];
        [_toolBar success:self arrayValue:@selector(pressedMedia)];
        //: [_toolBar addAlbumTarget:self action:@selector(album_action)];
        [_toolBar pointOfReferenceAction:self elect:@selector(playerFor)];
    }
    //: return _toolBar;
    return _toolBar;
}

//: - (void)qrcode_action {
- (void)pressedMedia {
    //: [self stop];
    [self add];
    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    ContentViewController *vc = [[ContentViewController alloc] init];
    //: vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)album_action {
- (void)playerFor {
    //: [SGPermission permissionWithType:SGPermissionTypePhoto completion:^(SGPermission * _Nonnull permission, SGPermissionStatus status) {
    [TagMediaDevice button:SGPermissionTypePhoto drawOutBackground:^(TagMediaDevice * _Nonnull permission, SGPermissionStatus status) {
        //: if (status == SGPermissionStatusNotDetermined) {
        if (status == SGPermissionStatusNotDetermined) {
            //: [permission request:^(BOOL granted) {
            [permission message:^(BOOL granted) {
                //: if (granted) {
                if (granted) {
                    //: [self _enterImagePickerController];
                    [self playUpClean];
                //: } else {
                } else {
                }
            //: }];
            }];
        //: } else if (status == SGPermissionStatusAuthorized) {
        } else if (status == SGPermissionStatusAuthorized) {
            //: [self _enterImagePickerController];
            [self playUpClean];
        //: } else if (status == SGPermissionStatusDenied) {
        } else if (status == SGPermissionStatusDenied) {


            //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[SendName streetSmart:[BackgroundData sharedInstance].notiMFromPath] message:[SendName streetSmart:[BackgroundData sharedInstance].mRedData] preferredStyle:UIAlertControllerStyleAlert];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[BackgroundData sharedInstance].k_showMessage] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            //: }])];
            }])];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[BackgroundData sharedInstance].notiWithStr] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
                if( [[UIApplication sharedApplication] canOpenURL:url]) {
                    //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                }
            //: }])];
            }])];
            //: [self presentViewController:alertControl animated:YES completion:nil];
            [self presentViewController:alertControl animated:YES completion:nil];

        //: } else if (status == SGPermissionStatusRestricted) {
        } else if (status == SGPermissionStatusRestricted) {

//            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//            if( [[UIApplication sharedApplication] canOpenURL:url]) {
//                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//            }

            //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[SendName streetSmart:[BackgroundData sharedInstance].notiMFromPath] message:[SendName streetSmart:[BackgroundData sharedInstance].mRedData] preferredStyle:UIAlertControllerStyleAlert];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[BackgroundData sharedInstance].k_showMessage] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            //: }])];
            }])];
            //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[BackgroundData sharedInstance].notiWithStr] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
                if( [[UIApplication sharedApplication] canOpenURL:url]) {
                    //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                }
            //: }])];
            }])];
            //: [self presentViewController:alertControl animated:YES completion:nil];
            [self presentViewController:alertControl animated:YES completion:nil];
        }
    //: }];
    }];
}


//: - (void)_enterImagePickerController {
- (void)playUpClean {
    //: [self stop];
    [self add];

    //: UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    //: imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    //: imagePicker.delegate = self;
    imagePicker.delegate = self;
    //: imagePicker.modalPresentationStyle = UIModalPresentationCustom;
    imagePicker.modalPresentationStyle = UIModalPresentationCustom;
    //: [self presentViewController:imagePicker animated:YES completion:nil];
    [self presentViewController:imagePicker animated:YES completion:nil];
}

//: #pragma mark - - UIImagePickerControllerDelegate 的方法
#pragma mark - - UIImagePickerControllerDelegate 的方法
//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    //: [self dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];

    //: [self start];
    [self tingStart];
}

//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    //: UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [scanCode readQRCode:image completion:^(NSString *result) {
    [scanCode button:image from:^(NSString *result) {

        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if (result == nil) {
        if (result == nil) {
            //: [self dismissViewControllerAnimated:YES completion:nil];
            [self dismissViewControllerAnimated:YES completion:nil];
            //: [self start];
            [self tingStart];
        //: } else {
        } else {
            //: [self->scanCode playSoundEffect:@"scan_end_sound.caf"];
            [self->scanCode scalePhenomenon:[BackgroundData sharedInstance].app_labelMessage];
            //: [self addFriend:result];
            [self month:result];

//            [self dismissViewControllerAnimated:YES completion:^{
//                @strongify(self);
//                SharedViewController *vc = [[SharedViewController alloc] initWithUserId:result];
//                [self.navigationController pushViewController:vc animated:YES];
//            }];
        }
    //: }];
    }];
}

//: - (void)addFriend:(NSString *)userId{
- (void)month:(NSString *)userId{

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: [dict setObject:userId forKey:@"account"];
    [dict setObject:userId forKey:[BackgroundData sharedInstance].notiChildMsg];
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/search"] params:dict isShow:YES success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[BackgroundData sharedInstance].dreamLetterRedData] read:dict indicator:YES spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict tag:[BackgroundData sharedInstance].noti_sourceText];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict tag:[BackgroundData sharedInstance].main_toKey];
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict selected:[BackgroundData sharedInstance].noti_textUrl];
            //: NSString *uid = [data newStringValueForKey:@"uid"];
            NSString *uid = [data tag:[BackgroundData sharedInstance].showCenterData];
//            [wself sendAddrequest:uid];

            //: [self dismissViewControllerAnimated:YES completion:^{
            [self dismissViewControllerAnimated:YES completion:^{
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:uid];
                SharedViewController *vc = [[SharedViewController alloc] initWithByFullId:uid];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
            //: }];
            }];

        //: } else {
        } else {

            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD stormCenter:msg];

        }
    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: @end
@end