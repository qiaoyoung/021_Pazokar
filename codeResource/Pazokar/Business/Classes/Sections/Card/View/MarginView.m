
#import <Foundation/Foundation.h>

typedef struct {
    Byte controlRed;
    Byte *memberView;
    unsigned int unsloped;
	int visualisationObject;
	int sass;
} StructNameDismissData;

@interface NameDismissData : NSObject

@end

@implementation NameDismissData

+ (NSData *)NameDismissDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)NameDismissDataToByte:(StructNameDismissData *)data {
    for (int i = 0; i < data->unsloped; i++) {
        data->memberView[i] ^= data->controlRed;
    }
    data->memberView[data->unsloped] = 0;
	if (data->unsloped >= 2) {
		data->visualisationObject = data->memberView[0];
		data->sass = data->memberView[1];
	}
    return data->memberView;
}

+ (NSString *)StringFromNameDismissData:(StructNameDismissData *)data {
    return [NSString stringWithUTF8String:(char *)[self NameDismissDataToByte:data]];
}

//: contact_tag_fragment_cancel
+ (NSString *)app_listDismissManagerIdent {
    /* static */ NSString *app_listDismissManagerIdent = nil;
    if (!app_listDismissManagerIdent) {
		NSArray<NSNumber *> *origin = @[@158, @146, @147, @137, @156, @158, @137, @162, @137, @156, @154, @162, @155, @143, @156, @154, @144, @152, @147, @137, @162, @158, @156, @147, @158, @152, @145, @55];
		NSData *data = [NameDismissData NameDismissDataToData:origin];
        StructNameDismissData value = (StructNameDismissData){253, (Byte *)data.bytes, 27, 119, 128};
        app_listDismissManagerIdent = [self StringFromNameDismissData:&value];
    }
    return app_listDismissManagerIdent;
}

//: #02D8C9
+ (NSString *)dreamTitleFormat {
    /* static */ NSString *dreamTitleFormat = nil;
    if (!dreamTitleFormat) {
		NSArray<NSNumber *> *origin = @[@23, @4, @6, @112, @12, @119, @13, @119];
		NSData *data = [NameDismissData NameDismissDataToData:origin];
        StructNameDismissData value = (StructNameDismissData){52, (Byte *)data.bytes, 7, 88, 33};
        dreamTitleFormat = [self StringFromNameDismissData:&value];
    }
    return dreamTitleFormat;
}

//: #FAF8FD
+ (NSString *)main_childValue {
    /* static */ NSString *main_childValue = nil;
    if (!main_childValue) {
		NSArray<NSNumber *> *origin = @[@26, @127, @120, @127, @1, @127, @125, @155];
		NSData *data = [NameDismissData NameDismissDataToData:origin];
        StructNameDismissData value = (StructNameDismissData){57, (Byte *)data.bytes, 7, 85, 57};
        main_childValue = [self StringFromNameDismissData:&value];
    }
    return main_childValue;
}

//: report_next_select
+ (NSString *)kSourceMessage {
    /* static */ NSString *kSourceMessage = nil;
    if (!kSourceMessage) {
		NSArray<NSNumber *> *origin = @[@138, @157, @136, @151, @138, @140, @167, @150, @157, @128, @140, @167, @139, @157, @148, @157, @155, @140, @236];
		NSData *data = [NameDismissData NameDismissDataToData:origin];
        StructNameDismissData value = (StructNameDismissData){248, (Byte *)data.bytes, 18, 238, 113};
        kSourceMessage = [self StringFromNameDismissData:&value];
    }
    return kSourceMessage;
}

//: contact_tag_fragment_sure
+ (NSString *)k_cellUrl {
    /* static */ NSString *k_cellUrl = nil;
    if (!k_cellUrl) {
		NSArray<NSNumber *> *origin = @[@86, @90, @91, @65, @84, @86, @65, @106, @65, @84, @82, @106, @83, @71, @84, @82, @88, @80, @91, @65, @106, @70, @64, @71, @80, @65];
		NSData *data = [NameDismissData NameDismissDataToData:origin];
        StructNameDismissData value = (StructNameDismissData){53, (Byte *)data.bytes, 25, 178, 204};
        k_cellUrl = [self StringFromNameDismissData:&value];
    }
    return k_cellUrl;
}

//: #5D5F66
+ (NSString *)mainFactorReadNameStr {
    /* static */ NSString *mainFactorReadNameStr = nil;
    if (!mainFactorReadNameStr) {
		NSArray<NSNumber *> *origin = @[@147, @133, @244, @133, @246, @134, @134, @65];
		NSData *data = [NameDismissData NameDismissDataToData:origin];
        StructNameDismissData value = (StructNameDismissData){176, (Byte *)data.bytes, 7, 85, 77};
        mainFactorReadNameStr = [self StringFromNameDismissData:&value];
    }
    return mainFactorReadNameStr;
}

//: report_Content
+ (NSString *)dreamFullIdent {
    /* static */ NSString *dreamFullIdent = nil;
    if (!dreamFullIdent) {
		NSArray<NSNumber *> *origin = @[@3, @20, @1, @30, @3, @5, @46, @50, @30, @31, @5, @20, @31, @5, @83];
		NSData *data = [NameDismissData NameDismissDataToData:origin];
        StructNameDismissData value = (StructNameDismissData){113, (Byte *)data.bytes, 14, 214, 24};
        dreamFullIdent = [self StringFromNameDismissData:&value];
    }
    return dreamFullIdent;
}

