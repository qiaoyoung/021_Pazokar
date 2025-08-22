
#import <Foundation/Foundation.h>

typedef struct {
    Byte fullness;
    Byte *projectPath;
    unsigned int rubric;
	int successSeed;
} StructGreenData;

@interface GreenData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation GreenData

+ (instancetype)sharedInstance {
    static GreenData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)GreenDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)GreenDataToByte:(StructGreenData *)data {
    for (int i = 0; i < data->rubric; i++) {
        data->projectPath[i] ^= data->fullness;
    }
    data->projectPath[data->rubric] = 0;
	if (data->rubric >= 1) {
		data->successSeed = data->projectPath[0];
	}
    return data->projectPath;
}

- (NSString *)StringFromGreenData:(StructGreenData *)data {
    return [NSString stringWithUTF8String:(char *)[self GreenDataToByte:data]];
}

//: No related content, try another word
- (NSString *)user_givenPath {
    /* static */ NSString *user_givenPath = nil;
    if (!user_givenPath) {
		NSArray<NSNumber *> *origin = @[@55, @22, @89, @11, @28, @21, @24, @13, @28, @29, @89, @26, @22, @23, @13, @28, @23, @13, @85, @89, @13, @11, @0, @89, @24, @23, @22, @13, @17, @28, @11, @89, @14, @22, @11, @29, @224];
		NSData *data = [GreenData GreenDataToData:origin];
        StructGreenData value = (StructGreenData){121, (Byte *)data.bytes, 36, 85};
        user_givenPath = [self StringFromGreenData:&value];
    }
    return user_givenPath;
}

//: #612CF9
- (NSString *)k_cliffMsg {
    /* static */ NSString *k_cliffMsg = nil;
    if (!k_cliffMsg) {
		NSArray<NSNumber *> *origin = @[@184, @173, @170, @169, @216, @221, @162, @21];
		NSData *data = [GreenData GreenDataToData:origin];
        StructGreenData value = (StructGreenData){155, (Byte *)data.bytes, 7, 38};
        k_cliffMsg = [self StringFromGreenData:&value];
    }
    return k_cliffMsg;
}

//: #F9F9F9
- (NSString *)dream_afterTowerContent {
    /* static */ NSString *dream_afterTowerContent = nil;
    if (!dream_afterTowerContent) {
		NSArray<NSNumber *> *origin = @[@228, @129, @254, @129, @254, @129, @254, @151];
		NSData *data = [GreenData GreenDataToData:origin];
        StructGreenData value = (StructGreenData){199, (Byte *)data.bytes, 7, 210};
        dream_afterTowerContent = [self StringFromGreenData:&value];
    }
    return dream_afterTowerContent;
}

//: icon_empty_data
- (NSString *)mainShouldUrl {
    /* static */ NSString *mainShouldUrl = nil;
    if (!mainShouldUrl) {
		NSArray<NSNumber *> *origin = @[@16, @26, @22, @23, @38, @28, @20, @9, @13, @0, @38, @29, @24, @13, @24, @95];
		NSData *data = [GreenData GreenDataToData:origin];
        StructGreenData value = (StructGreenData){121, (Byte *)data.bytes, 15, 67};
        mainShouldUrl = [self StringFromGreenData:&value];
    }
    return mainShouldUrl;
}

//: #875FFA
- (NSString *)app_nimIdent {
    /* static */ NSString *app_nimIdent = nil;
    if (!app_nimIdent) {
		NSArray<NSNumber *> *origin = @[@109, @118, @121, @123, @8, @8, @15, @217];
		NSData *data = [GreenData GreenDataToData:origin];
        StructGreenData value = (StructGreenData){78, (Byte *)data.bytes, 7, 111};
        app_nimIdent = [self StringFromGreenData:&value];
    }
    return app_nimIdent;
}

