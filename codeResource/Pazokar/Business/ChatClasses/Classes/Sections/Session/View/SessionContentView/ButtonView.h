// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonView.h
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "TextControl.h"

//: @class M80AttributedLabel;
@class CypherScrollView;

//: @interface FFFSessionTextContentView : FFFSessionMessageContentView
@interface ButtonView : TextControl

//: @property (nonatomic, strong) M80AttributedLabel *textView;
@property (nonatomic, strong) CypherScrollView *textView;

//: @end
@end