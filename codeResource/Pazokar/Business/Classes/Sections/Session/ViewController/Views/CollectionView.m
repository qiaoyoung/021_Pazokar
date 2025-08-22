
#import <Foundation/Foundation.h>

@interface MicroOrganismData : NSObject

+ (instancetype)sharedInstance;

//: #D6D6D6
@property (nonatomic, copy) NSString *k_redId;

//: #333333
@property (nonatomic, copy) NSString *dream_sliceMessage;

//: red_packet
@property (nonatomic, copy) NSString *showHappinessPath;

//: amount
@property (nonatomic, copy) NSString *dreamDefensiveMessage;

//: activity_pay_psw_input
@property (nonatomic, copy) NSString *main_fromLeadershipPath;

//: #888888
@property (nonatomic, copy) NSString *main_clotheText;

//: change
@property (nonatomic, copy) NSString *app_backgroundMessage;

//: icon_redpackage_money
@property (nonatomic, copy) NSString *kClassifyData;

//: #C7E8CA
@property (nonatomic, copy) NSString *k_nimDecorateData;

//: icon_redpackage_close
@property (nonatomic, copy) NSString *mSideKey;

@end

@implementation MicroOrganismData

+ (instancetype)sharedInstance {
    static MicroOrganismData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)MicroOrganismDataToData:(NSString *)value {
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

- (Byte *)MicroOrganismDataToCache:(Byte *)data {
    int off = data[0];
    Byte objectPotato = data[1];
    int smartTitle = data[2];
    for (int i = smartTitle; i < smartTitle + off; i++) {
        int value = data[i] - objectPotato;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[smartTitle + off] = 0;
    return data + smartTitle;
}

- (NSString *)StringFromMicroOrganismData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MicroOrganismDataToCache:data]];
}

