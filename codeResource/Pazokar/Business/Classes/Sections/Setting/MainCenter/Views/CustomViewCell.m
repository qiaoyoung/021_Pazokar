
#import <Foundation/Foundation.h>

typedef struct {
    Byte clickShow;
    Byte *giftClick;
    unsigned int motor;
	int solutionMessage;
	int argument;
	int nameManager;
} StructIdealData;

@interface IdealData : NSObject

+ (instancetype)sharedInstance;

//: activity_modify_old
@property (nonatomic, copy) NSString *kRedName;

//: activity_modify_new
@property (nonatomic, copy) NSString *dreamMyValue;

//: eeeeee
@property (nonatomic, copy) NSString *show_differentlyId;

@end

@implementation IdealData

+ (instancetype)sharedInstance {
    static IdealData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)IdealDataToData:(NSString *)value {
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

- (Byte *)IdealDataToByte:(StructIdealData *)data {
    for (int i = 0; i < data->motor; i++) {
        data->giftClick[i] ^= data->clickShow;
    }
    data->giftClick[data->motor] = 0;
	if (data->motor >= 3) {
		data->solutionMessage = data->giftClick[0];
		data->argument = data->giftClick[1];
		data->nameManager = data->giftClick[2];
	}
    return data->giftClick;
}

- (NSString *)StringFromIdealData:(StructIdealData *)data {
    return [NSString stringWithUTF8String:(char *)[self IdealDataToByte:data]];
}

//: eeeeee
- (NSString *)show_differentlyId {
    if (!_show_differentlyId) {
		NSString *origin = @"ececececececfe";
		NSData *data = [IdealData IdealDataToData:origin];
        StructIdealData value = (StructIdealData){137, (Byte *)data.bytes, 6, 166, 80, 19};
        _show_differentlyId = [self StringFromIdealData:&value];
    }
    return _show_differentlyId;
}

//: activity_modify_old
- (NSString *)kRedName {
    if (!_kRedName) {
		NSString *origin = @"e7e5f2eff0eff2ffd9ebe9e2efe0ffd9e9eae2c8";
		NSData *data = [IdealData IdealDataToData:origin];
        StructIdealData value = (StructIdealData){134, (Byte *)data.bytes, 19, 188, 2, 117};
        _kRedName = [self StringFromIdealData:&value];
    }
    return _kRedName;
}

//: activity_modify_new
- (NSString *)dreamMyValue {
    if (!_dreamMyValue) {
		NSString *origin = @"7d7f68756a75686543717378757a654372796bcd";
		NSData *data = [IdealData IdealDataToData:origin];
        StructIdealData value = (StructIdealData){28, (Byte *)data.bytes, 19, 137, 162, 6};
        _dreamMyValue = [self StringFromIdealData:&value];
    }
    return _dreamMyValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/29.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChangePasswordCell.h"
#import "CustomViewCell.h"

//: @interface NTESChangePasswordCell ()<UITextFieldDelegate>
@interface CustomViewCell ()<UITextFieldDelegate>

//: @end
@end

//: @implementation NTESChangePasswordCell
@implementation CustomViewCell

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
        //: make.height.mas_equalTo(150);
        make.height.mas_equalTo(150);
    //: }];
    }];


    //: UIView *lineView = [[UIView alloc] init];
    UIView *lineView = [[UIView alloc] init];
    //: lineView.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
    lineView.backgroundColor = [UIColor status:[IdealData sharedInstance].show_differentlyId];
    //: [self addSubview:lineView];
    [self addSubview:lineView];
    //: [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.top.mas_offset(50);
        make.top.mas_offset(50);
        //: make.height.mas_equalTo(1);
        make.height.mas_equalTo(1);
    //: }];
    }];

    //: UIView *lineView_ = [[UIView alloc] init];
    UIView *lineView_ = [[UIView alloc] init];
    //: lineView_.backgroundColor = [UIColor colorWithHexString:@"eeeeee"];
    lineView_.backgroundColor = [UIColor status:[IdealData sharedInstance].show_differentlyId];
    //: [self addSubview:lineView_];
    [self addSubview:lineView_];
    //: [lineView_ mas_makeConstraints:^(MASConstraintMaker *make) {
    [lineView_ mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.top.mas_offset(100);
        make.top.mas_offset(100);
        //: make.height.mas_equalTo(1);
        make.height.mas_equalTo(1);
    //: }];
    }];


    //: _textfile_1 = [[UITextField alloc] init];
    _textfile_1 = [[UITextField alloc] init];
    //: _textfile_1.secureTextEntry = YES;
    _textfile_1.secureTextEntry = YES;
    //: _textfile_1.font = [UIFont systemFontOfSize:16];
    _textfile_1.font = [UIFont systemFontOfSize:16];
    //: _textfile_1.delegate = self;
    _textfile_1.delegate = self;
    //: _textfile_1.placeholder = [BusyLanguageManager getTextWithKey:@"activity_modify_old"];
    _textfile_1.placeholder = [SendName streetSmart:[IdealData sharedInstance].kRedName];//@"请输入旧密码";
    //: [backGround addSubview:_textfile_1];
    [backGround addSubview:_textfile_1];
    //: [_textfile_1 mas_makeConstraints:^(MASConstraintMaker *make) {
    [_textfile_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(20);
        make.left.mas_offset(20);
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.top.mas_offset(5);
        make.top.mas_offset(5);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

    //: _textfile_2 = [[UITextField alloc] init];
    _textfile_2 = [[UITextField alloc] init];
    //: _textfile_2.secureTextEntry = YES;
    _textfile_2.secureTextEntry = YES;
    //: _textfile_2.font = [UIFont systemFontOfSize:16];
    _textfile_2.font = [UIFont systemFontOfSize:16];
    //: _textfile_2.delegate = self;
    _textfile_2.delegate = self;
    //: _textfile_2.placeholder = [BusyLanguageManager getTextWithKey:@"activity_modify_new"];
    _textfile_2.placeholder = [SendName streetSmart:[IdealData sharedInstance].dreamMyValue];//@"请输入新密码";
    //: [backGround addSubview:_textfile_2];
    [backGround addSubview:_textfile_2];
    //: [_textfile_2 mas_makeConstraints:^(MASConstraintMaker *make) {
    [_textfile_2 mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(20);
        make.left.mas_offset(20);
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.top.mas_offset(55);
        make.top.mas_offset(55);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

    //: _textfile_3 = [[UITextField alloc] init];
    _textfile_3 = [[UITextField alloc] init];
    //: _textfile_3.secureTextEntry = YES;
    _textfile_3.secureTextEntry = YES;
    //: _textfile_3.font = [UIFont systemFontOfSize:16];
    _textfile_3.font = [UIFont systemFontOfSize:16];
    //: _textfile_3.delegate = self;
    _textfile_3.delegate = self;
    //: _textfile_3.placeholder = [BusyLanguageManager getTextWithKey:@"activity_modify_new"];
    _textfile_3.placeholder = [SendName streetSmart:[IdealData sharedInstance].dreamMyValue];//@"请确认新密码";
    //: [backGround addSubview:_textfile_3];
    [backGround addSubview:_textfile_3];
    //: [_textfile_3 mas_makeConstraints:^(MASConstraintMaker *make) {
    [_textfile_3 mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(20);
        make.left.mas_offset(20);
        //: make.right.mas_offset(-20);
        make.right.mas_offset(-20);
        //: make.top.mas_offset(105);
        make.top.mas_offset(105);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

}

//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //: [textField resignFirstResponder];
    [textField resignFirstResponder];
    //: return YES;
    return YES;
}

//: @end
@end
