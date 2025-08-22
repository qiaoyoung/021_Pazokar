
#import <Foundation/Foundation.h>

typedef struct {
    Byte course;
    Byte *sumry;
    unsigned int bankManager;
	int molarity;
	int ceriseRecent;
} StructLabelData;

@interface LabelData : NSObject

@end

@implementation LabelData

+ (NSData *)LabelDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)LabelDataToByte:(StructLabelData *)data {
    for (int i = 0; i < data->bankManager; i++) {
        data->sumry[i] ^= data->course;
    }
    data->sumry[data->bankManager] = 0;
	if (data->bankManager >= 2) {
		data->molarity = data->sumry[0];
		data->ceriseRecent = data->sumry[1];
	}
    return data->sumry;
}

+ (NSString *)StringFromLabelData:(StructLabelData *)data {
    return [NSString stringWithUTF8String:(char *)[self LabelDataToByte:data]];
}

//: renewpass
+ (NSString *)showNameControlValue {
    /* static */ NSString *showNameControlValue = nil;
    if (!showNameControlValue) {
		NSArray<NSNumber *> *origin = @[@112, @103, @108, @103, @117, @114, @99, @113, @113, @167];
		NSData *data = [LabelData LabelDataToData:origin];
        StructLabelData value = (StructLabelData){2, (Byte *)data.bytes, 9, 145, 51};
        showNameControlValue = [self StringFromLabelData:&value];
    }
    return showNameControlValue;
}

//: msg
+ (NSString *)main_readTitle {
    /* static */ NSString *main_readTitle = nil;
    if (!main_readTitle) {
		NSArray<NSNumber *> *origin = @[@59, @37, @49, @160];
		NSData *data = [LabelData LabelDataToData:origin];
        StructLabelData value = (StructLabelData){86, (Byte *)data.bytes, 3, 92, 208};
        main_readTitle = [self StringFromLabelData:&value];
    }
    return main_readTitle;
}

//: safe_bind_phone_icon
+ (NSString *)notiSuccessUrl {
    /* static */ NSString *notiSuccessUrl = nil;
    if (!notiSuccessUrl) {
		NSArray<NSNumber *> *origin = @[@35, @49, @54, @53, @15, @50, @57, @62, @52, @15, @32, @56, @63, @62, @53, @15, @57, @51, @63, @62, @129];
		NSData *data = [LabelData LabelDataToData:origin];
        StructLabelData value = (StructLabelData){80, (Byte *)data.bytes, 20, 75, 156};
        notiSuccessUrl = [self StringFromLabelData:&value];
    }
    return notiSuccessUrl;
}

//: newpass
+ (NSString *)mTitleName {
    /* static */ NSString *mTitleName = nil;
    if (!mTitleName) {
		NSArray<NSNumber *> *origin = @[@116, @127, @109, @106, @123, @105, @105, @184];
		NSData *data = [LabelData LabelDataToData:origin];
        StructLabelData value = (StructLabelData){26, (Byte *)data.bytes, 7, 44, 87};
        mTitleName = [self StringFromLabelData:&value];
    }
    return mTitleName;
}

//: activity_modify_old
+ (NSString *)main_textId {
    /* static */ NSString *main_textId = nil;
    if (!main_textId) {
		NSArray<NSNumber *> *origin = @[@87, @85, @66, @95, @64, @95, @66, @79, @105, @91, @89, @82, @95, @80, @79, @105, @89, @90, @82, @231];
		NSData *data = [LabelData LabelDataToData:origin];
        StructLabelData value = (StructLabelData){54, (Byte *)data.bytes, 19, 32, 125};
        main_textId = [self StringFromLabelData:&value];
    }
    return main_textId;
}

//: back_arrow_bl
+ (NSString *)mCornerTitle {
    /* static */ NSString *mCornerTitle = nil;
    if (!mCornerTitle) {
		NSArray<NSNumber *> *origin = @[@159, @156, @158, @150, @162, @156, @143, @143, @146, @138, @162, @159, @145, @158];
		NSData *data = [LabelData LabelDataToData:origin];
        StructLabelData value = (StructLabelData){253, (Byte *)data.bytes, 13, 215, 205};
        mCornerTitle = [self StringFromLabelData:&value];
    }
    return mCornerTitle;
}

