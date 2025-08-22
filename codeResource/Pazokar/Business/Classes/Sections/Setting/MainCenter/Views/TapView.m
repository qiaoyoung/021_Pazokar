
#import <Foundation/Foundation.h>

typedef struct {
    Byte viewMy;
    Byte *aggressive;
    unsigned int chromatic;
	int heel;
} StructCurrentlyData;

@interface CurrentlyData : NSObject

+ (instancetype)sharedInstance;

//: #EEEEEE
@property (nonatomic, copy) NSString *k_strikePath;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *user_woodenStr;

//: safe_success_step
@property (nonatomic, copy) NSString *appSuccessValue;

//: #02D8C9
@property (nonatomic, copy) NSString *mainCurrentlyShouldMsg;

//: #FF483D
@property (nonatomic, copy) NSString *k_tightenId;

//: Complete_operation
@property (nonatomic, copy) NSString *dreamVoiceFormat;

//: #BCC1C8
@property (nonatomic, copy) NSString *appToolValue;

//: safe_arrow_next
@property (nonatomic, copy) NSString *show_rangeLeadershipPath;

//: Vertify_login_password
@property (nonatomic, copy) NSString *mCellFormat;

//: get_pay_psw_activity_input_psw
@property (nonatomic, copy) NSString *showRecentKey;

//: #5D5F66
@property (nonatomic, copy) NSString *k_televisionKey;

//: ic-delete_account
@property (nonatomic, copy) NSString *kNameData;

//: Read_agree_agreement
@property (nonatomic, copy) NSString *appRedLeadershipIdent;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *dreamFainData;

//: safe_bind_phone_icon
@property (nonatomic, copy) NSString *userReloadId;

//: wrong_password
@property (nonatomic, copy) NSString *user_showValue;

@end

@implementation CurrentlyData

+ (instancetype)sharedInstance {
    static CurrentlyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)CurrentlyDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)CurrentlyDataToByte:(StructCurrentlyData *)data {
    for (int i = 0; i < data->chromatic; i++) {
        data->aggressive[i] ^= data->viewMy;
    }
    data->aggressive[data->chromatic] = 0;
	if (data->chromatic >= 1) {
		data->heel = data->aggressive[0];
	}
    return data->aggressive;
}

- (NSString *)StringFromCurrentlyData:(StructCurrentlyData *)data {
    return [NSString stringWithUTF8String:(char *)[self CurrentlyDataToByte:data]];
}

//: Vertify_login_password
- (NSString *)mCellFormat {
    if (!_mCellFormat) {
		NSArray<NSNumber *> *origin = @[@37, @22, @1, @7, @26, @21, @10, @44, @31, @28, @20, @26, @29, @44, @3, @18, @0, @0, @4, @28, @1, @23, @121];
		NSData *data = [CurrentlyData CurrentlyDataToData:origin];
        StructCurrentlyData value = (StructCurrentlyData){115, (Byte *)data.bytes, 22, 94};
        _mCellFormat = [self StringFromCurrentlyData:&value];
    }
    return _mCellFormat;
}

//: #BCC1C8
- (NSString *)appToolValue {
    if (!_appToolValue) {
		NSArray<NSNumber *> *origin = @[@7, @102, @103, @103, @21, @103, @28, @4];
		NSData *data = [CurrentlyData CurrentlyDataToData:origin];
        StructCurrentlyData value = (StructCurrentlyData){36, (Byte *)data.bytes, 7, 53};
        _appToolValue = [self StringFromCurrentlyData:&value];
    }
    return _appToolValue;
}

//: #5D5F66
- (NSString *)k_televisionKey {
    if (!_k_televisionKey) {
		NSArray<NSNumber *> *origin = @[@253, @235, @154, @235, @152, @232, @232, @79];
		NSData *data = [CurrentlyData CurrentlyDataToData:origin];
        StructCurrentlyData value = (StructCurrentlyData){222, (Byte *)data.bytes, 7, 204};
        _k_televisionKey = [self StringFromCurrentlyData:&value];
    }
    return _k_televisionKey;
}

