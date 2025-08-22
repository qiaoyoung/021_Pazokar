
#import <Foundation/Foundation.h>

@interface TowerInkData : NSObject

@end

@implementation TowerInkData

+ (NSData *)TowerInkDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)TowerInkDataToCache:(Byte *)data {
    int disappointedLabel = data[0];
    Byte readTelevision = data[1];
    int yaExplain = data[2];
    for (int i = yaExplain; i < yaExplain + disappointedLabel; i++) {
        int value = data[i] - readTelevision;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[yaExplain + disappointedLabel] = 0;
    return data + yaExplain;
}

+ (NSString *)StringFromTowerInkData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TowerInkDataToCache:data]];
}

//: H:|-0-[_progressView]-0-|
+ (NSString *)mClotheData {
    /* static */ NSString *mClotheData = nil;
    if (!mClotheData) {
		NSArray<NSNumber *> *origin = @[@25, @42, @6, @238, @51, @220, @114, @100, @166, @87, @90, @87, @133, @137, @154, @156, @153, @145, @156, @143, @157, @157, @128, @147, @143, @161, @135, @87, @90, @87, @166, @31];
		NSData *data = [TowerInkData TowerInkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mClotheData = [self StringFromTowerInkData:value];
    }
    return mClotheData;
}

//: V:|-0-[_progressView]-0-|
+ (NSString *)dream_recordValue {
    /* static */ NSString *dream_recordValue = nil;
    if (!dream_recordValue) {
		NSArray<NSNumber *> *origin = @[@25, @67, @8, @222, @190, @76, @169, @88, @153, @125, @191, @112, @115, @112, @158, @162, @179, @181, @178, @170, @181, @168, @182, @182, @153, @172, @168, @186, @160, @112, @115, @112, @191, @247];
		NSData *data = [TowerInkData TowerInkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_recordValue = [self StringFromTowerInkData:value];
    }
    return dream_recordValue;
}

//: #A148FF
+ (NSString *)m_removeId {
    /* static */ NSString *m_removeId = nil;
    if (!m_removeId) {
		NSArray<NSNumber *> *origin = @[@7, @94, @10, @159, @223, @28, @123, @200, @140, @69, @129, @159, @143, @146, @150, @164, @164, @134];
		NSData *data = [TowerInkData TowerInkDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_removeId = [self StringFromTowerInkData:value];
    }
    return m_removeId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BuildView.m
//  NIM
//
//  Created by ios on 13-11-9.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFLoadProgressView.h"
#import "BuildView.h"

//: @implementation FFFLoadProgressView
@implementation BuildView

//: - (id)initWithFrame:(CGRect)frame {
- (id)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];

    //: if (self) {
    if (self) {
        //: _maskView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _maskView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: _maskView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
        _maskView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
        //: [self addSubview:_maskView];
        [self addSubview:_maskView];

//        _progressLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _progressLabel.backgroundColor = [UIColor clearColor];
//        _progressLabel.font = [UIFont systemFontOfSize:16];
//        _progressLabel.textColor = [UIColor whiteColor];
//        [self addSubview:_progressLabel];
//
//        _activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
//        [self addSubview:_activity];

        //: self.progressView = [[UCZProgressView alloc] initWithFrame:self.bounds];
        self.progressView = [[UCZProgressView alloc] initWithFrame:self.bounds];
        //: self.progressView.backgroundColor = [UIColor clearColor];
        self.progressView.backgroundColor = [UIColor clearColor];
        //: self.progressView.translatesAutoresizingMaskIntoConstraints = NO;
        self.progressView.translatesAutoresizingMaskIntoConstraints = NO;
        //: self.progressView.showsText = YES;
        self.progressView.showsText = YES;
        //: self.progressView.tintColor = [UIColor colorWithHexString:@"#A148FF"];
        self.progressView.tintColor = [UIColor status:[TowerInkData m_removeId]];
//        self.progressView.tintColor = RGB_COLOR_String(kCommonBGColor_All);
//        self.progressView.tintColor = [UIColor colorWithPatternImage:[ColorSort getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionLevel]];

        //: [self addSubview:self.progressView];
        [self addSubview:self.progressView];

        //: NSDictionary *views = NSDictionaryOfVariableBindings(_progressView);
        NSDictionary *views = NSDictionaryOfVariableBindings(_progressView);
        //: [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[_progressView]-0-|" options:0 metrics:nil views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[TowerInkData dream_recordValue] options:0 metrics:nil views:views]];
        //: [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[_progressView]-0-|" options:0 metrics:nil views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[TowerInkData mClotheData] options:0 metrics:nil views:views]];

    }

    //: return self;
    return self;
}



//: - (void)maskBubbleImageView:(CGRect)maskRect markImageView:(UIImageView*)messageContentImageView
- (void)tapCell:(CGRect)maskRect qualify:(UIImageView*)messageContentImageView
{
    //: CALayer *maskLayer = [CALayer layer];
    CALayer *maskLayer = [CALayer layer];
    //: maskLayer.frame = maskRect;
    maskLayer.frame = maskRect;
    //: maskLayer.contentsGravity = kCAGravityResize;
    maskLayer.contentsGravity = kCAGravityResize;


    //: messageContentImageView.layer.mask = maskLayer;
    messageContentImageView.layer.mask = maskLayer;
    //: messageContentImageView.layer.masksToBounds = YES;
    messageContentImageView.layer.masksToBounds = YES;
}
//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: _maskView.frame = self.bounds;
    _maskView.frame = self.bounds;

//    CGFloat activityHeight = CGRectGetHeight(_activity.bounds);
//    CGSize  size = [_progressLabel.text sizeWithAttributes:@{NSFontAttributeName:_progressLabel.font}];
//
//    CGFloat progressHeight = size.height;
//
//    CGFloat totalHeight = activityHeight;
//    if (progressHeight) {
//        totalHeight += kPadding + size.height;
//    }
//
//    CGFloat y = (CGRectGetHeight(self.bounds) - totalHeight)/2.0;
//    _activity.center = CGPointMake(CGRectGetMidX(self.bounds), y+CGRectGetMidY(_activity.bounds));
//
//    _progressLabel.bounds = CGRectMake(0, 0, size.width, size.height);
//    _progressLabel.center = CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMaxY(_activity.frame) + kPadding + size.height/2.0);


    //: CGRect frame = self.bounds;
    CGRect frame = self.bounds;
    //: frame.origin.x = frame.origin.x - 4;
    frame.origin.x = frame.origin.x - 4;
    //: frame.origin.y = frame.origin.y - 4;
    frame.origin.y = frame.origin.y - 4;
    //: frame.size.width = frame.size.width + 12;
    frame.size.width = frame.size.width + 12;
    //: frame.size.height = frame.size.height + 8;
    frame.size.height = frame.size.height + 8;
    //: [self maskBubbleImageView:frame markImageView:_maskView];
    [self tapCell:frame qualify:_maskView];
}

//: - (void)setProgress:(CGFloat)progress {
- (void)setOf:(CGFloat)progress {
    //: if (progress > self.maxProgress) {
    if (progress > self.maxProgress) {
//        _progressLabel.text = [NSString stringWithFormat:@"%d%%", (int)(self.maxProgress*100)];
//        [_activity stopAnimating];
    //: }else if (progress <= 0) {
    }else if (progress <= 0) {
//        _progressLabel.text = @"0%";
//        [_activity startAnimating];
    //: }else {
    }else {
//        _progressLabel.text = [NSString stringWithFormat:@"%d%%", (int)(progress*100)];
//        [_activity startAnimating];
        //: self.progressView.progress = progress;
        self.progressView.progress = progress;
    }

    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: @end
@end