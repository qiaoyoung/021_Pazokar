
#import <Foundation/Foundation.h>

@interface AmbagesData : NSObject

@end

@implementation AmbagesData

+ (NSData *)AmbagesDataToData:(NSString *)value {
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

+ (Byte *)AmbagesDataToCache:(Byte *)data {
    int childOversee = data[0];
    Byte magnitudeerview = data[1];
    int regardingRed = data[2];
    for (int i = regardingRed; i < regardingRed + childOversee; i++) {
        int value = data[i] - magnitudeerview;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[regardingRed + childOversee] = 0;
    return data + regardingRed;
}

+ (NSString *)StringFromAmbagesData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AmbagesDataToCache:data]];
}

//: reject
+ (NSString *)noti_verticalStr {
    /* static */ NSString *noti_verticalStr = nil;
    if (!noti_verticalStr) {
		NSString *origin = @"062e0bb869a1952a863755a093989391a294";
		NSData *data = [AmbagesData AmbagesDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_verticalStr = [self StringFromAmbagesData:value];
    }
    return noti_verticalStr;
}

//: ic_policy
+ (NSString *)noti_pateIdent {
    /* static */ NSString *noti_pateIdent = nil;
    if (!noti_pateIdent) {
		NSString *origin = @"09560c996e7ec9a571fb8b11bfb9b5c6c5c2bfb9cf37";
		NSData *data = [AmbagesData AmbagesDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_pateIdent = [self StringFromAmbagesData:value];
    }
    return noti_pateIdent;
}

//: agree
+ (NSString *)main_feeName {
    /* static */ NSString *main_feeName = nil;
    if (!main_feeName) {
		NSString *origin = @"053604c3979da89b9b24";
		NSData *data = [AmbagesData AmbagesDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_feeName = [self StringFromAmbagesData:value];
    }
    return main_feeName;
}

//: PrivacyPolicy.html
+ (NSString *)showPinMsg {
    /* static */ NSString *showPinMsg = nil;
    if (!showPinMsg) {
		NSString *origin = @"122a07697770dd7a9c93a08b8da37a9996938da358929e97961b";
		NSData *data = [AmbagesData AmbagesDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showPinMsg = [self StringFromAmbagesData:value];
    }
    return showPinMsg;
}

//: #02D8C9
+ (NSString *)dreamBottomKey {
    /* static */ NSString *dreamBottomKey = nil;
    if (!dreamBottomKey) {
		NSString *origin = @"07290ce00248cb94277fd87c4c595b6d616c620c";
		NSData *data = [AmbagesData AmbagesDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamBottomKey = [self StringFromAmbagesData:value];
    }
    return dreamBottomKey;
}

//: #5D5F66
+ (NSString *)dreamPoemPath {
    /* static */ NSString *dreamPoemPath = nil;
    if (!dreamPoemPath) {
		NSString *origin = @"070a07a54d6a682d3f4e3f504040f9";
		NSData *data = [AmbagesData AmbagesDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamPoemPath = [self StringFromAmbagesData:value];
    }
    return dreamPoemPath;
}

//: Privacy Policy
+ (NSString *)mGuitarMessage {
    /* static */ NSString *mGuitarMessage = nil;
    if (!mGuitarMessage) {
		NSString *origin = @"0e460af5c01312c0067f96b8afbca7a9bf6696b5b2afa9bfa3";
		NSData *data = [AmbagesData AmbagesDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mGuitarMessage = [self StringFromAmbagesData:value];
    }
    return mGuitarMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageUltramontanismView.m
//  NIM
//
//  Created by Yan Wang on 2024/9/3.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONPrivacyPolicyView.h"
#import "ImageUltramontanismView.h"
//: #import <WebKit/WebKit.h>
#import <WebKit/WebKit.h>
//: #import "SSZipArchiveManager.h"
#import "ValuePraise.h"

//: @interface ZMONPrivacyPolicyView ()<WKNavigationDelegate, WKUIDelegate>
@interface ImageUltramontanismView ()<WKNavigationDelegate, WKUIDelegate>

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIImageView *img;
@property (nonatomic,strong) UIImageView *img;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) WKWebView *webView;
@property (nonatomic,strong) WKWebView *webView;

//: @end
@end

//: @implementation ZMONPrivacyPolicyView
@implementation ImageUltramontanismView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];

        //: [self initUI];
        [self initImage];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initImage{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, 80, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-160)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, 80, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-160)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];


//    [_box addSubview:self.titleLabel];
//    self.titleLabel.frame = CGRectMake(20, 20, 200, 20);




    //: WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    //: config.selectionGranularity = WKSelectionGranularityDynamic;
    config.selectionGranularity = WKSelectionGranularityDynamic;
    //: config.allowsPictureInPictureMediaPlayback = YES;
    config.allowsPictureInPictureMediaPlayback = YES;
    //: WKPreferences *preferences = [WKPreferences new];
    WKPreferences *preferences = [WKPreferences new];
    //是否支持JavaScript
    //: preferences.javaScriptEnabled = YES;
    preferences.javaScriptEnabled = YES;
    //不通过用户交互，是否可以打开窗口
    //: preferences.javaScriptCanOpenWindowsAutomatically = NO;
    preferences.javaScriptCanOpenWindowsAutomatically = NO;
    //: config.preferences = preferences;
    config.preferences = preferences;

    //: _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 10, [[UIScreen mainScreen] bounds].size.width-40, [[UIScreen mainScreen] bounds].size.height-230 ) configuration:config];
    _webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 10, [[UIScreen mainScreen] bounds].size.width-40, [[UIScreen mainScreen] bounds].size.height-230 ) configuration:config];
    //: _webView.layer.cornerRadius = 12;
    _webView.layer.cornerRadius = 12;
    //: _webView.backgroundColor = [UIColor clearColor];
    _webView.backgroundColor = [UIColor clearColor];
    //: _webView.scrollView.backgroundColor = [UIColor clearColor];
    _webView.scrollView.backgroundColor = [UIColor clearColor];
    //: _webView.opaque = NO;
    _webView.opaque = NO;
    //: [_box addSubview:_webView];
    [_box addSubview:_webView];
    //: _webView.navigationDelegate = self;
    _webView.navigationDelegate = self;
    //: _webView.UIDelegate = self;
    _webView.UIDelegate = self;

//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[DataMaxDefaults standardUserDefaults].yshref]];
//    [_webView loadRequest:request];


    //: NSString *htmlFilePath = [[[SSZipArchiveManager sharedManager] getHtml_filePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"PrivacyPolicy.html"]];
    NSString *htmlFilePath = [[[ValuePraise show] user] stringByAppendingPathComponent:[NSString stringWithFormat:[AmbagesData showPinMsg]]];
    //: NSString *path = htmlFilePath;
    NSString *path = htmlFilePath;
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
    if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
        //: path = [[NSBundle mainBundle] pathForResource:htmlFilePath ofType:nil];
        path = [[NSBundle mainBundle] pathForResource:htmlFilePath ofType:nil];
    }
    //: NSURL *url = [NSURL fileURLWithPath:path];
    NSURL *url = [NSURL fileURLWithPath:path];
    //: NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //: [_webView loadRequest:request];
    [_webView loadRequest:request];



//    [_box addSubview:self.img];
//    self.img.frame = CGRectMake(SCREEN_WIDTH-40-60, 20, 40, 40);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, self.webView.bottom+10, width, height);
    self.closeBtn.frame = CGRectMake(20, self.webView.bottom+10, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, self.webView.bottom+10, width, height);
    self.sureBtn.frame = CGRectMake(width+40, self.webView.bottom+10, width, height);

}





