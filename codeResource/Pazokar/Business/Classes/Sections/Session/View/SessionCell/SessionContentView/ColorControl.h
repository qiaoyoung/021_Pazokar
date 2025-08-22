// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorControl.h
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "TextControl.h"
//: #import "M80AttributedLabel.h"
#import "CypherScrollView.h"

//: static NSString *const NTESShowRedPacketDetailEvent = @"NTESShowRedPacketDetailEvent";
static NSString *const m_infoTitle = @"NTESShowRedPacketDetailEvent";


//: @interface NTESSessionRedPacketTipContentView : FFFSessionMessageContentView
@interface ColorControl : TextControl

//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) CypherScrollView *label;

//: @end
@end