
#import <Foundation/Foundation.h>

typedef struct {
    Byte beggarMyNeighbourPolicy;
    Byte *administer;
    unsigned int compartment;
} StructPathNextData;

@interface PathNextData : NSObject

@end

@implementation PathNextData

+ (Byte *)PathNextDataToByte:(StructPathNextData *)data {
    for (int i = 0; i < data->compartment; i++) {
        data->administer[i] ^= data->beggarMyNeighbourPolicy;
    }
    data->administer[data->compartment] = 0;
    return data->administer;
}

+ (NSString *)StringFromPathNextData:(StructPathNextData *)data {
    return [NSString stringWithUTF8String:(char *)[self PathNextDataToByte:data]];
}

//: sign_gold_title
+ (NSString *)show_numberId {
    /* static */ NSString *show_numberId = nil;
    if (!show_numberId) {
        StructPathNextData value = (StructPathNextData){45, (Byte []){94, 68, 74, 67, 114, 74, 66, 65, 73, 114, 89, 68, 89, 65, 72, 49}, 15};
        show_numberId = [self StringFromPathNextData:&value];
    }
    return show_numberId;
}

//: #EE4A5C
+ (NSString *)k_removeTitlePath {
    /* static */ NSString *k_removeTitlePath = nil;
    if (!k_removeTitlePath) {
        StructPathNextData value = (StructPathNextData){135, (Byte []){164, 194, 194, 179, 198, 178, 196, 65}, 7};
        k_removeTitlePath = [self StringFromPathNextData:&value];
    }
    return k_removeTitlePath;
}

//: home_system_sign_close
+ (NSString *)appMakeStr {
    /* static */ NSString *appMakeStr = nil;
    if (!appMakeStr) {
        StructPathNextData value = (StructPathNextData){29, (Byte []){117, 114, 112, 120, 66, 110, 100, 110, 105, 120, 112, 66, 110, 116, 122, 115, 66, 126, 113, 114, 110, 120, 207}, 22};
        appMakeStr = [self StringFromPathNextData:&value];
    }
    return appMakeStr;
}

//: sign_keep_title
+ (NSString *)mClickFormat {
    /* static */ NSString *mClickFormat = nil;
    if (!mClickFormat) {
        StructPathNextData value = (StructPathNextData){117, (Byte []){6, 28, 18, 27, 42, 30, 16, 16, 5, 42, 1, 28, 1, 25, 16, 186}, 15};
        mClickFormat = [self StringFromPathNextData:&value];
    }
    return mClickFormat;
}

//: home_syetem_sign_back
+ (NSString *)showContentName {
    /* static */ NSString *showContentName = nil;
    if (!showContentName) {
        StructPathNextData value = (StructPathNextData){43, (Byte []){67, 68, 70, 78, 116, 88, 82, 78, 95, 78, 70, 116, 88, 66, 76, 69, 116, 73, 74, 72, 64, 142}, 21};
        showContentName = [self StringFromPathNextData:&value];
    }
    return showContentName;
}