//: ic-delete_account
- (NSString *)kNameData {
    if (!_kNameData) {
		NSArray<NSNumber *> *origin = @[@221, @215, @153, @208, @209, @216, @209, @192, @209, @235, @213, @215, @215, @219, @193, @218, @192, @189];
		NSData *data = [CurrentlyData CurrentlyDataToData:origin];
        StructCurrentlyData value = (StructCurrentlyData){180, (Byte *)data.bytes, 17, 225};
        _kNameData = [self StringFromCurrentlyData:&value];
    }
    return _kNameData;
}

//: contact_tag_fragment_sure
- (NSString *)user_woodenStr {
    if (!_user_woodenStr) {
		NSArray<NSNumber *> *origin = @[@29, @17, @16, @10, @31, @29, @10, @33, @10, @31, @25, @33, @24, @12, @31, @25, @19, @27, @16, @10, @33, @13, @11, @12, @27, @204];
		NSData *data = [CurrentlyData CurrentlyDataToData:origin];
        StructCurrentlyData value = (StructCurrentlyData){126, (Byte *)data.bytes, 25, 12};
        _user_woodenStr = [self StringFromCurrentlyData:&value];
    }
    return _user_woodenStr;
}

//: Complete_operation
- (NSString *)dreamVoiceFormat {
    if (!_dreamVoiceFormat) {
		NSArray<NSNumber *> *origin = @[@10, @38, @36, @57, @37, @44, @61, @44, @22, @38, @57, @44, @59, @40, @61, @32, @38, @39, @36];
		NSData *data = [CurrentlyData CurrentlyDataToData:origin];
        StructCurrentlyData value = (StructCurrentlyData){73, (Byte *)data.bytes, 18, 165};
        _dreamVoiceFormat = [self StringFromCurrentlyData:&value];
    }
    return _dreamVoiceFormat;
}

//: safe_arrow_next
- (NSString *)show_rangeLeadershipPath {
    if (!_show_rangeLeadershipPath) {
		NSArray<NSNumber *> *origin = @[@143, @157, @154, @153, @163, @157, @142, @142, @147, @139, @163, @146, @153, @132, @136, @63];
		NSData *data = [CurrentlyData CurrentlyDataToData:origin];
        StructCurrentlyData value = (StructCurrentlyData){252, (Byte *)data.bytes, 15, 239};
        _show_rangeLeadershipPath = [self StringFromCurrentlyData:&value];
    }
    return _show_rangeLeadershipPath;
}

//: wrong_password
- (NSString *)user_showValue {
    if (!_user_showValue) {
		NSArray<NSNumber *> *origin = @[@191, @186, @167, @166, @175, @151, @184, @169, @187, @187, @191, @167, @186, @172, @185];
		NSData *data = [CurrentlyData CurrentlyDataToData:origin];
        StructCurrentlyData value = (StructCurrentlyData){200, (Byte *)data.bytes, 14, 117};
        _user_showValue = [self StringFromCurrentlyData:&value];
    }
    return _user_showValue;
}

//: Read_agree_agreement
- (NSString *)appRedLeadershipIdent {
    if (!_appRedLeadershipIdent) {
		NSArray<NSNumber *> *origin = @[@175, @152, @156, @153, @162, @156, @154, @143, @152, @152, @162, @156, @154, @143, @152, @152, @144, @152, @147, @137, @67];
		NSData *data = [CurrentlyData CurrentlyDataToData:origin];
        StructCurrentlyData value = (StructCurrentlyData){253, (Byte *)data.bytes, 20, 146};
        _appRedLeadershipIdent = [self StringFromCurrentlyData:&value];
    }
    return _appRedLeadershipIdent;
}

//: #EEEEEE
- (NSString *)k_strikePath {
    if (!_k_strikePath) {
		NSArray<NSNumber *> *origin = @[@233, @143, @143, @143, @143, @143, @143, @14];
		NSData *data = [CurrentlyData CurrentlyDataToData:origin];
        StructCurrentlyData value = (StructCurrentlyData){202, (Byte *)data.bytes, 7, 166};
        _k_strikePath = [self StringFromCurrentlyData:&value];
    }
    return _k_strikePath;
}

//: get_pay_psw_activity_input_psw
- (NSString *)showRecentKey {
    if (!_showRecentKey) {
		NSArray<NSNumber *> *origin = @[@3, @1, @16, @59, @20, @5, @29, @59, @20, @23, @19, @59, @5, @7, @16, @13, @18, @13, @16, @29, @59, @13, @10, @20, @17, @16, @59, @20, @23, @19, @105];
		NSData *data = [CurrentlyData CurrentlyDataToData:origin];
        StructCurrentlyData value = (StructCurrentlyData){100, (Byte *)data.bytes, 30, 109};
        _showRecentKey = [self StringFromCurrentlyData:&value];
    }
    return _showRecentKey;
}

