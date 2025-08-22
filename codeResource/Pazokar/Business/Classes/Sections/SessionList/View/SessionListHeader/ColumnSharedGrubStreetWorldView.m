
#import <Foundation/Foundation.h>

@interface ObjectData : NSObject

@end

@implementation ObjectData

+ (NSData *)ObjectDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)ObjectDataToCache:(Byte *)data {
    int nextLabel = data[0];
    Byte makeShould = data[1];
    int wellhead = data[2];
    for (int i = wellhead; i < wellhead + nextLabel; i++) {
        int value = data[i] + makeShould;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[wellhead + nextLabel] = 0;
    return data + wellhead;
}

+ (NSString *)StringFromObjectData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ObjectDataToCache:data]];
}

//: ic-waring
+ (NSString *)main_popTitleKey {
    /* static */ NSString *main_popTitleKey = nil;
    if (!main_popTitleKey) {
		NSArray<NSNumber *> *origin = @[@9, @26, @8, @180, @142, @139, @72, @187, @79, @73, @19, @93, @71, @88, @79, @84, @77, @51];
		NSData *data = [ObjectData ObjectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_popTitleKey = [self StringFromObjectData:value];
    }
    return main_popTitleKey;
}

//: #FF483D
+ (NSString *)kTitleReadContentValue {
    /* static */ NSString *kTitleReadContentValue = nil;
    if (!kTitleReadContentValue) {
		NSArray<NSNumber *> *origin = @[@7, @75, @6, @198, @217, @136, @216, @251, @251, @233, @237, @232, @249, @149];
		NSData *data = [ObjectData ObjectDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleReadContentValue = [self StringFromObjectData:value];
    }
    return kTitleReadContentValue;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESNetStatusHeaderView.m
//  NIM
//
//  Created by chris on 15/7/22.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESTextHeaderView.h"
#import "ColumnSharedGrubStreetWorldView.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"

//: @implementation NTESTextHeaderView
@implementation ColumnSharedGrubStreetWorldView

//: - (instancetype) initWithFrame:(CGRect)frame{
- (instancetype) initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor colorWithHexString:@"#FF483D"];
        _label.textColor = [UIColor status:[ObjectData kTitleReadContentValue]];
        //: _label.font = [UIFont systemFontOfSize:12.f];
        _label.font = [UIFont systemFontOfSize:12.f];
        //: [self addSubview:_label];
        [self addSubview:_label];

        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic-waring"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[ObjectData main_popTitleKey]]];
        //: [self addSubview:_img];
        [self addSubview:_img];
    }
    //: return self;
    return self;
}

//: - (void)setContentText:(NSString *)content{
- (void)setEnableContent:(NSString *)content{
    //: self.label.text = content;
    self.label.text = content;
}


//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: [self.label sizeToFit];
    [self.label sizeToFit];
    //: CGSize contentSize = self.label.frame.size;
    CGSize contentSize = self.label.frame.size;
    //: return CGSizeMake(self.width, contentSize.height + 10 * 2);
    return CGSizeMake(self.width, contentSize.height + 10 * 2);
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.label.centerX = self.width * .5f;
    self.label.centerX = self.width * .5f;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.img.centerY = self.height * .5f;
    self.img.centerY = self.height * .5f;
    //: self.img.right = self.label.left -10;
    self.img.right = self.label.left -10;
}

//: @end
@end