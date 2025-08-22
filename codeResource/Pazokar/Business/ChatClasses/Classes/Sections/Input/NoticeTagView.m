
#import <Foundation/Foundation.h>

@interface SignalingData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation SignalingData

+ (instancetype)sharedInstance {
    static SignalingData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SignalingDataToCache:(Byte *)data {
    int ellCornerMode = data[0];
    Byte law = data[1];
    int evilSpirit = data[2];
    for (int i = evilSpirit; i < evilSpirit + ellCornerMode; i++) {
        int value = data[i] + law;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[evilSpirit + ellCornerMode] = 0;
    return data + evilSpirit;
}

- (NSString *)StringFromSignalingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SignalingDataToCache:data]];
}

//: #fffBusy
- (NSString *)user_deserveText {
    /* static */ NSString *user_deserveText = nil;
    if (!user_deserveText) {
        Byte value[] = {7, 43, 4, 169, 248, 59, 59, 59, 59, 59, 59, 17};
        user_deserveText = [self StringFromSignalingData:value];
    }
    return user_deserveText;
}

//: icon_reply_close
- (NSString *)show_furtherTitle {
    /* static */ NSString *show_furtherTitle = nil;
    if (!show_furtherTitle) {
        Byte value[] = {16, 16, 12, 7, 3, 84, 15, 71, 192, 180, 170, 146, 89, 83, 95, 94, 79, 98, 85, 96, 92, 105, 79, 83, 92, 95, 99, 85, 212};
        show_furtherTitle = [self StringFromSignalingData:value];
    }
    return show_furtherTitle;
}

//: F6F7FA
- (NSString *)user_managerMessage {
    /* static */ NSString *user_managerMessage = nil;
    if (!user_managerMessage) {
        Byte value[] = {6, 6, 12, 243, 73, 197, 61, 226, 128, 22, 116, 83, 64, 48, 64, 49, 64, 59, 67};
        user_managerMessage = [self StringFromSignalingData:value];
    }
    return user_managerMessage;
}

//: B391FF
- (NSString *)appHormoneValue {
    /* static */ NSString *appHormoneValue = nil;
    if (!appHormoneValue) {
        Byte value[] = {6, 54, 12, 30, 4, 3, 223, 184, 159, 200, 203, 95, 12, 253, 3, 251, 16, 16, 51};
        appHormoneValue = [self StringFromSignalingData:value];
    }
    return appHormoneValue;
}