//: dialog_sign_now
+ (NSString *)dreamVerticalName {
    /* static */ NSString *dreamVerticalName = nil;
    if (!dreamVerticalName) {
        StructPathNextData value = (StructPathNextData){5, (Byte []){97, 108, 100, 105, 106, 98, 90, 118, 108, 98, 107, 90, 107, 106, 114, 16}, 15};
        dreamVerticalName = [self StringFromPathNextData:&value];
    }
    return dreamVerticalName;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/13.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSystemSignNotificationSheet.h"
#import "DataView.h"

//: @interface NTESSystemSignNotificationSheet ()
@interface DataView ()
//: @property (nonatomic,strong) NSDictionary *originDict;
@property (nonatomic,strong) NSDictionary *originDict;
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @end
@end

//: @implementation NTESSystemSignNotificationSheet
@implementation DataView

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithRow:(CGRect)frame recordAcross_strong:(NSDictionary *)dictionary{

    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];

        //: CGFloat width = [[UIScreen mainScreen] bounds].size.width-100;
        CGFloat width = [[UIScreen mainScreen] bounds].size.width-100;

        //: _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 320/2, width, width/710*1013)];
        _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 320/2, width, width/710*1013)];
        //: _backView.backgroundColor = [UIColor whiteColor];
        _backView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:_backView];
        [self addSubview:_backView];
        //: _backView.layer.cornerRadius = 8.2;
        _backView.layer.cornerRadius = 8.2;
        //: _backView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
        _backView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
        //: _backView.layer.shadowOffset = CGSizeMake(-1, -1);
        _backView.layer.shadowOffset = CGSizeMake(-1, -1);
        //: _backView.layer.shadowOpacity = 0.5;
        _backView.layer.shadowOpacity = 0.5;

        //: UIImageView *topImageView = [[UIImageView alloc] init];
        UIImageView *topImageView = [[UIImageView alloc] init];
        //: topImageView.userInteractionEnabled = YES;
        topImageView.userInteractionEnabled = YES;
        //: topImageView.image = [UIImage imageNamed:@"home_syetem_sign_back"];
        topImageView.image = [UIImage imageNamed:[PathNextData showContentName]];
        //: [_backView addSubview:topImageView];
        [_backView addSubview:topImageView];
        //: [topImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [topImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.width.mas_equalTo(_backView.mas_width);
            make.width.mas_equalTo(_backView.mas_width);
            //: make.height.mas_equalTo(_backView.mas_height);
            make.height.mas_equalTo(_backView.mas_height);
        //: }];
        }];


        //: UILabel *title_1 = [[UILabel alloc] init];
        UILabel *title_1 = [[UILabel alloc] init];
        //: title_1.textColor = [UIColor whiteColor];
        title_1.textColor = [UIColor whiteColor];
        //: title_1.font = [UIFont boldSystemFontOfSize:25];
        title_1.font = [UIFont boldSystemFontOfSize:25];
        //: title_1.textAlignment = NSTextAlignmentCenter;
        title_1.textAlignment = NSTextAlignmentCenter;
        //: title_1.text = [BusyLanguageManager getTextWithKey:@"sign_gold_title"];
        title_1.text = [SendName streetSmart:[PathNextData show_numberId]];
        //: [topImageView addSubview:title_1];
        [topImageView addSubview:title_1];
        //: [title_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        [title_1 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(5);
            make.left.mas_offset(5);
            //: make.right.mas_offset(-5);
            make.right.mas_offset(-5);
            //: make.top.mas_offset(20);
            make.top.mas_offset(20);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //: UILabel *title_2 = [[UILabel alloc] init];
        UILabel *title_2 = [[UILabel alloc] init];
        //: title_2.textColor = [UIColor whiteColor];
        title_2.textColor = [UIColor whiteColor];
        //: title_2.textAlignment = NSTextAlignmentCenter;
        title_2.textAlignment = NSTextAlignmentCenter;
        //: title_2.font = [UIFont boldSystemFontOfSize:15];
        title_2.font = [UIFont boldSystemFontOfSize:15];
        //: title_2.text = [BusyLanguageManager getTextWithKey:@"sign_keep_title"];
        title_2.text = [SendName streetSmart:[PathNextData mClickFormat]];
        //: [topImageView addSubview:title_2];
        [topImageView addSubview:title_2];
        //: [title_2 mas_makeConstraints:^(MASConstraintMaker *make) {
        [title_2 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(5);
            make.left.mas_offset(5);
            //: make.right.mas_offset(-5);
            make.right.mas_offset(-5);
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];




        //: UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeButton.titleLabel.font = [UIFont systemFontOfSize:15];
        closeButton.titleLabel.font = [UIFont systemFontOfSize:15];
        //: closeButton.backgroundColor = [UIColor colorWithHexString:@"#EE4A5C"];
        closeButton.backgroundColor = [UIColor status:[PathNextData k_removeTitlePath]];
        //: [closeButton setTitle:[BusyLanguageManager getTextWithKey:@"dialog_sign_now"] forState:UIControlStateNormal];
        [closeButton setTitle:[SendName streetSmart:[PathNextData dreamVerticalName]] forState:UIControlStateNormal];
        //: [closeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [closeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(signButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(compartmentName) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:closeButton];
        [_backView addSubview:closeButton];
        //: closeButton.layer.masksToBounds = YES;
        closeButton.layer.masksToBounds = YES;
        //: closeButton.layer.cornerRadius = 18;
        closeButton.layer.cornerRadius = 18;
        //: closeButton.layer.borderColor = [UIColor colorWithHexString:@"#EE4A5C"].CGColor;
        closeButton.layer.borderColor = [UIColor status:[PathNextData k_removeTitlePath]].CGColor;
        //: closeButton.layer.borderWidth = 1.4;
        closeButton.layer.borderWidth = 1.4;
        //: [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.bottom.mas_equalTo(_backView.mas_bottom).offset(-20);
            make.bottom.mas_equalTo(_backView.mas_bottom).offset(-20);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
            //: make.height.mas_equalTo(36);
            make.height.mas_equalTo(36);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
        //: }];
        }];


        //: UIButton *close = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *close = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [close setImage:[UIImage imageNamed:@"home_system_sign_close"] forState:UIControlStateNormal];
        [close setImage:[UIImage imageNamed:[PathNextData appMakeStr]] forState:UIControlStateNormal];
        //: [close addTarget:self action:@selector(closeButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [close addTarget:self action:@selector(addServer) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:close];
        [self addSubview:close];
        //: [close mas_makeConstraints:^(MASConstraintMaker *make) {
        [close mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_backView.mas_bottom).offset(20);
            make.top.mas_equalTo(_backView.mas_bottom).offset(20);
            //: make.width.mas_equalTo(34);
            make.width.mas_equalTo(34);
            //: make.height.mas_equalTo(34);
            make.height.mas_equalTo(34);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
        //: }];
        }];



        //: UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleSingleTapFrom)];
        UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(underWith)];
        //: singleRecognizer.numberOfTapsRequired=1;
        singleRecognizer.numberOfTapsRequired=1;
        //: [self addGestureRecognizer:singleRecognizer];
        [self addGestureRecognizer:singleRecognizer];

    }
    //: return self;
    return self;
}

//: -(void)signButtonClick{
-(void)compartmentName{
    //: [self dismissPicker];
    [self endPicker];
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(signButtonClickDelegate)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(valueKey)]) {
        //: [self.delegate signButtonClickDelegate];
        [self.delegate valueKey];
    }
}


//: -(void)closeButtonClick{
-(void)addServer{
    //: [self dismissPicker];
    [self endPicker];
}

//: -(void)handleSingleTapFrom{
-(void)underWith{
    //: [self dismissPicker];
    [self endPicker];
}

//: - (void)show{
- (void)sendView{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 320/2];
        [self->_backView setHost:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice statusOrLevel]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 320/2];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)endPicker{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_backView setHost:[[UIScreen mainScreen] bounds].size.height];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];


}

//: @end
@end
