// __DEBUG__
// __CLOSE_PRINT__
//
//  ParentViewCell.h
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "BusyCommonTableViewCell.h"
#import "MediaApp.h"

//: @interface BusyKitSwitcherCell : UITableViewCell<BusyCommonTableViewCell>
@interface ParentViewCell : UITableViewCell<MediaApp>

//: @property(nonatomic,strong,readonly) UISwitch *switcher;
@property(nonatomic,strong,readonly) UISwitch *switcher;

//: @end
@end
