
#import <Foundation/Foundation.h>

typedef struct {
    Byte recentHock;
    Byte *managerName;
    unsigned int imageOversee;
	int verticalControl;
	int leadershipRead;
	int memoryImage;
} StructTitlePepData;

@interface TitlePepData : NSObject

@end

@implementation TitlePepData

+ (NSData *)TitlePepDataToData:(NSString *)value {
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

+ (Byte *)TitlePepDataToByte:(StructTitlePepData *)data {
    for (int i = 0; i < data->imageOversee; i++) {
        data->managerName[i] ^= data->recentHock;
    }
    data->managerName[data->imageOversee] = 0;
	if (data->imageOversee >= 3) {
		data->verticalControl = data->managerName[0];
		data->leadershipRead = data->managerName[1];
		data->memoryImage = data->managerName[2];
	}
    return data->managerName;
}

+ (NSString *)StringFromTitlePepData:(StructTitlePepData *)data {
    return [NSString stringWithUTF8String:(char *)[self TitlePepDataToByte:data]];
}

//: icon_whiteboard_session_msg
+ (NSString *)showDefensiveMessage {
    /* static */ NSString *showDefensiveMessage = nil;
    if (!showDefensiveMessage) {
		NSString *origin = @"29232f2e1f3728293425222f2132241f33253333292f2e1f2d33277a";
		NSData *data = [TitlePepData TitlePepDataToData:origin];
        StructTitlePepData value = (StructTitlePepData){64, (Byte *)data.bytes, 27, 156, 231, 179};
        showDefensiveMessage = [self StringFromTitlePepData:&value];
    }
    return showDefensiveMessage;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionControl.m
//  NIM
//
//  Created by chris on 15/8/3.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionWhiteBoardContentView.h"
#import "SessionControl.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "M80AttributedLabel.h"
#import "CypherScrollView.h"
//: #import "FFFKitUtil.h"
#import "OffMore.h"
//: #import "NTESWhiteboardAttachment.h"
#import "TagAttachment.h"

//: @interface NTESSessionWhiteBoardContentView()
@interface SessionControl()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @end
@end

//: @implementation NTESSessionWhiteBoardContentView
@implementation SessionControl

//: -(instancetype)initSessionMessageContentView
-(instancetype)initColorSession
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initColorSession]) {
        //: _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[CypherScrollView alloc] initWithFrame:CGRectZero];
        //: _textLabel.autoDetectLinks = NO;
        _textLabel.autoDetectLinks = NO;
        //: _textLabel.numberOfLines = 0;
        _textLabel.numberOfLines = 0;
        //: _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textLabel.font = [UIFont systemFontOfSize:14.f];
        _textLabel.font = [UIFont systemFontOfSize:14.f];
        //: _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.backgroundColor = [UIColor clearColor];
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];

        //: _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_whiteboard_session_msg"]];
        _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[TitlePepData showDefensiveMessage]]];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data{
- (void)messagePress:(MoreModel *)data{
    //: [super refresh:data];
    [super messagePress:data];
    //: NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    NIMCustomObject *object = (NIMCustomObject *)data.message.messageObject;
    //: NTESWhiteboardAttachment *attach = (NTESWhiteboardAttachment *)object.attachment;
    TagAttachment *attach = (TagAttachment *)object.attachment;
    //: NSString *text = attach.formatedMessage;
    NSString *text = attach.parentTeam;

    //: [_textLabel setText:text];
    [_textLabel setText:text];
    //: if (!data.message.isOutgoingMsg) {
    if (!data.message.isOutgoingMsg) {
        //: _textLabel.textColor = [UIColor blackColor];
        _textLabel.textColor = [UIColor blackColor];
    //: }else{
    }else{
        //: _textLabel.textColor = [UIColor whiteColor];
        _textLabel.textColor = [UIColor whiteColor];
    }

    //: self.bubbleImageView.hidden = NO;
    self.bubbleImageView.hidden = NO;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGFloat tableViewWidth = self.superview.width;
    CGFloat tableViewWidth = self.superview.width;
    //: CGSize contentSize = [self.model contentSize:tableViewWidth];
    CGSize contentSize = [self.model searched:tableViewWidth];
    //: self.imageView.left = contentInsets.left;
    self.imageView.left = contentInsets.left;
    //: self.imageView.centerY = self.height * .5f;
    self.imageView.centerY = self.height * .5f;
    //: CGFloat customWhiteBorardMessageImageRightToText = 5.f;
    CGFloat customWhiteBorardMessageImageRightToText = 5.f;
    //: CGRect labelFrame = CGRectMake(self.imageView.right + customWhiteBorardMessageImageRightToText, contentInsets.top, contentSize.width, contentSize.height);
    CGRect labelFrame = CGRectMake(self.imageView.right + customWhiteBorardMessageImageRightToText, contentInsets.top, contentSize.width, contentSize.height);
    //: self.textLabel.frame = labelFrame;
    self.textLabel.frame = labelFrame;
}
//: @end
@end