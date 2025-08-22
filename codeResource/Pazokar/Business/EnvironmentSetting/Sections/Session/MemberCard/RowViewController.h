// __DEBUG__
// __CLOSE_PRINT__
//
//  RowViewController.h
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "BusyTeamMemberListDataSource.h"
#import "RowCenter.h"
//: #import "BusyTeamListDataManager.h"
#import "FindBaseballTeamManager.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface TeamMemberNormalViewController : UIViewController
@interface RowViewController : UIViewController

//: @property (nonatomic,strong) BusyTeamListDataManager *teamListManager;
@property (nonatomic,strong) FindBaseballTeamManager *teamListManager;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
