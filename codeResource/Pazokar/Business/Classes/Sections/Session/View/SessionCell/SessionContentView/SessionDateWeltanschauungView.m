
#import <Foundation/Foundation.h>

typedef struct {
    Byte paradigm;
    Byte *coffee;
    unsigned int aggressiveHandle;
} StructModeData;

@interface ModeData : NSObject

+ (instancetype)sharedInstance;

//: {8,20,8,20}
@property (nonatomic, copy) NSString *show_gateData;

//: icon_session_time_bg
@property (nonatomic, copy) NSString *userIdealSuccessData;

@end

@implementation ModeData

+ (instancetype)sharedInstance {
    static ModeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ModeDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ModeDataToByte:(StructModeData *)data {
    for (int i = 0; i < data->aggressiveHandle; i++) {
        data->coffee[i] ^= data->paradigm;
    }
    data->coffee[data->aggressiveHandle] = 0;
    return data->coffee;
}

- (NSString *)StringFromModeData:(StructModeData *)data {
    return [NSString stringWithUTF8String:(char *)[self ModeDataToByte:data]];
}

//: {8,20,8,20}
- (NSString *)show_gateData {
    if (!_show_gateData) {
		NSArray<NSNumber *> *origin = @[@173, @238, @250, @228, @230, @250, @238, @250, @228, @230, @171, @203];
		NSData *data = [ModeData ModeDataToData:origin];
        StructModeData value = (StructModeData){214, (Byte *)data.bytes, 11};
        _show_gateData = [self StringFromModeData:&value];
    }
    return _show_gateData;
}

//: icon_session_time_bg
- (NSString *)userIdealSuccessData {
    if (!_userIdealSuccessData) {
		NSArray<NSNumber *> *origin = @[@170, @160, @172, @173, @156, @176, @166, @176, @176, @170, @172, @173, @156, @183, @170, @174, @166, @156, @161, @164, @109];
		NSData *data = [ModeData ModeDataToData:origin];
        StructModeData value = (StructModeData){195, (Byte *)data.bytes, 20};
        _userIdealSuccessData = [self StringFromModeData:&value];
    }
    return _userIdealSuccessData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionDateWeltanschauungView.m
//  NIM
//
//  Created by chris on 2016/11/6.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionTipContentView.h"
#import "SessionDateWeltanschauungView.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"

//: @implementation NTESSessionTipContentView
@implementation SessionDateWeltanschauungView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initColorSession
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initColorSession]) {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.numberOfLines = 0;
        _label.numberOfLines = 0;
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)model{
- (void)messagePress:(MoreModel *)model{
    //: [super refresh:model];
    [super messagePress:model];
    //: NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    //: id<NTESCustomAttachmentInfo> attachment = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<AnglicismTing> attachment = (id<AnglicismTing>)object.attachment;
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(parentTeam)]) {
        //: self.label.text = [attachment formatedMessage];
        self.label.text = [attachment parentTeam];
    }
    //: self.label.textColor = [UIColor whiteColor];;
    self.label.textColor = [UIColor whiteColor];;
    //: self.label.font = [UIFont systemFontOfSize:10.f];
    self.label.font = [UIFont systemFontOfSize:10.f];

    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)success:(UIControlState)state point:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:[ModeData sharedInstance].userIdealSuccessData];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString([ModeData sharedInstance].show_gateData);
    //: return [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    return [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = 20.f;
    CGFloat padding = 20.f;
    //: self.label.size = [self.label sizeThatFits:CGSizeMake(self.width - 2 * padding, 1.7976931348623157e+308)];
    self.label.size = [self.label sizeThatFits:CGSizeMake(self.width - 2 * padding, 1.7976931348623157e+308)];
    //: self.label.centerX = self.width * .5f;
    self.label.centerX = self.width * .5f;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
    self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
}


//: @end
@end