//: safe_success_step
- (NSString *)appSuccessValue {
    if (!_appSuccessValue) {
		NSArray<NSNumber *> *origin = @[@52, @38, @33, @34, @24, @52, @50, @36, @36, @34, @52, @52, @24, @52, @51, @34, @55, @59];
		NSData *data = [CurrentlyData CurrentlyDataToData:origin];
        StructCurrentlyData value = (StructCurrentlyData){71, (Byte *)data.bytes, 17, 245};
        _appSuccessValue = [self StringFromCurrentlyData:&value];
    }
    return _appSuccessValue;
}

//: safe_bind_phone_icon
- (NSString *)userReloadId {
    if (!_userReloadId) {
		NSArray<NSNumber *> *origin = @[@159, @141, @138, @137, @179, @142, @133, @130, @136, @179, @156, @132, @131, @130, @137, @179, @133, @143, @131, @130, @110];
		NSData *data = [CurrentlyData CurrentlyDataToData:origin];
        StructCurrentlyData value = (StructCurrentlyData){236, (Byte *)data.bytes, 20, 145};
        _userReloadId = [self StringFromCurrentlyData:&value];
    }
    return _userReloadId;
}

//: #FF483D
- (NSString *)k_tightenId {
    if (!_k_tightenId) {
		NSArray<NSNumber *> *origin = @[@84, @49, @49, @67, @79, @68, @51, @203];
		NSData *data = [CurrentlyData CurrentlyDataToData:origin];
        StructCurrentlyData value = (StructCurrentlyData){119, (Byte *)data.bytes, 7, 236};
        _k_tightenId = [self StringFromCurrentlyData:&value];
    }
    return _k_tightenId;
}

//: contact_tag_fragment_cancel
- (NSString *)dreamFainData {
    if (!_dreamFainData) {
		NSArray<NSNumber *> *origin = @[@185, @181, @180, @174, @187, @185, @174, @133, @174, @187, @189, @133, @188, @168, @187, @189, @183, @191, @180, @174, @133, @185, @187, @180, @185, @191, @182, @62];
		NSData *data = [CurrentlyData CurrentlyDataToData:origin];
        StructCurrentlyData value = (StructCurrentlyData){218, (Byte *)data.bytes, 27, 43};
        _dreamFainData = [self StringFromCurrentlyData:&value];
    }
    return _dreamFainData;
}

//: #02D8C9
- (NSString *)mainCurrentlyShouldMsg {
    if (!_mainCurrentlyShouldMsg) {
		NSArray<NSNumber *> *origin = @[@101, @118, @116, @2, @126, @5, @127, @51];
		NSData *data = [CurrentlyData CurrentlyDataToData:origin];
        StructCurrentlyData value = (StructCurrentlyData){70, (Byte *)data.bytes, 7, 190};
        _mainCurrentlyShouldMsg = [self StringFromCurrentlyData:&value];
    }
    return _mainCurrentlyShouldMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TapView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/6.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONDeactivateAccountNextView.h"
#import "TapView.h"

//: @interface ZMONDeactivateAccountNextView ()<UITextFieldDelegate>
@interface TapView ()<UITextFieldDelegate>

//: @property (nonatomic,assign) NSInteger inputLimit;
@property (nonatomic,assign) NSInteger inputLimit;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property(nonatomic, strong) UIView *lineView;
@property(nonatomic, strong) UIView *lineView;
//: @property (nonatomic,strong) UIView *searchView;
@property (nonatomic,strong) UIView *searchView;
//: @property (nonatomic,strong) UITextField *searchField;
@property (nonatomic,strong) UITextField *searchField;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIImageView *img;
@property (nonatomic,strong) UIImageView *img;
//: @property (nonatomic,strong) UIView *nextBox;
@property (nonatomic,strong) UIView *nextBox;

//: @end
@end

//: @implementation ZMONDeactivateAccountNextView
@implementation TapView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];

        //: [self initUI];
        [self initTeamUi];

    }
    //: return self;
    return self;
}


