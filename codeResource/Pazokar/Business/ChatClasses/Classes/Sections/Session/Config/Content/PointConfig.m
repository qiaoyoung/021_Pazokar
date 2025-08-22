// __DEBUG__
// __CLOSE_PRINT__
//
//  PointConfig.m
// Case
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyFileContentConfig.h"
#import "PointConfig.h"
//: #import "MyUserKit.h"
#import "Case.h"

//: @implementation BusyFileContentConfig
@implementation PointConfig

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)read:(CGFloat)cellWidth quantity:(NIMMessage *)message
{
    //: return CGSizeMake(110, 110);
    return CGSizeMake(110, 110);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)picture:(NIMMessage *)message
{
    //: return @"BusySessionFileTransContentView";
    return @"DoingView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)cut:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Case pastTop].config tool:message].contentInsets;
}



//: @end
@end
