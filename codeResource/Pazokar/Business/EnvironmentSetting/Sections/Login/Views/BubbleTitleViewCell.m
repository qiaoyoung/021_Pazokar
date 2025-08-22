
#import <Foundation/Foundation.h>

typedef struct {
    Byte nameHockOversee;
    Byte *steppingMotor;
    unsigned int proximity;
	int namePosseRecent;
} StructToData;

@interface ToData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ToData

+ (instancetype)sharedInstance {
    static ToData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ToDataToByte:(StructToData *)data {
    for (int i = 0; i < data->proximity; i++) {
        data->steppingMotor[i] ^= data->nameHockOversee;
    }
    data->steppingMotor[data->proximity] = 0;
	if (data->proximity >= 1) {
		data->namePosseRecent = data->steppingMotor[0];
	}
    return data->steppingMotor;
}

- (NSString *)StringFromToData:(StructToData *)data {
    return [NSString stringWithUTF8String:(char *)[self ToDataToByte:data]];
}

//: mine_btn_right
- (NSString *)kFullTitle {
    /* static */ NSString *kFullTitle = nil;
    if (!kFullTitle) {
        StructToData value = (StructToData){31, (Byte []){114, 118, 113, 122, 64, 125, 107, 113, 64, 109, 118, 120, 119, 107, 3}, 14, 18};
        kFullTitle = [self StringFromToData:&value];
    }
    return kFullTitle;
}

//: eeeeee
- (NSString *)user_backgroundMessageFormat {
    /* static */ NSString *user_backgroundMessageFormat = nil;
    if (!user_backgroundMessageFormat) {
        StructToData value = (StructToData){41, (Byte []){76, 76, 76, 76, 76, 76, 235}, 6, 217};
        user_backgroundMessageFormat = [self StringFromToData:&value];
    }
    return user_backgroundMessageFormat;
}

//: #3F3F3F
- (NSString *)noti_textChapterData {
    /* static */ NSString *noti_textChapterData = nil;
    if (!noti_textChapterData) {
        StructToData value = (StructToData){108, (Byte []){79, 95, 42, 95, 42, 95, 42, 190}, 7, 218};
        noti_textChapterData = [self StringFromToData:&value];
    }
    return noti_textChapterData;
}

//: head_default
- (NSString *)app_makeCornerPath {
    /* static */ NSString *app_makeCornerPath = nil;
    if (!app_makeCornerPath) {
        StructToData value = (StructToData){74, (Byte []){34, 47, 43, 46, 21, 46, 47, 44, 43, 63, 38, 62, 79}, 12, 193};
        app_makeCornerPath = [self StringFromToData:&value];
    }
    return app_makeCornerPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BubbleTitleViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/7.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRegistCustomCell.h"
#import "BubbleTitleViewCell.h"

//: @implementation NTESRegistCustomCell
@implementation BubbleTitleViewCell

//: - (void)initSubviews{
- (void)initBe{


    //: CGFloat scale = 1.f;
    CGFloat scale = 1.f;

    //: if ((([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) && [[UIScreen mainScreen] bounds].size.height <= 568.0)){
    if ((([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) && [[UIScreen mainScreen] bounds].size.height <= 568.0)){
        //: scale = [[UIScreen mainScreen] bounds].size.height / 667.f;
        scale = [[UIScreen mainScreen] bounds].size.height / 667.f;
    }

    //: _titleLabel = [[UILabel alloc] init];
    _titleLabel = [[UILabel alloc] init];
    //: _titleLabel.font = [UIFont systemFontOfSize:16];
    _titleLabel.font = [UIFont systemFontOfSize:16];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"#3F3F3F"];
    _titleLabel.textColor = [UIColor status:[[ToData sharedInstance] noti_textChapterData]];
    //: [self addSubview:_titleLabel];
    [self addSubview:_titleLabel];
    //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(20*scale);
        make.top.mas_offset(20*scale);
        //: make.bottom.mas_offset(-20*scale);
        make.bottom.mas_offset(-20*scale);
        //: make.left.mas_offset(25);
        make.left.mas_offset(25);
        //: make.width.mas_equalTo(100*scale);
        make.width.mas_equalTo(100*scale);
        //: make.height.mas_equalTo(20*scale);
        make.height.mas_equalTo(20*scale);
    //: }];
    }];

    //: _arrowImageView = [[UIImageView alloc] init];
    _arrowImageView = [[UIImageView alloc] init];
    //: _arrowImageView.image = [UIImage imageNamed:@"mine_btn_right"];
    _arrowImageView.image = [UIImage imageNamed:[[ToData sharedInstance] kFullTitle]];
    //: [self addSubview:_arrowImageView];
    [self addSubview:_arrowImageView];
    //: [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
    [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
        //: make.right.mas_offset(-10);
        make.right.mas_offset(-10);
        //: make.width.mas_equalTo(12);
        make.width.mas_equalTo(12);
        //: make.height.mas_equalTo(12);
        make.height.mas_equalTo(12);
    //: }];
    }];


    //: _contentTextField = [[UITextField alloc] init];
    _contentTextField = [[UITextField alloc] init];
    //: _contentTextField.textAlignment = NSTextAlignmentRight;
    _contentTextField.textAlignment = NSTextAlignmentRight;
    //: _contentTextField.userInteractionEnabled = NO;
    _contentTextField.userInteractionEnabled = NO;
    //: [self addSubview:_contentTextField];
    [self addSubview:_contentTextField];
    //: [_contentTextField mas_makeConstraints:^(MASConstraintMaker *make) {
    [_contentTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
        //: make.right.mas_offset(-50);
        make.right.mas_offset(-50);
        //: make.width.mas_equalTo(180*scale);
        make.width.mas_equalTo(180*scale);
        //: make.height.mas_equalTo(20*scale);
        make.height.mas_equalTo(20*scale);
    //: }];
    }];


    //: _headerImageView = [[UIImageView alloc] init];
    _headerImageView = [[UIImageView alloc] init];
    //: _headerImageView.image = [UIImage imageNamed:@"head_default"];
    _headerImageView.image = [UIImage imageNamed:[[ToData sharedInstance] app_makeCornerPath]];
    //: _headerImageView.backgroundColor = [UIColor clearColor];
    _headerImageView.backgroundColor = [UIColor clearColor];
    //: [self addSubview:_headerImageView];
    [self addSubview:_headerImageView];
    //: _headerImageView.layer.masksToBounds = YES;
    _headerImageView.layer.masksToBounds = YES;
    //: _headerImageView.layer.cornerRadius = 23*scale;
    _headerImageView.layer.cornerRadius = 23*scale;
    //: [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
        //: make.right.mas_offset(-50*scale);
        make.right.mas_offset(-50*scale);
        //: make.width.mas_equalTo(46*scale);
        make.width.mas_equalTo(46*scale);
        //: make.height.mas_equalTo(46*scale);
        make.height.mas_equalTo(46*scale);
    //: }];
    }];



    //: UIView *lineView = [[UIView alloc] init];
    UIView *lineView = [[UIView alloc] init];
    //: lineView.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
    lineView.backgroundColor = [UIColor status:[[ToData sharedInstance] user_backgroundMessageFormat]];
    //: [self addSubview:lineView];
    [self addSubview:lineView];
    //: [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(25);
        make.left.mas_offset(25);
        //: make.right.mas_offset(-25);
        make.right.mas_offset(-25);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
        //: make.height.mas_equalTo(1);
        make.height.mas_equalTo(1);
    //: }];
    }];
}

//: @end
@end