
#import <Foundation/Foundation.h>

@interface TouristData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation TouristData

+ (instancetype)sharedInstance {
    static TouristData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)TouristDataToData:(NSString *)value {
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

- (Byte *)TouristDataToCache:(Byte *)data {
    int potato = data[0];
    Byte ahName = data[1];
    int pate = data[2];
    for (int i = pate; i < pate + potato; i++) {
        int value = data[i] - ahName;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[pate + potato] = 0;
    return data + pate;
}

- (NSString *)StringFromTouristData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TouristDataToCache:data]];
}

//: report_reasons8
- (NSString *)notiEnemyFormat {
    /* static */ NSString *notiEnemyFormat = nil;
    if (!notiEnemyFormat) {
		NSString *origin = @"0f1208e890c5b06484778281848671847773858180854a07";
		NSData *data = [TouristData TouristDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiEnemyFormat = [self StringFromTouristData:value];
    }
    return notiEnemyFormat;
}

//: report_reasons6
- (NSString *)k_motorNousUrl {
    /* static */ NSString *k_motorNousUrl = nil;
    if (!k_motorNousUrl) {
		NSString *origin = @"0f540489c6b9c4c3c6c8b3c6b9b5c7c3c2c78a66";
		NSData *data = [TouristData TouristDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_motorNousUrl = [self StringFromTouristData:value];
    }
    return k_motorNousUrl;
}

//: #02D8C9
- (NSString *)kContemplateTitle {
    /* static */ NSString *kContemplateTitle = nil;
    if (!kContemplateTitle) {
		NSString *origin = @"07550d7f9afd7ada5dfc70fd68788587998d988e16";
		NSData *data = [TouristData TouristDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContemplateTitle = [self StringFromTouristData:value];
    }
    return kContemplateTitle;
}

//: #5D5F66
- (NSString *)dreamChildUrl {
    /* static */ NSString *dreamChildUrl = nil;
    if (!dreamChildUrl) {
		NSString *origin = @"07470ba1030e2dc87e63086a7c8b7c8d7d7dc4";
		NSData *data = [TouristData TouristDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamChildUrl = [self StringFromTouristData:value];
    }
    return dreamChildUrl;
}

//: report_Content
- (NSString *)main_mallText {
    /* static */ NSString *main_mallText = nil;
    if (!main_mallText) {
		NSString *origin = @"0e08045e7a6d78777a7c674b77767c6d767c97";
		NSData *data = [TouristData TouristDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_mallText = [self StringFromTouristData:value];
    }
    return main_mallText;
}

//: icon_accessory_normal
- (NSString *)main_restorePath {
    /* static */ NSString *main_restorePath = nil;
    if (!main_restorePath) {
		NSString *origin = @"15340709b3f5bc9d97a3a29395979799a7a7a3a6ad93a2a3a6a195a00e";
		NSData *data = [TouristData TouristDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_restorePath = [self StringFromTouristData:value];
    }
    return main_restorePath;
}

//: icon_accessory_selected
- (NSString *)user_fainName {
    /* static */ NSString *user_fainName = nil;
    if (!user_fainName) {
		NSString *origin = @"175d040ac6c0cccbbcbec0c0c2d0d0cccfd6bcd0c2c9c2c0d1c2c17d";
		NSData *data = [TouristData TouristDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_fainName = [self StringFromTouristData:value];
    }
    return user_fainName;
}

//: contact_tag_fragment_cancel
- (NSString *)mainRecentName {
    /* static */ NSString *mainRecentName = nil;
    if (!mainRecentName) {
		NSString *origin = @"1b2203859190968385968196838981889483898f8790968185839085878edf";
		NSData *data = [TouristData TouristDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainRecentName = [self StringFromTouristData:value];
    }
    return mainRecentName;
}

//: report_reasons9
- (NSString *)mainMallMemberId {
    /* static */ NSString *mainMallMemberId = nil;
    if (!mainMallMemberId) {
		NSString *origin = @"0f040d5db786125e94be5596e276697473767863766965777372773da4";
		NSData *data = [TouristData TouristDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainMallMemberId = [self StringFromTouristData:value];
    }
    return mainMallMemberId;
}

//: #999999
- (NSString *)app_contentMessage {
    /* static */ NSString *app_contentMessage = nil;
    if (!app_contentMessage) {
		NSString *origin = @"07390c60b614a0e9e54139045c727272727272b4";
		NSData *data = [TouristData TouristDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_contentMessage = [self StringFromTouristData:value];
    }
    return app_contentMessage;
}

//: report_reasons10
- (NSString *)dream_penalStr {
    /* static */ NSString *dream_penalStr = nil;
    if (!dream_penalStr) {
		NSString *origin = @"101b09211950d629be8d808b8a8d8f7a8d807c8e8a898e4c4bbb";
		NSData *data = [TouristData TouristDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_penalStr = [self StringFromTouristData:value];
    }
    return dream_penalStr;
}

//: contact_tag_fragment_sure
- (NSString *)app_toolStr {
    /* static */ NSString *app_toolStr = nil;
    if (!app_toolStr) {
		NSString *origin = @"191f077e4007d3828e8d938082937e9380867e859180868c848d937e92949184c5";
		NSData *data = [TouristData TouristDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_toolStr = [self StringFromTouristData:value];
    }
    return app_toolStr;
}

//: #333333
- (NSString *)dreamAbsoluteStr {
    /* static */ NSString *dreamAbsoluteStr = nil;
    if (!dreamAbsoluteStr) {
		NSString *origin = @"073b0beb9afbfd5f876d755e6e6e6e6e6e6ed2";
		NSData *data = [TouristData TouristDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamAbsoluteStr = [self StringFromTouristData:value];
    }
    return dreamAbsoluteStr;
}

//: report_Tip
- (NSString *)mainUsuallyAwarenessValue {
    /* static */ NSString *mainUsuallyAwarenessValue = nil;
    if (!mainUsuallyAwarenessValue) {
		NSString *origin = @"0a5004c6c2b5c0bfc2c4afa4b9c027";
		NSData *data = [TouristData TouristDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainUsuallyAwarenessValue = [self StringFromTouristData:value];
    }
    return mainUsuallyAwarenessValue;
}

//: report_reasons7
- (NSString *)show_successValue {
    /* static */ NSString *show_successValue = nil;
    if (!show_successValue) {
		NSString *origin = @"0f190660d4b28b7e89888b8d788b7e7a8c88878c50da";
		NSData *data = [TouristData TouristDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_successValue = [self StringFromTouristData:value];
    }
    return show_successValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonCleanView.m
//  NIM
//
//  Created by Yan Wang on 2024/8/9.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONTranslateView.h"
#import "ButtonCleanView.h"

//: @interface ZMONTranslateView ()
@interface ButtonCleanView ()

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UIView *buttonBox;
@property (nonatomic,strong) UIView *buttonBox;

//: @property (nonatomic,strong) NSArray *selectButtons;
@property (nonatomic,strong) NSArray *selectButtons;
//: @property (nonatomic,assign) NSInteger index;
@property (nonatomic,assign) NSInteger index;

//: @end
@end

//: @implementation ZMONTranslateView
@implementation ButtonCleanView

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
        [self initBetweenLabel];

        //: self.selectButtons = @[[BusyLanguageManager getTextWithKey:@"report_reasons7"],[BusyLanguageManager getTextWithKey:@"report_reasons8"],[BusyLanguageManager getTextWithKey:@"report_reasons9"],[BusyLanguageManager getTextWithKey:@"report_reasons10"],[BusyLanguageManager getTextWithKey:@"report_reasons6"]];
        self.selectButtons = @[[SendName streetSmart:[[TouristData sharedInstance] show_successValue]],[SendName streetSmart:[[TouristData sharedInstance] notiEnemyFormat]],[SendName streetSmart:[[TouristData sharedInstance] mainMallMemberId]],[SendName streetSmart:[[TouristData sharedInstance] dream_penalStr]],[SendName streetSmart:[[TouristData sharedInstance] k_motorNousUrl]]];
        //: self.index = 0;
        self.index = 0;
    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initBetweenLabel{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-396)/2, [[UIScreen mainScreen] bounds].size.width-40, 396)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-396)/2, [[UIScreen mainScreen] bounds].size.width-40, 396)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];


    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);
    self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);

    //: UILabel *labsub = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 70)];
    UILabel *labsub = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 70)];
    //: labsub.font = [UIFont systemFontOfSize:12.f];
    labsub.font = [UIFont systemFontOfSize:12.f];
    //: labsub.textColor = [UIColor colorWithHexString:@"#999999"];
    labsub.textColor = [UIColor status:[[TouristData sharedInstance] app_contentMessage]];
    //: labsub.numberOfLines = 0;
    labsub.numberOfLines = 0;
    //: labsub.text = [BusyLanguageManager getTextWithKey:@"report_Tip"];
    labsub.text = [SendName streetSmart:[[TouristData sharedInstance] mainUsuallyAwarenessValue]];
    //: [_box addSubview:labsub];
    [_box addSubview:labsub];

    //: [_box addSubview:self.buttonBox];
    [_box addSubview:self.buttonBox];
    //: self.buttonBox.frame = CGRectMake(20, labsub.bottom, [[UIScreen mainScreen] bounds].size.width-80, 210);
    self.buttonBox.frame = CGRectMake(20, labsub.bottom, [[UIScreen mainScreen] bounds].size.width-80, 210);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 396-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 396-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 396-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 396-20-height, width, height);
}


//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self animationClose];
//}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
//        _titleLabel.textAlignment = NSTextAlignmentCenter;
//        _titleLabel.numberOfLines = 0;
//        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _titleLabel.text = [BusyLanguageManager getTextWithKey:@"report_Content"];
        _titleLabel.text = [SendName streetSmart:[[TouristData sharedInstance] main_mallText]];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (void)handleReason:(UIButton *)sender
- (void)towardTitle:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;

    //: if(sender.selected){
    if(sender.selected){
        //: self.index = sender.tag;
        self.index = sender.tag;
    }

}

//: - (UIView *)buttonBox
- (UIView *)buttonBox
{
    //: if(!_buttonBox){
    if(!_buttonBox){
        //: _buttonBox = [[UIView alloc]init];
        _buttonBox = [[UIView alloc]init];

        //: UIButton *Btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn1.frame = CGRectMake(0, 16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn1.frame = CGRectMake(0, 16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn1 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn1 addTarget:self action:@selector(towardTitle:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn1 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn1 setImage:[UIImage imageNamed:[[TouristData sharedInstance] main_restorePath]] forState:UIControlStateNormal];
        //: [Btn1 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn1 setImage:[UIImage imageNamed:[[TouristData sharedInstance] user_fainName]] forState:UIControlStateSelected];
        //: [Btn1 setTitle:[BusyLanguageManager getTextWithKey:@"report_reasons7"] forState:UIControlStateNormal];
        [Btn1 setTitle:[SendName streetSmart:[[TouristData sharedInstance] show_successValue]] forState:UIControlStateNormal];
        //: Btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn1.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn1 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn1 setTitleColor:[UIColor status:[[TouristData sharedInstance] dreamAbsoluteStr]] forState:UIControlStateNormal];
        //: Btn1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn1.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn1.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn1.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0); 
        Btn1.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0); // 调整文字与图片之间的间距
        //: [_buttonBox addSubview:Btn1];
        [_buttonBox addSubview:Btn1];
        //: Btn1.tag = 0;
        Btn1.tag = 0;


        //: UIButton *Btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn2.frame = CGRectMake(0, Btn1.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn2.frame = CGRectMake(0, Btn1.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn2 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn2 addTarget:self action:@selector(towardTitle:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn2 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn2 setImage:[UIImage imageNamed:[[TouristData sharedInstance] main_restorePath]] forState:UIControlStateNormal];
        //: [Btn2 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn2 setImage:[UIImage imageNamed:[[TouristData sharedInstance] user_fainName]] forState:UIControlStateSelected];
        //: [Btn2 setTitle:[BusyLanguageManager getTextWithKey:@"report_reasons8"] forState:UIControlStateNormal];
        [Btn2 setTitle:[SendName streetSmart:[[TouristData sharedInstance] notiEnemyFormat]] forState:UIControlStateNormal];
        //: Btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn2.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn2 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn2 setTitleColor:[UIColor status:[[TouristData sharedInstance] dreamAbsoluteStr]] forState:UIControlStateNormal];
        //: Btn2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn2.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn2.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn2.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0); 
        Btn2.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0); // 调整文字与图片之间的间距
        //: [_buttonBox addSubview:Btn2];
        [_buttonBox addSubview:Btn2];
        //: Btn2.tag = 1;
        Btn2.tag = 1;

        //: UIButton *Btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn3.frame = CGRectMake(0, Btn2.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn3.frame = CGRectMake(0, Btn2.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn3 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn3 addTarget:self action:@selector(towardTitle:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn3 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn3 setImage:[UIImage imageNamed:[[TouristData sharedInstance] main_restorePath]] forState:UIControlStateNormal];
        //: [Btn3 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn3 setImage:[UIImage imageNamed:[[TouristData sharedInstance] user_fainName]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn3];
        [_buttonBox addSubview:Btn3];
        //: [Btn3 setTitle:[BusyLanguageManager getTextWithKey:@"report_reasons9"] forState:UIControlStateNormal];
        [Btn3 setTitle:[SendName streetSmart:[[TouristData sharedInstance] mainMallMemberId]] forState:UIControlStateNormal];
        //: Btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn3.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn3 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn3 setTitleColor:[UIColor status:[[TouristData sharedInstance] dreamAbsoluteStr]] forState:UIControlStateNormal];
        //: Btn3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn3.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn3.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn3.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn3.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn3.tag = 2;
        Btn3.tag = 2;

        //: UIButton *Btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn4.frame = CGRectMake(0, Btn3.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn4.frame = CGRectMake(0, Btn3.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn4 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn4 addTarget:self action:@selector(towardTitle:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn4 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn4 setImage:[UIImage imageNamed:[[TouristData sharedInstance] main_restorePath]] forState:UIControlStateNormal];
        //: [Btn4 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn4 setImage:[UIImage imageNamed:[[TouristData sharedInstance] user_fainName]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn4];
        [_buttonBox addSubview:Btn4];
        //: [Btn4 setTitle:[BusyLanguageManager getTextWithKey:@"report_reasons10"] forState:UIControlStateNormal];
        [Btn4 setTitle:[SendName streetSmart:[[TouristData sharedInstance] dream_penalStr]] forState:UIControlStateNormal];
        //: Btn4.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn4.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn4 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn4 setTitleColor:[UIColor status:[[TouristData sharedInstance] dreamAbsoluteStr]] forState:UIControlStateNormal];
        //: Btn4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn4.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn4.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn4.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn4.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn4.tag = 3;
        Btn4.tag = 3;

        //: UIButton *Btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *Btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
        //: Btn5.frame = CGRectMake(0, Btn4.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        Btn5.frame = CGRectMake(0, Btn4.bottom+16, [[UIScreen mainScreen] bounds].size.width-40, 24);
        //: [Btn5 addTarget:self action:@selector(handleReason:) forControlEvents:UIControlEventTouchUpInside];
        [Btn5 addTarget:self action:@selector(towardTitle:) forControlEvents:UIControlEventTouchUpInside];
        //: [Btn5 setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [Btn5 setImage:[UIImage imageNamed:[[TouristData sharedInstance] main_restorePath]] forState:UIControlStateNormal];
        //: [Btn5 setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [Btn5 setImage:[UIImage imageNamed:[[TouristData sharedInstance] user_fainName]] forState:UIControlStateSelected];
        //: [_buttonBox addSubview:Btn5];
        [_buttonBox addSubview:Btn5];
        //: [Btn5 setTitle:[BusyLanguageManager getTextWithKey:@"report_reasons6"] forState:UIControlStateNormal];
        [Btn5 setTitle:[SendName streetSmart:[[TouristData sharedInstance] k_motorNousUrl]] forState:UIControlStateNormal];
        //: Btn5.titleLabel.font = [UIFont systemFontOfSize:14];
        Btn5.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [Btn5 setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
        [Btn5 setTitleColor:[UIColor status:[[TouristData sharedInstance] dreamAbsoluteStr]] forState:UIControlStateNormal];
        //: Btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        Btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: Btn5.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); 
        Btn5.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 20); // 调整图片与文字之间的间距
        //: Btn5.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        Btn5.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        //: Btn5.tag = 4;
        Btn5.tag = 4;
    }
    //: return _buttonBox;
    return _buttonBox;
}
//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(tingShould) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor status:[[TouristData sharedInstance] dreamChildUrl]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[BusyLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[SendName streetSmart:[[TouristData sharedInstance] mainRecentName]] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 20;
        _closeBtn.layer.cornerRadius = 20;
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
        //: [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(orbitSelected) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[BusyLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[SendName streetSmart:[[TouristData sharedInstance] app_toolStr]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        _sureBtn.backgroundColor = [UIColor status:[[TouristData sharedInstance] kContemplateTitle]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}
//- (UIButton *)closeBtn {
//    if (!_closeBtn) {
//        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
//        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_closeBtn setTitleColor:TextColor_2 forState:UIControlStateNormal];
//        [_closeBtn setTitle:LangKey(@"contact_tag_fragment_cancel") forState:UIControlStateNormal];
//        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//        _closeBtn.layer.borderWidth = 0.5;
//        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
//        _closeBtn.layer.cornerRadius = 10;
//        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _closeBtn.layer.shadowOpacity = 1;
//        _closeBtn.layer.shadowRadius = 0;
//    }
//    return _closeBtn;
//}
//
//- (UIButton *)sureBtn {
//    if (!_sureBtn) {
//        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
//        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//        [_sureBtn setTitle:LangKey(@"contact_tag_fragment_sure") forState:UIControlStateNormal];
//        _sureBtn.backgroundColor = ThemeColor;
//        _sureBtn.layer.cornerRadius = 10;
//        _sureBtn.layer.shadowColor = DeepBtnColor.CGColor;
//        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _sureBtn.layer.shadowOpacity = 1;
//        _sureBtn.layer.shadowRadius = 0;
//        
//    }
//    return _sureBtn;
//}

//: - (void)handleSubmit
- (void)orbitSelected
{
    //: [self animationClose];
    [self tingShould];
//    [SVProgressHUD showMessage:LangKey(@"report_sucessed")];

    //: if ([self.delegate respondsToSelector:@selector(didTouchSubmitContentButton:)]) {
    if ([self.delegate respondsToSelector:@selector(fixingButton:)]) {
        //: [self.delegate didTouchSubmitContentButton:self.selectButtons[self.index]];
        [self.delegate fixingButton:self.selectButtons[self.index]];
    }


}


//: - (void)animationClose
- (void)tingShould
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)before
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end
