
#import <Foundation/Foundation.h>

@interface RecordData : NSObject

@end

@implementation RecordData

+ (NSData *)RecordDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)RecordDataToCache:(Byte *)data {
    int wooden = data[0];
    Byte decorticate = data[1];
    int ladenedObject = data[2];
    for (int i = ladenedObject; i < ladenedObject + wooden; i++) {
        int value = data[i] + decorticate;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[ladenedObject + wooden] = 0;
    return data + ladenedObject;
}

+ (NSString *)StringFromRecordData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RecordDataToCache:data]];
}

//: ic_album
+ (NSString *)appLetterPath {
    /* static */ NSString *appLetterPath = nil;
    if (!appLetterPath) {
		NSArray<NSString *> *origin = @[@"8", @"59", @"13", @"67", @"60", @"226", @"68", @"190", @"226", @"82", @"20", @"114", @"251", @"46", @"40", @"36", @"38", @"49", @"39", @"58", @"50", @"194"];
		NSData *data = [RecordData RecordDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appLetterPath = [self StringFromRecordData:value];
    }
    return appLetterPath;
}

//: contact_tag_fragment_cancel
+ (NSString *)show_hockSuccessKey {
    /* static */ NSString *show_hockSuccessKey = nil;
    if (!show_hockSuccessKey) {
		NSArray<NSString *> *origin = @[@"27", @"61", @"9", @"135", @"235", @"205", @"46", @"220", @"175", @"38", @"50", @"49", @"55", @"36", @"38", @"55", @"34", @"55", @"36", @"42", @"34", @"41", @"53", @"36", @"42", @"48", @"40", @"49", @"55", @"34", @"38", @"36", @"49", @"38", @"40", @"47", @"212"];
		NSData *data = [RecordData RecordDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_hockSuccessKey = [self StringFromRecordData:value];
    }
    return show_hockSuccessKey;
}

//: #000000
+ (NSString *)notiFromMessage {
    /* static */ NSString *notiFromMessage = nil;
    if (!notiFromMessage) {
		NSArray<NSString *> *origin = @[@"7", @"6", @"8", @"88", @"163", @"188", @"236", @"97", @"29", @"42", @"42", @"42", @"42", @"42", @"42", @"231"];
		NSData *data = [RecordData RecordDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiFromMessage = [self StringFromRecordData:value];
    }
    return notiFromMessage;
}

//: message_send_album
+ (NSString *)mainPepTitle {
    /* static */ NSString *mainPepTitle = nil;
    if (!mainPepTitle) {
		NSArray<NSString *> *origin = @[@"18", @"31", @"12", @"90", @"83", @"175", @"164", @"107", @"151", @"136", @"81", @"136", @"78", @"70", @"84", @"84", @"66", @"72", @"70", @"64", @"84", @"70", @"79", @"69", @"64", @"66", @"77", @"67", @"86", @"78", @"135"];
		NSData *data = [RecordData RecordDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainPepTitle = [self StringFromRecordData:value];
    }
    return mainPepTitle;
}

//: message_send_camera
+ (NSString *)kPosseInmateInfoPath {
    /* static */ NSString *kPosseInmateInfoPath = nil;
    if (!kPosseInmateInfoPath) {
		NSArray<NSString *> *origin = @[@"19", @"18", @"4", @"166", @"91", @"83", @"97", @"97", @"79", @"85", @"83", @"77", @"97", @"83", @"92", @"82", @"77", @"81", @"79", @"91", @"83", @"96", @"79", @"194"];
		NSData *data = [RecordData RecordDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kPosseInmateInfoPath = [self StringFromRecordData:value];
    }
    return kPosseInmateInfoPath;
}

//: #F7D2F3
+ (NSString *)show_enableName {
    /* static */ NSString *show_enableName = nil;
    if (!show_enableName) {
		NSArray<NSString *> *origin = @[@"7", @"50", @"6", @"139", @"228", @"234", @"241", @"20", @"5", @"18", @"0", @"20", @"1", @"80"];
		NSData *data = [RecordData RecordDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_enableName = [self StringFromRecordData:value];
    }
    return show_enableName;
}

//: #fffBusy
+ (NSString *)mWoodenTitle {
    /* static */ NSString *mWoodenTitle = nil;
    if (!mWoodenTitle) {
		NSArray<NSString *> *origin = @[@"7", @"67", @"10", @"166", @"18", @"181", @"169", @"161", @"131", @"27", @"224", @"35", @"35", @"35", @"35", @"35", @"35", @"29"];
		NSData *data = [RecordData RecordDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mWoodenTitle = [self StringFromRecordData:value];
    }
    return mWoodenTitle;
}

//: #CCECFC
+ (NSString *)user_shouldName {
    /* static */ NSString *user_shouldName = nil;
    if (!user_shouldName) {
		NSArray<NSString *> *origin = @[@"7", @"5", @"4", @"82", @"30", @"62", @"62", @"64", @"62", @"65", @"62", @"166"];
		NSData *data = [RecordData RecordDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_shouldName = [self StringFromRecordData:value];
    }
    return user_shouldName;
}

//: #5D5F66
+ (NSString *)showFrameFormat {
    /* static */ NSString *showFrameFormat = nil;
    if (!showFrameFormat) {
		NSArray<NSString *> *origin = @[@"7", @"78", @"11", @"202", @"90", @"246", @"145", @"78", @"2", @"214", @"31", @"213", @"231", @"246", @"231", @"248", @"232", @"232", @"44"];
		NSData *data = [RecordData RecordDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showFrameFormat = [self StringFromRecordData:value];
    }
    return showFrameFormat;
}

//: ic_camera
+ (NSString *)dreamShouldStr {
    /* static */ NSString *dreamShouldStr = nil;
    if (!dreamShouldStr) {
		NSArray<NSString *> *origin = @[@"9", @"62", @"3", @"43", @"37", @"33", @"37", @"35", @"47", @"39", @"52", @"35", @"56"];
		NSData *data = [RecordData RecordDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamShouldStr = [self StringFromRecordData:value];
    }
    return dreamShouldStr;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  ParameterView.m
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSSetAvater.h"
#import "ParameterView.h"

//: @interface NSSetAvater ()
@interface ParameterView ()

//: @property (nonatomic, strong) UIView *viewBg;
@property (nonatomic, strong) UIView *viewBg;
//: @property (nonatomic,strong) UIButton *cancelBtn;
@property (nonatomic,strong) UIButton *cancelBtn;
//: @property (nonatomic,strong) UIButton *cameraBtn;
@property (nonatomic,strong) UIButton *cameraBtn;
//: @property (nonatomic,strong) UIButton *albumBtn;
@property (nonatomic,strong) UIButton *albumBtn;

//: @end
@end

//: @implementation NSSetAvater
@implementation ParameterView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationClose)];
        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tingShould)];
        //: [self addGestureRecognizer:singleTapclose];
        [self addGestureRecognizer:singleTapclose];

        //: [self initUI];
        [self initRow];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initRow{

    //: _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-278, [[UIScreen mainScreen] bounds].size.width, 278)];
    _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-278, [[UIScreen mainScreen] bounds].size.width, 278)];
    //: _viewBg.backgroundColor = [UIColor colorWithHexString:@"#fffBusy"];
    _viewBg.backgroundColor = [UIColor status:[RecordData mWoodenTitle]];
    //: _viewBg.layer.masksToBounds = YES;
    _viewBg.layer.masksToBounds = YES;
    //: _viewBg.layer.cornerRadius = 40;
    _viewBg.layer.cornerRadius = 40;
    //: _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner; 
    _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner; // 左上圆角 // 右上圆角
    //: [self addSubview:_viewBg];
    [self addSubview:_viewBg];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;

    //: [_viewBg addSubview:self.cameraBtn];
    [_viewBg addSubview:self.cameraBtn];
    //: self.cameraBtn.frame = CGRectMake(30, 30, width, 110);
    self.cameraBtn.frame = CGRectMake(30, 30, width, 110);

    //: [_viewBg addSubview:self.albumBtn];
    [_viewBg addSubview:self.albumBtn];
    //: self.albumBtn.frame = CGRectMake(width+60, 30, width, 110);
    self.albumBtn.frame = CGRectMake(width+60, 30, width, 110);

    //: [_viewBg addSubview:self.cancelBtn];
    [_viewBg addSubview:self.cancelBtn];
    //: self.cancelBtn.frame = CGRectMake(30, self.albumBtn.bottom+24, [[UIScreen mainScreen] bounds].size.width-60, 44);
    self.cancelBtn.frame = CGRectMake(30, self.albumBtn.bottom+24, [[UIScreen mainScreen] bounds].size.width-60, 44);
}

//: -(CGFloat)calculateWidthWithFont:(NSInteger)Font Text:(NSString *)text{
-(CGFloat)instrumentationImage:(NSInteger)Font cohere:(NSString *)text{
    //: NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    //: CGRect rect = [text boundingRectWithSize:CGSizeMake(0x1.fffffep+127f, Font + 2)
    CGRect rect = [text boundingRectWithSize:CGSizeMake(0x1.fffffep+127f, Font + 2)
                                     //: options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                     options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                  //: attributes:attr
                                  attributes:attr
                                     //: context:nil];
                                     context:nil];
    //: return rect.size.width;
    return rect.size.width;
}

//: - (void)clickTheBtn:(UIButton *)sender
- (void)pullsing:(UIButton *)sender
{
    //: [self animationClose];
    [self tingShould];
    //: if ([self.delegate respondsToSelector:@selector(didTouchTheBtnWith:)]) {
    if ([self.delegate respondsToSelector:@selector(canInfo:)]) {
        //: [self.delegate didTouchTheBtnWith:sender.tag];
        [self.delegate canInfo:sender.tag];
    }

}

//: - (UIButton *)cameraBtn {
- (UIButton *)cameraBtn {
    //: if (!_cameraBtn) {
    if (!_cameraBtn) {
        //: _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_cameraBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
//        _cameraBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_cameraBtn setTitleColor:TextColor_2 forState:UIControlStateNormal];
//        [_cameraBtn setTitle:LangKey(@"message_send_camera") forState:UIControlStateNormal];
//        _cameraBtn.tag = 101;
//        [_cameraBtn setImage:[UIImage imageNamed:@"ic_camera"] forState:UIControlStateNormal];
////        [_cameraBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:0];
//        _cameraBtn.backgroundColor = RGB_COLOR_String(@"#F4F1EC");
//        _cameraBtn.layer.cornerRadius = 20;
//        _cameraBtn.layer.masksToBounds = YES;

        //: _cameraBtn.tag = 101;
        _cameraBtn.tag = 101;
        //: _cameraBtn.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
        _cameraBtn.backgroundColor = [UIColor status:[RecordData show_enableName]];
        //: _cameraBtn.layer.cornerRadius = 12;
        _cameraBtn.layer.cornerRadius = 12;
        //: [_cameraBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_cameraBtn addTarget:self action:@selector(pullsing:) forControlEvents:UIControlEventTouchUpInside];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_camera"];
        img.image = [UIImage imageNamed:[RecordData dreamShouldStr]];
        //: [_cameraBtn addSubview:img];
        [_cameraBtn addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.textColor = [UIColor colorWithHexString:@"#000000"];
        lab.textColor = [UIColor status:[RecordData notiFromMessage]];
        //: lab.text = [BusyLanguageManager getTextWithKey:@"message_send_camera"];
        lab.text = [SendName streetSmart:[RecordData kPosseInmateInfoPath]];
        //: lab.textAlignment = NSTextAlignmentCenter;
        lab.textAlignment = NSTextAlignmentCenter;
        //: [_cameraBtn addSubview:lab];
        [_cameraBtn addSubview:lab];
//        _cameraBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_cameraBtn setTitleColor:RGB_COLOR_String(@"#000000") forState:UIControlStateNormal];
//        [_cameraBtn setTitle:@"Camera" forState:UIControlStateNormal];
//        [_cameraBtn setImage:[UIImage imageNamed:@"ic_camera"] forState:UIControlStateNormal];
//        [_cameraBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
//        _cameraBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [_cameraBtn setTitleEdgeInsets:UIEdgeInsetsMake(36, -36, 0, 0)];
//        [_cameraBtn setImageEdgeInsets:UIEdgeInsetsMake(-20, 0, 0, -[self calculateWidthWithFont:14 Text:LangKey(@"message_send_album")])];
    }
    //: return _cameraBtn;
    return _cameraBtn;
}

//: - (UIButton *)albumBtn {
- (UIButton *)albumBtn {
    //: if (!_albumBtn) {
    if (!_albumBtn) {
        //: _albumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _albumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _albumBtn.backgroundColor = [UIColor colorWithHexString:@"#CCECFC"];
        _albumBtn.backgroundColor = [UIColor status:[RecordData user_shouldName]];
        //: _albumBtn.layer.cornerRadius = 12;
        _albumBtn.layer.cornerRadius = 12;
        //: [_albumBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_albumBtn addTarget:self action:@selector(pullsing:) forControlEvents:UIControlEventTouchUpInside];
        //: _albumBtn.tag = 102;
        _albumBtn.tag = 102;
        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_album"];
        img.image = [UIImage imageNamed:[RecordData appLetterPath]];
        //: [_albumBtn addSubview:img];
        [_albumBtn addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.textColor = [UIColor colorWithHexString:@"#000000"];
        lab.textColor = [UIColor status:[RecordData notiFromMessage]];
        //: lab.text = [BusyLanguageManager getTextWithKey:@"message_send_album"];
        lab.text = [SendName streetSmart:[RecordData mainPepTitle]];
        //: lab.textAlignment = NSTextAlignmentCenter;
        lab.textAlignment = NSTextAlignmentCenter;
        //: [_albumBtn addSubview:lab];
        [_albumBtn addSubview:lab];

//        _albumBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_albumBtn setTitleColor:RGB_COLOR_String(@"#000000") forState:UIControlStateNormal];
//        [_albumBtn setTitle:LangKey(@"message_send_album") forState:UIControlStateNormal];
//        [_albumBtn setImage:[UIImage imageNamed:@"ic_album"] forState:UIControlStateNormal];
////        [_albumBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
//        _albumBtn.tag = 102;
//        _albumBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [_albumBtn setTitleEdgeInsets:UIEdgeInsetsMake(36, -36, 0, 0)];
//        [_albumBtn setImageEdgeInsets:UIEdgeInsetsMake(-24, 0, 0, -[self calculateWidthWithFont:14 Text:LangKey(@"message_send_album")])];
    }
    //: return _albumBtn;
    return _albumBtn;
}

//: - (UIButton *)cancelBtn {
- (UIButton *)cancelBtn {
    //: if (!_cancelBtn) {
    if (!_cancelBtn) {
        //: _cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_cancelBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_cancelBtn addTarget:self action:@selector(tingShould) forControlEvents:UIControlEventTouchUpInside];
        //: _cancelBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _cancelBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_cancelBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_cancelBtn setTitleColor:[UIColor status:[RecordData showFrameFormat]] forState:UIControlStateNormal];
        //: [_cancelBtn setTitle:[BusyLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_cancelBtn setTitle:[SendName streetSmart:[RecordData show_hockSuccessKey]] forState:UIControlStateNormal];
        //: _cancelBtn.backgroundColor = [UIColor colorWithHexString:@"#fffBusy"];
        _cancelBtn.backgroundColor = [UIColor status:[RecordData mWoodenTitle]];
        //: _cancelBtn.layer.cornerRadius = 22;
        _cancelBtn.layer.cornerRadius = 22;
        //: _cancelBtn.layer.masksToBounds = YES;
        _cancelBtn.layer.masksToBounds = YES;
        //: _cancelBtn.layer.borderWidth = 1;
        _cancelBtn.layer.borderWidth = 1;
        //: _cancelBtn.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
        _cancelBtn.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    }
    //: return _cancelBtn;
    return _cancelBtn;
}

//: - (void)animationClose
- (void)tingShould
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)animation
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end