//: activity_group_chat_avatar_add_black
+ (NSString *)noti_withSelectTitle {
    /* static */ NSString *noti_withSelectTitle = nil;
    if (!noti_withSelectTitle) {
		NSArray<NSNumber *> *origin = @[@185, @187, @172, @177, @174, @177, @172, @161, @135, @191, @170, @183, @173, @168, @135, @187, @176, @185, @172, @135, @185, @174, @185, @172, @185, @170, @135, @185, @188, @188, @135, @186, @180, @185, @187, @179, @245];
		NSData *data = [NameDismissData NameDismissDataToData:origin];
        StructNameDismissData value = (StructNameDismissData){216, (Byte *)data.bytes, 36, 101, 234};
        noti_withSelectTitle = [self StringFromNameDismissData:&value];
    }
    return noti_withSelectTitle;
}

//: ic_distrub
+ (NSString *)userPathMessage {
    /* static */ NSString *userPathMessage = nil;
    if (!userPathMessage) {
		NSArray<NSNumber *> *origin = @[@101, @111, @83, @104, @101, @127, @120, @126, @121, @110, @88];
		NSData *data = [NameDismissData NameDismissDataToData:origin];
        StructNameDismissData value = (StructNameDismissData){12, (Byte *)data.bytes, 10, 71, 19};
        userPathMessage = [self StringFromNameDismissData:&value];
    }
    return userPathMessage;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  MarginView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/20.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportHisView.h"
#import "MarginView.h"

//: @interface ZMONReportHisView ()
@interface MarginView ()

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
//: @property (nonatomic,strong) UIView *blockView;
@property (nonatomic,strong) UIView *blockView;
//: @property (nonatomic,strong) UIView *deleteView;
@property (nonatomic,strong) UIView *deleteView;

//: @end
@end

//: @implementation ZMONReportHisView
@implementation MarginView

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
        [self initDoTap];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initDoTap{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-304)/2, [[UIScreen mainScreen] bounds].size.width-40, 304)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(20, ([[UIScreen mainScreen] bounds].size.height-304)/2, [[UIScreen mainScreen] bounds].size.width-40, 304)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 24;
    _box.layer.cornerRadius = 24;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);
    self.titleLabel.frame = CGRectMake(20, 20, [[UIScreen mainScreen] bounds].size.width-80, 20);

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    labsubLabel.textColor = [UIColor status:[NameDismissData mainFactorReadNameStr]];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [FFFLanguageManager getTextWithKey:@"report_next_select"];
    labsubLabel.text = [SendName streetSmart:[NameDismissData kSourceMessage]];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];

    //: [_box addSubview:self.blockView];
    [_box addSubview:self.blockView];
    //: self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);
    self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);

//    [_box addSubview:self.deleteView];
//    self.deleteView.frame = CGRectMake(20, self.blockView.bottom+10, SCREEN_WIDTH-80, 56);

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-100)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 304-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 304-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 304-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 304-20-height, width, height);
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
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"report_Content"];
        _titleLabel.text = [SendName streetSmart:[NameDismissData dreamFullIdent]];

    }
    //: return _titleLabel;
    return _titleLabel;
}
//: - (UIView *)blockView
- (UIView *)blockView
{
    //: if (!_blockView) {
    if (!_blockView) {
        //: _blockView = [[UIView alloc]init];
        _blockView = [[UIView alloc]init];
        //: _blockView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        _blockView.backgroundColor = [UIColor status:[NameDismissData main_childValue]];
        //: _blockView.layer.cornerRadius = 28;
        _blockView.layer.cornerRadius = 28;

        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_distrub"];
        img.image = [UIImage imageNamed:[NameDismissData userPathMessage]];
        //: [_blockView addSubview:img];
        [_blockView addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        //: lab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        lab.textColor = [UIColor status:[NameDismissData mainFactorReadNameStr]];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.text = [FFFLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        lab.text = [SendName streetSmart:[NameDismissData noti_withSelectTitle]];
        //: [_blockView addSubview:lab];
        [_blockView addSubview:lab];

//        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//        btn.frame = CGRectMake(SCREEN_WIDTH-80-40, 16, 24, 24);
//        [btn addTarget:self action:@selector(handleBlock) forControlEvents:UIControlEventTouchUpInside];
//        [btn setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
//        [btn setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
//        [_blockView addSubview:btn];
    }
    //: return _blockView;
    return _blockView;
}



//: - (void)handleBlock{
- (void)titleBlock{

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
        [_closeBtn setTitleColor:[UIColor status:[NameDismissData mainFactorReadNameStr]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[SendName streetSmart:[NameDismissData app_listDismissManagerIdent]] forState:UIControlStateNormal];
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
        //: [_sureBtn addTarget:self action:@selector(handleBlack) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(darkBlack) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[SendName streetSmart:[NameDismissData k_cellUrl]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        _sureBtn.backgroundColor = [UIColor status:[NameDismissData dreamTitleFormat]];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)handleBlack
- (void)darkBlack
{
    //: [self animationClose];
    [self tingShould];
    //: if ([self.delegate respondsToSelector:@selector(didTouchBlackButton)]) {
    if ([self.delegate respondsToSelector:@selector(buttonItem)]) {
        //: [self.delegate didTouchBlackButton];
        [self.delegate buttonItem];
    }
}

//: - (void)handleSubmit
- (void)orbitSelected
{

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