//: activity_safe_setting_modify
+ (NSString *)notiListViewData {
    /* static */ NSString *notiListViewData = nil;
    if (!notiListViewData) {
		NSArray<NSNumber *> *origin = @[@101, @103, @112, @109, @114, @109, @112, @125, @91, @119, @101, @98, @97, @91, @119, @97, @112, @112, @109, @106, @99, @91, @105, @107, @96, @109, @98, @125, @12];
		NSData *data = [LabelData LabelDataToData:origin];
        StructLabelData value = (StructLabelData){4, (Byte *)data.bytes, 28, 73, 146};
        notiListViewData = [self StringFromLabelData:&value];
    }
    return notiListViewData;
}

//: type
+ (NSString *)userContentFullFormat {
    /* static */ NSString *userContentFullFormat = nil;
    if (!userContentFullFormat) {
		NSArray<NSNumber *> *origin = @[@230, @235, @226, @247, @32];
		NSData *data = [LabelData LabelDataToData:origin];
        StructLabelData value = (StructLabelData){146, (Byte *)data.bytes, 4, 146, 41};
        userContentFullFormat = [self StringFromLabelData:&value];
    }
    return userContentFullFormat;
}

//: #333333
+ (NSString *)mainSourceTitle {
    /* static */ NSString *mainSourceTitle = nil;
    if (!mainSourceTitle) {
		NSArray<NSNumber *> *origin = @[@234, @250, @250, @250, @250, @250, @250, @69];
		NSData *data = [LabelData LabelDataToData:origin];
        StructLabelData value = (StructLabelData){201, (Byte *)data.bytes, 7, 220, 55};
        mainSourceTitle = [self StringFromLabelData:&value];
    }
    return mainSourceTitle;
}

//: #02D8C9
+ (NSString *)userCornerValue {
    /* static */ NSString *userCornerValue = nil;
    if (!userCornerValue) {
		NSArray<NSNumber *> *origin = @[@113, @98, @96, @22, @106, @17, @107, @48];
		NSData *data = [LabelData LabelDataToData:origin];
        StructLabelData value = (StructLabelData){82, (Byte *)data.bytes, 7, 89, 206};
        userCornerValue = [self StringFromLabelData:&value];
    }
    return userCornerValue;
}

//: oldpass
+ (NSString *)userMakeLineId {
    /* static */ NSString *userMakeLineId = nil;
    if (!userMakeLineId) {
		NSArray<NSNumber *> *origin = @[@246, @245, @253, @233, @248, @234, @234, @74];
		NSData *data = [LabelData LabelDataToData:origin];
        StructLabelData value = (StructLabelData){153, (Byte *)data.bytes, 7, 103, 103};
        userMakeLineId = [self StringFromLabelData:&value];
    }
    return userMakeLineId;
}

//: login_bg
+ (NSString *)showRedUrl {
    /* static */ NSString *showRedUrl = nil;
    if (!showRedUrl) {
		NSArray<NSNumber *> *origin = @[@18, @17, @25, @23, @16, @33, @28, @25, @192];
		NSData *data = [LabelData LabelDataToData:origin];
        StructLabelData value = (StructLabelData){126, (Byte *)data.bytes, 8, 182, 198};
        showRedUrl = [self StringFromLabelData:&value];
    }
    return showRedUrl;
}

//: account
+ (NSString *)m_textKey {
    /* static */ NSString *m_textKey = nil;
    if (!m_textKey) {
		NSArray<NSNumber *> *origin = @[@34, @32, @32, @44, @54, @45, @55, @132];
		NSData *data = [LabelData LabelDataToData:origin];
        StructLabelData value = (StructLabelData){67, (Byte *)data.bytes, 7, 21, 117};
        m_textKey = [self StringFromLabelData:&value];
    }
    return m_textKey;
}

//: sure_edit
+ (NSString *)show_rangeMessage {
    /* static */ NSString *show_rangeMessage = nil;
    if (!show_rangeMessage) {
		NSArray<NSNumber *> *origin = @[@101, @99, @100, @115, @73, @115, @114, @127, @98, @87];
		NSData *data = [LabelData LabelDataToData:origin];
        StructLabelData value = (StructLabelData){22, (Byte *)data.bytes, 9, 158, 152};
        show_rangeMessage = [self StringFromLabelData:&value];
    }
    return show_rangeMessage;
}

//: /user/modifyPass
+ (NSString *)k_bottomTitle {
    /* static */ NSString *k_bottomTitle = nil;
    if (!k_bottomTitle) {
		NSArray<NSNumber *> *origin = @[@226, @184, @190, @168, @191, @226, @160, @162, @169, @164, @171, @180, @157, @172, @190, @190, @121];
		NSData *data = [LabelData LabelDataToData:origin];
        StructLabelData value = (StructLabelData){205, (Byte *)data.bytes, 16, 85, 8};
        k_bottomTitle = [self StringFromLabelData:&value];
    }
    return k_bottomTitle;
}

