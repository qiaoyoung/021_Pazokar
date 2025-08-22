
#import <Foundation/Foundation.h>

typedef struct {
    Byte mBar;
    Byte *erase;
    unsigned int fromMin;
	int fork;
	int controlInput;
	int dredge;
} StructManagerData;

@interface ManagerData : NSObject

+ (instancetype)sharedInstance;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *kBackgroundTitle;

//: #333333
@property (nonatomic, copy) NSString *main_rangeMsg;

//: #02D8C9
@property (nonatomic, copy) NSString *k_pathName;

//: #5D5F66
@property (nonatomic, copy) NSString *kReplyFormat;

//: report_next_select_delete
@property (nonatomic, copy) NSString *k_optionId;

//: YES
@property (nonatomic, copy) NSString *user_redTitle;

//: delete
@property (nonatomic, copy) NSString *showNextMessage;

//: user_profile_avtivity_remove_friend
@property (nonatomic, copy) NSString *showManagerId;

@end

@implementation ManagerData

+ (instancetype)sharedInstance {
    static ManagerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ManagerDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ManagerDataToByte:(StructManagerData *)data {
    for (int i = 0; i < data->fromMin; i++) {
        data->erase[i] ^= data->mBar;
    }
    data->erase[data->fromMin] = 0;
	if (data->fromMin >= 3) {
		data->fork = data->erase[0];
		data->controlInput = data->erase[1];
		data->dredge = data->erase[2];
	}
    return data->erase;
}

- (NSString *)StringFromManagerData:(StructManagerData *)data {
    return [NSString stringWithUTF8String:(char *)[self ManagerDataToByte:data]];
}

//: contact_tag_fragment_cancel
- (NSString *)kBackgroundTitle {
    if (!_kBackgroundTitle) {
		NSArray<NSNumber *> *origin = @[@158, @146, @147, @137, @156, @158, @137, @162, @137, @156, @154, @162, @155, @143, @156, @154, @144, @152, @147, @137, @162, @158, @156, @147, @158, @152, @145, @190];
		NSData *data = [ManagerData ManagerDataToData:origin];
        StructManagerData value = (StructManagerData){253, (Byte *)data.bytes, 27, 184, 228, 228};
        _kBackgroundTitle = [self StringFromManagerData:&value];
    }
    return _kBackgroundTitle;
}

//: YES
- (NSString *)user_redTitle {
    if (!_user_redTitle) {
		NSArray<NSNumber *> *origin = @[@205, @209, @199, @148];
		NSData *data = [ManagerData ManagerDataToData:origin];
        StructManagerData value = (StructManagerData){148, (Byte *)data.bytes, 3, 206, 247, 201};
        _user_redTitle = [self StringFromManagerData:&value];
    }
    return _user_redTitle;
}

//: #02D8C9
- (NSString *)k_pathName {
    if (!_k_pathName) {
		NSArray<NSNumber *> *origin = @[@215, @196, @198, @176, @204, @183, @205, @54];
		NSData *data = [ManagerData ManagerDataToData:origin];
        StructManagerData value = (StructManagerData){244, (Byte *)data.bytes, 7, 169, 107, 54};
        _k_pathName = [self StringFromManagerData:&value];
    }
    return _k_pathName;
}

//: #5D5F66
- (NSString *)kReplyFormat {
    if (!_kReplyFormat) {
		NSArray<NSNumber *> *origin = @[@26, @12, @125, @12, @127, @15, @15, @99];
		NSData *data = [ManagerData ManagerDataToData:origin];
        StructManagerData value = (StructManagerData){57, (Byte *)data.bytes, 7, 19, 211, 203};
        _kReplyFormat = [self StringFromManagerData:&value];
    }
    return _kReplyFormat;
}

//: delete
- (NSString *)showNextMessage {
    if (!_showNextMessage) {
		NSArray<NSNumber *> *origin = @[@71, @70, @79, @70, @87, @70, @9];
		NSData *data = [ManagerData ManagerDataToData:origin];
        StructManagerData value = (StructManagerData){35, (Byte *)data.bytes, 6, 237, 71, 4};
        _showNextMessage = [self StringFromManagerData:&value];
    }
    return _showNextMessage;
}

//: report_next_select_delete
- (NSString *)k_optionId {
    if (!_k_optionId) {
		NSArray<NSNumber *> *origin = @[@211, @196, @209, @206, @211, @213, @254, @207, @196, @217, @213, @254, @210, @196, @205, @196, @194, @213, @254, @197, @196, @205, @196, @213, @196, @96];
		NSData *data = [ManagerData ManagerDataToData:origin];
        StructManagerData value = (StructManagerData){161, (Byte *)data.bytes, 25, 93, 91, 139};
        _k_optionId = [self StringFromManagerData:&value];
    }
    return _k_optionId;
}

//: user_profile_avtivity_remove_friend
- (NSString *)showManagerId {
    if (!_showManagerId) {
		NSArray<NSNumber *> *origin = @[@14, @8, @30, @9, @36, @11, @9, @20, @29, @18, @23, @30, @36, @26, @13, @15, @18, @13, @18, @15, @2, @36, @9, @30, @22, @20, @13, @30, @36, @29, @9, @18, @30, @21, @31, @172];
		NSData *data = [ManagerData ManagerDataToData:origin];
        StructManagerData value = (StructManagerData){123, (Byte *)data.bytes, 35, 33, 69, 216};
        _showManagerId = [self StringFromManagerData:&value];
    }
    return _showManagerId;
}

//: #333333
- (NSString *)main_rangeMsg {
    if (!_main_rangeMsg) {
		NSArray<NSNumber *> *origin = @[@98, @114, @114, @114, @114, @114, @114, @40];
		NSData *data = [ManagerData ManagerDataToData:origin];
        StructManagerData value = (StructManagerData){65, (Byte *)data.bytes, 7, 27, 184, 75};
        _main_rangeMsg = [self StringFromManagerData:&value];
    }
    return _main_rangeMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OnRedView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/17.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportDeleteView.h"
#import "OnRedView.h"
//: #import "NTESBundleSetting.h"
#import "EnvironmentSetting.h"

//: @interface ZMONReportDeleteView ()
@interface OnRedView ()

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

//: @implementation ZMONReportDeleteView
@implementation OnRedView

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
        [self initAccumulation];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initAccumulation{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-196)/2, [[UIScreen mainScreen] bounds].size.width-40, 196)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-196)/2, [[UIScreen mainScreen] bounds].size.width-40, 196)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20);
    self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-40, 20);

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width-80, 50)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width-80, 50)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"#333333"];
    labsubLabel.textColor = [UIColor status:[ManagerData sharedInstance].main_rangeMsg];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [BusyLanguageManager getTextWithKey:@"report_next_select_delete"];
    labsubLabel.text = [SendName streetSmart:[ManagerData sharedInstance].k_optionId];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 196-height-20, width, height);
    self.closeBtn.frame = CGRectMake(20, 196-height-20, width, height);
    //: self.sureBtn.frame = CGRectMake(width+40, 196-height-20, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 196-height-20, width, height);


}

//: - (void)showAnimation
- (void)countryDomain
{
    //: [self animationClose];
    [self tingShould];

    //: self.speiceBackBlock(@"YES");
    self.speiceBackBlock([ManagerData sharedInstance].user_redTitle);
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
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [BusyLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"];
        _titleLabel.text = [SendName streetSmart:[ManagerData sharedInstance].showManagerId];
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
        [_closeBtn setTitleColor:[UIColor status:[ManagerData sharedInstance].kReplyFormat] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[BusyLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[SendName streetSmart:[ManagerData sharedInstance].kBackgroundTitle] forState:UIControlStateNormal];
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
        //: [_sureBtn addTarget:self action:@selector(showAnimation) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(countryDomain) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[BusyLanguageManager getTextWithKey:@"delete"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[SendName streetSmart:[ManagerData sharedInstance].showNextMessage] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        _sureBtn.backgroundColor = [UIColor status:[ManagerData sharedInstance].k_pathName];
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
- (void)user
{
    //: self.hidden = NO;
    self.hidden = NO;

}

//: @end
@end
