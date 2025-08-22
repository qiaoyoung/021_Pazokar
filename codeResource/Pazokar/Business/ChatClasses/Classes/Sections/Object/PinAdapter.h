// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableDelegate.h
// Case
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "BusySessionConfigurateProtocol.h"
#import "BusySessionConfigurateProtocol.h"
//: #import "BusyMessageCellProtocol.h"
#import "BusyMessageCellProtocol.h"

//: @interface BusySessionTableAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>
@interface PinAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic,weak) id<NIMSessionInteractor> interactor;
@property (nonatomic,weak) id<TagRed> interactor;

//: @property (nonatomic,weak) id<BusyMessageCellDelegate> delegate;
@property (nonatomic,weak) id<SharedDelegate> delegate;

//: @end
@end
