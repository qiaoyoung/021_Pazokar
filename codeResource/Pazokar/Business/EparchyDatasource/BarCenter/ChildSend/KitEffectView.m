
#import <Foundation/Foundation.h>

@interface ManifestationData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ManifestationData

+ (instancetype)sharedInstance {
    static ManifestationData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ManifestationDataToCache:(Byte *)data {
    int replyEffective = data[0];
    Byte radioBeam = data[1];
    int attemptContent = data[2];
    for (int i = attemptContent; i < attemptContent + replyEffective; i++) {
        int value = data[i] + radioBeam;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[attemptContent + replyEffective] = 0;
    return data + attemptContent;
}

- (NSString *)StringFromManifestationData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ManifestationDataToCache:data]];
}

//: progress
- (NSString *)kNowhereText {
    /* static */ NSString *kNowhereText = nil;
    if (!kNowhereText) {
        Byte value[] = {8, 63, 8, 137, 249, 40, 45, 190, 49, 51, 48, 40, 51, 38, 52, 52, 144};
        kNowhereText = [self StringFromManifestationData:value];
    }
    return kNowhereText;
}

//: transform.rotation
- (NSString *)k_sliceName {
    /* static */ NSString *k_sliceName = nil;
    if (!k_sliceName) {
        Byte value[] = {18, 52, 11, 219, 109, 120, 243, 93, 94, 250, 4, 64, 62, 45, 58, 63, 50, 59, 62, 57, 250, 62, 59, 64, 45, 64, 53, 59, 58, 149};
        k_sliceName = [self StringFromManifestationData:value];
    }
    return k_sliceName;
}

//: strokeStart
- (NSString *)m_includePath {
    /* static */ NSString *m_includePath = nil;
    if (!m_includePath) {
        Byte value[] = {11, 3, 7, 148, 227, 135, 109, 112, 113, 111, 108, 104, 98, 80, 113, 94, 111, 113, 235};
        m_includePath = [self StringFromManifestationData:value];
    }
    return m_includePath;
}

//: bk_angle_mask
- (NSString *)userMigrationData {
    /* static */ NSString *userMigrationData = nil;
    if (!userMigrationData) {
        Byte value[] = {13, 51, 3, 47, 56, 44, 46, 59, 52, 57, 50, 44, 58, 46, 64, 56, 105};
        userMigrationData = [self StringFromManifestationData:value];
    }
    return userMigrationData;
}

//: strokeEnd
- (NSString *)m_minMessage {
    /* static */ NSString *m_minMessage = nil;
    if (!m_minMessage) {
        Byte value[] = {9, 41, 3, 74, 75, 73, 70, 66, 60, 28, 69, 59, 172};
        m_minMessage = [self StringFromManifestationData:value];
    }
    return m_minMessage;
}

//: rotate
- (NSString *)noti_procedureText {
    /* static */ NSString *noti_procedureText = nil;
    if (!noti_procedureText) {
        Byte value[] = {6, 40, 10, 137, 180, 195, 196, 205, 48, 200, 74, 71, 76, 57, 76, 61, 143};
        noti_procedureText = [self StringFromManifestationData:value];
    }
    return noti_procedureText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  KitEffectView.m
// Case
//
//  Created by chris on 2017/7/28.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyKitProgressHUD.h"
#import "KitEffectView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Case.h"
//: #import "MyUserKit.h"
#import "Case.h"

//: @interface BusyKitProgressHUD()
@interface KitEffectView()

//: @property (nonatomic, strong) CAShapeLayer *indefiniteAnimatedLayer;
@property (nonatomic, strong) CAShapeLayer *indefiniteAnimatedLayer;

//: @end
@end

//: @implementation BusyKitProgressHUD
@implementation KitEffectView

//: + (instancetype)sharedView
+ (instancetype)paradigm
{
    //: static BusyKitProgressHUD *instance = nil;
    static KitEffectView *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[BusyKitProgressHUD alloc] initWithFrame:CGRectMake(0, 0, 84, 84)];
        instance = [[KitEffectView alloc] initWithFrame:CGRectMake(0, 0, 84, 84)];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        self.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;

        //: UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
        UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
        //: UIVisualEffectView *blurView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        UIVisualEffectView *blurView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        //: blurView.frame = self.bounds;
        blurView.frame = self.bounds;
        //: [self.contentView addSubview:blurView];
        [self.contentView addSubview:blurView];

        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
        //: self.layer.cornerRadius = 14.f;
        self.layer.cornerRadius = 14.f;
        //: self.alpha = 0.8;
        self.alpha = 0.8;
        //: self.clipsToBounds = YES;
        self.clipsToBounds = YES;
    }
    //: return self;
    return self;
}

