// __DEBUG__
// __CLOSE_PRINT__
//
//  WithCellView.h
//  NIM
//
//  Created by amao on 5/29/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class BusyTeamSwitchTableViewCell;
@class WithCellView;

//: @protocol NIMTeamSwitchProtocol <NSObject>
@protocol GreenProtocol <NSObject>
//: - (void)cell:(BusyTeamSwitchTableViewCell *)cell onStateChanged:(BOOL)on;
- (void)media:(WithCellView *)cell menu:(BOOL)on;
//: @end
@end

//: @interface BusyTeamSwitchTableViewCell : UITableViewCell
@interface WithCellView : UITableViewCell
//: @property (nonatomic, assign) NSInteger identify;
@property (nonatomic, assign) NSInteger identify;
//: @property (strong, nonatomic) UISwitch *switcher;
@property (strong, nonatomic) UISwitch *switcher;
//: @property (weak, nonatomic) id<NIMTeamSwitchProtocol> switchDelegate;
@property (weak, nonatomic) id<GreenProtocol> switchDelegate;

//: @end
@end
