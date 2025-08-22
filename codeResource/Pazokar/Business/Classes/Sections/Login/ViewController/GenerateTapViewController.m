
#import <Foundation/Foundation.h>

typedef struct {
    Byte woodenPopTourist;
    Byte *pepMotor;
    unsigned int inmateWith;
	int discomfited;
	int finText;
	int factorName;
} StructTextIdealData;

@interface TextIdealData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation TextIdealData

+ (instancetype)sharedInstance {
    static TextIdealData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)TextIdealDataToData:(NSString *)value {
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

- (Byte *)TextIdealDataToByte:(StructTextIdealData *)data {
    for (int i = 0; i < data->inmateWith; i++) {
        data->pepMotor[i] ^= data->woodenPopTourist;
    }
    data->pepMotor[data->inmateWith] = 0;
	if (data->inmateWith >= 3) {
		data->discomfited = data->pepMotor[0];
		data->finText = data->pepMotor[1];
		data->factorName = data->pepMotor[2];
	}
    return data->pepMotor;
}

- (NSString *)StringFromTextIdealData:(StructTextIdealData *)data {
    return [NSString stringWithUTF8String:(char *)[self TextIdealDataToByte:data]];
}

//: #02D8C9
- (NSString *)notiFainStr {
    /* static */ NSString *notiFainStr = nil;
    if (!notiFainStr) {
		NSString *origin = @"fdeeec9ae69de7bd";
		NSData *data = [TextIdealData TextIdealDataToData:origin];
        StructTextIdealData value = (StructTextIdealData){222, (Byte *)data.bytes, 7, 137, 230, 110};
        notiFainStr = [self StringFromTextIdealData:&value];
    }
    return notiFainStr;
}

//: #5D5F66
- (NSString *)noti_modeTitle {
    /* static */ NSString *noti_modeTitle = nil;
    if (!noti_modeTitle) {
		NSString *origin = @"8f99e899ea9a9ac8";
		NSData *data = [TextIdealData TextIdealDataToData:origin];
        StructTextIdealData value = (StructTextIdealData){172, (Byte *)data.bytes, 7, 196, 61, 159};
        noti_modeTitle = [self StringFromTextIdealData:&value];
    }
    return noti_modeTitle;
}

//: back_arrow_bl
- (NSString *)userLaughFilePath {
    /* static */ NSString *userLaughFilePath = nil;
    if (!userLaughFilePath) {
		NSString *origin = @"bcbfbdb581bfacacb1a981bcb2ef";
		NSData *data = [TextIdealData TextIdealDataToData:origin];
        StructTextIdealData value = (StructTextIdealData){222, (Byte *)data.bytes, 13, 29, 71, 161};
        userLaughFilePath = [self StringFromTextIdealData:&value];
    }
    return userLaughFilePath;
}

//: nickname_same_account
- (NSString *)kTextUrl {
    /* static */ NSString *kTextUrl = nil;
    if (!kTextUrl) {
		NSString *origin = @"c4c3c9c1c4cbc7cff5d9cbc7cff5cbc9c9c5dfc4de1e";
		NSData *data = [TextIdealData TextIdealDataToData:origin];
        StructTextIdealData value = (StructTextIdealData){170, (Byte *)data.bytes, 21, 119, 99, 115};
        kTextUrl = [self StringFromTextIdealData:&value];
    }
    return kTextUrl;
}

//: activity_register_next
- (NSString *)appTightenContent {
    /* static */ NSString *appTightenContent = nil;
    if (!appTightenContent) {
		NSString *origin = @"4e4c5b4659465b56705d4a48465c5b4a5d70414a575bbe";
		NSData *data = [TextIdealData TextIdealDataToData:origin];
        StructTextIdealData value = (StructTextIdealData){47, (Byte *)data.bytes, 22, 202, 20, 80};
        appTightenContent = [self StringFromTextIdealData:&value];
    }
    return appTightenContent;
}

//: activity_my_user_info_nick
- (NSString *)userNameShowData {
    /* static */ NSString *userNameShowData = nil;
    if (!userNameShowData) {
		NSString *origin = @"f0f2e5f8e7f8e5e8cefce8cee4e2f4e3cef8Busy7feceBusy8f2fa7e";
		NSData *data = [TextIdealData TextIdealDataToData:origin];
        StructTextIdealData value = (StructTextIdealData){145, (Byte *)data.bytes, 26, 101, 101, 159};
        userNameShowData = [self StringFromTextIdealData:&value];
    }
    return userNameShowData;
}

//: login_bg
- (NSString *)noti_vsUrl {
    /* static */ NSString *noti_vsUrl = nil;
    if (!noti_vsUrl) {
		NSString *origin = @"4b48404e497845400e";
		NSData *data = [TextIdealData TextIdealDataToData:origin];
        StructTextIdealData value = (StructTextIdealData){39, (Byte *)data.bytes, 8, 235, 45, 87};
        noti_vsUrl = [self StringFromTextIdealData:&value];
    }
    return noti_vsUrl;
}

//: register_good_nick
- (NSString *)mMessageChildKey {
    /* static */ NSString *mMessageChildKey = nil;
    if (!mMessageChildKey) {
		NSString *origin = @"5146444a505746517c444c4c477c4d4a4048f7";
		NSData *data = [TextIdealData TextIdealDataToData:origin];
        StructTextIdealData value = (StructTextIdealData){35, (Byte *)data.bytes, 18, 149, 143, 225};
        mMessageChildKey = [self StringFromTextIdealData:&value];
    }
    return mMessageChildKey;
}

//: #333333
- (NSString *)kFullListId {
    /* static */ NSString *kFullListId = nil;
    if (!kFullListId) {
		NSString *origin = @"7a6a6a6a6a6a6ad7";
		NSData *data = [TextIdealData TextIdealDataToData:origin];
        StructTextIdealData value = (StructTextIdealData){89, (Byte *)data.bytes, 7, 40, 207, 244};
        kFullListId = [self StringFromTextIdealData:&value];
    }
    return kFullListId;
}

//: register_avtivity3_nick
- (NSString *)appMinId {
    /* static */ NSString *appMinId = nil;
    if (!appMinId) {
		NSString *origin = @"2136343a202736210c3225273a253a272a600c3d3a303880";
		NSData *data = [TextIdealData TextIdealDataToData:origin];
        StructTextIdealData value = (StructTextIdealData){83, (Byte *)data.bytes, 23, 66, 77, 112};
        appMinId = [self StringFromTextIdealData:&value];
    }
    return appMinId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  GenerateTapViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/7/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyRegisterNickNameViewController.h"
#import "GenerateTapViewController.h"
//: #import "BusyRegisterAvatarViewController.h"
#import "AvatarViewController.h"

//: @interface BusyRegisterNickNameViewController ()<UITextFieldDelegate>
@interface GenerateTapViewController ()<UITextFieldDelegate>

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;

//: @property (nonatomic, strong) UIImageView *backGroundImgView;
@property (nonatomic, strong) UIImageView *backGroundImgView;
//: @property (nonatomic, strong) UILabel *appNameLabel;
@property (nonatomic, strong) UILabel *appNameLabel;
//: @property (nonatomic, strong) UILabel *subLabel;
@property (nonatomic, strong) UILabel *subLabel;

//: @property (nonatomic, strong) UIView *usernameView;
@property (nonatomic, strong) UIView *usernameView;

//: @property (nonatomic, strong) UILabel *accountLabel;
@property (nonatomic, strong) UILabel *accountLabel;
//: @property (nonatomic, strong) UITextField *accountTextfield;
@property (nonatomic, strong) UITextField *accountTextfield;

//: @property (nonatomic, strong) UILabel *tipsLabel;
@property (nonatomic, strong) UILabel *tipsLabel;
//: @property (nonatomic, strong) UILabel *tipsLabel1;
@property (nonatomic, strong) UILabel *tipsLabel1;

//: @property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) UIButton *registButton;

//: @property (strong, nonatomic) NSString *loginbgCode;
@property (strong, nonatomic) NSString *loginbgCode;
//: @property (strong, nonatomic) UIColor *defColor;
@property (strong, nonatomic) UIColor *defColor;

//: @end
@end

//: @implementation BusyRegisterNickNameViewController
@implementation GenerateTapViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[[TextIdealData sharedInstance] noti_vsUrl]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initName];

}

