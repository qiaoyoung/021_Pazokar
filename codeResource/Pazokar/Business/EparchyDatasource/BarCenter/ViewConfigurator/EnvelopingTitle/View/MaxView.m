
#import <Foundation/Foundation.h>

@interface ReliabilityData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ReliabilityData

+ (instancetype)sharedInstance {
    static ReliabilityData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ReliabilityDataToData:(NSString *)value {
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

- (Byte *)ReliabilityDataToCache:(Byte *)data {
    int educationalActivity = data[0];
    Byte negativeClothe = data[1];
    int blinkClothe = data[2];
    for (int i = blinkClothe; i < blinkClothe + educationalActivity; i++) {
        int value = data[i] - negativeClothe;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[blinkClothe + educationalActivity] = 0;
    return data + blinkClothe;
}

- (NSString *)StringFromReliabilityData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ReliabilityDataToCache:data]];
}

//: #ECECEC
- (NSString *)notiBeerValue {
    /* static */ NSString *notiBeerValue = nil;
    if (!notiBeerValue) {
		NSString *origin = @"071106998DF434565456545654AC";
		NSData *data = [ReliabilityData ReliabilityDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiBeerValue = [self StringFromReliabilityData:value];
    }
    return notiBeerValue;
}

//: icon_me_arrow
- (NSString *)main_inputPath {
    /* static */ NSString *main_inputPath = nil;
    if (!main_inputPath) {
		NSString *origin = @"0D0E09F3A35E25E8B377717D7C6D7B736D6F80807D853F";
		NSData *data = [ReliabilityData ReliabilityDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_inputPath = [self StringFromReliabilityData:value];
    }
    return main_inputPath;
}

//: #02D8C9
- (NSString *)appSpouseTitle {
    /* static */ NSString *appSpouseTitle = nil;
    if (!appSpouseTitle) {
		NSString *origin = @"075305D986768385978B968C83";
		NSData *data = [ReliabilityData ReliabilityDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appSpouseTitle = [self StringFromReliabilityData:value];
    }
    return appSpouseTitle;
}

//: #2C3042
- (NSString *)m_enableText {
    /* static */ NSString *m_enableText = nil;
    if (!m_enableText) {
		NSString *origin = @"070D0974E0C346B806303F50403D413F13";
		NSData *data = [ReliabilityData ReliabilityDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_enableText = [self StringFromReliabilityData:value];
    }
    return m_enableText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/30.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyGroupEditTableViewCell.h"
#import "MaxView.h"

//: @implementation BusyGroupEditTableViewCell
@implementation MaxView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];

        //: [self initSubviews];
        [self initMessage];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews {
- (void)initMessage {
    //: [self.contentView addSubview:self.iconImageView];
    [self.contentView addSubview:self.iconImageView];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];
    //: [self.contentView addSubview:self.arrowsImageView];
    [self.contentView addSubview:self.arrowsImageView];
//    [self.contentView addSubview:self.contentLabel];
//    [self.contentView addSubview:self.lineView];

    //: self.iconImageView.frame = CGRectMake(15, 11, 28, 28);
    self.iconImageView.frame = CGRectMake(15, 11, 28, 28);
    //: self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 19, 12, 12);
    self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 19, 12, 12);
    //: self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 11, 250, 28);
    self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 11, 250, 28);
//    self.contentLabel.frame = CGRectMake(self.titleLabel.left+5, self.titleLabel.bottom+5, SCREEN_WIDTH-80, 15);
//    self.lineView.frame = CGRectMake(60, 49.5, SCREEN_WIDTH-90, 0.5);


}

//: - (UIView *)lineView
- (UIView *)lineView
{
    //: if(!_lineView){
    if(!_lineView){
        //: _lineView = [[UIView alloc]init];
        _lineView = [[UIView alloc]init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        _lineView.backgroundColor = [UIColor status:[[ReliabilityData sharedInstance] notiBeerValue]];
    }
    //: return _lineView;
    return _lineView;
}

//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}

//: - (UIImageView *)arrowsImageView {
- (UIImageView *)arrowsImageView {
    //: if (!_arrowsImageView) {
    if (!_arrowsImageView) {
        //: _arrowsImageView = [[UIImageView alloc] init];
        _arrowsImageView = [[UIImageView alloc] init];
        //: _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        //: _arrowsImageView.image = [UIImage imageNamed:@"icon_me_arrow"];
        _arrowsImageView.image = [UIImage imageNamed:[[ReliabilityData sharedInstance] main_inputPath]];
    }
    //: return _arrowsImageView;
    return _arrowsImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:14.f];
        _titleLabel.font = [UIFont systemFontOfSize:14.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor status:[[ReliabilityData sharedInstance] m_enableText]];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)contentLabel {
- (UILabel *)contentLabel {
    //: if (!_contentLabel) {
    if (!_contentLabel) {
        //: _contentLabel = [[UILabel alloc] init];
        _contentLabel = [[UILabel alloc] init];
        //: _contentLabel.font = [UIFont systemFontOfSize:12.f];
        _contentLabel.font = [UIFont systemFontOfSize:12.f];
        //: _contentLabel.textColor = [UIColor colorWithHexString:@"#02D8C9"];
        _contentLabel.textColor = [UIColor status:[[ReliabilityData sharedInstance] appSpouseTitle]];
        //: _contentLabel.textAlignment = NSTextAlignmentLeft;
        _contentLabel.textAlignment = NSTextAlignmentLeft;
        //: _contentLabel.numberOfLines = 1;
        _contentLabel.numberOfLines = 1;
        //: _contentLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _contentLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _contentLabel;
    return _contentLabel;
}



//: @end
@end
