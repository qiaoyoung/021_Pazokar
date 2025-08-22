
#import <Foundation/Foundation.h>

@interface CheckData : NSObject

+ (instancetype)sharedInstance;

//: forbidInteractivePop
@property (nonatomic, copy) NSString *main_letterNearlyDraftName;

//: useClearBar
@property (nonatomic, copy) NSString *app_literallyTitle;

@end

@implementation CheckData

+ (instancetype)sharedInstance {
    static CheckData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)CheckDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)CheckDataToCache:(Byte *)data {
    int cliffBeer = data[0];
    Byte furtherLabel = data[1];
    int sound = data[2];
    for (int i = sound; i < sound + cliffBeer; i++) {
        int value = data[i] - furtherLabel;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[sound + cliffBeer] = 0;
    return data + sound;
}

- (NSString *)StringFromCheckData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CheckDataToCache:data]];
}

//: useClearBar
- (NSString *)app_literallyTitle {
    if (!_app_literallyTitle) {
		NSString *origin = @"0b100aa88a20b8f8d342858375537c7571825271827a";
		NSData *data = [CheckData CheckDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_literallyTitle = [self StringFromCheckData:value];
    }
    return _app_literallyTitle;
}

//: forbidInteractivePop
- (NSString *)main_letterNearlyDraftName {
    if (!_main_letterNearlyDraftName) {
		NSString *origin = @"140d0adb4e7bce9e524a737c7f6f7671567b81727f6e70817683725d7c7d5a";
		NSData *data = [CheckData CheckDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_letterNearlyDraftName = [self StringFromCheckData:value];
    }
    return _main_letterNearlyDraftName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  VisualizationLabel.m
//  NIM
//
//  Created by chris on 16/1/28.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESNavigationHandler.h"
#import "VisualizationLabel.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "NTESMainTabController.h"
#import "LightGreenViewController.h"
//: #import "UIResponder+NTESFirstResponder.h"
#import "UIResponder+RowResponder.h"
//: #import "NTESNavigationAnimator.h"
#import "DataAnimator.h"

//: @interface NTESNavigationHandler()<UIGestureRecognizerDelegate,NTESNavigationAnimatorDelegate>
@interface VisualizationLabel()<UIGestureRecognizerDelegate,NavigationSharedDelegate>

//: @property (nonatomic,strong) UIPercentDrivenInteractiveTransition* interaction;
@property (nonatomic,strong) UIPercentDrivenInteractiveTransition* interaction;

//: @property (nonatomic,weak) UINavigationController *navigationController;
@property (nonatomic,weak) UINavigationController *navigationController;

//: @property (nonatomic,strong) NTESNavigationAnimator *animator;
@property (nonatomic,strong) DataAnimator *animator;

//: @property (nonatomic,assign) UINavigationControllerOperation currentOperation;
@property (nonatomic,assign) UINavigationControllerOperation currentOperation;

//: @property (nonatomic,strong) CAGradientLayer *uiPopShadow;
@property (nonatomic,strong) CAGradientLayer *uiPopShadow;

//: @property (nonatomic,assign) BOOL isAnimating;
@property (nonatomic,assign) BOOL isAnimating;

//: @end
@end

//: @implementation NTESNavigationHandler
@implementation VisualizationLabel

//: - (instancetype)initWithNavigationController:(UINavigationController *)navigationController
- (instancetype)initWith:(UINavigationController *)navigationController
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
//        _recognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
//        _recognizer.delegate = self;
//        _recognizer.delaysTouchesBegan = NO;
//        [navigationController.view addGestureRecognizer:_recognizer];
        //: _animator = [[NTESNavigationAnimator alloc] initWithNavigationController:navigationController];
        _animator = [[DataAnimator alloc] initWithShoot:navigationController];
        //: _animator.delegate = self;
        _animator.delegate = self;
        //: _navigationController = navigationController;
        _navigationController = navigationController;

    }
    //: return self;
    return self;
}

//: - (void)pan:(UIPanGestureRecognizer*)recognizer
- (void)year:(UIPanGestureRecognizer*)recognizer
{
    //: UIView* view = recognizer.view;
    UIView* view = recognizer.view;
    //: switch (recognizer.state) {
    switch (recognizer.state) {
        //: case UIGestureRecognizerStateBegan:{
        case UIGestureRecognizerStateBegan:{
            //: CGPoint location = [recognizer locationInView:view];
            CGPoint location = [recognizer locationInView:view];
            //: if (location.x < CGRectGetMidX(view.bounds) && self.navigationController.viewControllers.count > 1) { 
            if (location.x < CGRectGetMidX(view.bounds) && self.navigationController.viewControllers.count > 1) { // left half
                //: self.interaction = [UIPercentDrivenInteractiveTransition new];
                self.interaction = [UIPercentDrivenInteractiveTransition new];
                //: [self.navigationController popViewControllerAnimated:NO];
                [self.navigationController popViewControllerAnimated:NO];
            }
        }
            //: break;
            break;
        //: case UIGestureRecognizerStateChanged:{
        case UIGestureRecognizerStateChanged:{
            //: CGPoint translation = [recognizer translationInView:view];
            CGPoint translation = [recognizer translationInView:view];
            //: CGFloat d = translation.x / view.width;
            CGFloat d = translation.x / view.width;
            //: [self.interaction updateInteractiveTransition:d];
            [self.interaction updateInteractiveTransition:d];
        }
            //: break;
            break;
        //: case UIGestureRecognizerStateEnded:
        case UIGestureRecognizerStateEnded:
        //: case UIGestureRecognizerStateCancelled:{
        case UIGestureRecognizerStateCancelled:{
            //: if ([recognizer locationInView:view].x > view.width * .5f) {
            if ([recognizer locationInView:view].x > view.width * .5f) {
                //: [self.interaction finishInteractiveTransition];
                [self.interaction finishInteractiveTransition];
            //: } else {
            } else {
                //: [self.interaction cancelInteractiveTransition];
                [self.interaction cancelInteractiveTransition];
            }
            //: self.interaction = nil;
            self.interaction = nil;
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: #pragma mark - UINavigationControllerDelegate
#pragma mark - UINavigationControllerDelegate
//: - (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{

}


//: - (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{

}


//: - (nullable id <UIViewControllerInteractiveTransitioning>)navigationController:(UINavigationController *)navigationController
- (nullable id <UIViewControllerInteractiveTransitioning>)navigationController:(UINavigationController *)navigationController
                                   //: interactionControllerForAnimationController:(id <UIViewControllerAnimatedTransitioning>) animationController
                                   interactionControllerForAnimationController:(id <UIViewControllerAnimatedTransitioning>) animationController
{
    //: return self.interaction;
    return self.interaction;
}


//: - (nullable id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
- (nullable id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                            //: animationControllerForOperation:(UINavigationControllerOperation)operation
                                            animationControllerForOperation:(UINavigationControllerOperation)operation
                                                         //: fromViewController:(UIViewController *)fromVC
                                                         fromViewController:(UIViewController *)fromVC
                                                           //: toViewController:(UIViewController *)toVC
                                                           toViewController:(UIViewController *)toVC
{
    //: self.currentOperation = operation;
    self.currentOperation = operation;
    //: self.animator.currentOpearation = operation;
    self.animator.currentOpearation = operation;
    //: BOOL cross = [self isUseClearBar:fromVC] || [self isUseClearBar:toVC];
    BOOL cross = [self behindFileView:fromVC] || [self behindFileView:toVC];
    //: self.animator.animationType = cross ? NTESNavigationAnimationTypeCross : NTESNavigationAnimationTypeNormal;
    self.animator.animationType = cross ? NTESNavigationAnimationTypeCross : NTESNavigationAnimationTypeNormal;

    //: if (operation == UINavigationControllerOperationPop) {
    if (operation == UINavigationControllerOperationPop) {
        //: [fromVC.view.layer addSublayer:self.uiPopShadow];
        [fromVC.view.layer addSublayer:self.uiPopShadow];
    }
    //: return self.animator;
    return self.animator;
}

//: #pragma mark - UIGestureRecognizerDelegate
#pragma mark - UIGestureRecognizerDelegate

//: - (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    //: BOOL forbid = [self isForbidInteractivePop:self.navigationController.topViewController];
    BOOL forbid = [self thoughtImageUser:self.navigationController.topViewController];
    //: if (forbid || self.isAnimating) {
    if (forbid || self.isAnimating) {
        //: return NO;
        return NO;
    }
    //: UIView* view = gestureRecognizer.view;
    UIView* view = gestureRecognizer.view;
    //: CGPoint location = [gestureRecognizer locationInView:view];
    CGPoint location = [gestureRecognizer locationInView:view];
    //: return location.x < 44.f;
    return location.x < 44.f;
}

//: - (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRequireFailureOfGestureRecognizer:(nonnull UIGestureRecognizer *)otherGestureRecognizer
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRequireFailureOfGestureRecognizer:(nonnull UIGestureRecognizer *)otherGestureRecognizer
{
    //: return [otherGestureRecognizer.view.superview isKindOfClass:[UITableView class]];
    return [otherGestureRecognizer.view.superview isKindOfClass:[UITableView class]];
}



//: #pragma mark - Get
#pragma mark - Get
//: - (CAGradientLayer *)uiPopShadow
- (CAGradientLayer *)uiPopShadow
{
    //: if (!_uiPopShadow) {
    if (!_uiPopShadow) {
        //: _uiPopShadow = [CAGradientLayer layer];
        _uiPopShadow = [CAGradientLayer layer];
        //: _uiPopShadow.frame = CGRectMake(-6, 0, 6, [NTESMainTabController instance].view.frame.size.height);
        _uiPopShadow.frame = CGRectMake(-6, 0, 6, [LightGreenViewController item].view.frame.size.height);
        //: _uiPopShadow.startPoint = CGPointMake(1.0, 0.5);
        _uiPopShadow.startPoint = CGPointMake(1.0, 0.5);
        //: _uiPopShadow.endPoint = CGPointMake(0, 0.5);
        _uiPopShadow.endPoint = CGPointMake(0, 0.5);
        //: _uiPopShadow.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithWhite:0.0 alpha:0.2f] CGColor], (id)[[UIColor clearColor] CGColor], nil];
        _uiPopShadow.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithWhite:0.0 alpha:0.2f] CGColor], (id)[[UIColor clearColor] CGColor], nil];
    }
    //: return _uiPopShadow;
    return _uiPopShadow;
}

