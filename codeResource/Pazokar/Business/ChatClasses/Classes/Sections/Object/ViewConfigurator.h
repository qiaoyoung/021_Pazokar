// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionViewConfigurator.h
// Case
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusySessionViewController.h"
#import "DirectionViewController.h"
//: #import "BusySessionConfigurateProtocol.h"
#import "BusySessionConfigurateProtocol.h"

//: @class BusySessionViewController;
@class DirectionViewController;

//: @interface BusySessionConfigurator : NSObject
@interface ViewConfigurator : NSObject

//: - (void)setup:(BusySessionViewController *)vc;
- (void)actionDownTitle:(DirectionViewController *)vc;

//: @end
@end
