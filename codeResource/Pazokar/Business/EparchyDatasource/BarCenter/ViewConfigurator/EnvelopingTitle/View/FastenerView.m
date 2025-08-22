
#import <Foundation/Foundation.h>

@interface CooperationData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CooperationData

+ (instancetype)sharedInstance {
    static CooperationData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)CooperationDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)CooperationDataToCache:(Byte *)data {
    int gent = data[0];
    Byte marathon = data[1];
    int cityCentre = data[2];
    for (int i = cityCentre; i < cityCentre + gent; i++) {
        int value = data[i] - marathon;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[cityCentre + gent] = 0;
    return data + cityCentre;
}

- (NSString *)StringFromCooperationData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CooperationDataToCache:data]];
}

//: Group_Me
- (NSString *)k_teamMessage {
    /* static */ NSString *k_teamMessage = nil;
    if (!k_teamMessage) {
		NSArray<NSString *> *origin = @[@"8", @"77", @"7", @"149", @"92", @"23", @"35", @"148", @"191", @"188", @"194", @"189", @"172", @"154", @"178", @"43"];
		NSData *data = [CooperationData CooperationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_teamMessage = [self StringFromCooperationData:value];
    }
    return k_teamMessage;
}

//: icon_avatar_del
- (NSString *)dreamLabelIdent {
    /* static */ NSString *dreamLabelIdent = nil;
    if (!dreamLabelIdent) {
		NSArray<NSString *> *origin = @[@"15", @"24", @"8", @"146", @"162", @"30", @"67", @"161", @"129", @"123", @"135", @"134", @"119", @"121", @"142", @"121", @"140", @"121", @"138", @"119", @"124", @"125", @"132", @"200"];
		NSData *data = [CooperationData CooperationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamLabelIdent = [self StringFromCooperationData:value];
    }
    return dreamLabelIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardHeaderCell.m
//  NIM
//
//  Created by chris on 15/3/7.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyCardHeaderCell.h"
#import "FastenerView.h"
//: #import "BusyAvatarImageView.h"
#import "CustomFormatView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "BusyTeamHelper.h"
#import "EnvelopingTitle.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Case.h"

//: @interface BusyCardHeaderCell()
@interface FastenerView()

//: @property (nonatomic,strong) id<BusyKitCardHeaderData> data;
@property (nonatomic,strong) id<BusyKitCardHeaderData> data;

//: @end
@end

//: @implementation BusyCardHeaderCell
@implementation FastenerView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _imageView = [[BusyAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 55, 55)];
        _imageView = [[CustomFormatView alloc] initWithFrame:CGRectMake(0, 0, 55, 55)];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.font = [UIFont systemFontOfSize:13.f];
        _titleLabel.font = [UIFont systemFontOfSize:13.f];
        //: _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.backgroundColor = [UIColor clearColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self addSubview:_roleImageView];
        [self addSubview:_roleImageView];
        //: _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _removeBtn.hidden = YES;
        _removeBtn.hidden = YES;
        //: [_removeBtn setImage:[UIImage imageNamed:@"icon_avatar_del"] forState:UIControlStateNormal];
        [_removeBtn setImage:[UIImage imageNamed:[[CooperationData sharedInstance] dreamLabelIdent]] forState:UIControlStateNormal];
        //: [_removeBtn sizeToFit];
        [_removeBtn sizeToFit];
        //: [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_removeBtn addTarget:self action:@selector(creamses:) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:_removeBtn];
        [self addSubview:_removeBtn];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(id<BusyKitCardHeaderData>)data{
- (void)latentPeriod:(id<BusyKitCardHeaderData>)data{
    //: self.data = data;
    self.data = data;
    //: NSURL *url = [NSURL URLWithString:data.imageUrl];
    NSURL *url = [NSURL URLWithString:data.imageUrl];
    //: [self.imageView nim_setImageWithURL:url placeholderImage:data.imageNormal];
    [self.imageView anyOn:url model:data.imageNormal];
    //: [self.imageView addTarget:self action:@selector(onSelected:) forControlEvents:UIControlEventTouchUpInside];
    [self.imageView addTarget:self action:@selector(shouldChecked:) forControlEvents:UIControlEventTouchUpInside];

    //: NSString *showName = data.title;
    NSString *showName = data.title;
    //: if ([data isMyUserId]) {
    if ([data isMyUserId]) {
        //: showName = [BusyLanguageManager getTextWithKey:@"Group_Me"];
        showName = [SendName streetSmart:[[CooperationData sharedInstance] k_teamMessage]];//@"我".nim_localized;
    }
    //: self.titleLabel.text = showName;
    self.titleLabel.text = showName;
    //: self.roleImageView.image = [BusyTeamHelper imageWithMemberType:data.userType];
    self.roleImageView.image = [EnvelopingTitle smart:data.userType];
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
}

//: - (void)onSelected:(id)sender{
- (void)shouldChecked:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellDidSelected:)]) {
    if ([self.delegate respondsToSelector:@selector(hideMax:)]) {
        //: [self.delegate cellDidSelected:self];
        [self.delegate hideMax:self];
    }
}

//: - (void)onTouchRemoveBtn:(id)sender{
- (void)creamses:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(adheres:)]) {
        //: [self.delegate cellShouldBeRemoved:self];
        [self.delegate adheres:self];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.imageView.nim_centerX = self.nim_width * .5f;
    self.imageView.nim_centerX = self.nim_width * .5f;
    //: self.titleLabel.nim_width = self.nim_width + 10;
    self.titleLabel.nim_width = self.nim_width + 10;
    //: self.titleLabel.nim_bottom = self.nim_height;
    self.titleLabel.nim_bottom = self.nim_height;
    //: self.titleLabel.nim_centerX = self.nim_width * .5f;
    self.titleLabel.nim_centerX = self.nim_width * .5f;
    //: [self.roleImageView sizeToFit];
    [self.roleImageView sizeToFit];
    //: self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    //: self.roleImageView.nim_right = self.imageView.nim_right;
    self.roleImageView.nim_right = self.imageView.nim_right;
    //: self.removeBtn.nim_right = self.nim_width;
    self.removeBtn.nim_right = self.nim_width;

}

//: @end
@end