//: #333333
- (NSString *)dream_sliceMessage {
    if (!_dream_sliceMessage) {
		NSString *origin = @"073F05E5A56272727272727240";
		NSData *data = [MicroOrganismData MicroOrganismDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_sliceMessage = [self StringFromMicroOrganismData:value];
    }
    return _dream_sliceMessage;
}

//: red_packet
- (NSString *)showHappinessPath {
    if (!_showHappinessPath) {
		NSString *origin = @"0A58098EEAA02B1E7ECABDBCB7C8B9BBC3BDCCC5";
		NSData *data = [MicroOrganismData MicroOrganismDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showHappinessPath = [self StringFromMicroOrganismData:value];
    }
    return _showHappinessPath;
}

//: #D6D6D6
- (NSString *)k_redId {
    if (!_k_redId) {
		NSString *origin = @"07430A446F40D62EE9E86687798779877965";
		NSData *data = [MicroOrganismData MicroOrganismDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_redId = [self StringFromMicroOrganismData:value];
    }
    return _k_redId;
}

//: amount
- (NSString *)dreamDefensiveMessage {
    if (!_dreamDefensiveMessage) {
		NSString *origin = @"06360CC456A5EE89F71CD6FB97A3A5ABA4AABA";
		NSData *data = [MicroOrganismData MicroOrganismDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamDefensiveMessage = [self StringFromMicroOrganismData:value];
    }
    return _dreamDefensiveMessage;
}

//: change
- (NSString *)app_backgroundMessage {
    if (!_app_backgroundMessage) {
		NSString *origin = @"0626083F1A5059BB898E87948D8B57";
		NSData *data = [MicroOrganismData MicroOrganismDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_backgroundMessage = [self StringFromMicroOrganismData:value];
    }
    return _app_backgroundMessage;
}

//: icon_redpackage_close
- (NSString *)mSideKey {
    if (!_mSideKey) {
		NSString *origin = @"15510A6DDE7256A772D1BAB4C0BFB0C3B6B5C1B2B4BCB2B8B6B0B4BDC0C4B686";
		NSData *data = [MicroOrganismData MicroOrganismDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mSideKey = [self StringFromMicroOrganismData:value];
    }
    return _mSideKey;
}

//: icon_redpackage_money
- (NSString *)kClassifyData {
    if (!_kClassifyData) {
		NSString *origin = @"1502082EAA37A3B46B657170617467667263656D636967616F7170677B49";
		NSData *data = [MicroOrganismData MicroOrganismDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kClassifyData = [self StringFromMicroOrganismData:value];
    }
    return _kClassifyData;
}

//: #888888
- (NSString *)main_clotheText {
    if (!_main_clotheText) {
		NSString *origin = @"07020589F6253A3A3A3A3A3ADC";
		NSData *data = [MicroOrganismData MicroOrganismDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_clotheText = [self StringFromMicroOrganismData:value];
    }
    return _main_clotheText;
}

//: activity_pay_psw_input
- (NSString *)main_fromLeadershipPath {
    if (!_main_fromLeadershipPath) {
		NSString *origin = @"163609F6C3A083880B9799AA9FAC9FAAAF95A697AF95A6A9AD959FA4A6ABAAF6";
		NSData *data = [MicroOrganismData MicroOrganismDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_fromLeadershipPath = [self StringFromMicroOrganismData:value];
    }
    return _main_fromLeadershipPath;
}

//: #C7E8CA
- (NSString *)k_nimDecorateData {
    if (!_k_nimDecorateData) {
		NSString *origin = @"075B08B7B267CF277E9E92A0939E9C80";
		NSData *data = [MicroOrganismData MicroOrganismDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_nimDecorateData = [self StringFromMicroOrganismData:value];
    }
    return _k_nimDecorateData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CollectionView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPackagePaySheet.h"
#import "CollectionView.h"
//: #import "BusyAvatarImageView.h"
#import "CustomFormatView.h"
//: #import "TPPasswordTextView.h"
#import "StraddleView.h"

//: @interface NTESRedPackagePaySheet ()
@interface CollectionView ()
//: @property (nonatomic,strong) NSDictionary *originDict;
@property (nonatomic,strong) NSDictionary *originDict;
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @property (nonatomic,strong) UITextField *textfield;
@property (nonatomic,strong) UITextField *textfield;
//: @property (nonatomic,strong) UIImageView *headerImageView;
@property (nonatomic,strong) UIImageView *headerImageView;
//: @end
@end

//: @implementation NTESRedPackagePaySheet
@implementation CollectionView

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithTeam:(CGRect)frame showDictionary:(NSDictionary *)dictionary{

    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];

        //: UIView *b = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        UIView *b = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: [self addSubview:b];
        [self addSubview:b];

        //: UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleSingleTapFrom)];
        UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(underWith)];
        //: singleRecognizer.numberOfTapsRequired=1;
        singleRecognizer.numberOfTapsRequired=1;
        //: [b addGestureRecognizer:singleRecognizer];
        [b addGestureRecognizer:singleRecognizer];

        //: _backView = [[UIView alloc] initWithFrame:CGRectMake(30, [[UIScreen mainScreen] bounds].size.height/2- 270/2-50, [[UIScreen mainScreen] bounds].size.width-60, 270)];
        _backView = [[UIView alloc] initWithFrame:CGRectMake(30, [[UIScreen mainScreen] bounds].size.height/2- 270/2-50, [[UIScreen mainScreen] bounds].size.width-60, 270)];
        //: _backView.backgroundColor = [UIColor whiteColor];
        _backView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:_backView];
        [self addSubview:_backView];


        //: UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeButton.frame = CGRectMake(0, 0, 50, 50);
        closeButton.frame = CGRectMake(0, 0, 50, 50);
        //: [closeButton setImage:[UIImage imageNamed:@"icon_redpackage_close"] forState:UIControlStateNormal];
        [closeButton setImage:[UIImage imageNamed:[MicroOrganismData sharedInstance].mSideKey] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(endPicker) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:closeButton];
        [_backView addSubview:closeButton];


        //: _headerImageView = [[UIImageView alloc] init];
        _headerImageView = [[UIImageView alloc] init];
        //: [_backView addSubview:_headerImageView];
        [_backView addSubview:_headerImageView];
        //: [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(50);
            make.left.mas_offset(50);
            //: make.top.mas_offset(7.5);
            make.top.mas_offset(7.5);
            //: make.width.mas_equalTo(35);
            make.width.mas_equalTo(35);
            //: make.height.mas_equalTo(35);
            make.height.mas_equalTo(35);
        //: }];
        }];



        //: UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        //: titleLabel_1.textColor = [UIColor colorWithHexString:@"#333333"];
        titleLabel_1.textColor = [UIColor status:[MicroOrganismData sharedInstance].dream_sliceMessage];
        //: titleLabel_1.font = [UIFont boldSystemFontOfSize:16];
        titleLabel_1.font = [UIFont boldSystemFontOfSize:16];
        //: titleLabel_1.text = [BusyLanguageManager getTextWithKey:@"activity_pay_psw_input"];
        titleLabel_1.text = [SendName streetSmart:[MicroOrganismData sharedInstance].main_fromLeadershipPath];
        //: titleLabel_1.textAlignment = NSTextAlignmentLeft;
        titleLabel_1.textAlignment = NSTextAlignmentLeft;
        //: [_backView addSubview:titleLabel_1];
        [_backView addSubview:titleLabel_1];
        //: [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.left.mas_offset(100);
            make.left.mas_offset(100);
            //: make.height.mas_equalTo(50);
            make.height.mas_equalTo(50);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
        //: }];
        }];

        //: UIView *line = [[UIView alloc] init];
        UIView *line = [[UIView alloc] init];
        //: line.backgroundColor = [UIColor colorWithHexString:@"#C7E8CA"];
        line.backgroundColor = [UIColor status:[MicroOrganismData sharedInstance].k_nimDecorateData];
        //: [_backView addSubview:line];
        [_backView addSubview:line];
        //: [line mas_makeConstraints:^(MASConstraintMaker *make) {
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.height.mas_equalTo(1);
            make.height.mas_equalTo(1);
        //: }];
        }];

        //: UILabel *title = [[UILabel alloc] init];
        UILabel *title = [[UILabel alloc] init];
        //: title.textAlignment = NSTextAlignmentCenter;
        title.textAlignment = NSTextAlignmentCenter;
        //: title.textColor = [UIColor blackColor];
        title.textColor = [UIColor blackColor];
        //: title.font = [UIFont systemFontOfSize:15];
        title.font = [UIFont systemFontOfSize:15];
        //: title.text = [BusyLanguageManager getTextWithKey:@"red_packet"];
        title.text = [SendName streetSmart:[MicroOrganismData sharedInstance].showHappinessPath];
        //: [_backView addSubview:title];
        [_backView addSubview:title];
        //: [title mas_makeConstraints:^(MASConstraintMaker *make) {
        [title mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(60);
            make.top.mas_offset(60);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //: UILabel *amountLabel = [[UILabel alloc] init];
        UILabel *amountLabel = [[UILabel alloc] init];
        //: amountLabel.textAlignment = NSTextAlignmentCenter;
        amountLabel.textAlignment = NSTextAlignmentCenter;
        //: amountLabel.textColor = [UIColor blackColor];
        amountLabel.textColor = [UIColor blackColor];
        //: amountLabel.font = [UIFont boldSystemFontOfSize:30];
        amountLabel.font = [UIFont boldSystemFontOfSize:30];
        //: amountLabel.text = [NSString stringWithFormat:@"¥%@",[dictionary newStringValueForKey:@"amount"]];
        amountLabel.text = [NSString stringWithFormat:@"¥%@",[dictionary tag:[MicroOrganismData sharedInstance].dreamDefensiveMessage]];
        //: [_backView addSubview:amountLabel];
        [_backView addSubview:amountLabel];
        //: [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(90);
            make.top.mas_offset(90);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(50);
            make.height.mas_equalTo(50);
        //: }];
        }];

        //: UIView *blackLine = [[UIView alloc] init];
        UIView *blackLine = [[UIView alloc] init];
        //: blackLine.backgroundColor = [UIColor colorWithHexString:@"#D6D6D6"];
        blackLine.backgroundColor = [UIColor status:[MicroOrganismData sharedInstance].k_redId];
        //: [_backView addSubview:blackLine];
        [_backView addSubview:blackLine];
        //: [blackLine mas_makeConstraints:^(MASConstraintMaker *make) {
        [blackLine mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
            //: make.top.mas_offset(150);
            make.top.mas_offset(150);
            //: make.height.mas_equalTo(0.6);
            make.height.mas_equalTo(0.6);
        //: }];
        }];

        //: UIImageView *iconImage = [[UIImageView alloc] initWithFrame:CGRectMake(15, 155, 40, 40)];
        UIImageView *iconImage = [[UIImageView alloc] initWithFrame:CGRectMake(15, 155, 40, 40)];
        //: iconImage.image = [UIImage imageNamed:@"icon_redpackage_money"];
        iconImage.image = [UIImage imageNamed:[MicroOrganismData sharedInstance].kClassifyData];
        //: [_backView addSubview:iconImage];
        [_backView addSubview:iconImage];

        //: UILabel *lingq = [[UILabel alloc] initWithFrame:CGRectMake(60, 155, 100, 40)];
        UILabel *lingq = [[UILabel alloc] initWithFrame:CGRectMake(60, 155, 100, 40)];
        //: lingq.textColor = [UIColor colorWithHexString:@"#888888"];
        lingq.textColor = [UIColor status:[MicroOrganismData sharedInstance].main_clotheText];
        //: lingq.font = [UIFont systemFontOfSize:15];
        lingq.font = [UIFont systemFontOfSize:15];
        //: lingq.text = @"change";
        lingq.text = [MicroOrganismData sharedInstance].app_backgroundMessage;
        //: [_backView addSubview:lingq];
        [_backView addSubview:lingq];


        //: UIView *blackLine_2 = [[UIView alloc] init];
        UIView *blackLine_2 = [[UIView alloc] init];
        //: blackLine_2.backgroundColor = [UIColor colorWithHexString:@"#D6D6D6"];
        blackLine_2.backgroundColor = [UIColor status:[MicroOrganismData sharedInstance].k_redId];
        //: [_backView addSubview:blackLine_2];
        [_backView addSubview:blackLine_2];
        //: [blackLine_2 mas_makeConstraints:^(MASConstraintMaker *make) {
        [blackLine_2 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
            //: make.top.mas_offset(200);
            make.top.mas_offset(200);
            //: make.height.mas_equalTo(0.6);
            make.height.mas_equalTo(0.6);
        //: }];
        }];


        //: CGRect rect = CGRectMake([[UIScreen mainScreen] bounds].size.width/2-30-132, 210, 264, 44);
        CGRect rect = CGRectMake([[UIScreen mainScreen] bounds].size.width/2-30-132, 210, 264, 44);
        //: TPPasswordTextView *view1 = [[TPPasswordTextView alloc] initWithFrame:rect];
        StraddleView *view1 = [[StraddleView alloc] initWithFrame:rect];
        //: view1.elementCount = 6;
        view1.elementCount = 6;
        //: view1.elementBorderColor = [UIColor lightGrayColor];
        view1.elementBorderColor = [UIColor lightGrayColor];
        //: [_backView addSubview:view1];
        [_backView addSubview:view1];
        //: view1.passwordDidChangeBlock = ^(NSString *password) {
        view1.passwordDidChangeBlock = ^(NSString *password) {

            //: if (password.length == 6) {
            if (password.length == 6) {
                //: _block(password);
                _block(password);
                //: [self dismissPicker];
                [self endPicker];
            }
        //: };
        };

        //: [self reloadHeader];
        [self compartmentHeader];
    }
    //: return self;
    return self;
}


//: -(void)reloadHeader{
-(void)compartmentHeader{
    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: BusyKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    Info *info = [[Case pastTop] consumer:userID message:nil];
    //: NSString *headerUrl = me.userInfo.avatarUrl;
    NSString *headerUrl = me.userInfo.avatarUrl;
    //: UIImage *placeholderImage = info.avatarImage;
    UIImage *placeholderImage = info.avatarImage;
    //: [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
    [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
}

//: -(void)handleSingleTapFrom{
-(void)underWith{
    //: [self dismissPicker];
    [self endPicker];
}

//: - (void)show{
- (void)sizeSend{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 270/2];
        [self->_backView setHost:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice statusOrLevel]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 270/2];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)endPicker{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_backView setHost:[[UIScreen mainScreen] bounds].size.height];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}

//: -(void)finshInputPassword:(PayPasswordBlock)block{
-(void)picture:(PayPasswordBlock)block{
    //: _block = block;
    _block = block;
}

//: @end
@end
