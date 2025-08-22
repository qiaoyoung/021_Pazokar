// __DEBUG__
// __CLOSE_PRINT__
//
//  BusyChatUIManagerProtocol.h
// Case
//
//  Created by 丁文超 on 2020/3/19.
//  Copyright © 2020 NetEase. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @class NIMMessage;
@class NIMMessage;

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol BusyChatUIManager <NSObject>
@protocol PraiseUimanager <NSObject>

//: - (void)forwardMessage:(NIMMessage *)message fromViewController:(UIViewController *)fromVC;
- (void)noneFrom:(NIMMessage *)message icon:(UIViewController *)fromVC;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