//: + (void)show
+ (void)nim
{
    //: [[BusyKitProgressHUD sharedView] showInView:[UIApplication sharedApplication].windows.firstObject];
    [[KitEffectView paradigm] nameView:[UIApplication sharedApplication].windows.firstObject];
}

//: + (void)dismiss
+ (void)area
{
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [[BusyKitProgressHUD sharedView] removeFromSuperview];
        [[KitEffectView paradigm] removeFromSuperview];
        //: [[BusyKitProgressHUD sharedView].indefiniteAnimatedLayer removeFromSuperlayer];
        [[KitEffectView paradigm].indefiniteAnimatedLayer removeFromSuperlayer];
    //: });
    });
}

//: - (void)showInView:(UIView *)view
- (void)nameView:(UIView *)view
{
    //: [view addSubview:self];
    [view addSubview:self];
    //: self.center = view.center;
    self.center = view.center;
    //: [CATransaction begin];
    [CATransaction begin];
    //: [CATransaction setDisableActions:YES];
    [CATransaction setDisableActions:YES];
    //: [self.layer addSublayer:self.indefiniteAnimatedLayer];
    [self.layer addSublayer:self.indefiniteAnimatedLayer];
    //: [CATransaction commit];
    [CATransaction commit];
}


//: - (CAShapeLayer*)indefiniteAnimatedLayer {
- (CAShapeLayer*)indefiniteAnimatedLayer {
    //: if(!_indefiniteAnimatedLayer) {
    if(!_indefiniteAnimatedLayer) {
        //: CGFloat strokeThickness = 2.f;
        CGFloat strokeThickness = 2.f;
        //: CGFloat radius = 18.f;
        CGFloat radius = 18.f;

        //: CGPoint arcCenter = CGPointMake(radius+strokeThickness/2+5, radius+strokeThickness/2+5);
        CGPoint arcCenter = CGPointMake(radius+strokeThickness/2+5, radius+strokeThickness/2+5);
        //: UIBezierPath* smoothedPath = [UIBezierPath bezierPathWithArcCenter:arcCenter radius:radius startAngle:(CGFloat) (3.14159265358979323846264338327950288*3/2) endAngle:(CGFloat) (3.14159265358979323846264338327950288/2+3.14159265358979323846264338327950288*5) clockwise:YES];
        UIBezierPath* smoothedPath = [UIBezierPath bezierPathWithArcCenter:arcCenter radius:radius startAngle:(CGFloat) (3.14159265358979323846264338327950288*3/2) endAngle:(CGFloat) (3.14159265358979323846264338327950288/2+3.14159265358979323846264338327950288*5) clockwise:YES];

        //: _indefiniteAnimatedLayer = [CAShapeLayer layer];
        _indefiniteAnimatedLayer = [CAShapeLayer layer];
        //: _indefiniteAnimatedLayer.contentsScale = [[UIScreen mainScreen] scale];
        _indefiniteAnimatedLayer.contentsScale = [[UIScreen mainScreen] scale];
        //: _indefiniteAnimatedLayer.frame = CGRectMake(0.0f, 0.0f, arcCenter.x*2, arcCenter.y*2);
        _indefiniteAnimatedLayer.frame = CGRectMake(0.0f, 0.0f, arcCenter.x*2, arcCenter.y*2);
        //: _indefiniteAnimatedLayer.fillColor = [UIColor clearColor].CGColor;
        _indefiniteAnimatedLayer.fillColor = [UIColor clearColor].CGColor;
        //: _indefiniteAnimatedLayer.strokeColor = [UIColor blackColor].CGColor;
        _indefiniteAnimatedLayer.strokeColor = [UIColor blackColor].CGColor;
        //: _indefiniteAnimatedLayer.lineWidth = 2;
        _indefiniteAnimatedLayer.lineWidth = 2;
        //: _indefiniteAnimatedLayer.lineCap = kCALineCapRound;
        _indefiniteAnimatedLayer.lineCap = kCALineCapRound;
        //: _indefiniteAnimatedLayer.lineJoin = kCALineJoinBevel;
        _indefiniteAnimatedLayer.lineJoin = kCALineJoinBevel;
        //: _indefiniteAnimatedLayer.path = smoothedPath.CGPath;
        _indefiniteAnimatedLayer.path = smoothedPath.CGPath;

        //: CALayer *maskLayer = [CALayer layer];
        CALayer *maskLayer = [CALayer layer];

//        NSString *bundleName = [[Case sharedKit] resourceBundleName];
//        NSURL *bundleURL = [[NSBundle bundleForClass:[KitEffectView class]] URLForResource:bundleName withExtension:nil];
//        
//        if (!bundleURL) // 兼容Pod use_frameworks!下，用户自定义资源文件
//        {
//            bundleURL = [[NSBundle mainBundle] URLForResource:bundleName withExtension:nil];
//        }
//        
//        if (bundleURL)
//        {
//            NSBundle *imageBundle = [NSBundle bundleWithURL:bundleURL];
//            
//            if (imageBundle)
//            {
//                NSString *path = [imageBundle pathForResource:@"bk_angle_mask" ofType:@"png"];
//                maskLayer.contents = (__bridge id)[[UIImage imageWithContentsOfFile:path] CGImage];
//            }
//        }

        //: maskLayer.contents = (__bridge id)[[UIImage imageNamed:@"bk_angle_mask"] CGImage];
        maskLayer.contents = (__bridge id)[[UIImage imageNamed:[[ManifestationData sharedInstance] userMigrationData]] CGImage];

        //: maskLayer.frame = _indefiniteAnimatedLayer.bounds;
        maskLayer.frame = _indefiniteAnimatedLayer.bounds;
        //: _indefiniteAnimatedLayer.mask = maskLayer;
        _indefiniteAnimatedLayer.mask = maskLayer;

        //: NSTimeInterval animationDuration = 1;
        NSTimeInterval animationDuration = 1;
        //: CAMediaTimingFunction *linearCurve = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
        CAMediaTimingFunction *linearCurve = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];

        //: CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:[[ManifestationData sharedInstance] k_sliceName]];
        //: animation.fromValue = (id) 0;
        animation.fromValue = (id) 0;
        //: animation.toValue = @(3.14159265358979323846264338327950288*2);
        animation.toValue = @(3.14159265358979323846264338327950288*2);
        //: animation.duration = animationDuration;
        animation.duration = animationDuration;
        //: animation.timingFunction = linearCurve;
        animation.timingFunction = linearCurve;
        //: animation.removedOnCompletion = NO;
        animation.removedOnCompletion = NO;
        //: animation.repeatCount = __builtin_huge_valf();
        animation.repeatCount = __builtin_huge_valf();
        //: animation.fillMode = kCAFillModeForwards;
        animation.fillMode = kCAFillModeForwards;
        //: animation.autoreverses = NO;
        animation.autoreverses = NO;
        //: [_indefiniteAnimatedLayer.mask addAnimation:animation forKey:@"rotate"];
        [_indefiniteAnimatedLayer.mask addAnimation:animation forKey:[[ManifestationData sharedInstance] noti_procedureText]];

        //: CAAnimationGroup *animationGroup = [CAAnimationGroup animation];
        CAAnimationGroup *animationGroup = [CAAnimationGroup animation];
        //: animationGroup.duration = animationDuration;
        animationGroup.duration = animationDuration;
        //: animationGroup.repeatCount = __builtin_huge_valf();
        animationGroup.repeatCount = __builtin_huge_valf();
        //: animationGroup.removedOnCompletion = NO;
        animationGroup.removedOnCompletion = NO;
        //: animationGroup.timingFunction = linearCurve;
        animationGroup.timingFunction = linearCurve;

        //: CABasicAnimation *strokeStartAnimation = [CABasicAnimation animationWithKeyPath:@"strokeStart"];
        CABasicAnimation *strokeStartAnimation = [CABasicAnimation animationWithKeyPath:[[ManifestationData sharedInstance] m_includePath]];
        //: strokeStartAnimation.fromValue = @0.015;
        strokeStartAnimation.fromValue = @0.015;
        //: strokeStartAnimation.toValue = @0.515;
        strokeStartAnimation.toValue = @0.515;

        //: CABasicAnimation *strokeEndAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        CABasicAnimation *strokeEndAnimation = [CABasicAnimation animationWithKeyPath:[[ManifestationData sharedInstance] m_minMessage]];
        //: strokeEndAnimation.fromValue = @0.485;
        strokeEndAnimation.fromValue = @0.485;
        //: strokeEndAnimation.toValue = @0.985;
        strokeEndAnimation.toValue = @0.985;

        //: animationGroup.animations = @[strokeStartAnimation, strokeEndAnimation];
        animationGroup.animations = @[strokeStartAnimation, strokeEndAnimation];
        //: [_indefiniteAnimatedLayer addAnimation:animationGroup forKey:@"progress"];
        [_indefiniteAnimatedLayer addAnimation:animationGroup forKey:[[ManifestationData sharedInstance] kNowhereText]];

    }
    //: return _indefiniteAnimatedLayer;
    return _indefiniteAnimatedLayer;
}


//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.indefiniteAnimatedLayer.position = CGPointMake(self.nim_width * 0.5f, self.nim_height * 0.5f);
    self.indefiniteAnimatedLayer.position = CGPointMake(self.nim_width * 0.5f, self.nim_height * 0.5f);
}


//: @end
@end
