
#import <Foundation/Foundation.h>

@interface BeatitudeData : NSObject

@end

@implementation BeatitudeData

+ (NSData *)BeatitudeDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)BeatitudeDataToCache:(Byte *)data {
    int beamNimShould = data[0];
    Byte creature = data[1];
    int liable = data[2];
    for (int i = liable; i < liable + beamNimShould; i++) {
        int value = data[i] + creature;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[liable + beamNimShould] = 0;
    return data + liable;
}

+ (NSString *)StringFromBeatitudeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BeatitudeDataToCache:data]];
}

//: #999999
+ (NSString *)noti_dilemmaMessage {
    /* static */ NSString *noti_dilemmaMessage = nil;
    if (!noti_dilemmaMessage) {
		NSArray<NSString *> *origin = @[@"7", @"26", @"12", @"207", @"107", @"59", @"94", @"99", @"58", @"10", @"211", @"116", @"9", @"31", @"31", @"31", @"31", @"31", @"31", @"51"];
		NSData *data = [BeatitudeData BeatitudeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_dilemmaMessage = [self StringFromBeatitudeData:value];
    }
    return noti_dilemmaMessage;
}

//: #02D8C9
+ (NSString *)mCurrentlyFormat {
    /* static */ NSString *mCurrentlyFormat = nil;
    if (!mCurrentlyFormat) {
		NSArray<NSString *> *origin = @[@"7", @"99", @"5", @"137", @"48", @"192", @"205", @"207", @"225", @"213", @"224", @"214", @"236"];
		NSData *data = [BeatitudeData BeatitudeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mCurrentlyFormat = [self StringFromBeatitudeData:value];
    }
    return mCurrentlyFormat;
}

//: Group_description
+ (NSString *)user_cliffStr {
    /* static */ NSString *user_cliffStr = nil;
    if (!user_cliffStr) {
		NSArray<NSString *> *origin = @[@"17", @"44", @"5", @"49", @"58", @"27", @"70", @"67", @"73", @"68", @"51", @"56", @"57", @"71", @"55", @"70", @"61", @"68", @"72", @"61", @"67", @"66", @"166"];
		NSData *data = [BeatitudeData BeatitudeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_cliffStr = [self StringFromBeatitudeData:value];
    }
    return user_cliffStr;
}

//: Please_enter_content
+ (NSString *)notiBottomName {
    /* static */ NSString *notiBottomName = nil;
    if (!notiBottomName) {
		NSArray<NSString *> *origin = @[@"20", @"29", @"4", @"151", @"51", @"79", @"72", @"68", @"86", @"72", @"66", @"72", @"81", @"87", @"72", @"85", @"66", @"70", @"82", @"81", @"87", @"72", @"81", @"87", @"3"];
		NSData *data = [BeatitudeData BeatitudeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiBottomName = [self StringFromBeatitudeData:value];
    }
    return notiBottomName;
}

//: feedback_activity_submit
+ (NSString *)userGuitarUrl {
    /* static */ NSString *userGuitarUrl = nil;
    if (!userGuitarUrl) {
		NSArray<NSString *> *origin = @[@"24", @"4", @"13", @"137", @"73", @"75", @"13", @"236", @"88", @"242", @"83", @"161", @"158", @"98", @"97", @"97", @"96", @"94", @"93", @"95", @"103", @"91", @"93", @"95", @"112", @"101", @"114", @"101", @"112", @"117", @"91", @"111", @"113", @"94", @"105", @"101", @"112", @"23"];
		NSData *data = [BeatitudeData BeatitudeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userGuitarUrl = [self StringFromBeatitudeData:value];
    }
    return userGuitarUrl;
}

//: #F6F7FA
+ (NSString *)app_baseballName {
    /* static */ NSString *app_baseballName = nil;
    if (!app_baseballName) {
		NSArray<NSString *> *origin = @[@"7", @"8", @"7", @"201", @"46", @"253", @"153", @"27", @"62", @"46", @"62", @"47", @"62", @"57", @"155"];
		NSData *data = [BeatitudeData BeatitudeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_baseballName = [self StringFromBeatitudeData:value];
    }
    return app_baseballName;
}

//: back_arrow_bl
+ (NSString *)userIndicationKey {
    /* static */ NSString *userIndicationKey = nil;
    if (!userIndicationKey) {
		NSArray<NSString *> *origin = @[@"13", @"60", @"13", @"177", @"3", @"162", @"88", @"51", @"185", @"167", @"62", @"25", @"109", @"38", @"37", @"39", @"47", @"35", @"37", @"54", @"54", @"51", @"59", @"35", @"38", @"48", @"22"];
		NSData *data = [BeatitudeData BeatitudeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userIndicationKey = [self StringFromBeatitudeData:value];
    }
    return userIndicationKey;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/6/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyTeamIntroduceViewController.h"
#import "CenterViewController.h"
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"

//: @interface BusyTeamIntroduceViewController ()<UITextFieldDelegate, UITextViewDelegate>
@interface CenterViewController ()<UITextFieldDelegate, UITextViewDelegate>


//: @property (strong, nonatomic) UITextView *contentTextView;
@property (strong, nonatomic) UITextView *contentTextView;

//: @property (nonatomic, strong) UIButton *submitButton;
@property (nonatomic, strong) UIButton *submitButton;

//: @property (nonatomic, strong) CAGradientLayer *gradientLayer;
@property (nonatomic, strong) CAGradientLayer *gradientLayer;
//: @property (nonatomic,strong) UILabel *numLabel;
@property (nonatomic,strong) UILabel *numLabel;

//: @end
@end

//: @implementation BusyTeamIntroduceViewController
@implementation CenterViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor status:[BeatitudeData app_baseballName]];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice statusOrLevel]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];


    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice statusOrLevel]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[BeatitudeData userIndicationKey]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(numberernationalTing) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice statusOrLevel]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [BusyLanguageManager getTextWithKey:@"Group_description"];
    labtitle.text = [SendName streetSmart:[BeatitudeData user_cliffStr]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width-30, 256)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice statusOrLevel])+10, [[UIScreen mainScreen] bounds].size.width-30, 256)];
    //: contentView.backgroundColor = [UIColor whiteColor];
    contentView.backgroundColor = [UIColor whiteColor];
    //: contentView.layer.cornerRadius = 8;
    contentView.layer.cornerRadius = 8;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];