//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:16.f];
        _titleLabel.font = [UIFont systemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _titleLabel.text = @"Privacy Policy";
        _titleLabel.text = [AmbagesData mGuitarMessage];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIImageView *)img
- (UIImageView *)img
{
    //: if(!_img){
    if(!_img){
        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic_policy"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[AmbagesData noti_pateIdent]]];
    }
    //: return _img;
    return _img;
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationExit) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(titleTouch) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor status:[AmbagesData dreamPoemPath]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[BusyLanguageManager getTextWithKey:@"reject"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[SendName streetSmart:[AmbagesData noti_verticalStr]] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 20;
        _closeBtn.layer.cornerRadius = 20;
//        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _closeBtn.layer.shadowOpacity = 1;
//        _closeBtn.layer.shadowRadius = 0;
    }
    //: return _closeBtn;
    return _closeBtn;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(animationAgree) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(shouldName) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[BusyLanguageManager getTextWithKey:@"agree"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[SendName streetSmart:[AmbagesData main_feeName]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        _sureBtn.backgroundColor = [UIColor status:[AmbagesData dreamBottomKey]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;
//        _sureBtn.layer.shadowColor = DeepBtnColor.CGColor;
//        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _sureBtn.layer.shadowOpacity = 1;
//        _sureBtn.layer.shadowRadius = 0;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)animationExit
- (void)titleTouch
{
    //: exit(0);
    exit(0);
}

//: - (void)animationAgree
- (void)shouldName
{
    //: [NIMUserDefaults standardUserDefaults].yspop = @"1";
    [DataMaxDefaults max].yspop = @"1";
    //: [self animationClose];
    [self tingShould];
}


//: - (void)animationClose
- (void)tingShould
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)asColor
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end