//: activity_modify_new
+ (NSString *)m_labelUrl {
    /* static */ NSString *m_labelUrl = nil;
    if (!m_labelUrl) {
		NSArray<NSNumber *> *origin = @[@85, @87, @64, @93, @66, @93, @64, @77, @107, @89, @91, @80, @93, @82, @77, @107, @90, @81, @67, @54];
		NSData *data = [LabelData LabelDataToData:origin];
        StructLabelData value = (StructLabelData){52, (Byte *)data.bytes, 19, 128, 110};
        m_labelUrl = [self StringFromLabelData:&value];
    }
    return m_labelUrl;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  MyViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/29.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChangePasswordController.h"
#import "MyViewController.h"
//: #import "NTESChangePasswordCell.h"
#import "CustomViewCell.h"

//: @interface NTESChangePasswordController ()<UITextFieldDelegate>
@interface MyViewController ()<UITextFieldDelegate>

//: @property (nonatomic ,strong) UITextField *textfile_1;
@property (nonatomic ,strong) UITextField *textfile_1;
//: @property (nonatomic ,strong) UITextField *textfile_2;
@property (nonatomic ,strong) UITextField *textfile_2;
//: @property (nonatomic ,strong) UITextField *textfile_3;
@property (nonatomic ,strong) UITextField *textfile_3;
//: @end
@end

//: @implementation NTESChangePasswordController
@implementation MyViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}
//: - (void)backAction{
- (void)numberernationalTing{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[LabelData showRedUrl]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice statusOrLevel]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice statusOrLevel]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[LabelData mCornerTitle]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(numberernationalTing) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice statusOrLevel]+4, 200, 40)];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    labtitle.font = [UIFont boldSystemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [BusyLanguageManager getTextWithKey:@"activity_safe_setting_modify"];
    labtitle.text = [SendName streetSmart:[LabelData notiListViewData]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice statusOrLevel])+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: view1.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view1.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    view1.layer.borderWidth = 0.5;
//    view1.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    //: view1.layer.cornerRadius = 25;
    view1.layer.cornerRadius = 25;
//    view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    view1.layer.shadowOffset = CGSizeMake(0,3);
//    view1.layer.shadowOpacity = 1;
//    view1.layer.shadowRadius = 0;
    //: [self.view addSubview:view1];
    [self.view addSubview:view1];


    //: UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname.image = [UIImage imageNamed:[LabelData notiSuccessUrl]];
    //: [view1 addSubview:imgname];
    [view1 addSubview:imgname];

    //: self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_1 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_1.font = [UIFont systemFontOfSize:16];
    self.textfile_1.font = [UIFont systemFontOfSize:16];
    //: self.textfile_1.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_1.textColor = [UIColor status:[LabelData mainSourceTitle]];
    //: self.textfile_1.placeholder = [BusyLanguageManager getTextWithKey:@"activity_modify_old"];
    self.textfile_1.placeholder = [SendName streetSmart:[LabelData main_textId]];
    //: self.textfile_1.delegate = self;
    self.textfile_1.delegate = self;
    //: self.textfile_1.secureTextEntry = YES;
    self.textfile_1.secureTextEntry = YES;
    //: [view1 addSubview:self.textfile_1];
    [view1 addSubview:self.textfile_1];


    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: view2.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view2.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: view2.layer.cornerRadius = 25;
    view2.layer.cornerRadius = 25;
    //: [self.view addSubview:view2];
    [self.view addSubview:view2];

    //: UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname2 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname2.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname2.image = [UIImage imageNamed:[LabelData notiSuccessUrl]];
    //: [view2 addSubview:imgname2];
    [view2 addSubview:imgname2];

    //: self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_2 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_2.font = [UIFont systemFontOfSize:16];
    self.textfile_2.font = [UIFont systemFontOfSize:16];
    //: self.textfile_2.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_2.textColor = [UIColor status:[LabelData mainSourceTitle]];
    //: self.textfile_2.placeholder = [BusyLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_2.placeholder = [SendName streetSmart:[LabelData m_labelUrl]];
    //: self.textfile_2.delegate = self;
    self.textfile_2.delegate = self;
    //: self.textfile_2.secureTextEntry = YES;
    self.textfile_2.secureTextEntry = YES;
    //: [view2 addSubview:self.textfile_2];
    [view2 addSubview:self.textfile_2];

