// __DEBUG__
// __CLOSE_PRINT__
//
//  MediaCustomControl.m
// Case
//
//  Created by chris on 15/3/9.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusySessionNotificationContentView.h"
#import "MediaCustomControl.h"
//: #import "BusyMessageModel.h"
#import "MoreModel.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "BusyKitUtil.h"
#import "OffMore.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "MyUserKit.h"
#import "Case.h"

//: @implementation BusySessionNotificationContentView
@implementation MediaCustomControl

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

//: - (void)refresh:(BusyMessageModel *)model
- (void)messagePress:(MoreModel *)model
{
    //: [super refresh:model];
    [super messagePress:model];
    //: self.label.text = [BusyKitUtil messageTipContent:model.message];
    self.label.text = [OffMore impanel:model.message];
    //: BusyKitSetting *setting = [[MyUserKit sharedKit].config setting:model.message];
    GreenSetting *setting = [[Case pastTop].config tool:model.message];

    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;
    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;

//    self.label.hidden = YES;
//    self.bubbleImageView.hidden = YES;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [Case pastTop].config.dateText;
    //: self.label.nim_size = [self.label sizeThatFits:CGSizeMake(self.nim_width - 2 * padding, 1.7976931348623157e+308)];
    self.label.nim_size = [self.label sizeThatFits:CGSizeMake(self.nim_width - 2 * padding, 1.7976931348623157e+308)];
    //: self.label.nim_centerX = self.nim_width * .5f;
    self.label.nim_centerX = self.nim_width * .5f;
    //: self.label.nim_centerY = self.nim_height * .5f;
    self.label.nim_centerY = self.nim_height * .5f;
    //: self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
    self.bubbleImageView.frame = CGRectInset(self.label.frame, -8, -4);
}

//: @end
@end