//: - (void)initUI
- (void)initTeamUi
{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-190)/2, [[UIScreen mainScreen] bounds].size.width-30, 190)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-190)/2, [[UIScreen mainScreen] bounds].size.width-30, 190)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];


//    [_box addSubview:self.img];
//    self.img.frame = CGRectMake(20, 20, 32, 32);

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 20);
    self.titleLabel.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-60, 20);

//    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.img.bottom+15, SCREEN_WIDTH-70, 30)];
//    labtitle.font = [UIFont systemFontOfSize:14.f];
//    labtitle.textColor = [UIColor blackColor];
//    labtitle.text = @"Confirm Account Deactivation?";
//    [_box addSubview:labtitle];

//    [_box addSubview:self.nextBox];
//    self.nextBox.frame = CGRectMake(20, self.img.bottom+20, SCREEN_WIDTH-70, 54);

        //: [_box addSubview:self.searchView];
        [_box addSubview:self.searchView];
        //: self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-70, 48);
        self.searchView.frame = CGRectMake(20, self.titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-70, 48);



    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 190-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 190-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 190-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 190-20-height, width, height);

}

//: - (void)reloadWithNickname:(NSString *)nickname
- (void)along:(NSString *)nickname
{
    //: self.titleLabel.text = nickname;
    self.titleLabel.text = nickname;
}

//: - (void)updateTheNickname{
- (void)exceptRecord{

    //: [self endEditing:YES];
    [self endEditing:YES];

    //: NSString *pcode = [NIMUserDefaults standardUserDefaults].pCode?:@"";
    NSString *pcode = [DataMaxDefaults max].pCode?:@"";
    //: if([pcode isEqualToString:self.searchField.text]){
    if([pcode isEqualToString:self.searchField.text]){
        //: self.speiceBackBlock(self.searchField.text);
        self.speiceBackBlock(self.searchField.text);

    //: }else{
    }else{

        //: [self makeToast:[FFFLanguageManager getTextWithKey:@"wrong_password"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[SendName streetSmart:[CurrentlyData sharedInstance].user_showValue] duration:2.0 position:CSToastPositionCenter];
    }


}
//: - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    //: return YES;
    return YES;
}
//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    //: return YES;
    return YES;
}
//: - (void)textFieldDidEndEditing:(UITextField *)textField{
- (void)textFieldDidEndEditing:(UITextField *)textField{
    //: self.titleLabel.text = textField.text;
    self.titleLabel.text = textField.text;
}
//: - (BOOL)textFieldShouldClear:(UITextField *)textField{
- (BOOL)textFieldShouldClear:(UITextField *)textField{
    //: self.searchField.text = @"";
    self.searchField.text = @"";
    //: return YES;
    return YES;
}
//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //: return [textField resignFirstResponder];
    return [textField resignFirstResponder];

}
//: - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //: [self endEditing:YES];
    [self endEditing:YES];
}
//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIImageView *)img
- (UIImageView *)img
{
    //: if(!_img){
    if(!_img){
        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic-delete_account"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[CurrentlyData sharedInstance].kNameData]];
    }
    //: return _img;
    return _img;
}

//: - (UIView *)nextBox
- (UIView *)nextBox
{
    //: if(!_nextBox){
    if(!_nextBox){
        //: _nextBox = [[UIView alloc]init];
        _nextBox = [[UIView alloc]init];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40)/3;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40)/3;
        //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 54)];
        UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 54)];
        //: [_nextBox addSubview:view1];
        [_nextBox addSubview:view1];
        //: UIImageView *img1 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIImageView *img1 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: img1.image = [UIImage imageNamed:@"safe_success_step"];
        img1.image = [UIImage imageNamed:[CurrentlyData sharedInstance].appSuccessValue];
        //: [view1 addSubview:img1];
        [view1 addSubview:img1];