//    UILabel *labphone3 = [[UILabel alloc] initWithFrame:CGRectMake(30, view2.bottom+15, SCREEN_WIDTH-60, 20)];
//    labphone3.font = [UIFont boldSystemFontOfSize:14.f];
//    labphone3.textColor = TextColor_4;
//    labphone3.textAlignment = NSTextAlignmentLeft;
//    labphone3.text = LangKey(@"psw_again");
//    [self.view addSubview:labphone3];

    //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(15, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(15, view2.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 50)];
    //: view3.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    view3.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: view3.layer.cornerRadius = 25;
    view3.layer.cornerRadius = 25;
    //: [self.view addSubview:view3];
    [self.view addSubview:view3];

    //: UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    UIImageView *imgname3 = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 20, 20)];
    //: imgname3.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
    imgname3.image = [UIImage imageNamed:[LabelData notiSuccessUrl]];
    //: [view3 addSubview:imgname3];
    [view3 addSubview:imgname3];

    //: self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    self.textfile_3 = [[UITextField alloc] initWithFrame:CGRectMake(35+10, 15, [[UIScreen mainScreen] bounds].size.width-60-30-30, 20)];
    //: self.textfile_3.font = [UIFont systemFontOfSize:16];
    self.textfile_3.font = [UIFont systemFontOfSize:16];
    //: self.textfile_3.textColor = [UIColor colorWithHexString:@"#333333"];
    self.textfile_3.textColor = [UIColor status:[LabelData mainSourceTitle]];
    //: self.textfile_3.placeholder = [BusyLanguageManager getTextWithKey:@"activity_modify_new"];
    self.textfile_3.placeholder = [SendName streetSmart:[LabelData m_labelUrl]];
    //: self.textfile_3.delegate = self;
    self.textfile_3.delegate = self;
    //: self.textfile_3.secureTextEntry = YES;
    self.textfile_3.secureTextEntry = YES;
    //: [view3 addSubview:self.textfile_3];
    [view3 addSubview:self.textfile_3];

    //: UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *emptyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: emptyButton.frame = CGRectMake(15, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 48);
    emptyButton.frame = CGRectMake(15, view3.bottom+30, [[UIScreen mainScreen] bounds].size.width-30, 48);
    //: emptyButton.titleLabel.font = [UIFont systemFontOfSize:16];
    emptyButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [emptyButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [emptyButton setTitle:[BusyLanguageManager getTextWithKey:@"sure_edit"] forState:UIControlStateNormal];
    [emptyButton setTitle:[SendName streetSmart:[LabelData show_rangeMessage]] forState:UIControlStateNormal];
    //: [emptyButton addTarget:self action:@selector(commitButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [emptyButton addTarget:self action:@selector(historyView) forControlEvents:UIControlEventTouchUpInside];
    //: emptyButton.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
    emptyButton.backgroundColor = [UIColor status:[LabelData userCornerValue]];
    //: emptyButton.layer.cornerRadius = 24;
    emptyButton.layer.cornerRadius = 24;
    //: [self.view addSubview:emptyButton];
    [self.view addSubview:emptyButton];

}

//: -(void)commitButtonClick{
-(void)historyView{
    //: NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *account = [[NIMSDK sharedSDK].loginManager currentAccount];


    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: [dict setObject:account forKey:@"account"];
    [dict setObject:account forKey:[LabelData m_textKey]];
    //: [dict setObject:@"" forKey:@"type"];
    [dict setObject:@"" forKey:[LabelData userContentFullFormat]];
    //: [dict setObject:_textfile_1.text forKey:@"oldpass"];
    [dict setObject:_textfile_1.text forKey:[LabelData userMakeLineId]];
    //: [dict setObject:_textfile_2.text forKey:@"newpass"];
    [dict setObject:_textfile_2.text forKey:[LabelData mTitleName]];
    //: [dict setObject:_textfile_3.text forKey:@"renewpass"];
    [dict setObject:_textfile_3.text forKey:[LabelData showNameControlValue]];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/modifyPass"] params:dict isShow:YES success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[LabelData k_bottomTitle]] read:dict indicator:YES spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict tag:[LabelData main_readTitle]];
//        [SVProgressHUD showMessage:msg];

        //: [self.view makeToast:msg duration:2 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
        [self.view makeToast:msg duration:2 position:CSToastPositionCenter title:nil image:nil style:nil completion:^(BOOL didTap) {
            //: [self.navigationController popViewControllerAnimated:NO];
            [self.navigationController popViewControllerAnimated:NO];
        //: }];
        }];

    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: @end
@end