//: #pragma mark - NTESNavigationAnimatorDelegate
#pragma mark - NavigationSharedDelegate
//: - (void)animationWillStart:(NTESNavigationAnimator *)animator
- (void)measureBackground:(DataAnimator *)animator
{
    //: self.isAnimating = YES;
    self.isAnimating = YES;
}

//: - (void)animationDidEnd:(NTESNavigationAnimator *)animator
- (void)taping:(DataAnimator *)animator
{
    //: self.isAnimating = NO;
    self.isAnimating = NO;
}

//: #pragma mark - Private
#pragma mark - Private
//: - (BOOL)isUseClearBar:(UIViewController *)vc
- (BOOL)behindFileView:(UIViewController *)vc
{
    //: SEL sel = NSSelectorFromString(@"useClearBar");
    SEL sel = NSSelectorFromString([CheckData sharedInstance].app_literallyTitle);
    //: BOOL use = NO;
    BOOL use = NO;
    //: if ([vc respondsToSelector:sel]) {
    if ([vc respondsToSelector:sel]) {
        //: SuppressPerformSelectorLeakWarning(use = (BOOL)[vc performSelector:sel]);
        SuppressPerformSelectorLeakWarning(use = (BOOL)[vc performSelector:sel]);
    }
    //: return use;
    return use;
}

//: - (BOOL)isForbidInteractivePop:(UIViewController *)vc{
- (BOOL)thoughtImageUser:(UIViewController *)vc{
    //: SEL sel = NSSelectorFromString(@"forbidInteractivePop");
    SEL sel = NSSelectorFromString([CheckData sharedInstance].main_letterNearlyDraftName);
    //: BOOL use = NO;
    BOOL use = NO;
    //: if ([vc respondsToSelector:sel]) {
    if ([vc respondsToSelector:sel]) {
        //: SuppressPerformSelectorLeakWarning(use = (BOOL)[vc performSelector:sel]);
        SuppressPerformSelectorLeakWarning(use = (BOOL)[vc performSelector:sel]);
    }
    //: return use;
    return use;
}

//: @end
@end