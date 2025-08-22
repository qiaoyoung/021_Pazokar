// __DEBUG__
// __CLOSE_PRINT__
//
//  NameMoreView.m
//  MarginOfSafetyView
//
//  Created by Tanguy Aladenise on 2015-01-22.
//  Copyright (c) 2015 Tanguy Aladenise. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TAAnimatedDotView.h"
#import "NameMoreView.h"

//: static CGFloat const kAnimateDuration = 1;
static CGFloat const noti_maxValue = 1;

//: @implementation TAAnimatedDotView
@implementation NameMoreView

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: [self initialization];
        [self showBlock];
    }

    //: return self;
    return self;
}


//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self initialization];
        [self showBlock];
    }
    //: return self;
    return self;
}


//: - (id)initWithCoder:(NSCoder *)aDecoder
- (id)initWithCoder:(NSCoder *)aDecoder
{
    //: self = [super initWithCoder:aDecoder];
    self = [super initWithCoder:aDecoder];
    //: if (self) {
    if (self) {
        //: [self initialization];
        [self showBlock];
    }

    //: return self;
    return self;
}

//: - (void)setDotColor:(UIColor *)dotColor
- (void)setDotColor:(UIColor *)dotColor
{
    //: _dotColor = dotColor;
    _dotColor = dotColor;
    //: self.layer.borderColor = dotColor.CGColor;
    self.layer.borderColor = dotColor.CGColor;
}

//: - (void)initialization
- (void)showBlock
{
    //: _dotColor = [UIColor whiteColor];
    _dotColor = [UIColor whiteColor];
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];
    //: self.layer.cornerRadius = CGRectGetWidth(self.frame) / 2;
    self.layer.cornerRadius = CGRectGetWidth(self.frame) / 2;
    //: self.layer.borderColor = [UIColor whiteColor].CGColor;
    self.layer.borderColor = [UIColor whiteColor].CGColor;
    //: self.layer.borderWidth = 2;
    self.layer.borderWidth = 2;
}


//: - (void)changeActivityState:(BOOL)active
- (void)furtherances:(BOOL)active
{
    //: if (active) {
    if (active) {
        //: [self animateToActiveState];
        [self to];
    //: } else {
    } else {
        //: [self animateToDeactiveState];
        [self cart];
    }
}


//: - (void)animateToActiveState
- (void)to
{
    //: [UIView animateWithDuration:kAnimateDuration delay:0 usingSpringWithDamping:.5 initialSpringVelocity:-20 options:UIViewAnimationOptionCurveLinear animations:^{
    [UIView animateWithDuration:noti_maxValue delay:0 usingSpringWithDamping:.5 initialSpringVelocity:-20 options:UIViewAnimationOptionCurveLinear animations:^{
        //: self.backgroundColor = _dotColor;
        self.backgroundColor = _dotColor;
        //: self.transform = CGAffineTransformMakeScale(1.4, 1.4);
        self.transform = CGAffineTransformMakeScale(1.4, 1.4);
    //: } completion:nil];
    } completion:nil];
}

//: - (void)animateToDeactiveState
- (void)cart
{
    //: [UIView animateWithDuration:kAnimateDuration delay:0 usingSpringWithDamping:.5 initialSpringVelocity:0 options:UIViewAnimationOptionCurveLinear animations:^{
    [UIView animateWithDuration:noti_maxValue delay:0 usingSpringWithDamping:.5 initialSpringVelocity:0 options:UIViewAnimationOptionCurveLinear animations:^{
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.transform = CGAffineTransformIdentity;
        self.transform = CGAffineTransformIdentity;
    //: } completion:nil];
    } completion:nil];
}

//: @end
@end