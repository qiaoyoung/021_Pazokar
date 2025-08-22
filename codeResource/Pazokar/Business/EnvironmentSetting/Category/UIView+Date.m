
#import <Foundation/Foundation.h>

@interface CognisanceData : NSObject

@end

@implementation CognisanceData

+ (Byte *)CognisanceDataToCache:(Byte *)data {
    int comply = data[0];
    Byte messageName = data[1];
    int withGiven = data[2];
    for (int i = withGiven; i < withGiven + comply; i++) {
        int value = data[i] + messageName;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[withGiven + comply] = 0;
    return data + withGiven;
}

+ (NSString *)StringFromCognisanceData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CognisanceDataToCache:data]];
}

//: groupAnimationAlert
+ (NSString *)show_semenIdent {
    /* static */ NSString *show_semenIdent = nil;
    if (!show_semenIdent) {
        Byte value[] = {19, 7, 7, 126, 33, 215, 33, 96, 107, 104, 110, 105, 58, 103, 98, 102, 90, 109, 98, 104, 103, 58, 101, 94, 107, 109, 85};
        show_semenIdent = [self StringFromCognisanceData:value];
    }
    return show_semenIdent;
}

//: bounds
+ (NSString *)showTowerMessage {
    /* static */ NSString *showTowerMessage = nil;
    if (!showTowerMessage) {
        Byte value[] = {6, 25, 8, 47, 9, 166, 202, 118, 73, 86, 92, 85, 75, 90, 102};
        showTowerMessage = [self StringFromCognisanceData:value];
    }
    return showTowerMessage;
}

//: groupAnimationHide
+ (NSString *)notiSeparateKey {
    /* static */ NSString *notiSeparateKey = nil;
    if (!notiSeparateKey) {
        Byte value[] = {18, 22, 6, 135, 74, 173, 81, 92, 89, 95, 90, 43, 88, 83, 87, 75, 94, 83, 89, 88, 50, 83, 78, 79, 150};
        notiSeparateKey = [self StringFromCognisanceData:value];
    }
    return notiSeparateKey;
}

