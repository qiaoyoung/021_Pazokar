
#import <Foundation/Foundation.h>

typedef struct {
    Byte contentCorner;
    Byte *recordCell;
    unsigned int objectSuccess;
} StructFileNearlyData;

@interface FileNearlyData : NSObject

+ (instancetype)sharedInstance;

//: 999999
@property (nonatomic, copy) NSString *app_ecruFormat;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *noti_honestlyTitle;

//: #FF483D
@property (nonatomic, copy) NSString *mClickFullName;

//: #5D5F66
@property (nonatomic, copy) NSString *dreamTightenNameStr;

//: warm_prompt
@property (nonatomic, copy) NSString *k_clickIdent;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *app_disappointedValue;

@end

@implementation FileNearlyData

+ (instancetype)sharedInstance {
    static FileNearlyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)FileNearlyDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)FileNearlyDataToByte:(StructFileNearlyData *)data {
    for (int i = 0; i < data->objectSuccess; i++) {
        data->recordCell[i] ^= data->contentCorner;
    }
    data->recordCell[data->objectSuccess] = 0;
    return data->recordCell;
}

- (NSString *)StringFromFileNearlyData:(StructFileNearlyData *)data {
    return [NSString stringWithUTF8String:(char *)[self FileNearlyDataToByte:data]];
}

//: contact_tag_fragment_sure
- (NSString *)noti_honestlyTitle {
    if (!_noti_honestlyTitle) {
		NSArray<NSNumber *> *origin = @[@58, @54, @55, @45, @56, @58, @45, @6, @45, @56, @62, @6, @63, @43, @56, @62, @52, @60, @55, @45, @6, @42, @44, @43, @60, @193];
		NSData *data = [FileNearlyData FileNearlyDataToData:origin];
        StructFileNearlyData value = (StructFileNearlyData){89, (Byte *)data.bytes, 25};
        _noti_honestlyTitle = [self StringFromFileNearlyData:&value];
    }
    return _noti_honestlyTitle;
}

//: warm_prompt
- (NSString *)k_clickIdent {
    if (!_k_clickIdent) {
		NSArray<NSNumber *> *origin = @[@23, @1, @18, @13, @63, @16, @18, @15, @13, @16, @20, @206];
		NSData *data = [FileNearlyData FileNearlyDataToData:origin];
        StructFileNearlyData value = (StructFileNearlyData){96, (Byte *)data.bytes, 11};
        _k_clickIdent = [self StringFromFileNearlyData:&value];
    }
    return _k_clickIdent;
}

//: #5D5F66
- (NSString *)dreamTightenNameStr {
    if (!_dreamTightenNameStr) {
		NSArray<NSNumber *> *origin = @[@250, @236, @157, @236, @159, @239, @239, @168];
		NSData *data = [FileNearlyData FileNearlyDataToData:origin];
        StructFileNearlyData value = (StructFileNearlyData){217, (Byte *)data.bytes, 7};
        _dreamTightenNameStr = [self StringFromFileNearlyData:&value];
    }
    return _dreamTightenNameStr;
}

//: contact_tag_fragment_cancel
- (NSString *)app_disappointedValue {
    if (!_app_disappointedValue) {
		NSArray<NSNumber *> *origin = @[@196, @200, @201, @211, @198, @196, @211, @248, @211, @198, @192, @248, @193, @213, @198, @192, @202, @194, @201, @211, @248, @196, @198, @201, @196, @194, @203, @3];
		NSData *data = [FileNearlyData FileNearlyDataToData:origin];
        StructFileNearlyData value = (StructFileNearlyData){167, (Byte *)data.bytes, 27};
        _app_disappointedValue = [self StringFromFileNearlyData:&value];
    }
    return _app_disappointedValue;
}

//: #FF483D
- (NSString *)mClickFullName {
    if (!_mClickFullName) {
		NSArray<NSNumber *> *origin = @[@196, @161, @161, @211, @223, @212, @163, @58];
		NSData *data = [FileNearlyData FileNearlyDataToData:origin];
        StructFileNearlyData value = (StructFileNearlyData){231, (Byte *)data.bytes, 7};
        _mClickFullName = [self StringFromFileNearlyData:&value];
    }
    return _mClickFullName;
}

//: 999999
- (NSString *)app_ecruFormat {
    if (!_app_ecruFormat) {
		NSArray<NSNumber *> *origin = @[@137, @137, @137, @137, @137, @137, @233];
		NSData *data = [FileNearlyData FileNearlyDataToData:origin];
        StructFileNearlyData value = (StructFileNearlyData){176, (Byte *)data.bytes, 6};
        _app_ecruFormat = [self StringFromFileNearlyData:&value];
    }
    return _app_ecruFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CanView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONAlartView.h"
#import "CanView.h"

//: @interface ZMONAlartView ()
@interface CanView ()

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @end
@end

//: @implementation ZMONAlartView
@implementation CanView

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
        [self initVertical];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initVertical{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-156)/2, [[UIScreen mainScreen] bounds].size.width-40, 156)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-156)/2, [[UIScreen mainScreen] bounds].size.width-40, 156)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    //: tip.font = [UIFont boldSystemFontOfSize:18.f];
    tip.font = [UIFont boldSystemFontOfSize:18.f];
    //: tip.textColor = [UIColor blackColor];
    tip.textColor = [UIColor blackColor];
    //: tip.textAlignment = NSTextAlignmentCenter;
    tip.textAlignment = NSTextAlignmentCenter;
    //: tip.text = [BusyLanguageManager getTextWithKey:@"warm_prompt"];
    tip.text = [SendName streetSmart:[FileNearlyData sharedInstance].k_clickIdent];
    //: [_box addSubview:tip];
    [_box addSubview:tip];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, tip.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 40);
    self.titleLabel.frame = CGRectMake(20, tip.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 40);


    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 156-height-10, width, height);
    self.closeBtn.frame = CGRectMake(20, 156-height-10, width, height);
    //: self.sureBtn.frame = CGRectMake(width+40, 156-height-10, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 156-height-10, width, height);


}

//: - (void)reloadWithTitlename:(NSString *)name
- (void)completeOf:(NSString *)name
{
    //: self.titleLabel.text = name;
    self.titleLabel.text = name;
}

//: - (void)handleSubmit{
- (void)orbitSelected{

    //: [self endEditing:YES];
    [self endEditing:YES];
    //: self.speiceBackBlock(@"");
    self.speiceBackBlock(@"");

}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:12.f];
        _titleLabel.font = [UIFont systemFontOfSize:12.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"999999"];
        _titleLabel.textColor = [UIColor status:[FileNearlyData sharedInstance].app_ecruFormat];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    //: return _titleLabel;
    return _titleLabel;
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
        [_closeBtn setTitleColor:[UIColor status:[FileNearlyData sharedInstance].dreamTightenNameStr] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[BusyLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[SendName streetSmart:[FileNearlyData sharedInstance].app_disappointedValue] forState:UIControlStateNormal];
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
        [_sureBtn setTitle:[SendName streetSmart:[FileNearlyData sharedInstance].noti_honestlyTitle] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor status:[FileNearlyData sharedInstance].mClickFullName];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)animationClose
- (void)tingShould
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)equal
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end
