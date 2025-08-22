
#import <Foundation/Foundation.h>

typedef struct {
    Byte laughAway;
    Byte *gateRegarding;
    unsigned int clickLabel;
	int overseeTourist;
} StructChronicleData;

@interface ChronicleData : NSObject

+ (instancetype)sharedInstance;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *noti_fromTitle;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *kAfterOverseeMessage;

//: #FF483D
@property (nonatomic, copy) NSString *mainReloadId;

//: #2C3042
@property (nonatomic, copy) NSString *main_numberName;

//: account_delete_tip2
@property (nonatomic, copy) NSString *notiVoiceIdent;

//: account_delete_tip1
@property (nonatomic, copy) NSString *app_dismissMsg;

//: #5D5F66
@property (nonatomic, copy) NSString *noti_nextUrl;

//: activity_comment_setting_cancel_account
@property (nonatomic, copy) NSString *mMigrationData;

//: #333333
@property (nonatomic, copy) NSString *k_emphasizeUrl;

@end

@implementation ChronicleData

+ (instancetype)sharedInstance {
    static ChronicleData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ChronicleDataToData:(NSString *)value {
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

- (Byte *)ChronicleDataToByte:(StructChronicleData *)data {
    for (int i = 0; i < data->clickLabel; i++) {
        data->gateRegarding[i] ^= data->laughAway;
    }
    data->gateRegarding[data->clickLabel] = 0;
	if (data->clickLabel >= 1) {
		data->overseeTourist = data->gateRegarding[0];
	}
    return data->gateRegarding;
}

- (NSString *)StringFromChronicleData:(StructChronicleData *)data {
    return [NSString stringWithUTF8String:(char *)[self ChronicleDataToByte:data]];
}

//: account_delete_tip1
- (NSString *)app_dismissMsg {
    if (!_app_dismissMsg) {
		NSString *origin = @"0200000C160D173C07060F0617063C170A13520D";
		NSData *data = [ChronicleData ChronicleDataToData:origin];
        StructChronicleData value = (StructChronicleData){99, (Byte *)data.bytes, 19, 98};
        _app_dismissMsg = [self StringFromChronicleData:&value];
    }
    return _app_dismissMsg;
}

//: #FF483D
- (NSString *)mainReloadId {
    if (!_mainReloadId) {
		NSString *origin = @"FE9B9BE9E5EE9953";
		NSData *data = [ChronicleData ChronicleDataToData:origin];
        StructChronicleData value = (StructChronicleData){221, (Byte *)data.bytes, 7, 195};
        _mainReloadId = [self StringFromChronicleData:&value];
    }
    return _mainReloadId;
}

//: contact_tag_fragment_cancel
- (NSString *)noti_fromTitle {
    if (!_noti_fromTitle) {
		NSString *origin = @"666A6B716466715A7164625A6377646268606B715A66646B6660694D";
		NSData *data = [ChronicleData ChronicleDataToData:origin];
        StructChronicleData value = (StructChronicleData){5, (Byte *)data.bytes, 27, 23};
        _noti_fromTitle = [self StringFromChronicleData:&value];
    }
    return _noti_fromTitle;
}

//: #2C3042
- (NSString *)main_numberName {
    if (!_main_numberName) {
		NSString *origin = @"B7A6D7A7A4A0A636";
		NSData *data = [ChronicleData ChronicleDataToData:origin];
        StructChronicleData value = (StructChronicleData){148, (Byte *)data.bytes, 7, 205};
        _main_numberName = [self StringFromChronicleData:&value];
    }
    return _main_numberName;
}

//: contact_tag_fragment_sure
- (NSString *)kAfterOverseeMessage {
    if (!_kAfterOverseeMessage) {
		NSString *origin = @"C2CECFD5C0C2D5FED5C0C6FEC7D3C0C6CCC4CFD5FED2D4D3C4DD";
		NSData *data = [ChronicleData ChronicleDataToData:origin];
        StructChronicleData value = (StructChronicleData){161, (Byte *)data.bytes, 25, 172};
        _kAfterOverseeMessage = [self StringFromChronicleData:&value];
    }
    return _kAfterOverseeMessage;
}

//: account_delete_tip2
- (NSString *)notiVoiceIdent {
    if (!_notiVoiceIdent) {
		NSString *origin = @"BFBDBDB1ABB0AA81BABBB2BBAABB81AAB7AEEC35";
		NSData *data = [ChronicleData ChronicleDataToData:origin];
        StructChronicleData value = (StructChronicleData){222, (Byte *)data.bytes, 19, 232};
        _notiVoiceIdent = [self StringFromChronicleData:&value];
    }
    return _notiVoiceIdent;
}

//: #5D5F66
- (NSString *)noti_nextUrl {
    if (!_noti_nextUrl) {
		NSString *origin = @"5E4839483B4B4B9C";
		NSData *data = [ChronicleData ChronicleDataToData:origin];
        StructChronicleData value = (StructChronicleData){125, (Byte *)data.bytes, 7, 84};
        _noti_nextUrl = [self StringFromChronicleData:&value];
    }
    return _noti_nextUrl;
}

//: activity_comment_setting_cancel_account
- (NSString *)mMigrationData {
    if (!_mMigrationData) {
		NSString *origin = @"585A4D504F504D40665A5654545C574D664A5C4D4D50575E665A58575A5C5566585A5A564C574D33";
		NSData *data = [ChronicleData ChronicleDataToData:origin];
        StructChronicleData value = (StructChronicleData){57, (Byte *)data.bytes, 39, 60};
        _mMigrationData = [self StringFromChronicleData:&value];
    }
    return _mMigrationData;
}

//: #333333
- (NSString *)k_emphasizeUrl {
    if (!_k_emphasizeUrl) {
		NSString *origin = @"4C5C5C5C5C5C5CDA";
		NSData *data = [ChronicleData ChronicleDataToData:origin];
        StructChronicleData value = (StructChronicleData){111, (Byte *)data.bytes, 7, 64};
        _k_emphasizeUrl = [self StringFromChronicleData:&value];
    }
    return _k_emphasizeUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FormatView.m
//  Riverla
//
//  Created by mac on 2025/5/16.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DeleteAccountTipView.h"
#import "FormatView.h"

//: @interface DeleteAccountTipView ()
@interface FormatView ()

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIView *contentBox;
@property (nonatomic,strong) UIView *contentBox;

//: @end
@end

//: @implementation DeleteAccountTipView
@implementation FormatView

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
        [self initMagnitudeUi];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initMagnitudeUi{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-250)/2, [[UIScreen mainScreen] bounds].size.width-30, 250)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-250)/2, [[UIScreen mainScreen] bounds].size.width-30, 250)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-30, 20);


    //: [_box addSubview:self.contentBox];
    [_box addSubview:self.contentBox];
    //: self.contentBox.frame = CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 160);
    self.contentBox.frame = CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 160);


    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
}