//: position
+ (NSString *)m_makeUrl {
    /* static */ NSString *m_makeUrl = nil;
    if (!m_makeUrl) {
        Byte value[] = {8, 17, 12, 200, 178, 176, 43, 37, 242, 45, 186, 78, 95, 94, 98, 88, 99, 88, 94, 93, 159};
        m_makeUrl = [self StringFromCognisanceData:value];
    }
    return m_makeUrl;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  UIView+Date.m
//  NIMDemo
//
//  Created by ght on 15-1-31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: @implementation UIView (NTES)
@implementation UIView (Date)

//: - (CGFloat)left {
- (CGFloat)left {
    //: return self.frame.origin.x;
    return self.frame.origin.x;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setLeft:(CGFloat)x {
- (void)setLeft:(CGFloat)x {
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin.x = x;
    frame.origin.x = x;
    //: self.frame = frame;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGFloat)top {
- (CGFloat)top {
    //: return self.frame.origin.y;
    return self.frame.origin.y;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setTop:(CGFloat)y {
- (void)setTop:(CGFloat)y {
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin.y = y;
    frame.origin.y = y;
    //: self.frame = frame;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGFloat)right {
- (CGFloat)right {
    //: return self.frame.origin.x + self.frame.size.width;
    return self.frame.origin.x + self.frame.size.width;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setRight:(CGFloat)right {
- (void)setRight:(CGFloat)right {
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin.x = right - frame.size.width;
    frame.origin.x = right - frame.size.width;
    //: self.frame = frame;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGFloat)bottom {
- (CGFloat)bottom {
    //: return self.frame.origin.y + self.frame.size.height;
    return self.frame.origin.y + self.frame.size.height;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setBottom:(CGFloat)bottom {
- (void)setBottom:(CGFloat)bottom {
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin.y = bottom - frame.size.height;
    frame.origin.y = bottom - frame.size.height;
    //: self.frame = frame;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGFloat)centerX {
- (CGFloat)centerX {
    //: return self.center.x;
    return self.center.x;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setCenterX:(CGFloat)centerX {
- (void)setCenterX:(CGFloat)centerX {
    //: self.center = CGPointMake(centerX, self.center.y);
    self.center = CGPointMake(centerX, self.center.y);
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGFloat)centerY {
- (CGFloat)centerY {
    //: return self.center.y;
    return self.center.y;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setCenterY:(CGFloat)centerY {
- (void)setCenterY:(CGFloat)centerY {
    //: self.center = CGPointMake(self.center.x, centerY);
    self.center = CGPointMake(self.center.x, centerY);
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGFloat)width {
- (CGFloat)width {
    //: return self.frame.size.width;
    return self.frame.size.width;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setWidth:(CGFloat)width {
- (void)setWidth:(CGFloat)width {
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.size.width = width;
    frame.size.width = width;
    //: self.frame = frame;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGFloat)height {
- (CGFloat)height {
    //: return self.frame.size.height;
    return self.frame.size.height;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setHeight:(CGFloat)height {
- (void)setHeight:(CGFloat)height {
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.size.height = height;
    frame.size.height = height;
    //: self.frame = frame;
    self.frame = frame;
}
///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGPoint)origin {
- (CGPoint)origin {
    //: return self.frame.origin;
    return self.frame.origin;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setOrigin:(CGPoint)origin {
- (void)setOrigin:(CGPoint)origin {
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.origin = origin;
    frame.origin = origin;
    //: self.frame = frame;
    self.frame = frame;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (CGSize)size {
- (CGSize)size {
    //: return self.frame.size;
    return self.frame.size;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//: - (void)setSize:(CGSize)size {
- (void)setSize:(CGSize)size {
    //: CGRect frame = self.frame;
    CGRect frame = self.frame;
    //: frame.size = size;
    frame.size = size;
    //: self.frame = frame;
    self.frame = frame;
}


//: - (UIViewController *)viewController{
- (UIViewController *)allow{
    //: for (UIView* next = self; next; next = next.superview) {
    for (UIView* next = self; next; next = next.superview) {
        //: UIResponder* nextResponder = [next nextResponder];
        UIResponder* nextResponder = [next nextResponder];
        //: if ([nextResponder isKindOfClass:[UIViewController class]]) {
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            //: return (UIViewController*)nextResponder;
            return (UIViewController*)nextResponder;
        }
    }
    //: return nil;
    return nil;
}

//: @end
@end



//: @implementation UIView(NTESPresent)
@implementation UIView(Tinkle)


//: static char PresentedViewAddress; 
static char mainBlockIdent; //被Present的View
//: static char PresentingViewAddress; 
static char show_accessValue; //正在Present其他视图的view

//: - (void)presentView:(UIView*)view animated:(BOOL)animated complete:(void(^)(void)) complete{
- (void)should:(UIView*)view exhaustive:(BOOL)animated info:(void(^)(void)) complete{
    //: if (!self.window) {
    if (!self.window) {
        //: return;
        return;
    }
    //: [self.window addSubview:view];
    [self.window addSubview:view];
    //: objc_setAssociatedObject(self, &PresentedViewAddress, view, OBJC_ASSOCIATION_RETAIN);
    objc_setAssociatedObject(self, &mainBlockIdent, view, OBJC_ASSOCIATION_RETAIN);
    //: objc_setAssociatedObject(view, &PresentingViewAddress, self, OBJC_ASSOCIATION_RETAIN);
    objc_setAssociatedObject(view, &show_accessValue, self, OBJC_ASSOCIATION_RETAIN);
    //: if (animated) {
    if (animated) {
        //: [self doAlertAnimate:view complete:complete];
        [self libraryComplete:view exaggerate:complete];
    //: }else{
    }else{
        //: view.center = self.window.center;
        view.center = self.window.center;
    }
}

//: - (UIView *)presentedView{
- (UIView *)showValue{
    //: UIView * view = objc_getAssociatedObject(self, &PresentedViewAddress);
    UIView * view = objc_getAssociatedObject(self, &mainBlockIdent);
    //: return view;
    return view;
}

//: - (void)dismissPresentedView:(BOOL)animated complete:(void(^)(void)) complete{
- (void)scoff:(BOOL)animated victualer:(void(^)(void)) complete{
    //: UIView * view = objc_getAssociatedObject(self, &PresentedViewAddress);
    UIView * view = objc_getAssociatedObject(self, &mainBlockIdent);
    //: if (animated) {
    if (animated) {
        //: [self doHideAnimate:view complete:complete];
        [self top:view center:complete];
    //: }else{
    }else{
        //: [view removeFromSuperview];
        [view removeFromSuperview];
        //: [self cleanAssocaiteObject];
        [self calendarMonth];
    }
}

//: - (void)hideSelf:(BOOL)animated complete:(void(^)(void)) complete{
- (void)viewAcross:(BOOL)animated statusAcross:(void(^)(void)) complete{
    //: UIView * baseView = objc_getAssociatedObject(self, &PresentingViewAddress);
    UIView * baseView = objc_getAssociatedObject(self, &show_accessValue);
    //: if (!baseView) {
    if (!baseView) {
        //: return;
        return;
    }
    //: [baseView dismissPresentedView:animated complete:complete];
    [baseView scoff:animated victualer:complete];
    //: [self cleanAssocaiteObject];
    [self calendarMonth];
}


//: - (void)onPressBkg:(id)sender{
- (void)directionWith:(id)sender{
    //: [self dismissPresentedView:YES complete:nil];
    [self scoff:YES victualer:nil];
}

//: #pragma mark - Animation
#pragma mark - Animation
//: - (void)doAlertAnimate:(UIView*)view complete:(void(^)(void)) complete{
- (void)libraryComplete:(UIView*)view exaggerate:(void(^)(void)) complete{
    //: CGRect bounds = view.bounds;
    CGRect bounds = view.bounds;
    // 放大
    //: CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"bounds"];
    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:[CognisanceData showTowerMessage]];
    //: scaleAnimation.duration = .25f;
    scaleAnimation.duration = .25f;
    //: scaleAnimation.fromValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 1, 1)];
    scaleAnimation.fromValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 1, 1)];
    //: scaleAnimation.toValue = [NSValue valueWithCGRect:bounds];
    scaleAnimation.toValue = [NSValue valueWithCGRect:bounds];

    // 移动
    //: CABasicAnimation *moveAnimation = [CABasicAnimation animationWithKeyPath:@"position"];
    CABasicAnimation *moveAnimation = [CABasicAnimation animationWithKeyPath:[CognisanceData m_makeUrl]];
    //: moveAnimation.duration = .25f;
    moveAnimation.duration = .25f;
    //: moveAnimation.fromValue = [NSValue valueWithCGPoint:[self.superview convertPoint:self.center toView:nil]];
    moveAnimation.fromValue = [NSValue valueWithCGPoint:[self.superview convertPoint:self.center toView:nil]];
    //: moveAnimation.toValue = [NSValue valueWithCGPoint:self.window.center];
    moveAnimation.toValue = [NSValue valueWithCGPoint:self.window.center];

    //: CAAnimationGroup *group = [CAAnimationGroup animation];
    CAAnimationGroup *group = [CAAnimationGroup animation];
    //: group.beginTime = CACurrentMediaTime();
    group.beginTime = CACurrentMediaTime();
    //: group.duration = .25f;
    group.duration = .25f;
    //: group.animations = [NSArray arrayWithObjects:scaleAnimation,moveAnimation,nil];
    group.animations = [NSArray arrayWithObjects:scaleAnimation,moveAnimation,nil];
    //: group.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    group.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    //: group.fillMode = kCAFillModeForwards;
    group.fillMode = kCAFillModeForwards;
    //: group.removedOnCompletion = NO;
    group.removedOnCompletion = NO;
    //: group.autoreverses = NO;
    group.autoreverses = NO;

    //: [self hideAllSubView:view];
    [self putOffUpwardWithoutWorldViewBackground:view];

    //: [view.layer addAnimation:group forKey:@"groupAnimationAlert"];
    [view.layer addAnimation:group forKey:[CognisanceData show_semenIdent]];

    //: __weak UIView * wself = self;
    __weak UIView * wself = self;
    //: dispatch_after(dispatch_time((0ull), (int64_t)(.25f * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(.25f * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: view.layer.bounds = bounds;
        view.layer.bounds = bounds;
        //: view.layer.position = wself.superview.center;
        view.layer.position = wself.superview.center;
        //: [wself showAllSubView:view];
        [wself index:view];
        //: if (complete) {
        if (complete) {
            //: complete();
            complete();
        }
    //: });
    });

}

//: - (void)doHideAnimate:(UIView*)alertView complete:(void(^)(void)) complete{
- (void)top:(UIView*)alertView center:(void(^)(void)) complete{
    //: if (!alertView) {
    if (!alertView) {
        //: return;
        return;
    }
    // 缩小
    //: CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"bounds"];
    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:[CognisanceData showTowerMessage]];
    //: scaleAnimation.duration = .25f;
    scaleAnimation.duration = .25f;
    //: scaleAnimation.toValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 1, 1)];
    scaleAnimation.toValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 1, 1)];

    //: CGPoint position = self.center;
    CGPoint position = self.center;
    // 移动
    //: CABasicAnimation *moveAnimation = [CABasicAnimation animationWithKeyPath:@"position"];
    CABasicAnimation *moveAnimation = [CABasicAnimation animationWithKeyPath:[CognisanceData m_makeUrl]];
    //: moveAnimation.duration = .25f;
    moveAnimation.duration = .25f;
    //: moveAnimation.toValue = [NSValue valueWithCGPoint:[self.superview convertPoint:self.center toView:nil]];
    moveAnimation.toValue = [NSValue valueWithCGPoint:[self.superview convertPoint:self.center toView:nil]];

    //: CAAnimationGroup *group = [CAAnimationGroup animation];
    CAAnimationGroup *group = [CAAnimationGroup animation];
    //: group.beginTime = CACurrentMediaTime();
    group.beginTime = CACurrentMediaTime();
    //: group.duration = .25f;
    group.duration = .25f;
    //: group.animations = [NSArray arrayWithObjects:scaleAnimation,moveAnimation,nil];
    group.animations = [NSArray arrayWithObjects:scaleAnimation,moveAnimation,nil];
    //: group.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    group.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    //: group.fillMode = kCAFillModeForwards;
    group.fillMode = kCAFillModeForwards;
    //: group.removedOnCompletion = NO;
    group.removedOnCompletion = NO;
    //: group.autoreverses = NO;
    group.autoreverses = NO;


    //: alertView.layer.bounds = self.bounds;
    alertView.layer.bounds = self.bounds;
    //: alertView.layer.position = position;
    alertView.layer.position = position;
    //: alertView.layer.needsDisplayOnBoundsChange = YES;
    alertView.layer.needsDisplayOnBoundsChange = YES;

    //: [self hideAllSubView:alertView];
    [self putOffUpwardWithoutWorldViewBackground:alertView];
    //: alertView.backgroundColor = [UIColor clearColor];
    alertView.backgroundColor = [UIColor clearColor];

    //: [alertView.layer addAnimation:group forKey:@"groupAnimationHide"];
    [alertView.layer addAnimation:group forKey:[CognisanceData notiSeparateKey]];

    //: __weak UIView * wself = self;
    __weak UIView * wself = self;
    //: dispatch_after(dispatch_time((0ull), (int64_t)(.25f * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(.25f * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: [alertView removeFromSuperview];
        [alertView removeFromSuperview];
        //: [wself cleanAssocaiteObject];
        [wself calendarMonth];
        //: [wself showAllSubView:alertView];
        [wself index:alertView];
        //: if (complete) {
        if (complete) {
            //: complete();
            complete();
        }
    //: });
    });
}


//: static char *HideViewsAddress = "hideViewsAddress";
static char *showPathIdent = "hideViewsAddress";
//: - (void)hideAllSubView:(UIView*)view{
- (void)putOffUpwardWithoutWorldViewBackground:(UIView*)view{
    //: for (UIView * subView in view.subviews) {
    for (UIView * subView in view.subviews) {
        //: NSMutableArray *array = [[NSMutableArray alloc] init];
        NSMutableArray *array = [[NSMutableArray alloc] init];
        //: if (subView.hidden) {
        if (subView.hidden) {
            //: [array addObject:subView];
            [array addObject:subView];
        }
        //: objc_setAssociatedObject(self, &HideViewsAddress, array, OBJC_ASSOCIATION_RETAIN);
        objc_setAssociatedObject(self, &showPathIdent, array, OBJC_ASSOCIATION_RETAIN);
        //: subView.hidden = YES;
        subView.hidden = YES;
    }
}

//: - (void)showAllSubView:(UIView*)view{
- (void)index:(UIView*)view{
    //: NSMutableArray *array = objc_getAssociatedObject(self,&HideViewsAddress);
    NSMutableArray *array = objc_getAssociatedObject(self,&showPathIdent);
    //: for (UIView * subView in view.subviews) {
    for (UIView * subView in view.subviews) {
        //: subView.hidden = [array containsObject:subView];
        subView.hidden = [array containsObject:subView];
    }
}

//: - (void)cleanAssocaiteObject{
- (void)calendarMonth{
    //: objc_setAssociatedObject(self,&PresentedViewAddress,nil,OBJC_ASSOCIATION_RETAIN);
    objc_setAssociatedObject(self,&mainBlockIdent,nil,OBJC_ASSOCIATION_RETAIN);
    //: objc_setAssociatedObject(self,&PresentingViewAddress,nil,OBJC_ASSOCIATION_RETAIN);
    objc_setAssociatedObject(self,&show_accessValue,nil,OBJC_ASSOCIATION_RETAIN);
    //: objc_setAssociatedObject(self,&HideViewsAddress,nil, OBJC_ASSOCIATION_RETAIN);
    objc_setAssociatedObject(self,&showPathIdent,nil, OBJC_ASSOCIATION_RETAIN);
}

//: @end
@end