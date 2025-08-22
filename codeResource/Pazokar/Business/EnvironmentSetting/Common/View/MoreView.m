
#import <Foundation/Foundation.h>
typedef struct {
    Byte soundHm;
    Byte *ahTourist;
    unsigned int discJockey;
    Byte topicKiller;
	int deserveCargo;
	int wiseMan;
} MakeConsciousnessData;

NSString *StringFromMakeConsciousnessData(MakeConsciousnessData *data);


//: loading_%zd
MakeConsciousnessData appAfterId = (MakeConsciousnessData){6, (Byte []){106, 105, 103, 98, 111, 104, 97, 89, 35, 124, 98, 205}, 11, 203, 52, 248};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MoreView.m
//  NIM
//
//  Created by Yan Wang on 2024/8/10.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONCustomLoadingView.h"
#import "MoreView.h"

//: @interface ZMONCustomLoadingView ()
@interface MoreView ()

//: @property (nonatomic, strong) UIView *viewBg;
@property (nonatomic, strong) UIView *viewBg;
//: @property (strong, nonatomic) UIImageView *gifView;
@property (strong, nonatomic) UIImageView *gifView;

//: @end
@end

//: @implementation ZMONCustomLoadingView
@implementation MoreView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
//        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
//        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationClose)];
//        [self addGestureRecognizer:singleTapclose];

        //: [self initUI];
        [self initImageUi];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initImageUi{

    //: _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 120, 120)];
    _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 120, 120)];
    //: _viewBg.backgroundColor = [UIColor whiteColor];
    _viewBg.backgroundColor = [UIColor whiteColor];
    //: _viewBg.center = CGPointMake(self.width/2, self.height/2);
    _viewBg.center = CGPointMake(self.width/2, self.height/2);
    //: _viewBg.layer.masksToBounds = YES;
    _viewBg.layer.masksToBounds = YES;
    //: _viewBg.layer.cornerRadius = 8;
    _viewBg.layer.cornerRadius = 8;
    //: [self addSubview:_viewBg];
    [self addSubview:_viewBg];

    //: [self.viewBg addSubview:self.gifView];
    [self.viewBg addSubview:self.gifView];
    //: self.gifView.frame = CGRectMake(10, 10, 100, 100);
    self.gifView.frame = CGRectMake(10, 10, 100, 100);
    //: NSMutableArray *refreshingImages = [NSMutableArray array];
    NSMutableArray *refreshingImages = [NSMutableArray array];
    //: for (NSInteger i = 0; i<30; i++) {
    for (NSInteger i = 0; i<30; i++) {
        //: UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"loading_%zd",i]];
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:StringFromMakeConsciousnessData(&appAfterId),i]];
        //: [refreshingImages addObject:image];
        [refreshingImages addObject:image];
    }
    //: [self.gifView stopAnimating];
    [self.gifView stopAnimating];
    //: self.gifView.animationImages = refreshingImages;
    self.gifView.animationImages = refreshingImages;
    //: self.gifView.animationDuration = refreshingImages.count * 0.1;
    self.gifView.animationDuration = refreshingImages.count * 0.1;
    //: [self.gifView startAnimating];
    [self.gifView startAnimating];

}

//: - (UIImageView *)gifView
- (UIImageView *)gifView
{
    //: if (!_gifView) {
    if (!_gifView) {
       //: _gifView = [[UIImageView alloc] init];
       _gifView = [[UIImageView alloc] init];
    }
    //: return _gifView;
    return _gifView;
}

//: - (void)animationClose
- (void)tingShould
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)select
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end

Byte *MakeConsciousnessDataToByte(MakeConsciousnessData *data) {
    if (data->topicKiller < 126) return data->ahTourist;
    for (int i = 0; i < data->discJockey; i++) {
        data->ahTourist[i] ^= data->soundHm;
    }
    data->ahTourist[data->discJockey] = 0;
    data->topicKiller = 63;
	if (data->discJockey >= 2) {
		data->deserveCargo = data->ahTourist[0];
		data->wiseMan = data->ahTourist[1];
	}
    return data->ahTourist;
}

NSString *StringFromMakeConsciousnessData(MakeConsciousnessData *data) {
    return [NSString stringWithUTF8String:(char *)MakeConsciousnessDataToByte(data)];
}
