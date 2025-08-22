
#import <Foundation/Foundation.h>

typedef struct {
    Byte sort;
    Byte *redWith;
    unsigned int green;
	int matronymic;
} StructPathVerticalData;

@interface PathVerticalData : NSObject

@end

@implementation PathVerticalData

+ (Byte *)PathVerticalDataToByte:(StructPathVerticalData *)data {
    for (int i = 0; i < data->green; i++) {
        data->redWith[i] ^= data->sort;
    }
    data->redWith[data->green] = 0;
	if (data->green >= 1) {
		data->matronymic = data->redWith[0];
	}
    return data->redWith;
}

+ (NSString *)StringFromPathVerticalData:(StructPathVerticalData *)data {
    return [NSString stringWithUTF8String:(char *)[self PathVerticalDataToByte:data]];
}

//: #F7F8FB
+ (NSString *)main_nameMessage {
    /* static */ NSString *main_nameMessage = nil;
    if (!main_nameMessage) {
        StructPathVerticalData value = (StructPathVerticalData){224, (Byte []){195, 166, 215, 166, 216, 166, 162, 213}, 7, 222};
        main_nameMessage = [self StringFromPathVerticalData:&value];
    }
    return main_nameMessage;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeviceLengthView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/27.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactTableHeader.h"
#import "DeviceLengthView.h"

//: @implementation NTESContactTableHeader
@implementation DeviceLengthView

//: -(instancetype)init{
-(instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#F7F8FB"];
        self.backgroundColor = [UIColor status:[PathVerticalData main_nameMessage]];

        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.textColor = [UIColor lightGrayColor];
        _titleLabel.textColor = [UIColor lightGrayColor];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.centerY.mas_offset(0);
            make.centerY.mas_offset(0);
            //: make.left.mas_offset(18);
            make.left.mas_offset(18);
            //: make.width.mas_equalTo(100);
            make.width.mas_equalTo(100);
            //: make.height.mas_equalTo(15);
            make.height.mas_equalTo(15);
        //: }];
        }];
    }
    //: return self;
    return self;
}

//: @end
@end




//: @implementation NTESContactTableHeaderGroup
@implementation CompanyNameView

//: -(instancetype)init{
-(instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#F7F8FB"];
        self.backgroundColor = [UIColor status:[PathVerticalData main_nameMessage]];

        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.centerY.mas_offset(0);
            make.centerY.mas_offset(0);
            //: make.left.mas_offset(18);
            make.left.mas_offset(18);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: _arrowImageView = [[UIImageView alloc] init];
        _arrowImageView = [[UIImageView alloc] init];
        //: [self addSubview:_arrowImageView];
        [self addSubview:_arrowImageView];
        //: [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.centerY.mas_offset(0);
            make.centerY.mas_offset(0);
            //: make.right.mas_offset(-15);
            make.right.mas_offset(-15);
            //: make.width.mas_equalTo(14);
            make.width.mas_equalTo(14);
            //: make.height.mas_equalTo(8);
            make.height.mas_equalTo(8);
        //: }];
        }];

        //: UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(increases:) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:button];
        [self addSubview:button];
        //: [button mas_makeConstraints:^(MASConstraintMaker *make) {
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.bottom.mas_offset(0);
            make.bottom.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
        //: }];
        }];
    }
    //: return self;
    return self;
}

//: -(void)buttonClick:(UIButton *)sender{
-(void)increases:(UIButton *)sender{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(headerClickWith:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(undersided:)]) {
        //: [self.delegate headerClickWith:self.section];
        [self.delegate undersided:self.section];
    }
}

//: @end
@end