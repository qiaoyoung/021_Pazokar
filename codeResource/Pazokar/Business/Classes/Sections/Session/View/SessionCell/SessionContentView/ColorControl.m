
#import <Foundation/Foundation.h>

@interface TitleData : NSObject

+ (instancetype)sharedInstance;

//: {8,20,8,20}
@property (nonatomic, copy) NSString *main_handleValue;

//: icon_session_time_bg
@property (nonatomic, copy) NSString *mainBarData;

@end

@implementation TitleData

+ (instancetype)sharedInstance {
    static TitleData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)TitleDataToData:(NSString *)value {
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

- (Byte *)TitleDataToCache:(Byte *)data {
    int query = data[0];
    Byte seedControl = data[1];
    int posseSource = data[2];
    for (int i = posseSource; i < posseSource + query; i++) {
        int value = data[i] - seedControl;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[posseSource + query] = 0;
    return data + posseSource;
}

- (NSString *)StringFromTitleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TitleDataToCache:data]];
}

//: {8,20,8,20}
- (NSString *)main_handleValue {
    if (!_main_handleValue) {
		NSString *origin = @"0B04037F3C303634303C3036348134";
		NSData *data = [TitleData TitleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_handleValue = [self StringFromTitleData:value];
    }
    return _main_handleValue;
}

//: icon_session_time_bg
- (NSString *)mainBarData {
    if (!_mainBarData) {
		NSString *origin = @"143A0A8CBE7BAE3861D1A39DA9A899AD9FADADA3A9A899AEA3A79F999CA101";
		NSData *data = [TitleData TitleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainBarData = [self StringFromTitleData:value];
    }
    return _mainBarData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorControl.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionRedPacketTipContentView.h"
#import "ColorControl.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "Attachment.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"

//: @interface NTESSessionRedPacketTipContentView()<M80AttributedLabelDelegate>
@interface ColorControl()<CleanName>

//: @end
@end

//: @implementation NTESSessionRedPacketTipContentView
@implementation ColorControl

//: - (instancetype)initSessionMessageContentView
- (instancetype)initColorSession
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initColorSession]) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[CypherScrollView alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:10];
        _label.font = [UIFont systemFontOfSize:10];
        //: _label.textColor = [UIColor whiteColor];;
        _label.textColor = [UIColor whiteColor];;

        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.numberOfLines = 0;
        _label.numberOfLines = 0;
        //: _label.M80delegate = self;
        _label.M80delegate = self;
        //: _label.underLineForLink = NO;
        _label.underLineForLink = NO;
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(BusyMessageModel *)model{
- (void)messagePress:(MoreModel *)model{
    //: [super refresh:model];
    [super messagePress:model];
    //: NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)model.message.messageObject;
    //: id<NTESCustomAttachmentInfo> attachment = (id<NTESCustomAttachmentInfo>)object.attachment;
    id<AnglicismTing> attachment = (id<AnglicismTing>)object.attachment;
    //: [self.label setText:nil];
    [self.label setText:nil];
    //: if ([attachment respondsToSelector:@selector(formatedMessage)]) {
    if ([attachment respondsToSelector:@selector(parentTeam)]) {
        //: NSString *formatedMessage = attachment.formatedMessage;
        NSString *formatedMessage = attachment.parentTeam;
        //: [self.label appendText:formatedMessage];
        [self.label canName:formatedMessage];
        //: NSRange range = [formatedMessage rangeOfString:@"红包".ntes_localized];
        NSRange range = [formatedMessage rangeOfString:@"红包".untilNtes];
        //: if (range.location != NSNotFound)
        if (range.location != NSNotFound)
        {
            //由于还有个 icon , 需要将 range 往后挪一个位置
//            range = NSMakeRange(range.location+1, range.length);
//            [self.label addCustomLink:model forRange:range linkColor:UIColorFromRGB(0x238efa)];
        }
    }
}




//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)success:(UIControlState)state point:(BOOL)outgoing
{
    //: UIImage *image = [UIImage imageNamed:@"icon_session_time_bg"];
    UIImage *image = [UIImage imageNamed:[TitleData sharedInstance].mainBarData];
    //: UIEdgeInsets insets = UIEdgeInsetsFromString(@"{8,20,8,20}");
    UIEdgeInsets insets = UIEdgeInsetsFromString([TitleData sharedInstance].main_handleValue);
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


//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - CleanName
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)by:(CypherScrollView *)label
             //: clickedOnLink:(id)linkData
             offClickedAttributedLabelThink:(id)linkData
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(memberEvent:)]) {
        //: BusyKitEvent *event = [[BusyKitEvent alloc] init];
        DirectionEvent *event = [[DirectionEvent alloc] init];
        //: event.eventName = NTESShowRedPacketDetailEvent;
        event.eventName = m_infoTitle;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate memberEvent:event];
    }
}


//: @end
@end
