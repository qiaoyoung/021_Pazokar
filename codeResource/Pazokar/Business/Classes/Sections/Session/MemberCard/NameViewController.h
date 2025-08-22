// __DEBUG__
// __CLOSE_PRINT__
//
//  NameViewController.h
// Case
//
//  Created by Genning-Work on 2019/12/13.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "BusyTeamMemberListDataSource.h"
#import "RowCenter.h"
//: #import "BusyTeamListDataManager.h"
#import "FindBaseballTeamManager.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface BusyTeamMuteMemberListViewController : UIViewController
@interface NameViewController : UIViewController

//: @property (nonatomic,strong) BusyTeamListDataManager *teamListManager;
@property (nonatomic,strong) FindBaseballTeamManager *teamListManager;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
