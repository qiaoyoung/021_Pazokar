
#import <Foundation/Foundation.h>

typedef struct {
    Byte objectLabelCustomer;
    Byte *mpClotheTelevision;
    unsigned int phage;
} StructSoundFurtherData;

@interface SoundFurtherData : NSObject

@end

@implementation SoundFurtherData

+ (NSData *)SoundFurtherDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)SoundFurtherDataToByte:(StructSoundFurtherData *)data {
    for (int i = 0; i < data->phage; i++) {
        data->mpClotheTelevision[i] ^= data->objectLabelCustomer;
    }
    data->mpClotheTelevision[data->phage] = 0;
    return data->mpClotheTelevision;
}

+ (NSString *)StringFromSoundFurtherData:(StructSoundFurtherData *)data {
    return [NSString stringWithUTF8String:(char *)[self SoundFurtherDataToByte:data]];
}

//: icon_map
+ (NSString *)show_strikeUrl {
    /* static */ NSString *show_strikeUrl = nil;
    if (!show_strikeUrl) {
		NSArray<NSString *> *origin = @[@"163", @"169", @"165", @"164", @"149", @"167", @"171", @"186", @"57"];
		NSData *data = [SoundFurtherData SoundFurtherDataToData:origin];
        StructSoundFurtherData value = (StructSoundFurtherData){202, (Byte *)data.bytes, 8};
        show_strikeUrl = [self StringFromSoundFurtherData:&value];
    }
    return show_strikeUrl;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  BubbleControl.m
// Case
//
//  Created by chris on 15/2/28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusySessionLocationContentView.h"
#import "BubbleControl.h"
//: #import "BusyMessageModel.h"
#import "MoreModel.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "MyUserKit.h"
#import "Case.h"

//: @interface BusySessionLocationContentView()
@interface BubbleControl()

//: @property (nonatomic,strong) UIImageView * imageView;
@property (nonatomic,strong) UIImageView * imageView;

//: @property (nonatomic,strong) UILabel * titleLabel;
@property (nonatomic,strong) UILabel * titleLabel;

//: @end
@end

//: @implementation BusySessionLocationContentView
@implementation BubbleControl

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initColorSession{
    //: self = [super initSessionMessageContentView];
    self = [super initColorSession];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;
        //: UIImage *image = [UIImage imageNamed:@"icon_map"];
        UIImage *image = [UIImage imageNamed:[SoundFurtherData show_strikeUrl]];
        //: _imageView = [[UIImageView alloc] initWithImage:image];
        _imageView = [[UIImageView alloc] initWithImage:image];

        //: CALayer *maskLayer = [CALayer layer];
        CALayer *maskLayer = [CALayer layer];
        //: maskLayer.cornerRadius = 13.0;
        maskLayer.cornerRadius = 13.0;
        //: maskLayer.backgroundColor = [UIColor blackColor].CGColor;
        maskLayer.backgroundColor = [UIColor blackColor].CGColor;
        //: maskLayer.frame = _imageView.bounds;
        maskLayer.frame = _imageView.bounds;
        //: _imageView.layer.mask = maskLayer;
        _imageView.layer.mask = maskLayer;

        //: [self addSubview:_imageView];
        [self addSubview:_imageView];

        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.numberOfLines = 0;
        _titleLabel.numberOfLines = 0;
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];

    }
    //: return self;
    return self;
}

//: - (void)refresh:(BusyMessageModel *)data
- (void)messagePress:(MoreModel *)data
{
    //: [super refresh:data];
    [super messagePress:data];
    //: NIMLocationObject * locationObject = (NIMLocationObject*)self.model.message.messageObject;
    NIMLocationObject * locationObject = (NIMLocationObject*)self.model.message.messageObject;
    //: self.titleLabel.text = locationObject.title;
    self.titleLabel.text = locationObject.title;

    //: BusyKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    GreenSetting *setting = [[Case pastTop].config tool:data.message];

    //: self.titleLabel.textColor = setting.textColor;
    self.titleLabel.textColor = setting.textColor;
    //: self.titleLabel.font = setting.font;
    self.titleLabel.font = setting.font;
}

//: - (void)onTouchUpInside:(id)sender
- (void)objects:(id)sender
{
    //: BusyKitEvent *event = [[BusyKitEvent alloc] init];
    DirectionEvent *event = [[DirectionEvent alloc] init];
    //: event.eventName = BusyKitEventNameTapContent;
    event.eventName = notiMessageId;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate memberEvent:event];
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _titleLabel.nim_width = self.nim_width - 20;
    _titleLabel.nim_width = self.nim_width - 20;
    //: _titleLabel.nim_height= 35.f;
    _titleLabel.nim_height= 35.f;
    //: self.titleLabel.nim_centerY = 90.f;
    self.titleLabel.nim_centerY = 90.f;
    //: self.titleLabel.nim_centerX = self.nim_width * .5f;
    self.titleLabel.nim_centerX = self.nim_width * .5f;
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;

    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model searched:tableViewWidth];

    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;
}


//: @end
@end
