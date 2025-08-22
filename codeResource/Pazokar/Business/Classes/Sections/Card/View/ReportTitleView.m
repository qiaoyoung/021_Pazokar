
#import <Foundation/Foundation.h>

@interface EnableData : NSObject

@end

@implementation EnableData

+ (NSData *)EnableDataToData:(NSString *)value {
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

+ (Byte *)EnableDataToCache:(Byte *)data {
    int list = data[0];
    Byte reply = data[1];
    int managerCenter = data[2];
    for (int i = managerCenter; i < managerCenter + list; i++) {
        int value = data[i] - reply;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[managerCenter + list] = 0;
    return data + managerCenter;
}

+ (NSString *)StringFromEnableData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EnableDataToCache:data]];
}

//: #02D8C9
+ (NSString *)appLineIdent {
    /* static */ NSString *appLineIdent = nil;
    if (!appLineIdent) {
		NSString *origin = @"073605CDD85966687A6E796FA0";
		NSData *data = [EnableData EnableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appLineIdent = [self StringFromEnableData:value];
    }
    return appLineIdent;
}

//: contact_tag_fragment_cancel
+ (NSString *)kIntervalName {
    /* static */ NSString *kIntervalName = nil;
    if (!kIntervalName) {
		NSString *origin = @"1B2E06FC0706919D9CA28F91A28DA28F958D94A08F959B939CA28D918F9C91939A5F";
		NSData *data = [EnableData EnableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kIntervalName = [self StringFromEnableData:value];
    }
    return kIntervalName;
}

//: activity_group_chat_avatar_add_black
+ (NSString *)app_cellRedMsg {
    /* static */ NSString *app_cellRedMsg = nil;
    if (!app_cellRedMsg) {
		NSString *origin = @"24420D32E97D7C3E0416452E04A3A5B6ABB8ABB6BBA1A9B4B1B7B2A1A5AAA3B6A1A3B8A3B6A3B4A1A3A6A6A1A4AEA3A5ADD1";
		NSData *data = [EnableData EnableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_cellRedMsg = [self StringFromEnableData:value];
    }
    return app_cellRedMsg;
}

//: report_next_select
+ (NSString *)main_withKey {
    /* static */ NSString *main_withKey = nil;
    if (!main_withKey) {
		NSString *origin = @"12020A50EB55725BAA317467727174766170677A766175676E676576F8";
		NSData *data = [EnableData EnableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_withKey = [self StringFromEnableData:value];
    }
    return main_withKey;
}

//: report_Content
+ (NSString *)show_mUrl {
    /* static */ NSString *show_mUrl = nil;
    if (!show_mUrl) {
		NSString *origin = @"0E340993777BAA28EDA699A4A3A6A89377A3A2A899A2A84E";
		NSData *data = [EnableData EnableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_mUrl = [self StringFromEnableData:value];
    }
    return show_mUrl;
}

//: #FAF8FD
+ (NSString *)userMakeName {
    /* static */ NSString *userMakeName = nil;
    if (!userMakeName) {
		NSString *origin = @"075F0382A5A0A597A5A35A";
		NSData *data = [EnableData EnableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userMakeName = [self StringFromEnableData:value];
    }
    return userMakeName;
}

//: #5D5F66
+ (NSString *)kRedAfterIdent {
    /* static */ NSString *kRedAfterIdent = nil;
    if (!kRedAfterIdent) {
		NSString *origin = @"070F0AA822F8064722F232445344554545AA";
		NSData *data = [EnableData EnableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kRedAfterIdent = [self StringFromEnableData:value];
    }
    return kRedAfterIdent;
}

//: icon_accessory_normal
+ (NSString *)appPopViewName {
    /* static */ NSString *appPopViewName = nil;
    if (!appPopViewName) {
		NSString *origin = @"153E0C5BE83E7434F4832654A7A1ADAC9D9FA1A1A3B1B1ADB0B79DACADB0AB9FAAA8";
		NSData *data = [EnableData EnableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appPopViewName = [self StringFromEnableData:value];
    }
    return appPopViewName;
}

//: user_profile_avtivity_remove_friend
+ (NSString *)mControlMsg {
    /* static */ NSString *mControlMsg = nil;
    if (!mControlMsg) {
		NSString *origin = @"23480C27044DCD19B30E17D7BDBBADBAA7B8BAB7AEB1B4ADA7A9BEBCB1BEB1BCC1A7BAADB5B7BEADA7AEBAB1ADB6AC47";
		NSData *data = [EnableData EnableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mControlMsg = [self StringFromEnableData:value];
    }
    return mControlMsg;
}

//: ic_delete
+ (NSString *)dreamFileId {
    /* static */ NSString *dreamFileId = nil;
    if (!dreamFileId) {
		NSString *origin = @"095E073347EE6BC7C1BDC2C3CAC3D2C3C9";
		NSData *data = [EnableData EnableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamFileId = [self StringFromEnableData:value];
    }
    return dreamFileId;
}

//: ic_distrub
+ (NSString *)show_dismissMessage {
    /* static */ NSString *show_dismissMessage = nil;
    if (!show_dismissMessage) {
		NSString *origin = @"0A44074EB6CA09ADA7A3A8ADB7B8B6B9A64D";
		NSData *data = [EnableData EnableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_dismissMessage = [self StringFromEnableData:value];
    }
    return show_dismissMessage;
}

//: contact_tag_fragment_sure
+ (NSString *)m_makeId {
    /* static */ NSString *m_makeId = nil;
    if (!m_makeId) {
		NSString *origin = @"1947045DAAB6B5BBA8AABBA6BBA8AEA6ADB9A8AEB4ACB5BBA6BABCB9AC3E";
		NSData *data = [EnableData EnableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_makeId = [self StringFromEnableData:value];
    }
    return m_makeId;
}

//: icon_accessory_selected
+ (NSString *)showObjectKey {
    /* static */ NSString *showObjectKey = nil;
    if (!showObjectKey) {
		NSString *origin = @"172E08749695823E97919D9C8D8F919193A1A19DA0A78DA1939A9391A29392FD";
		NSData *data = [EnableData EnableDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showObjectKey = [self StringFromEnableData:value];
    }
    return showObjectKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReportTitleView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportNextView.h"
#import "ReportTitleView.h"

//: @interface ZMONReportNextView ()
@interface ReportTitleView ()

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

//: @property (nonatomic,strong) UIButton *btnBlock;
@property (nonatomic,strong) UIButton *btnBlock;
//: @property (nonatomic,strong) UIButton *btnDelete;
@property (nonatomic,strong) UIButton *btnDelete;

//: @property (nonatomic,strong) NSString *type;
@property (nonatomic,strong) NSString *type;

//: @end
@end

//: @implementation ZMONReportNextView
@implementation ReportTitleView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: self.type = @"1";
        self.type = @"1";
        //: [self initUI];
        [self initLanguage];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initLanguage{
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

//    UIButton *cloBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    cloBtn.frame = CGRectMake(SCREEN_WIDTH-50-32, 10, 32, 32);
//    [cloBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
//    [cloBtn setImage:[UIImage imageNamed:@"report_close"] forState:UIControlStateNormal];
//    [_box addSubview:cloBtn];

//    //What other steps do you want to take
//    UILabel *labLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, SCREEN_WIDTH-80, 20)];
//    labLabel.font = [UIFont boldSystemFontOfSize:14.f];
//    labLabel.textColor = TextColor_4;
//    labLabel.text = LangKey(@"report_next_select");
//    [_box addSubview:labLabel];

    //: UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    UILabel *labsubLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 20)];
    //: labsubLabel.font = [UIFont systemFontOfSize:12.f];
    labsubLabel.font = [UIFont systemFontOfSize:12.f];
    //: labsubLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    labsubLabel.textColor = [UIColor status:[EnableData kRedAfterIdent]];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [FFFLanguageManager getTextWithKey:@"report_next_select"];
    labsubLabel.text = [SendName streetSmart:[EnableData main_withKey]];
    //: [_box addSubview:labsubLabel];
    [_box addSubview:labsubLabel];

    //: [_box addSubview:self.blockView];
    [_box addSubview:self.blockView];
    //: self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);
    self.blockView.frame = CGRectMake(20, labsubLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-80, 56);

    //: [_box addSubview:self.deleteView];
    [_box addSubview:self.deleteView];
    //: self.deleteView.frame = CGRectMake(20, self.blockView.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 56);
    self.deleteView.frame = CGRectMake(20, self.blockView.bottom+10, [[UIScreen mainScreen] bounds].size.width-80, 56);

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
//        _titleLabel.text = LangKey(@"report_User");
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"report_Content"];
        _titleLabel.text = [SendName streetSmart:[EnableData show_mUrl]];

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
        _blockView.backgroundColor = [UIColor status:[EnableData userMakeName]];
        //: _blockView.layer.cornerRadius = 28;
        _blockView.layer.cornerRadius = 28;

        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_distrub"];
        img.image = [UIImage imageNamed:[EnableData show_dismissMessage]];
        //: [_blockView addSubview:img];
        [_blockView addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        //: lab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        lab.textColor = [UIColor status:[EnableData kRedAfterIdent]];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.text = [FFFLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        lab.text = [SendName streetSmart:[EnableData app_cellRedMsg]];
        //: [_blockView addSubview:lab];
        [_blockView addSubview:lab];

        //: _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        //: [_btnBlock addTarget:self action:@selector(handleBlock:) forControlEvents:UIControlEventTouchUpInside];
        [_btnBlock addTarget:self action:@selector(viewwed:) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnBlock setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_btnBlock setImage:[UIImage imageNamed:[EnableData appPopViewName]] forState:UIControlStateNormal];
        //: [_btnBlock setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_btnBlock setImage:[UIImage imageNamed:[EnableData showObjectKey]] forState:UIControlStateSelected];
        //: [_blockView addSubview:_btnBlock];
        [_blockView addSubview:_btnBlock];
        //: _btnBlock.selected = YES;
        _btnBlock.selected = YES;
    }
    //: return _blockView;
    return _blockView;
}

//: - (UIView *)deleteView
- (UIView *)deleteView
{
    //: if (!_deleteView) {
    if (!_deleteView) {
        //: _deleteView = [[UIView alloc]init];
        _deleteView = [[UIView alloc]init];
        //: _deleteView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        _deleteView.backgroundColor = [UIColor status:[EnableData userMakeName]];
        //: _deleteView.layer.cornerRadius = 28;
        _deleteView.layer.cornerRadius = 28;

        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(12, 12, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_delete"];
        img.image = [UIImage imageNamed:[EnableData dreamFileId]];
        //: [_deleteView addSubview:img];
        [_deleteView addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(img.right+12, 12, [[UIScreen mainScreen] bounds].size.width-80-80, 32)];
        //: lab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        lab.textColor = [UIColor status:[EnableData kRedAfterIdent]];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.text = [FFFLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"];
        lab.text = [SendName streetSmart:[EnableData mControlMsg]];
        //: [_deleteView addSubview:lab];
        [_deleteView addSubview:lab];

        //: _btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnDelete.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        _btnDelete.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80-40, 16, 24, 24);
        //: [_btnDelete addTarget:self action:@selector(showAnimations:) forControlEvents:UIControlEventTouchUpInside];
        [_btnDelete addTarget:self action:@selector(withDevice:) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnDelete setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_btnDelete setImage:[UIImage imageNamed:[EnableData appPopViewName]] forState:UIControlStateNormal];
        //: [_btnDelete setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_btnDelete setImage:[UIImage imageNamed:[EnableData showObjectKey]] forState:UIControlStateSelected];
        //: [_deleteView addSubview:_btnDelete];
        [_deleteView addSubview:_btnDelete];
    }
    //: return _deleteView;
    return _deleteView;
}

//: - (void)handleBlock:(UIButton *)sender{
- (void)viewwed:(UIButton *)sender{
    //: self.type = @"1";
    self.type = @"1";
    //: _btnBlock.selected = YES;
    _btnBlock.selected = YES;
    //: _btnDelete.selected = NO;
    _btnDelete.selected = NO;
}
//: - (void)showAnimations:(UIButton *)sender{
- (void)withDevice:(UIButton *)sender{
    //: self.type = @"2";
    self.type = @"2";
//    sender.selected = !sender.selected;
    //: _btnBlock.selected = NO;
    _btnBlock.selected = NO;
    //: _btnDelete.selected = YES;
    _btnDelete.selected = YES;
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
        [_closeBtn setTitleColor:[UIColor status:[EnableData kRedAfterIdent]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[SendName streetSmart:[EnableData kIntervalName]] forState:UIControlStateNormal];
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
        //: [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(orbitSelected) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[SendName streetSmart:[EnableData m_makeId]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        _sureBtn.backgroundColor = [UIColor status:[EnableData appLineIdent]];
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

//: - (void)showAnimation
- (void)countryDomain
{
    //: [self animationClose];
    [self tingShould];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteButton)]) {
    if ([self.delegate respondsToSelector:@selector(scoopHeight)]) {
        //: [self.delegate didTouchDeleteButton];
        [self.delegate scoopHeight];
    }

}

//: - (void)handleSubmit
- (void)orbitSelected
{
    //: [self animationClose];
    [self tingShould];
    //: if (self.type.intValue == 1) {
    if (self.type.intValue == 1) {
        //: if ([self.delegate respondsToSelector:@selector(didTouchBlackButton)]) {
        if ([self.delegate respondsToSelector:@selector(buttonItem)]) {
            //: [self.delegate didTouchBlackButton];
            [self.delegate buttonItem];
        }
    //: }else{
    }else{
        //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteButton)]) {
        if ([self.delegate respondsToSelector:@selector(scoopHeight)]) {
            //: [self.delegate didTouchDeleteButton];
            [self.delegate scoopHeight];
        }
    }
}

//: - (void)animationClose
- (void)tingShould
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)thoughtImage
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end