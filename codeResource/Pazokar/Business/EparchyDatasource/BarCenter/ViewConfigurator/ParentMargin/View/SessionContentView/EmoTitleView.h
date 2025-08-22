// __DEBUG__
// __CLOSE_PRINT__
//
//  EmoTitleView.h
// Case
//
//  Created by chris on 15/5/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusySessionMessageContentView.h"
#import "TextControl.h"
//: #import "BusyKitDependency.h"
#import "BusyKitDependency.h"

//: @interface BusySessionNetChatNotifyContentView : BusySessionMessageContentView
@interface EmoTitleView : TextControl

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) CypherScrollView *textLabel;

//: @end
@end
