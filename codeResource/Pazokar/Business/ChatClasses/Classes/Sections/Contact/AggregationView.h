// __DEBUG__
// __CLOSE_PRINT__
//
//  AggregationView.h
// Case
//
//  Created by chris on 15/9/15.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFContactPickedView;
@class LengthView;

//: @interface FFFContactSelectTabView : UIView
@interface AggregationView : UIView

//: @property (nonatomic,strong) FFFContactPickedView *pickedView;
@property (nonatomic,strong) LengthView *pickedView;

//: @property (nonatomic,strong) UIButton *doneButton;
@property (nonatomic,strong) UIButton *doneButton;

//: @end
@end