
#import <Foundation/Foundation.h>

@interface SelectData : NSObject

@end

@implementation SelectData

+ (NSData *)SelectDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)SelectDataToCache:(Byte *)data {
    int lockUpOption = data[0];
    Byte crankLetter = data[1];
    int dipTotalo = data[2];
    for (int i = dipTotalo; i < dipTotalo + lockUpOption; i++) {
        int value = data[i] - crankLetter;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[dipTotalo + lockUpOption] = 0;
    return data + dipTotalo;
}

+ (NSString *)StringFromSelectData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SelectDataToCache:data]];
}

//: YES
+ (NSString *)noti_successUrl {
    /* static */ NSString *noti_successUrl = nil;
    if (!noti_successUrl) {
		NSArray<NSNumber *> *origin = @[@3, @7, @6, @90, @104, @69, @96, @76, @90, @135];
		NSData *data = [SelectData SelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_successUrl = [self StringFromSelectData:value];
    }
    return noti_successUrl;
}

//: #333333
+ (NSString *)mainSizeText {
    /* static */ NSString *mainSizeText = nil;
    if (!mainSizeText) {
		NSArray<NSNumber *> *origin = @[@7, @39, @13, @140, @22, @47, @214, @128, @113, @165, @146, @168, @139, @74, @90, @90, @90, @90, @90, @90, @32];
		NSData *data = [SelectData SelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainSizeText = [self StringFromSelectData:value];
    }
    return mainSizeText;
}

//: report_next_select_black
+ (NSString *)mainWithName {
    /* static */ NSString *mainWithName = nil;
    if (!mainWithName) {
		NSArray<NSNumber *> *origin = @[@24, @21, @3, @135, @122, @133, @132, @135, @137, @116, @131, @122, @141, @137, @116, @136, @122, @129, @122, @120, @137, @116, @119, @129, @118, @120, @128, @242];
		NSData *data = [SelectData SelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainWithName = [self StringFromSelectData:value];
    }
    return mainWithName;
}

//: #02D8C9
+ (NSString *)appControlKey {
    /* static */ NSString *appControlKey = nil;
    if (!appControlKey) {
		NSArray<NSNumber *> *origin = @[@7, @11, @10, @209, @105, @7, @177, @70, @230, @121, @46, @59, @61, @79, @67, @78, @68, @190];
		NSData *data = [SelectData SelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appControlKey = [self StringFromSelectData:value];
    }
    return appControlKey;
}

//: contact_tag_fragment_sure
+ (NSString *)userTextModeMessage {
    /* static */ NSString *userTextModeMessage = nil;
    if (!userTextModeMessage) {
		NSArray<NSNumber *> *origin = @[@25, @52, @13, @162, @22, @89, @145, @144, @65, @153, @135, @90, @133, @151, @163, @162, @168, @149, @151, @168, @147, @168, @149, @155, @147, @154, @166, @149, @155, @161, @153, @162, @168, @147, @167, @169, @166, @153, @45];
		NSData *data = [SelectData SelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userTextModeMessage = [self StringFromSelectData:value];
    }
    return userTextModeMessage;
}

//: #5D5F66
+ (NSString *)app_managerUrl {
    /* static */ NSString *app_managerUrl = nil;
    if (!app_managerUrl) {
		NSArray<NSNumber *> *origin = @[@7, @51, @4, @135, @86, @104, @119, @104, @121, @105, @105, @195];
		NSData *data = [SelectData SelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_managerUrl = [self StringFromSelectData:value];
    }
    return app_managerUrl;
}

//: contact_tag_fragment_cancel
+ (NSString *)showNextMinTitle {
    /* static */ NSString *showNextMinTitle = nil;
    if (!showNextMinTitle) {
		NSArray<NSNumber *> *origin = @[@27, @11, @7, @44, @5, @245, @111, @110, @122, @121, @127, @108, @110, @127, @106, @127, @108, @114, @106, @113, @125, @108, @114, @120, @112, @121, @127, @106, @110, @108, @121, @110, @112, @119, @24];
		NSData *data = [SelectData SelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showNextMinTitle = [self StringFromSelectData:value];
    }
    return showNextMinTitle;
}

//: activity_group_chat_avatar_add_black
+ (NSString *)mInfoKey {
    /* static */ NSString *mInfoKey = nil;
    if (!mInfoKey) {
		NSArray<NSNumber *> *origin = @[@36, @75, @8, @230, @146, @87, @227, @32, @172, @174, @191, @180, @193, @180, @191, @196, @170, @178, @189, @186, @192, @187, @170, @174, @179, @172, @191, @170, @172, @193, @172, @191, @172, @189, @170, @172, @175, @175, @170, @173, @183, @172, @174, @182, @230];
		NSData *data = [SelectData SelectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mInfoKey = [self StringFromSelectData:value];
    }
    return mInfoKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  GreenishView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONReportBlackView.h"
#import "GreenishView.h"

//: @interface ZMONReportBlackView ()
@interface GreenishView ()

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

//: @implementation ZMONReportBlackView
@implementation GreenishView

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
        [self initByAdd];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initByAdd{
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
    labsubLabel.textColor = [UIColor status:[SelectData mainSizeText]];
    //: labsubLabel.numberOfLines = 0;
    labsubLabel.numberOfLines = 0;
    //: labsubLabel.text = [FFFLanguageManager getTextWithKey:@"report_next_select_black"];
    labsubLabel.text = [SendName streetSmart:[SelectData mainWithName]];
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

//: - (void)handleBlack{
- (void)darkBlack{

//    __weak typeof(self) wself = self;
//
//        [[NIMSDK sharedSDK].userManager addToBlackList:wself.userID completion:^(NSError *error) {
//
//            if (!error) {
//                [wself makeToast:LangKey(@"group_chat_avatar_activity_add_black_success") duration:2.0f position:CSToastPositionCenter];
//            }else{
//                [wself makeToast:LangKey(@"black_list_activity_add_black_failed") duration:2.0f position:CSToastPositionCenter];
//
//            }
//        }];
//    [self animationClose];
    //: [self animationClose];
    [self tingShould];

    //: self.speiceBackBlock(@"YES");
    self.speiceBackBlock([SelectData noti_successUrl]);
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
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_group_chat_avatar_add_black"];
        _titleLabel.text = [SendName streetSmart:[SelectData mInfoKey]];
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
        [_closeBtn setTitleColor:[UIColor status:[SelectData app_managerUrl]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[SendName streetSmart:[SelectData showNextMinTitle]] forState:UIControlStateNormal];
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
        [_sureBtn setTitle:[SendName streetSmart:[SelectData userTextModeMessage]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        _sureBtn.backgroundColor = [UIColor status:[SelectData appControlKey]];
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
- (void)bar
{
    //: self.hidden = NO;
    self.hidden = NO;

}



//: @end
@end