//: - (void)backAction{
- (void)numberernationalTing{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)initUI
- (void)initName
{
    //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.closeBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight]+2, 40, 40);
    self.closeBtn.frame = CGRectMake(15, [UIDevice statusOrLevel]+2, 40, 40);
    //    self.closeBtn.backgroundColor = [UIColor clearColor];
    //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [self.closeBtn setImage:[UIImage imageNamed:[[TextIdealData sharedInstance] userLaughFilePath]] forState:(UIControlStateNormal)];
    //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [self.closeBtn addTarget:self action:@selector(numberernationalTing) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.closeBtn];


    //: UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 45+[UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 45+[UIDevice statusOrLevel], [[UIScreen mainScreen] bounds].size.width-120, 40)];
    //: titleLabel.textColor = [UIColor blackColor];
    titleLabel.textColor = [UIColor blackColor];
    //: titleLabel.font = [UIFont boldSystemFontOfSize:24];
    titleLabel.font = [UIFont boldSystemFontOfSize:24];
    //: titleLabel.text = [BusyLanguageManager getTextWithKey:@"activity_my_user_info_nick"];
    titleLabel.text = [SendName streetSmart:[[TextIdealData sharedInstance] userNameShowData]];
    //: titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:titleLabel];
    [self.view addSubview:titleLabel];


    //: self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    self.accountLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 20)];
    //: self.accountLabel.font = [UIFont systemFontOfSize:14];
    self.accountLabel.font = [UIFont systemFontOfSize:14];
    //: self.accountLabel.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    self.accountLabel.textColor = [UIColor status:[[TextIdealData sharedInstance] noti_modeTitle]];
    //: self.accountLabel.text = [BusyLanguageManager getTextWithKey:@"register_good_nick"];
    self.accountLabel.text = [SendName streetSmart:[[TextIdealData sharedInstance] mMessageChildKey]];
    //: self.accountLabel.textAlignment = NSTextAlignmentCenter;
    self.accountLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountLabel];