//        UIView *numView1 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
//        numView1.backgroundColor = ThemeColor;
//        numView1.layer.cornerRadius = 10;
//        numView1.layer.masksToBounds = YES;
//        [view1 addSubview:numView1];
//        UILabel *labtitlenum1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
//        labtitlenum1.font = [UIFont systemFontOfSize:12.f];
//        labtitlenum1.textColor = [UIColor whiteColor];
//        labtitlenum1.text = @"1";
//        labtitlenum1.textAlignment = NSTextAlignmentCenter;
//        [numView1 addSubview:labtitlenum1];

        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, img1.bottom+4, width, 30)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, img1.bottom+4, width, 30)];
        //: labtitle1.font = [UIFont systemFontOfSize:11.f];
        labtitle1.font = [UIFont systemFontOfSize:11.f];
        //: labtitle1.textColor = [UIColor blackColor];
        labtitle1.textColor = [UIColor blackColor];
        //: labtitle1.text = [FFFLanguageManager getTextWithKey:@"Read_agree_agreement"];
        labtitle1.text = [SendName streetSmart:[CurrentlyData sharedInstance].appRedLeadershipIdent];
        //: labtitle1.numberOfLines = 2;
        labtitle1.numberOfLines = 2;
        //: labtitle1.textAlignment = NSTextAlignmentCenter;
        labtitle1.textAlignment = NSTextAlignmentCenter;
        //: [view1 addSubview:labtitle1];
        [view1 addSubview:labtitle1];

        //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(width, 0, width, 54)];
        UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(width, 0, width, 54)];
        //: [_nextBox addSubview:view2];
        [_nextBox addSubview:view2];
        //: UIView *numView2 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIView *numView2 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: numView2.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        numView2.backgroundColor = [UIColor status:[CurrentlyData sharedInstance].mainCurrentlyShouldMsg];
        //: numView2.layer.cornerRadius = 10;
        numView2.layer.cornerRadius = 10;
        //: numView2.layer.masksToBounds = YES;
        numView2.layer.masksToBounds = YES;
        //: [view2 addSubview:numView2];
        [view2 addSubview:numView2];
        //: UILabel *labtitlenum2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        UILabel *labtitlenum2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        //: labtitlenum2.font = [UIFont systemFontOfSize:12.f];
        labtitlenum2.font = [UIFont systemFontOfSize:12.f];
        //: labtitlenum2.textColor = [UIColor whiteColor];
        labtitlenum2.textColor = [UIColor whiteColor];
        //: labtitlenum2.text = @"2";
        labtitlenum2.text = @"2";
        //: labtitlenum2.textAlignment = NSTextAlignmentCenter;
        labtitlenum2.textAlignment = NSTextAlignmentCenter;
        //: [numView2 addSubview:labtitlenum2];
        [numView2 addSubview:labtitlenum2];
        //: UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView2.bottom+4, width, 30)];
        UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView2.bottom+4, width, 30)];
        //: labtitle2.font = [UIFont systemFontOfSize:11.f];
        labtitle2.font = [UIFont systemFontOfSize:11.f];
        //: labtitle2.textColor = [UIColor blackColor];
        labtitle2.textColor = [UIColor blackColor];
        //: labtitle2.text = [FFFLanguageManager getTextWithKey:@"Vertify_login_password"];
        labtitle2.text = [SendName streetSmart:[CurrentlyData sharedInstance].mCellFormat];
        //: labtitle2.numberOfLines = 2;
        labtitle2.numberOfLines = 2;
        //: labtitle2.textAlignment = NSTextAlignmentCenter;
        labtitle2.textAlignment = NSTextAlignmentCenter;
        //: [view2 addSubview:labtitle2];
        [view2 addSubview:labtitle2];

        //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(width*2, 0, width, 54)];
        UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(width*2, 0, width, 54)];
        //: [_nextBox addSubview:view3];
        [_nextBox addSubview:view3];
        //: UIView *numView3 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIView *numView3 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: numView3.backgroundColor = [UIColor colorWithHexString:@"#BCC1C8"];
        numView3.backgroundColor = [UIColor status:[CurrentlyData sharedInstance].appToolValue];
        //: numView3.layer.cornerRadius = 10;
        numView3.layer.cornerRadius = 10;
        //: numView3.layer.masksToBounds = YES;
        numView3.layer.masksToBounds = YES;
        //: [view3 addSubview:numView3];
        [view3 addSubview:numView3];
        //: UILabel *labtitlenum3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        UILabel *labtitlenum3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        //: labtitlenum3.font = [UIFont systemFontOfSize:12.f];
        labtitlenum3.font = [UIFont systemFontOfSize:12.f];
        //: labtitlenum3.textColor = [UIColor whiteColor];
        labtitlenum3.textColor = [UIColor whiteColor];
        //: labtitlenum3.text = @"3";
        labtitlenum3.text = @"3";
        //: labtitlenum3.textAlignment = NSTextAlignmentCenter;
        labtitlenum3.textAlignment = NSTextAlignmentCenter;
        //: [numView3 addSubview:labtitlenum3];
        [numView3 addSubview:labtitlenum3];
        //: UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView3.bottom+4, width, 30)];
        UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView3.bottom+4, width, 30)];
        //: labtitle3.font = [UIFont systemFontOfSize:11.f];
        labtitle3.font = [UIFont systemFontOfSize:11.f];
        //: labtitle3.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        labtitle3.textColor = [UIColor status:[CurrentlyData sharedInstance].k_televisionKey];
        //: labtitle3.text = [FFFLanguageManager getTextWithKey:@"Complete_operation"];
        labtitle3.text = [SendName streetSmart:[CurrentlyData sharedInstance].dreamVoiceFormat];
        //: labtitle3.numberOfLines = 2;
        labtitle3.numberOfLines = 2;
        //: labtitle3.textAlignment = NSTextAlignmentCenter;
        labtitle3.textAlignment = NSTextAlignmentCenter;
        //: [view3 addSubview:labtitle3];
        [view3 addSubview:labtitle3];

        //: UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        //: arrow1.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow1.image = [UIImage imageNamed:[CurrentlyData sharedInstance].show_rangeLeadershipPath];
        //: [_nextBox addSubview:arrow1];
        [_nextBox addSubview:arrow1];

        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        //: arrow2.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow2.image = [UIImage imageNamed:[CurrentlyData sharedInstance].show_rangeLeadershipPath];
        //: [_nextBox addSubview:arrow2];
        [_nextBox addSubview:arrow2];
    }
    //: return _nextBox;
    return _nextBox;
}