//: #2B2F36
- (NSString *)k_nameClickKey {
    /* static */ NSString *k_nameClickKey = nil;
    if (!k_nameClickKey) {
        Byte value[] = {7, 91, 10, 128, 4, 188, 15, 165, 28, 106, 200, 215, 231, 215, 235, 216, 219, 196};
        k_nameClickKey = [self StringFromSignalingData:value];
    }
    return k_nameClickKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NoticeTagView.m
// Case
//
//  Created by He on 2020/4/3.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyReplyContentView.h"
#import "NoticeTagView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+Case.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"

//: @interface BusyReplyContentView ()
@interface NoticeTagView ()

//: @end
@end

//: @implementation BusyReplyContentView
@implementation NoticeTagView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#fffBusy"];
        self.backgroundColor = [UIColor status:[[SignalingData sharedInstance] user_deserveText]];

        //: UIView *bg = [[UIView alloc]initWithFrame:CGRectMake(15, 2, [[UIScreen mainScreen] bounds].size.width-30, 48)];
        UIView *bg = [[UIView alloc]initWithFrame:CGRectMake(15, 2, [[UIScreen mainScreen] bounds].size.width-30, 48)];
        //: bg.backgroundColor = [UIColor colorWithHexString:@"F6F7FA"];
        bg.backgroundColor = [UIColor status:[[SignalingData sharedInstance] user_managerMessage]];
        //: bg.layer.cornerRadius = 8;
        bg.layer.cornerRadius = 8;
        //: [self addSubview:bg];
        [self addSubview:bg];

        //: _picView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 8, 32, 32)];
        _picView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 8, 32, 32)];
        //: _picView.layer.cornerRadius = 4;
        _picView.layer.cornerRadius = 4;
        //: _picView.layer.masksToBounds = YES;
        _picView.layer.masksToBounds = YES;
        //: [bg addSubview:_picView];
        [bg addSubview:_picView];
        //: _picView.hidden = YES;
        _picView.hidden = YES;

        //: _fromUser = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        _fromUser = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        //: _fromUser.textColor = [UIColor colorWithHexString:@"B391FF"];
        _fromUser.textColor = [UIColor status:[[SignalingData sharedInstance] appHormoneValue]];
        //: _fromUser.font = [UIFont systemFontOfSize:12];
        _fromUser.font = [UIFont systemFontOfSize:12];
        //: [bg addSubview:_fromUser];
        [bg addSubview:_fromUser];

        //: _label = [[UILabel alloc] init];
        _label = [[UILabel alloc] init];
        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.frame = CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30-16-30, 25);
        _label.frame = CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30-16-30, 25);
        //: _label.numberOfLines = 1;
        _label.numberOfLines = 1;
        //: _label.textAlignment = NSTextAlignmentLeft;
        _label.textAlignment = NSTextAlignmentLeft;
        //: _label.lineBreakMode = NSLineBreakByTruncatingTail;
        _label.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _label.font = [UIFont systemFontOfSize:12];
        _label.font = [UIFont systemFontOfSize:12];
        //: _label.textColor = [UIColor colorWithHexString:@"#2B2F36"];
        _label.textColor = [UIColor status:[[SignalingData sharedInstance] k_nameClickKey]];
        //: [bg addSubview:_label];
        [bg addSubview:_label];

        //: _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _closeButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-38-16, 17, 16, 16);
        _closeButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-38-16, 17, 16, 16);
        //: [_closeButton setImage:[UIImage imageNamed:@"icon_reply_close"]
        [_closeButton setImage:[UIImage imageNamed:[[SignalingData sharedInstance] show_furtherTitle]]
                      //: forState:UIControlStateNormal];
                      forState:UIControlStateNormal];
        //: [_closeButton addTarget:self action:@selector(onClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_closeButton addTarget:self action:@selector(redPath:) forControlEvents:UIControlEventTouchUpInside];
        //: [bg addSubview:_closeButton];
        [bg addSubview:_closeButton];

//        _divider = [[UIView alloc] initWithFrame:CGRectMake(15, self.height-1, SCREEN_WIDTH-30, 1)];
//        _divider.backgroundColor = [UIColor colorWithWhite:1 alpha:0.1];
//        [self addSubview:_divider];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
//    self.closeButton.nim_size = CGSizeMake(self.nim_height, self.nim_height);
//    
//    self.divider.nim_left = self.closeButton.nim_right + 2;
//    
//    self.label.nim_height = self.label.intrinsicContentSize.height + 5;
//    self.label.nim_width = self.nim_width - self.closeButton.nim_right;
//    self.label.nim_left = self.divider.nim_right + 2;
//    self.label.nim_centerY = self.nim_height * 0.5;
//    
//    self.divider.nim_height = self.label.nim_height;
//    self.divider.nim_centerY = self.nim_height * .5f;
}

//: - (void)dismiss
- (void)alongOrientationDismiss
{
    //: [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
}


//: - (void)onClicked:(id)sender
- (void)redPath:(id)sender
{
    //: self.hidden = YES;
    self.hidden = YES;
    //: if ([self.delegate respondsToSelector:@selector(onClearReplyContent:)])
    if ([self.delegate respondsToSelector:@selector(squashed:)])
    {
        //: [self.delegate onClearReplyContent:sender];
        [self.delegate squashed:sender];
    }
}

//: @end
@end