//    UILabel *tip = [[UILabel alloc] initWithFrame:CGRectMake(20, self.accountLabel.bottom+30, SCREEN_WIDTH-40, 40)];
//    tip.font = [UIFont systemFontOfSize:14];
//    tip.textColor = TextColor_2;
//    tip.text = LangKey(@"nickname_same_account");
//    tip.numberOfLines = 2;
//    [self.view addSubview:tip];

    //: _usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, self.accountLabel.bottom+50, [[UIScreen mainScreen] bounds].size.width-40, 50)];
    _usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, self.accountLabel.bottom+50, [[UIScreen mainScreen] bounds].size.width-40, 50)];
    //: _usernameView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    _usernameView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    //: _usernameView.layer.cornerRadius = 8;
    _usernameView.layer.cornerRadius = 8;
    //: _usernameView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    _usernameView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: _usernameView.layer.shadowOffset = CGSizeMake(0,3);
    _usernameView.layer.shadowOffset = CGSizeMake(0,3);
    //: _usernameView.layer.shadowOpacity = 1;
    _usernameView.layer.shadowOpacity = 1;
    //: _usernameView.layer.shadowRadius = 0;
    _usernameView.layer.shadowRadius = 0;
    //: [self.view addSubview:_usernameView];
    [self.view addSubview:_usernameView];


    //: self.accountTextfield = [[UITextField alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60-30, 20)];
    self.accountTextfield = [[UITextField alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60-30, 20)];
    //: self.accountTextfield.font = [UIFont systemFontOfSize:16];
    self.accountTextfield.font = [UIFont systemFontOfSize:16];
    //: self.accountTextfield.textColor = [UIColor colorWithHexString:@"#333333"];
    self.accountTextfield.textColor = [UIColor status:[[TextIdealData sharedInstance] kFullListId]];
    //: self.accountTextfield.placeholder = [BusyLanguageManager getTextWithKey:@"register_avtivity3_nick"];
    self.accountTextfield.placeholder = [SendName streetSmart:[[TextIdealData sharedInstance] appMinId]];
    //: self.accountTextfield.delegate = self;
    self.accountTextfield.delegate = self;
    //: [_usernameView addSubview:self.accountTextfield];
    [_usernameView addSubview:self.accountTextfield];


    //: self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.registButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: self.registButton.frame = CGRectMake(20, _usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 44);
    self.registButton.frame = CGRectMake(20, _usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 44);
    //: self.registButton.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
    self.registButton.backgroundColor = [UIColor status:[[TextIdealData sharedInstance] notiFainStr]];
    //    self.registButton.layer.masksToBounds = YES;
    //: self.registButton.layer.cornerRadius = 10;
    self.registButton.layer.cornerRadius = 10;
    //: self.registButton.layer.shadowColor = [UIColor colorWithHexString:@"#02D8C9"].CGColor;
    self.registButton.layer.shadowColor = [UIColor status:[[TextIdealData sharedInstance] notiFainStr]].CGColor;
    //: self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    self.registButton.layer.shadowOffset = CGSizeMake(0,3);
    //: self.registButton.layer.shadowOpacity = 1;
    self.registButton.layer.shadowOpacity = 1;
    //: self.registButton.layer.shadowRadius = 0;
    self.registButton.layer.shadowRadius = 0;
    //: self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    self.registButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [self.registButton setTitle:[BusyLanguageManager getTextWithKey:@"activity_register_next"] forState:UIControlStateNormal];
    [self.registButton setTitle:[SendName streetSmart:[[TextIdealData sharedInstance] appTightenContent]] forState:UIControlStateNormal];
    //: [self.view addSubview:self.registButton];
    [self.view addSubview:self.registButton];
    //: [self.registButton addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.registButton addTarget:self action:@selector(videoClick) forControlEvents:UIControlEventTouchUpInside];

}

//: - (void)nextButtonClick
- (void)videoClick
{
    //: if (_accountTextfield.text.length == 0) {
    if (_accountTextfield.text.length == 0) {
        //: [self.view makeToast:[BusyLanguageManager getTextWithKey:@"register_avtivity3_nick"]
        [self.view makeToast:[SendName streetSmart:[[TextIdealData sharedInstance] appMinId]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }
    //: if ([_accountTextfield.text isEqualToString:self.accountName]) {
    if ([_accountTextfield.text isEqualToString:self.accountName]) {
        //: [self.view makeToast:[BusyLanguageManager getTextWithKey:@"nickname_same_account"]
        [self.view makeToast:[SendName streetSmart:[[TextIdealData sharedInstance] kTextUrl]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
        //: return;
        return;
    }


    //: BusyRegisterAvatarViewController *vc = [[BusyRegisterAvatarViewController alloc]init];
    AvatarViewController *vc = [[AvatarViewController alloc]init];
    //: vc.nickName = self.accountTextfield.text;
    vc.nickName = self.accountTextfield.text;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //: [super touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];
    //: [_accountTextfield resignFirstResponder];
    [_accountTextfield resignFirstResponder];
}

//: @end
@end
