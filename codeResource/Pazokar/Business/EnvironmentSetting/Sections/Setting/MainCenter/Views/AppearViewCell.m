
#import <Foundation/Foundation.h>

@interface ClickFactorData : NSObject

+ (instancetype)sharedInstance;

//: btn_right
@property (nonatomic, copy) NSString *k_guitarFromMsg;

//: #3F3F3F
@property (nonatomic, copy) NSString *appTextFormat;

@end

@implementation ClickFactorData

+ (instancetype)sharedInstance {
    static ClickFactorData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ClickFactorDataToData:(NSString *)value {
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

- (Byte *)ClickFactorDataToCache:(Byte *)data {
    int fasten = data[0];
    Byte laugh = data[1];
    int demonstrate = data[2];
    for (int i = demonstrate; i < demonstrate + fasten; i++) {
        int value = data[i] - laugh;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[demonstrate + fasten] = 0;
    return data + demonstrate;
}

- (NSString *)StringFromClickFactorData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ClickFactorDataToCache:data]];
}

//: btn_right
- (NSString *)k_guitarFromMsg {
    if (!_k_guitarFromMsg) {
		NSString *origin = @"09050A570A532C83572267797364776E6C6D79F1";
		NSData *data = [ClickFactorData ClickFactorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_guitarFromMsg = [self StringFromClickFactorData:value];
    }
    return _k_guitarFromMsg;
}

//: #3F3F3F
- (NSString *)appTextFormat {
    if (!_appTextFormat) {
		NSString *origin = @"075D073DA2D0C78090A390A390A34D";
		NSData *data = [ClickFactorData ClickFactorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appTextFormat = [self StringFromClickFactorData:value];
    }
    return _appTextFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AppearViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/17.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSafetySetingCell.h"
#import "AppearViewCell.h"

//: @implementation NTESSafetySetingCell
@implementation AppearViewCell

//: - (void)initSubviews{
- (void)initBe{
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: UIView *backGround = [[UIView alloc] init];
    UIView *backGround = [[UIView alloc] init];
    //: backGround.backgroundColor = [UIColor whiteColor];
    backGround.backgroundColor = [UIColor whiteColor];
    //: [self addSubview:backGround];
    [self addSubview:backGround];
    //: backGround.layer.masksToBounds = YES;
    backGround.layer.masksToBounds = YES;
    //: backGround.layer.cornerRadius = 5;
    backGround.layer.cornerRadius = 5;
    //: [backGround mas_makeConstraints:^(MASConstraintMaker *make) {
    [backGround mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
        //: make.height.mas_equalTo(50);
        make.height.mas_equalTo(50);
    //: }];
    }];




    //: _buttonTop = [UIButton buttonWithType:UIButtonTypeCustom];
    _buttonTop = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [self addSubview:_buttonTop];
    [self addSubview:_buttonTop];
    //: [_buttonTop mas_makeConstraints:^(MASConstraintMaker *make) {
    [_buttonTop mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.height.mas_equalTo(50);
        make.height.mas_equalTo(50);
    //: }];
    }];



    //: _topLabel = [[UILabel alloc] init];
    _topLabel = [[UILabel alloc] init];
    //: _topLabel.font = [UIFont systemFontOfSize:16];
    _topLabel.font = [UIFont systemFontOfSize:16];
    //: _topLabel.text = @"";
    _topLabel.text = @"";
    //: _topLabel.textColor = [UIColor colorWithHexString:@"#3F3F3F"];
    _topLabel.textColor = [UIColor status:[ClickFactorData sharedInstance].appTextFormat];
    //: [_buttonTop addSubview:_topLabel];
    [_buttonTop addSubview:_topLabel];
    //: [_topLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_topLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(25);
        make.left.mas_offset(25);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.width.mas_equalTo(300);
        make.width.mas_equalTo(300);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
    //: }];
    }];


    //: UIImageView *arrowImage = [[UIImageView alloc] init];
    UIImageView *arrowImage = [[UIImageView alloc] init];
    //: arrowImage.image = [UIImage imageNamed:@"btn_right"];
    arrowImage.image = [UIImage imageNamed:[ClickFactorData sharedInstance].k_guitarFromMsg];
    //: [_buttonTop addSubview:arrowImage];
    [_buttonTop addSubview:arrowImage];
    //: [arrowImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [arrowImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.height.mas_equalTo(12);
        make.height.mas_equalTo(12);
        //: make.width.mas_equalTo(12);
        make.width.mas_equalTo(12);

    //: }];
    }];

}


//: @end
@end