//    contentView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    contentView.layer.cornerRadius = 8;
//    contentView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    contentView.layer.shadowOffset = CGSizeMake(0,3);
//    contentView.layer.shadowOpacity = 1;
//    contentView.layer.shadowRadius = 0;

    //: self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 226)];
    self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 226)];
    //: self.contentTextView.textColor = [UIColor blackColor];
    self.contentTextView.textColor = [UIColor blackColor];
    //: self.contentTextView.font = [UIFont systemFontOfSize:16.f];
    self.contentTextView.font = [UIFont systemFontOfSize:16.f];
    //: self.contentTextView.delegate = self;
    self.contentTextView.delegate = self;
    //: self.contentTextView.placeholder = [BusyLanguageManager getTextWithKey:@"Please_enter_content"];
    self.contentTextView.placeholder = [SendName streetSmart:[BeatitudeData notiBottomName]];
    //: self.contentTextView.text = self.defaultContent;
    self.contentTextView.text = self.defaultContent;
    //: [contentView addSubview:self.contentTextView];
    [contentView addSubview:self.contentTextView];

//    [self.view addSubview:self.numLabel];
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/512",(unsigned long)self.contentTextView.text.length];
//    self.numLabel.frame = CGRectMake(15, contentView.bottom+10, SCREEN_WIDTH-30, 20);

    //: if (self.canEdit) {
    if (self.canEdit) {
        //: self.contentTextView.editable = YES;
        self.contentTextView.editable = YES;

        //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
        submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
        //: submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        //: [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [submitButton setTitle:[BusyLanguageManager getTextWithKey:@"feedback_activity_submit"] forState:UIControlStateNormal];
        [submitButton setTitle:[SendName streetSmart:[BeatitudeData userGuitarUrl]] forState:UIControlStateNormal];
        //: [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
        [submitButton addTarget:self action:@selector(oned:) forControlEvents:UIControlEventTouchUpInside];
        //: submitButton.layer.cornerRadius = 24;
        submitButton.layer.cornerRadius = 24;
        //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        submitButton.backgroundColor = [UIColor status:[BeatitudeData mCurrentlyFormat]];
        //: [self.view addSubview:submitButton];
        [self.view addSubview:submitButton];
    //: }else{
    }else{
        //: self.contentTextView.editable = NO;
        self.contentTextView.editable = NO;
    }

}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)backAction{
- (void)numberernationalTing{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)textViewDidChange:(UITextView *)textView {
- (void)textViewDidChange:(UITextView *)textView {
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/400",textView.text.length];
}


//: - (void)onSave:(id)sender {
- (void)oned:(id)sender {
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];

    //: NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    //: self.speiceBackBlock(content);
    self.speiceBackBlock(content);

    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
//    if([self.delegate respondsToSelector:@selector(createTeamAnnouncementCompleteWithTitle:content:)]) {
//        [self.delegate createTeamAnnouncementCompleteWithTitle:title content:content];
//    }
}


//: - (UILabel *)numLabel{
- (UILabel *)numLabel{
    //: if (!_numLabel) {
    if (!_numLabel) {
        //: _numLabel = [[UILabel alloc] init];
        _numLabel = [[UILabel alloc] init];
        //: _numLabel.font = [UIFont systemFontOfSize:12.f];
        _numLabel.font = [UIFont systemFontOfSize:12.f];
        //: _numLabel.textAlignment = NSTextAlignmentRight;
        _numLabel.textAlignment = NSTextAlignmentRight;
        //: _numLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _numLabel.textColor = [UIColor status:[BeatitudeData noti_dilemmaMessage]];
    }
    //: return _numLabel;
    return _numLabel;
}


//: @end
@end
