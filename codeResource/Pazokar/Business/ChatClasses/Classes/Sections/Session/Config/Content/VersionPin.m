
#import <Foundation/Foundation.h>

@interface RecommendData : NSObject

@end

@implementation RecommendData

+ (Byte *)RecommendDataToCache:(Byte *)data {
    int tightenLiable = data[0];
    Byte nowhere = data[1];
    int indicationDilemma = data[2];
    for (int i = indicationDilemma; i < indicationDilemma + tightenLiable; i++) {
        int value = data[i] + nowhere;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[indicationDilemma + tightenLiable] = 0;
    return data + indicationDilemma;
}

+ (NSString *)StringFromRecommendData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RecommendDataToCache:data]];
}

//: not supported notification type %zd
+ (NSString *)main_bottomName {
    /* static */ NSString *main_bottomName = nil;
    if (!main_bottomName) {
        Byte value[] = {35, 86, 10, 56, 157, 75, 137, 218, 44, 71, 24, 25, 30, 202, 29, 31, 26, 26, 25, 28, 30, 15, 14, 202, 24, 25, 30, 19, 16, 19, 13, 11, 30, 19, 25, 24, 202, 30, 35, 26, 15, 202, 207, 36, 14, 141};
        main_bottomName = [self StringFromRecommendData:value];
    }
    return main_bottomName;
}

//: message should be notification
+ (NSString *)show_numerousData {
    /* static */ NSString *show_numerousData = nil;
    if (!show_numerousData) {
        Byte value[] = {30, 75, 13, 190, 57, 69, 204, 31, 16, 236, 223, 142, 124, 34, 26, 40, 40, 22, 28, 26, 213, 40, 29, 36, 42, 33, 25, 213, 23, 26, 213, 35, 36, 41, 30, 27, 30, 24, 22, 41, 30, 36, 35, 134};
        show_numerousData = [self StringFromRecommendData:value];
    }
    return show_numerousData;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  VersionPin.m
// Case
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyNotificationContentConfig.h"
#import "VersionPin.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "CypherScrollView+Case.h"
//: #import "BusyKitUtil.h"
#import "OffMore.h"
//: #import "BusyUnsupportContentConfig.h"
#import "MediaVersionSend.h"
//: #import "MyUserKit.h"
#import "Case.h"

//: @implementation BusyNotificationContentConfig
@implementation VersionPin
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)read:(CGFloat)cellWidth quantity:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], [RecommendData show_numerousData]);

    //: CGSize contentSize = CGSizeZero;
    CGSize contentSize = CGSizeZero;

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
        {
            //: CGFloat TeamNotificationMessageWidth = cellWidth;
            CGFloat TeamNotificationMessageWidth = cellWidth;
            //: UILabel *label = [[UILabel alloc] init];
            UILabel *label = [[UILabel alloc] init];
            //: label.text = [BusyKitUtil messageTipContent:message];
            label.text = [OffMore impanel:message];
            //: label.font = [[MyUserKit sharedKit].config setting:message].font;
            label.font = [[Case pastTop].config tool:message].font;
            //: label.numberOfLines = 0;
            label.numberOfLines = 0;
            //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
            CGFloat padding = [Case pastTop].config.dateText;
            //: CGSize size = [label sizeThatFits:CGSizeMake(cellWidth - 2 * padding, 1.7976931348623157e+308)];
            CGSize size = [label sizeThatFits:CGSizeMake(cellWidth - 2 * padding, 1.7976931348623157e+308)];
            //: CGFloat cellPadding = 11.f;
            CGFloat cellPadding = 11.f;
            //: contentSize = CGSizeMake(TeamNotificationMessageWidth, size.height + 2 * cellPadding);
            contentSize = CGSizeMake(TeamNotificationMessageWidth, size.height + 2 * cellPadding);
            //: break;
            break;
        }
        //: case NIMNotificationTypeNetCall:{
        case NIMNotificationTypeNetCall:{
            //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
            CypherScrollView *label = [[CypherScrollView alloc] initWithFrame:CGRectZero];
            //: label.autoDetectLinks = NO;
            label.autoDetectLinks = NO;
            //: label.font = [[MyUserKit sharedKit].config setting:message].font;
            label.font = [[Case pastTop].config tool:message].font;
            //: NSString *text = [BusyKitUtil messageTipContent:message];
            NSString *text = [OffMore impanel:message];
            //: [label nim_setText:text];
            [label nameCover:text];

            //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
            CGFloat msgBubbleMaxWidth = (cellWidth - 130);
            //: CGFloat bubbleLeftToContent = 14;
            CGFloat bubbleLeftToContent = 14;
            //: CGFloat contentRightToBubble = 14;
            CGFloat contentRightToBubble = 14;
            //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            //: contentSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            contentSize = [label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            //: break;
            break;
        }
        //: default:
        default:
        {
            //: BusyUnsupportContentConfig *config = [[BusyUnsupportContentConfig alloc] init];
            MediaVersionSend *config = [[MediaVersionSend alloc] init];
            //: contentSize = [config contentSize:cellWidth message:message];
            contentSize = [config read:cellWidth quantity:message];
            //: NSAssert(0, @"not supported notification type %zd",object.notificationType);
            NSAssert(0, [RecommendData main_bottomName],object.notificationType);
        }
            //: break;
            break;
    }
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)picture:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], [RecommendData show_numerousData]);

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
            //: return @"BusySessionNotificationContentView";
            return @"MediaCustomControl";
        //: case NIMNotificationTypeNetCall:
        case NIMNotificationTypeNetCall:
            //: return @"BusySessionNetChatNotifyContentView";
            return @"EmoTitleView";
        //: case NIMNotificationTypeUnsupport:
        case NIMNotificationTypeUnsupport:
            //: return @"BusySessionUnknowContentView";
            return @"DateControl";
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)cut:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Case pastTop].config tool:message].contentInsets;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)quantityVideo:(NIMMessage *)message
{
    //: NIMNotificationObject *object = message.messageObject;
    NIMNotificationObject *object = message.messageObject;
    //: NSAssert([object isKindOfClass:[NIMNotificationObject class]], @"message should be notification");
    NSAssert([object isKindOfClass:[NIMNotificationObject class]], [RecommendData show_numerousData]);

    //: switch (object.notificationType) {
    switch (object.notificationType) {
        //: case NIMNotificationTypeTeam:
        case NIMNotificationTypeTeam:
        //: case NIMNotificationTypeSuperTeam:
        case NIMNotificationTypeSuperTeam:
        //: case NIMNotificationTypeChatroom:
        case NIMNotificationTypeChatroom:
            //: return NO;
            return NO;
        //: case NIMNotificationTypeNetCall:
        case NIMNotificationTypeNetCall:
            //: return YES;
            return YES;
        //: case NIMNotificationTypeUnsupport:
        case NIMNotificationTypeUnsupport:
            //: return NO;
            return NO;
        //: default:
        default:
            //: break;
            break;
    }
    //: return YES;
    return YES;
}

//: @end
@end
