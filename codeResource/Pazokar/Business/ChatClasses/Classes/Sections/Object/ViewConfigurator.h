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
//: #import "FFFSessionViewController.h"
#import "DirectionViewController.h"
//: #import "FFFSessionConfigurateProtocol.h"
#import "FFFSessionConfigurateProtocol.h"

//: @class FFFSessionViewController;
@class DirectionViewController;

//: @interface FFFSessionConfigurator : NSObject
@interface ViewConfigurator : NSObject

//: - (void)setup:(FFFSessionViewController *)vc;
- (void)actionDownTitle:(DirectionViewController *)vc;

//: @end
@end