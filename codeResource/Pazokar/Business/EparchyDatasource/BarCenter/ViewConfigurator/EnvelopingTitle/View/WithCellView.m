
#import <Foundation/Foundation.h>

typedef struct {
    Byte factorAfter;
    Byte *purchase;
    unsigned int seeAh;
	int beamChild;
	int customerAdequate;
	int mentorFive;
} StructNumberData;

@interface NumberData : NSObject

+ (instancetype)sharedInstance;

//: #02D8C9
@property (nonatomic, copy) NSString *mainFinFormat;

@end

@implementation NumberData

+ (instancetype)sharedInstance {
    static NumberData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)NumberDataToData:(NSString *)value {
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

- (Byte *)NumberDataToByte:(StructNumberData *)data {
    for (int i = 0; i < data->seeAh; i++) {
        data->purchase[i] ^= data->factorAfter;
    }
    data->purchase[data->seeAh] = 0;
	if (data->seeAh >= 3) {
		data->beamChild = data->purchase[0];
		data->customerAdequate = data->purchase[1];
		data->mentorFive = data->purchase[2];
	}
    return data->purchase;
}

- (NSString *)StringFromNumberData:(StructNumberData *)data {
    return [NSString stringWithUTF8String:(char *)[self NumberDataToByte:data]];
}

//: #02D8C9
- (NSString *)mainFinFormat {
    if (!_mainFinFormat) {
		NSString *origin = @"F5E6E492EE95EFA9";
		NSData *data = [NumberData NumberDataToData:origin];
        StructNumberData value = (StructNumberData){214, (Byte *)data.bytes, 7, 223, 108, 162};
        _mainFinFormat = [self StringFromNumberData:&value];
    }
    return _mainFinFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamSwitchTableViewCell.m
//  NIM
//
//  Created by amao on 5/29/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyTeamSwitchTableViewCell.h"
#import "WithCellView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @implementation BusyTeamSwitchTableViewCell
@implementation WithCellView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        //: _switcher.onTintColor = [UIColor colorWithHexString:@"#02D8C9"];
        _switcher.onTintColor = [UIColor status:[NumberData sharedInstance].mainFinFormat];
        //: [_switcher addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
        [_switcher addTarget:self action:@selector(scaleValue:) forControlEvents:UIControlEventValueChanged];
        //: [self.contentView addSubview:_switcher];
        [self.contentView addSubview:_switcher];
    }
    //: return self;
    return self;
}

//: - (void)valueChanged:(id)sender {
- (void)scaleValue:(id)sender {
    //: if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(cell:onStateChanged:)])
    if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(media:menu:)])
    {
        //: [_switchDelegate cell:self onStateChanged:_switcher.isOn];
        [_switchDelegate media:self menu:_switcher.isOn];
    }
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat right = 20.f;
    CGFloat right = 20.f;
    //: self.switcher.nim_right = self.nim_width - right;
    self.switcher.nim_right = self.nim_width - right;
    //: self.switcher.nim_centerY = self.nim_height * .5;
    self.switcher.nim_centerY = self.nim_height * .5;
}


//: @end
@end
