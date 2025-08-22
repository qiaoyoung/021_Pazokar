
#import <Foundation/Foundation.h>

typedef struct {
    Byte cognition;
    Byte *beliefNim;
    unsigned int mallOof;
	int fee;
	int pepOption;
	int formationNext;
} StructCliffData;

@interface CliffData : NSObject

@end

@implementation CliffData

+ (NSData *)CliffDataToData:(NSString *)value {
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

+ (Byte *)CliffDataToByte:(StructCliffData *)data {
    for (int i = 0; i < data->mallOof; i++) {
        data->beliefNim[i] ^= data->cognition;
    }
    data->beliefNim[data->mallOof] = 0;
	if (data->mallOof >= 3) {
		data->fee = data->beliefNim[0];
		data->pepOption = data->beliefNim[1];
		data->formationNext = data->beliefNim[2];
	}
    return data->beliefNim;
}

+ (NSString *)StringFromCliffData:(StructCliffData *)data {
    return [NSString stringWithUTF8String:(char *)[self CliffDataToByte:data]];
}

//: NTESChatroomTextContentView
+ (NSString *)kPopUrl {
    /* static */ NSString *kPopUrl = nil;
    if (!kPopUrl) {
		NSString *origin = @"e2f8e9ffefc4cdd8dec3c3c1f8c9d4d8efc3c2d8c9c2d8fac5c9db8f";
		NSData *data = [CliffData CliffDataToData:origin];
        StructCliffData value = (StructCliffData){172, (Byte *)data.bytes, 27, 150, 102, 211};
        kPopUrl = [self StringFromCliffData:&value];
    }
    return kPopUrl;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  BuildCan.m
//  NIM
//
//  Created by chris on 16/1/13.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChatroomTextContentConfig.h"
#import "BuildCan.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "CypherScrollView+Case.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @interface NTESChatroomTextContentConfig()
@interface BuildCan()

//: @property (nonatomic, strong) M80AttributedLabel *label;
@property (nonatomic, strong) CypherScrollView *label;

//: @end
@end

//: @implementation NTESChatroomTextContentConfig
@implementation BuildCan

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)read:(CGFloat)cellWidth quantity:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
    //: [self.label nim_setText:text];
    [self.label nameCover:text];
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 15;
    CGFloat bubbleLeftToContent = 15;
    //: CGFloat contentRightToBubble = 0;
    CGFloat contentRightToBubble = 0;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    //: return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)picture:(NIMMessage *)message
{
    //: return @"NTESChatroomTextContentView";
    return [CliffData kPopUrl];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)cut:(NIMMessage *)message
{
    //: return UIEdgeInsetsMake(20,15,10,0);
    return UIEdgeInsetsMake(20,15,10,0);
}

//: - (M80AttributedLabel *)label
- (CypherScrollView *)label
{
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[CypherScrollView alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:16];
        _label.font = [UIFont systemFontOfSize:16];
    }
    //: return _label;
    return _label;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)quantityVideo:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: @end
@end