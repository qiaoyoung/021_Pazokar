
#import <Foundation/Foundation.h>

@interface RuddyData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation RuddyData

+ (instancetype)sharedInstance {
    static RuddyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)RuddyDataToData:(NSString *)value {
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

- (Byte *)RuddyDataToCache:(Byte *)data {
    int agnomen = data[0];
    Byte barModeCatalog = data[1];
    int worldView = data[2];
    for (int i = worldView; i < worldView + agnomen; i++) {
        int value = data[i] + barModeCatalog;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[worldView + agnomen] = 0;
    return data + worldView;
}

- (NSString *)StringFromRuddyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RuddyDataToCache:data]];
}

//: icon_muti_clients
- (NSString *)userModeShouldFormat {
    /* static */ NSString *userModeShouldFormat = nil;
    if (!userModeShouldFormat) {
		NSString *origin = @"11470a543f13ea98a52c221c282718262e2d22181c25221e272d2cb4";
		NSData *data = [RuddyData RuddyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userModeShouldFormat = [self StringFromRuddyData:value];
    }
    return userModeShouldFormat;
}

//: icon_arrow
- (NSString *)k_showTitleMessage {
    /* static */ NSString *k_showTitleMessage = nil;
    if (!k_showTitleMessage) {
		NSString *origin = @"0a170bb951e31e3f818f97524c5857484a5b5b586058";
		NSData *data = [RuddyData RuddyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_showTitleMessage = [self StringFromRuddyData:value];
    }
    return k_showTitleMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterButton.m
//  NIM
//
//  Created by chris on 15/7/22.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMutiClientsHeaderView.h"
#import "CenterButton.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"

//: @interface NTESMutiClientsHeaderView()
@interface CenterButton()

//: @property (nonatomic,strong) UIImageView *icon;
@property (nonatomic,strong) UIImageView *icon;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: @end
@end

//: @implementation NTESMutiClientsHeaderView
@implementation CenterButton

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_muti_clients"]];
        _icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[[RuddyData sharedInstance] userModeShouldFormat]]];
        //: [self addSubview:_icon];
        [self addSubview:_icon];

        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor colorWithRed:((float)((0x888888 & 0xFF0000) >> 16))/255.0 green:((float)((0x888888 & 0x00FF00) >> 8))/255.0 blue:((float)(0x888888 & 0x0000FF))/255.0 alpha:1.0];
        _label.textColor = [UIColor colorWithRed:((float)((0x888888 & 0xFF0000) >> 16))/255.0 green:((float)((0x888888 & 0x00FF00) >> 8))/255.0 blue:((float)(0x888888 & 0x0000FF))/255.0 alpha:1.0];
        //: _label.font = [UIFont boldSystemFontOfSize:14.f];
        _label.font = [UIFont boldSystemFontOfSize:14.f];
        //: [self addSubview:_label];
        [self addSubview:_label];

        //: _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_arrow"] forState:UIControlStateNormal];
        [_accessoryBtn setImage:[UIImage imageNamed:[[RuddyData sharedInstance] k_showTitleMessage]] forState:UIControlStateNormal];
        //: [_accessoryBtn sizeToFit];
        [_accessoryBtn sizeToFit];
        //: [self addSubview:_accessoryBtn];
        [self addSubview:_accessoryBtn];
    }
    //: return self;
    return self;
}

//: CGFloat TextPadding = 17.f;
CGFloat m_quickStr = 17.f;
//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: [self.label sizeToFit];
    [self.label sizeToFit];
    //: CGSize contentSize = self.label.frame.size;
    CGSize contentSize = self.label.frame.size;
    //: return CGSizeMake(self.width, contentSize.height + TextPadding * 2);
    return CGSizeMake(self.width, contentSize.height + m_quickStr * 2);
}


//: #pragma mark - NTESSessionListHeaderView
#pragma mark - NTESSessionListHeaderView
//: - (void)setContentText:(NSString *)content{
- (void)setEnableContent:(NSString *)content{
    //: self.label.text = content;
    self.label.text = content;
}


//: CGFloat IconLeft = 10.f;
CGFloat dreamInsideTitle = 10.f;
//: CGFloat IconAndContentSpacing = 10.f;
CGFloat kKeepCellName = 10.f;
//: CGFloat ArrowRight = 12.f;
CGFloat dreamUnitData = 12.f;
//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.icon.left = IconLeft;
    self.icon.left = dreamInsideTitle;
    //: self.icon.centerY = self.height * .5f;
    self.icon.centerY = self.height * .5f;
    //: self.label.left = self.icon.right + IconAndContentSpacing;
    self.label.left = self.icon.right + kKeepCellName;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.accessoryBtn.right = self.width - ArrowRight;
    self.accessoryBtn.right = self.width - dreamUnitData;
    //: self.accessoryBtn.centerY = self.height * .5f;
    self.accessoryBtn.centerY = self.height * .5f;
}

//: @end
@end