//: - (UIView *)searchView{
- (UIView *)searchView{
    //: if(!_searchView){
    if(!_searchView){
        //: _searchView = [[UIView alloc]init];
        _searchView = [[UIView alloc]init];
        //: _searchView.layer.borderWidth = 1;
        _searchView.layer.borderWidth = 1;
        //: _searchView.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
        _searchView.layer.borderColor = [UIColor status:[CurrentlyData sharedInstance].k_strikePath].CGColor;
        //: _searchView.backgroundColor = [UIColor whiteColor];
        _searchView.backgroundColor = [UIColor whiteColor];
        //: _searchView.layer.cornerRadius = 24;
        _searchView.layer.cornerRadius = 24;

        //: UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 11, 20, 20)];
        UIImageView *imgname = [[UIImageView alloc]initWithFrame:CGRectMake(15, 11, 20, 20)];
        //: imgname.image = [UIImage imageNamed:@"safe_bind_phone_icon"];
        imgname.image = [UIImage imageNamed:[CurrentlyData sharedInstance].userReloadId];
        //: [_searchView addSubview:imgname];
        [_searchView addSubview:imgname];

        //: _searchField = [[UITextField alloc]initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-80-50, 40)];
        _searchField = [[UITextField alloc]initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-80-50, 40)];
        //: _searchField.placeholder = [FFFLanguageManager getTextWithKey:@"get_pay_psw_activity_input_psw"];
        _searchField.placeholder = [SendName streetSmart:[CurrentlyData sharedInstance].showRecentKey];
        //: _searchField.textColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
        _searchField.textColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
        //: _searchField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _searchField.clearButtonMode = UITextFieldViewModeWhileEditing;
        //: _searchField.delegate = self;
        _searchField.delegate = self;
        //: [_searchView addSubview:_searchField];
        [_searchView addSubview:_searchField];

    }
    //: return _searchView;
    return _searchView;
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(tingShould) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor status:[CurrentlyData sharedInstance].k_televisionKey] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[SendName streetSmart:[CurrentlyData sharedInstance].dreamFainData] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 20;
        _closeBtn.layer.cornerRadius = 20;
    }
    //: return _closeBtn;
    return _closeBtn;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(exceptRecord) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[SendName streetSmart:[CurrentlyData sharedInstance].user_woodenStr] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor status:[CurrentlyData sharedInstance].k_tightenId];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}




//: - (void)animationClose
- (void)tingShould
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)showOpen
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end