//: _isTransitioning
- (NSString *)appVirusLabelMessage {
    /* static */ NSString *appVirusLabelMessage = nil;
    if (!appVirusLabelMessage) {
		NSArray<NSNumber *> *origin = @[@113, @71, @93, @122, @92, @79, @64, @93, @71, @90, @71, @65, @64, @71, @64, @73, @182];
		NSData *data = [GreenData GreenDataToData:origin];
        StructGreenData value = (StructGreenData){46, (Byte *)data.bytes, 16, 30};
        appVirusLabelMessage = [self StringFromGreenData:&value];
    }
    return appVirusLabelMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DateViewController.m
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/4/20.
//  Copyright (c) 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import "HMViewController.h"
#import "DateViewController.h"

//: @implementation HMViewController
@implementation DateViewController
//: @synthesize viewControllerDelegate = _viewControllerDelegate;
@synthesize viewControllerDelegate = _viewControllerDelegate;


//: - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //self.view.backgroundColor = CommonBGView_Color;
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F9F9F9"];
    self.view.backgroundColor = [UIColor status:[[GreenData sharedInstance] dream_afterTowerContent]];

    //: self.navigationController.navigationBar.barTintColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel]];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithPatternImage:[ColorSort center:[UIColor status:[[GreenData sharedInstance] app_nimIdent]] name:[UIColor status:[[GreenData sharedInstance] k_cliffMsg]] sendGradientDirection:SNLinearGradientDirectionLevel]];
    //: [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:16]}];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:16]}];
}


//: #pragma - 系统返回手势改装
#pragma - 系统返回手势改装

/**
 注意：这个手势是添加在了self.navigationController.view上
 最好在：navigationController->RootViewController实现这个方法
 
 使用的时候一定要配置方法：注意！注意！注意！
 - (void)viewWillAppear:(BOOL)animated{
 [super viewWillAppear:animated];
 [self.navigationController setNavigationBarHidden:YES animated:animated];
 
 }
 */
//: - (void)addFullScreenPopGesture{
- (void)dataLink{
//    // 获取系统自带滑动手势的target对象
//    id target = self.navigationController.interactivePopGestureRecognizer.delegate;
//    SEL action = NSSelectorFromString(@"handleNavigationTransition:");
//    // 创建全屏滑动手势，调用系统自带滑动手势的target的action方法
//    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:action];
//    pan.delegate = self;
//    pan.maximumNumberOfTouches = 1;
//    // 给导航控制器的view添加全屏滑动手势
//    [self.navigationController.view addGestureRecognizer:pan];
}

/**
 注意
 */
//: - (void)enableFullScreenPopGesture:(BOOL)enable {
- (void)app:(BOOL)enable {
    /************************/
//    //注意：暂时取消侧拉pop手势
//    for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {
//        
//        gesture.enabled = NO;
//        return;
//    }

    //如果只有系统返回手势，添加自定义手势
    //: if (self.navigationController.view.gestureRecognizers.count == 1) {
    if (self.navigationController.view.gestureRecognizers.count == 1) {
        //: [self addFullScreenPopGesture];
        [self dataLink];
    }

    //: for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {
    for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {

        //: gesture.enabled = enable;
        gesture.enabled = enable;
    }
}

//: - (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer{
- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer{
    //: if (self.navigationController.viewControllers.count <= 1) {
    if (self.navigationController.viewControllers.count <= 1) {
        //: return NO;
        return NO;
    }

    // Ignore pan gesture when the navigation controller is currently in transition.
    //: if ([[self.navigationController valueForKey:@"_isTransitioning"] boolValue]) {
    if ([[self.navigationController valueForKey:[[GreenData sharedInstance] appVirusLabelMessage]] boolValue]) {
        //: return NO;
        return NO;
    }

    // Prevent calling the handler when the gesture begins in an opposite direction.
    //: CGPoint translation = [gestureRecognizer translationInView:gestureRecognizer.view];
    CGPoint translation = [gestureRecognizer translationInView:gestureRecognizer.view];
    //: if (translation.x <= 0) {
    if (translation.x <= 0) {
        //: return NO;
        return NO;
    }

    //: return YES;
    return YES;
}


//: @end
@end



//: @implementation UIViewController (HM)
@implementation UIViewController (HM)


//: #pragma mark - empty view
#pragma mark - empty view

