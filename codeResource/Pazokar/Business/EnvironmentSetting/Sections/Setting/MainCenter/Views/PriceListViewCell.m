
#import <Foundation/Foundation.h>

@interface WoodenNameData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation WoodenNameData

+ (instancetype)sharedInstance {
    static WoodenNameData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)WoodenNameDataToData:(NSString *)value {
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

- (Byte *)WoodenNameDataToCache:(Byte *)data {
    int valueTitle = data[0];
    Byte greenNearly = data[1];
    int most = data[2];
    for (int i = most; i < most + valueTitle; i++) {
        int value = data[i] - greenNearly;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[most + valueTitle] = 0;
    return data + most;
}

- (NSString *)StringFromWoodenNameData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self WoodenNameDataToCache:data]];
}

//: user_device_phone
- (NSString *)user_aggressiveId {
    /* static */ NSString *user_aggressiveId = nil;
    if (!user_aggressiveId) {
		NSString *origin = @"114b0a1fa879876b40eec0beb0bdaaafb0c1b4aeb0aabbb3bab9b066";
		NSData *data = [WoodenNameData WoodenNameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_aggressiveId = [self StringFromWoodenNameData:value];
    }
    return user_aggressiveId;
}

//: iPhone
- (NSString *)kManagerMsg {
    /* static */ NSString *kManagerMsg = nil;
    if (!kManagerMsg) {
		NSString *origin = @"066203cbb2cad1d0c7a6";
		NSData *data = [WoodenNameData WoodenNameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kManagerMsg = [self StringFromWoodenNameData:value];
    }
    return kManagerMsg;
}

//: systems
- (NSString *)m_seedStr {
    /* static */ NSString *m_seedStr = nil;
    if (!m_seedStr) {
		NSString *origin = @"07150c4aa39831192676caab888e88897a828811";
		NSData *data = [WoodenNameData WoodenNameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_seedStr = [self StringFromWoodenNameData:value];
    }
    return m_seedStr;
}

//: addtime
- (NSString *)kMakeName {
    /* static */ NSString *kMakeName = nil;
    if (!kMakeName) {
		NSString *origin = @"071804ae797c7c8c81857dfb";
		NSData *data = [WoodenNameData WoodenNameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kMakeName = [self StringFromWoodenNameData:value];
    }
    return kMakeName;
}

//: telname
- (NSString *)userSeparatePath {
    /* static */ NSString *userSeparatePath = nil;
    if (!userSeparatePath) {
		NSString *origin = @"0701043a75666d6f626e667b";
		NSData *data = [WoodenNameData WoodenNameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userSeparatePath = [self StringFromWoodenNameData:value];
    }
    return userSeparatePath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PriceListViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/13.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESDeviceListTableViewCell.h"
#import "PriceListViewCell.h"

//: @implementation NTESDeviceListTableViewCell
@implementation PriceListViewCell

//: - (void)initSubviews{
- (void)initBe{

    //: _deviceName = [[UILabel alloc] init];
    _deviceName = [[UILabel alloc] init];
    //: _deviceName.text = @"iPhone";
    _deviceName.text = [[WoodenNameData sharedInstance] kManagerMsg];
    //: _deviceName.font = [UIFont systemFontOfSize:16];
    _deviceName.font = [UIFont systemFontOfSize:16];
    //: _deviceName.textColor = [UIColor blackColor];
    _deviceName.textColor = [UIColor blackColor];
    //: [self addSubview:_deviceName];
    [self addSubview:_deviceName];
    //: [_deviceName mas_makeConstraints:^(MASConstraintMaker *make) {
    [_deviceName mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.top.mas_offset(15);
        make.top.mas_offset(15);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_offset(20);
        make.height.mas_offset(20);
    //: }];
    }];

    //: _imageViewIcon = [[UIImageView alloc] init];
    _imageViewIcon = [[UIImageView alloc] init];
    //: _imageViewIcon.image = [UIImage imageNamed:@"user_device_phone"];
    _imageViewIcon.image = [UIImage imageNamed:[[WoodenNameData sharedInstance] user_aggressiveId]];
    //: [self addSubview:_imageViewIcon];
    [self addSubview:_imageViewIcon];
    //: [_imageViewIcon mas_makeConstraints:^(MASConstraintMaker *make) {
    [_imageViewIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_equalTo(_deviceName.mas_bottom).mas_offset(10);
        make.top.mas_equalTo(_deviceName.mas_bottom).mas_offset(10);
        //: make.bottom.mas_offset(-10);
        make.bottom.mas_offset(-10);
        //: make.width.mas_equalTo(30);
        make.width.mas_equalTo(30);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);

    //: }];
    }];


    //: _timeLabel = [[UILabel alloc] init];
    _timeLabel = [[UILabel alloc] init];
    //: _timeLabel.text = @"iPhone";
    _timeLabel.text = [[WoodenNameData sharedInstance] kManagerMsg];
    //: _timeLabel.font = [UIFont systemFontOfSize:14];
    _timeLabel.font = [UIFont systemFontOfSize:14];
    //: _timeLabel.textColor = [UIColor lightGrayColor];
    _timeLabel.textColor = [UIColor lightGrayColor];
    //: _timeLabel.textAlignment = NSTextAlignmentRight;
    _timeLabel.textAlignment = NSTextAlignmentRight;
    //: [self addSubview:_timeLabel];
    [self addSubview:_timeLabel];
    //: [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.top.mas_offset(15);
        make.top.mas_offset(15);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_offset(20);
        make.height.mas_offset(20);
    //: }];
    }];

    //: _deveceVersion = [[UILabel alloc] init];
    _deveceVersion = [[UILabel alloc] init];
    //: _deveceVersion.text = @"iPhone";
    _deveceVersion.text = [[WoodenNameData sharedInstance] kManagerMsg];
    //: _deveceVersion.font = [UIFont systemFontOfSize:14];
    _deveceVersion.font = [UIFont systemFontOfSize:14];
    //: _deveceVersion.textAlignment = NSTextAlignmentRight;
    _deveceVersion.textAlignment = NSTextAlignmentRight;
    //: _deveceVersion.textColor = [UIColor lightGrayColor];
    _deveceVersion.textColor = [UIColor lightGrayColor];
    //: [self addSubview:_deveceVersion];
    [self addSubview:_deveceVersion];
    //: [_deveceVersion mas_makeConstraints:^(MASConstraintMaker *make) {
    [_deveceVersion mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.bottom.mas_offset(-15);
        make.bottom.mas_offset(-15);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_offset(20);
        make.height.mas_offset(20);
    //: }];
    }];
}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)icon:(NSDictionary *)information{
    //: _deviceName.text = [information newStringValueForKey:@"telname"];
    _deviceName.text = [information tag:[[WoodenNameData sharedInstance] userSeparatePath]];
    //: _deveceVersion.text = [information newStringValueForKey:@"systems"];
    _deveceVersion.text = [information tag:[[WoodenNameData sharedInstance] m_seedStr]];
    //: _timeLabel.text = [information newStringValueForKey:@"addtime"];
    _timeLabel.text = [information tag:[[WoodenNameData sharedInstance] kMakeName]];
}

//: @end
@end