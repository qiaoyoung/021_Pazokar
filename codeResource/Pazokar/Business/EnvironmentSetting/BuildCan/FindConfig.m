
#import <Foundation/Foundation.h>

@interface LastNameData : NSObject

@end

@implementation LastNameData

+ (NSData *)LastNameDataToData:(NSString *)value {
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

+ (Byte *)LastNameDataToCache:(Byte *)data {
    int accent = data[0];
    Byte sliceReliability = data[1];
    int terms = data[2];
    for (int i = terms; i < terms + accent; i++) {
        int value = data[i] - sliceReliability;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[terms + accent] = 0;
    return data + terms;
}

+ (NSString *)StringFromLastNameData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self LastNameDataToCache:data]];
}

//: NTESChatroomTextContentView
+ (NSString *)appUsuallyText {
    /* static */ NSString *appUsuallyText = nil;
    if (!appUsuallyText) {
		NSString *origin = @"1b4f0a7e88a6e2d95d819da394a292b7b0c3c1bebebca3b4c7c392bebdc3b4bdc3a5b8b4c698";
		NSData *data = [LastNameData LastNameDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appUsuallyText = [self StringFromLastNameData:value];
    }
    return appUsuallyText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FindConfig.m
//  NIM
//
//  Created by chris on 2017/8/21.
//  Copyright © 2017年 Netease. All rights reserved.
//
//: #import "NTESChatroomRobotContentConfig.h"
#import "FindConfig.h"
//: #import "M80AttributedLabel+NIMKit.h"
#import "M80AttributedLabel+NIMKit.h"
//: #import "NTESSessionRobotContentView.h"
#import "ValueView.h"
//: #import "UIView+NIM.h"
#import "UIView+NIM.h"

// __M_A_C_R_O__

//: @interface NTESChatroomRobotContentConfig()
@interface FindConfig()

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) CypherScrollView *label;

//: @property (nonatomic,strong) NTESSessionRobotContentView *robotContentView;
@property (nonatomic,strong) ValueView *robotContentView;

//: @property (nonatomic,strong) NIMMessageModel *robotModel;
@property (nonatomic,strong) NIMMessageModel *robotModel;
//: @end
@end

//: @implementation NTESChatroomRobotContentConfig
@implementation FindConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)atTag:(CGFloat)cellWidth quick:(NIMMessage *)message
{
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: if ([self isFromRobot:message])
    if ([self session:message])
    {
        //: self.robotModel.message = message;
        self.robotModel.message = message;
        //: self.robotContentView.nim_width = msgBubbleMaxWidth;
        self.robotContentView.nim_width = msgBubbleMaxWidth;
        //: [self.robotContentView setupRobot:self.robotModel];
        [self.robotContentView setupRobot:self.robotModel];
        //: [self.robotContentView layoutIfNeeded];
        [self.robotContentView layoutIfNeeded];

        //: CGSize size = [self.robotContentView sizeThatFits:CGSizeMake(msgBubbleMaxWidth, CGFLOAT_MAX)];
        CGSize size = [self.robotContentView sizeThatFits:CGSizeMake(msgBubbleMaxWidth, CGFLOAT_MAX)];
        //: return size;
        return size;
    }
    //: else
    else
    {
        //: NSString *text = message.text;
        NSString *text = message.text;
        //: [self.label nim_setText:text];
        [self.label nim_setText:text];

        //: CGFloat bubbleLeftToContent = 14;
        CGFloat bubbleLeftToContent = 14;
        //: CGFloat contentRightToBubble = 14;
        CGFloat contentRightToBubble = 14;
        //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        //: return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, CGFLOAT_MAX)];
        return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, CGFLOAT_MAX)];
    }
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)withName:(NIMMessage *)message
{
    //: if ([self isFromRobot:message])
    if ([self session:message])
    {
        //: return @"NTESSessionRobotContentView";
        return @"ValueView";
    }
    //: else
    else
    {
        //: return @"NTESChatroomTextContentView";
        return [LastNameData appUsuallyText];
    }
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)cuttingEdge:(NIMMessage *)message
{
    //: if ([self isFromRobot:message])
    if ([self session:message])
    {
        //: return UIEdgeInsetsMake(9,15,10,0);
        return UIEdgeInsetsMake(9,15,10,0);
    }
    //: else
    else
    {
        //: return UIEdgeInsetsMake(20,15,10,0);
        return UIEdgeInsetsMake(20,15,10,0);
    }
}


//: #pragma mark - Private
#pragma mark - Private
//: - (BOOL)isFromRobot:(NIMMessage *)message
- (BOOL)session:(NIMMessage *)message
{
    //: NIMRobotObject *object = (NIMRobotObject *)message.messageObject;
    NIMRobotObject *object = (NIMRobotObject *)message.messageObject;
    //: return object.isFromRobot;
    return object.isFromRobot;
}

//: - (M80AttributedLabel *)label
- (CypherScrollView *)label
{
    //: if (_label)
    if (_label)
    {
        //: return _label;
        return _label;
    }
    //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    _label = [[CypherScrollView alloc] initWithFrame:CGRectZero];
    //: _label.font = [UIFont systemFontOfSize:Chatroom_Message_Font_Size];
    _label.font = [UIFont systemFontOfSize:Chatroom_Message_Font_Size];
    //: return _label;
    return _label;
}

//: - (NTESSessionRobotContentView *)robotContentView
- (ValueView *)robotContentView
{
    //: if (_robotContentView)
    if (_robotContentView)
    {
        //: return _robotContentView;
        return _robotContentView;
    }
    //: _robotContentView = [[NTESSessionRobotContentView alloc] initSessionMessageContentView];
    _robotContentView = [[ValueView alloc] initSessionMessageContentView];
    //: return _robotContentView;
    return _robotContentView;
}

//: - (NIMMessageModel *)robotModel
- (NIMMessageModel *)robotModel
{
    //: if (_robotModel)
    if (_robotModel)
    {
        //: return _robotModel;
        return _robotModel;
    }
    //: _robotModel = [[NIMMessageModel alloc] init];
    _robotModel = [[NIMMessageModel alloc] init];
    //: return _robotModel;
    return _robotModel;
}

//: @end
@end