//: - (void)handleSubmit
- (void)orbitSelected
{
    //: [self animationClose];
    [self tingShould];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteSureButton)]) {
    if ([self.delegate respondsToSelector:@selector(numberAction)]) {
        //: [self.delegate didTouchDeleteSureButton];
        [self.delegate numberAction];
    }

}

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
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor status:[ChronicleData sharedInstance].main_numberName];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        _titleLabel.text = [SendName streetSmart:[ChronicleData sharedInstance].mMigrationData];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIView *)contentBox
- (UIView *)contentBox
{
    //: if(!_contentBox){
    if(!_contentBox){
        //: _contentBox = [[UIView alloc]init];
        _contentBox = [[UIView alloc]init];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40);
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40);

        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        //: labtitle1.font = [UIFont systemFontOfSize:14.f];
        labtitle1.font = [UIFont systemFontOfSize:14.f];
        //: labtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle1.textColor = [UIColor status:[ChronicleData sharedInstance].k_emphasizeUrl];
        //: labtitle1.text = [FFFLanguageManager getTextWithKey:@"account_delete_tip1"];
        labtitle1.text = [SendName streetSmart:[ChronicleData sharedInstance].app_dismissMsg];
        //: labtitle1.numberOfLines = 0;
        labtitle1.numberOfLines = 0;
        //: [_contentBox addSubview:labtitle1];
        [_contentBox addSubview:labtitle1];
        //: [labtitle1 sizeToFit];
        [labtitle1 sizeToFit];

        //: UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom+10, width, 70)];
        UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom+10, width, 70)];
        //: labsubtitle1.font = [UIFont systemFontOfSize:14.f];
        labsubtitle1.font = [UIFont systemFontOfSize:14.f];
        //: labsubtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle1.textColor = [UIColor status:[ChronicleData sharedInstance].k_emphasizeUrl];
        //: labsubtitle1.text = [FFFLanguageManager getTextWithKey:@"account_delete_tip2"];
        labsubtitle1.text = [SendName streetSmart:[ChronicleData sharedInstance].notiVoiceIdent];
        //: labsubtitle1.numberOfLines = 0;
        labsubtitle1.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle1];
        [_contentBox addSubview:labsubtitle1];
        //: [labsubtitle1 sizeToFit];
        [labsubtitle1 sizeToFit];

    }
    //: return _contentBox;
    return _contentBox;
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
        [_closeBtn setTitleColor:[UIColor status:[ChronicleData sharedInstance].noti_nextUrl] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[SendName streetSmart:[ChronicleData sharedInstance].noti_fromTitle] forState:UIControlStateNormal];
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
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[SendName streetSmart:[ChronicleData sharedInstance].kAfterOverseeMessage] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor status:[ChronicleData sharedInstance].mainReloadId];
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
- (void)brand
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end