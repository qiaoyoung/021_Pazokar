// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamMemberListViewController.h
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
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

//: @interface CCCTeamMemberListViewController : UIViewController
@interface VersionViewController : UIViewController

//: @property (nonatomic,strong) BusyTeamListDataManager *teamListManager;
@property (nonatomic,strong) FindBaseballTeamManager *teamListManager;

//: - (instancetype)initWithDataSource:(BusyTeamListDataManager *)dataSource;
- (instancetype)initWithOffSource:(FindBaseballTeamManager *)dataSource;

//: @end
@end