//: - (void)showEmptyView{
- (void)question{
    //: [self showEmptyViewWithMessage:@"No related content, try another word"];
    [self showDown:[[GreenData sharedInstance] user_givenPath]];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message{
- (void)showDown:(NSString *)message{
    //: [self showEmptyViewWithMessage:message inView:self.view];
    [self changeSave:message light:self.view];
}


//: - (void)showEmptyViewWithImageName:(NSString *)imageName inView:(UIView *)inView{
- (void)addTogether:(NSString *)imageName length:(UIView *)inView{
    //: [self showEmptyViewWithMessage:@"" inView:inView imageName:imageName];
    [self bringHomeInDba:@"" valuePress_strong:inView image:imageName];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView{
- (void)changeSave:(NSString *)message light:(UIView *)inView{
    //: [self showEmptyViewWithMessage:message inView:inView imageName:@"icon_empty_data"];
    [self bringHomeInDba:message valuePress_strong:inView image:[[GreenData sharedInstance] mainShouldUrl]];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView imageName:(NSString *)imageName{
- (void)bringHomeInDba:(NSString *)message valuePress_strong:(UIView *)inView image:(NSString *)imageName{
    //: UIView *emptyView= (UIView *)[inView viewWithTag:53333];
    UIView *emptyView= (UIView *)[inView viewWithTag:53333];
    //: if (!emptyView) {
    if (!emptyView) {
        //: emptyView = [[UIView alloc]init];
        emptyView = [[UIView alloc]init];
        //: emptyView.backgroundColor = [UIColor clearColor];
        emptyView.backgroundColor = [UIColor clearColor];
        //: emptyView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        emptyView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        //: emptyView.tag = 53333;
        emptyView.tag = 53333;

        //: UIImageView *emptyImage = [[UIImageView alloc]init];
        UIImageView *emptyImage = [[UIImageView alloc]init];
        //: emptyImage.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-300)/2.0f, ([[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-250)/2.0f, 300, 200);
        emptyImage.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-300)/2.0f, ([[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice statusOrLevel])-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-250)/2.0f, 300, 200);
        //: emptyImage.image = [UIImage imageNamed:imageName];
        emptyImage.image = [UIImage imageNamed:imageName];
        //: [emptyView addSubview:emptyImage];
        [emptyView addSubview:emptyImage];

        //: UILabel *emptyLabel = [[UILabel alloc] init];
        UILabel *emptyLabel = [[UILabel alloc] init];
        //: emptyLabel.frame = CGRectMake(40, 0, [[UIScreen mainScreen] bounds].size.width-80, 20);
        emptyLabel.frame = CGRectMake(40, 0, [[UIScreen mainScreen] bounds].size.width-80, 20);
        //: emptyLabel.backgroundColor = [UIColor clearColor];
        emptyLabel.backgroundColor = [UIColor clearColor];
        //: emptyLabel.textColor = [UIColor lightGrayColor];
        emptyLabel.textColor = [UIColor lightGrayColor];
        //: emptyLabel.textAlignment = NSTextAlignmentCenter;
        emptyLabel.textAlignment = NSTextAlignmentCenter;
        //: emptyLabel.font = [UIFont systemFontOfSize:13];
        emptyLabel.font = [UIFont systemFontOfSize:13];
        //: emptyLabel.text = message;
        emptyLabel.text = message;
        //: [emptyView addSubview:emptyLabel];
        [emptyView addSubview:emptyLabel];
//        [emptyLabel underView:emptyImage padding:8];
//        [emptyLabel verticalAllignment:emptyImage];

    }


    //emptyView.center = CGPointMake(inView.width/2.0, inView.height/2.0);
    //: [inView addSubview:emptyView];
    [inView addSubview:emptyView];
    //: [inView bringSubviewToFront:emptyView];
    [inView bringSubviewToFront:emptyView];
}

//: - (void)hideEmptyView{
- (void)backgroundWill{
    //: [self hideEmptyViewInView:self.view];
    [self secondMedia:self.view];
}
//: - (void)hideEmptyViewInView:(UIView *)view{
- (void)secondMedia:(UIView *)view{

    //: UIView *emptyView= (UIView *)[view viewWithTag:53333];
    UIView *emptyView= (UIView *)[view viewWithTag:53333];

    //: emptyView.hidden = YES;
    emptyView.hidden = YES;
    //: [emptyView removeFromSuperview];
    [emptyView removeFromSuperview];
}


//: #pragma mark - 网络异常时调用此方法
#pragma mark - 网络异常时调用此方法

//: - (BOOL)canShowNotNetView{
- (BOOL)sizeColor{
    //: return NO;
    return NO;
}

//: - (void)refrushWithNotNet{
- (void)edge{


}





//: @end
@end