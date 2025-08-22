// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionControl.h
//  NIM
//
//  Created by chris on 15/8/3.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "BusySessionMessageContentView.h"
#import "TextControl.h"

//: @class M80AttributedLabel;
@class CypherScrollView;




//: @interface NTESSessionWhiteBoardContentView : BusySessionMessageContentView
@interface SessionControl : TextControl

//: @property (nonatomic, strong) M80AttributedLabel *textLabel;
@property (nonatomic, strong) CypherScrollView *textLabel;

//: @end
@end
