// __DEBUG__
// __CLOSE_PRINT__
//
//  AccumulationConfig.m
// Case
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyReplyedTextContentConfig.h"
#import "AccumulationConfig.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "CypherScrollView+Case.h"
//: #import "MyUserKit.h"
#import "Case.h"

//: @interface BusyReplyedTextContentConfig ()
@interface AccumulationConfig ()

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) CypherScrollView *label;

//: @end
@end

//: @implementation BusyReplyedTextContentConfig
@implementation AccumulationConfig


//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)read:(CGFloat)cellWidth quantity:(NIMMessage *)message
{
    //: NSString *text = [[MyUserKit sharedKit] replyedContentWithMessage:message];
    NSString *text = [[Case pastTop] nameForward:message];
    //: self.label.font = [[MyUserKit sharedKit].config repliedSetting:message].replyedFont;
    self.label.font = [[Case pastTop].config system:message].replyedFont;

    //: [self.label nim_setText:text];
    [self.label nameCover:text];

//    CGFloat msgBubbleMaxWidth    = (cellWidth - 130);
//    CGFloat bubbleLeftToContent  = 14;
//    CGFloat contentRightToBubble = 14;
//    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
//    
//    CGSize sizeToFit = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, CGFLOAT_MAX)];
//    return CGSizeMake(ceilf(sizeToFit.width)+2, ceilf(sizeToFit.height)+2);

    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 14;
    CGFloat bubbleLeftToContent = 14;
    //: CGFloat contentRightToBubble = 14;
    CGFloat contentRightToBubble = 14;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

    //: CGFloat nameMaxWidth = (msgContentMaxWidth - 50);
    CGFloat nameMaxWidth = (msgContentMaxWidth - 50);

    //: CGSize sizeToFit = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    CGSize sizeToFit = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    //: return CGSizeMake(ceilf(sizeToFit.width) < nameMaxWidth?nameMaxWidth: ceilf(sizeToFit.width)+2, ceilf(sizeToFit.height)+2);
    return CGSizeMake(ceilf(sizeToFit.width) < nameMaxWidth?nameMaxWidth: ceilf(sizeToFit.width)+2, ceilf(sizeToFit.height)+2);



}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)cut:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config repliedSetting:message].contentInsets;
    return [[Case pastTop].config system:message].contentInsets;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)picture:(NIMMessage *)message
{
    //: return @"BusyReplyedTextContentView";
    return @"BarTextView";
}

//: #pragma mark - Private
#pragma mark - Private
//: - (M80AttributedLabel *)label
- (CypherScrollView *)label
{
    //: if (_label) {
    if (_label) {
        //: return _label;
        return _label;
    }
    //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    _label = [[CypherScrollView alloc] initWithFrame:CGRectZero];
    //: return _label;
    return _label;
}


//: @end
@end
