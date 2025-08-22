// __DEBUG__
// __CLOSE_PRINT__
//
//  ParentViewController.h
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionViewController.h"
#import "TopViewController.h"

//: @class NIMMessage;
@class NIMMessage;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESThreadTalkSessionViewController : NTESSessionViewController
@interface ParentViewController : TopViewController

//: - (instancetype)initWithThreadMessage:(NIMMessage *)message;
- (instancetype)initWithObjectButton:(NIMMessage *)message;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END