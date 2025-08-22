// __DEBUG__
// __CLOSE_PRINT__
//
//  ContactPickedView.h
//  NIM
//
//  Created by ios on 10/23/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class BusyKitInfo;
@class Info;

//: @protocol BusyContactPickedViewDelegate <NSObject>
@protocol ReadDelegate <NSObject>

//: - (void)removeUser:(NSString *)userId;
- (void)valueEndUser:(NSString *)userId;

//: @end
@end

//: @interface BusyContactPickedView : UIView <UIScrollViewDelegate>
@interface LengthView : UIView <UIScrollViewDelegate>

//: @property (nonatomic, weak) id<BusyContactPickedViewDelegate> delegate;
@property (nonatomic, weak) id<ReadDelegate> delegate;

//: - (void)removeMemberInfo:(BusyKitInfo *)info;
- (void)gesture:(Info *)info;

//: - (void)addMemberInfo:(BusyKitInfo *)info;
- (void)distanceNim:(Info *)info;

//: @end
@end
