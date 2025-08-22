
#import <Foundation/Foundation.h>

typedef struct {
    Byte literallyIdeal;
    Byte *replyShow;
    unsigned int later;
	int killerTo;
} StructNewData;

@interface NewData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation NewData

+ (instancetype)sharedInstance {
    static NewData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)NewDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)NewDataToByte:(StructNewData *)data {
    for (int i = 0; i < data->later; i++) {
        data->replyShow[i] ^= data->literallyIdeal;
    }
    data->replyShow[data->later] = 0;
	if (data->later >= 1) {
		data->killerTo = data->replyShow[0];
	}
    return data->replyShow;
}

- (NSString *)StringFromNewData:(StructNewData *)data {
    return [NSString stringWithUTF8String:(char *)[self NewDataToByte:data]];
}

//: Consequences_Account_Deletion
- (NSString *)mainTextMsg {
    /* static */ NSString *mainTextMsg = nil;
    if (!mainTextMsg) {
		NSArray<NSNumber *> *origin = @[@212, @248, @249, @228, @242, @230, @226, @242, @249, @244, @242, @228, @200, @214, @244, @244, @248, @226, @249, @227, @200, @211, @242, @251, @242, @227, @254, @248, @249, @29];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){151, (Byte *)data.bytes, 29, 243};
        mainTextMsg = [self StringFromNewData:&value];
    }
    return mainTextMsg;
}

//: #333333
- (NSString *)main_toMakePath {
    /* static */ NSString *main_toMakePath = nil;
    if (!main_toMakePath) {
		NSArray<NSNumber *> *origin = @[@166, @182, @182, @182, @182, @182, @182, @141];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){133, (Byte *)data.bytes, 7, 44};
        main_toMakePath = [self StringFromNewData:&value];
    }
    return main_toMakePath;
}

//: ic-delete_account
- (NSString *)main_proximateStr {
    /* static */ NSString *main_proximateStr = nil;
    if (!main_proximateStr) {
		NSArray<NSNumber *> *origin = @[@131, @137, @199, @142, @143, @134, @143, @158, @143, @181, @139, @137, @137, @133, @159, @132, @158, @109];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){234, (Byte *)data.bytes, 17, 75};
        main_proximateStr = [self StringFromNewData:&value];
    }
    return main_proximateStr;
}

//: login_agreement_press
- (NSString *)app_fullMessage {
    /* static */ NSString *app_fullMessage = nil;
    if (!app_fullMessage) {
		NSArray<NSNumber *> *origin = @[@27, @24, @16, @30, @25, @40, @22, @16, @5, @18, @18, @26, @18, @25, @3, @40, @7, @5, @18, @4, @4, @24];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){119, (Byte *)data.bytes, 21, 196};
        app_fullMessage = [self StringFromNewData:&value];
    }
    return app_fullMessage;
}

//: #FF483D
- (NSString *)showMinName {
    /* static */ NSString *showMinName = nil;
    if (!showMinName) {
		NSArray<NSNumber *> *origin = @[@91, @62, @62, @76, @64, @75, @60, @82];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){120, (Byte *)data.bytes, 7, 222};
        showMinName = [self StringFromNewData:&value];
    }
    return showMinName;
}

//: Read_agree_agreement
- (NSString *)user_cellId {
    /* static */ NSString *user_cellId = nil;
    if (!user_cellId) {
		NSArray<NSNumber *> *origin = @[@200, @255, @251, @254, @197, @251, @253, @232, @255, @255, @197, @251, @253, @232, @255, @255, @247, @255, @244, @238, @69];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){154, (Byte *)data.bytes, 20, 236};
        user_cellId = [self StringFromNewData:&value];
    }
    return user_cellId;
}

//: Complete_operation
- (NSString *)main_woodenId {
    /* static */ NSString *main_woodenId = nil;
    if (!main_woodenId) {
		NSArray<NSNumber *> *origin = @[@255, @211, @209, @204, @208, @217, @200, @217, @227, @211, @204, @217, @206, @221, @200, @213, @211, @210, @247];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){188, (Byte *)data.bytes, 18, 6};
        main_woodenId = [self StringFromNewData:&value];
    }
    return main_woodenId;
}

//: Explanation_Data_Deletion
- (NSString *)noti_overseeMessage {
    /* static */ NSString *noti_overseeMessage = nil;
    if (!noti_overseeMessage) {
		NSArray<NSNumber *> *origin = @[@11, @54, @62, @34, @47, @32, @47, @58, @39, @33, @32, @17, @10, @47, @58, @47, @17, @10, @43, @34, @43, @58, @39, @33, @32, @62];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){78, (Byte *)data.bytes, 25, 155};
        noti_overseeMessage = [self StringFromNewData:&value];
    }
    return noti_overseeMessage;
}

//: login_agreement_normal
- (NSString *)mChildKey {
    /* static */ NSString *mChildKey = nil;
    if (!mChildKey) {
		NSArray<NSNumber *> *origin = @[@12, @15, @7, @9, @14, @63, @1, @7, @18, @5, @5, @13, @5, @14, @20, @63, @14, @15, @18, @13, @1, @12, @231];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){96, (Byte *)data.bytes, 22, 16};
        mChildKey = [self StringFromNewData:&value];
    }
    return mChildKey;
}

//: Irreversible_Operation
- (NSString *)mainCellMessage {
    /* static */ NSString *mainCellMessage = nil;
    if (!mainCellMessage) {
		NSArray<NSNumber *> *origin = @[@20, @47, @47, @56, @43, @56, @47, @46, @52, @63, @49, @56, @2, @18, @45, @56, @47, @60, @41, @52, @50, @51, @18];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){93, (Byte *)data.bytes, 22, 231};
        mainCellMessage = [self StringFromNewData:&value];
    }
    return mainCellMessage;
}

//: Consequences_Account_Deletion_content
- (NSString *)dream_forbidName {
    /* static */ NSString *dream_forbidName = nil;
    if (!dream_forbidName) {
		NSArray<NSNumber *> *origin = @[@49, @29, @28, @1, @23, @3, @7, @23, @28, @17, @23, @1, @45, @51, @17, @17, @29, @7, @28, @6, @45, @54, @23, @30, @23, @6, @27, @29, @28, @45, @17, @29, @28, @6, @23, @28, @6, @36];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){114, (Byte *)data.bytes, 37, 110};
        dream_forbidName = [self StringFromNewData:&value];
    }
    return dream_forbidName;
}

//: safe_arrow_next
- (NSString *)mainInputContent {
    /* static */ NSString *mainInputContent = nil;
    if (!mainInputContent) {
		NSArray<NSNumber *> *origin = @[@74, @88, @95, @92, @102, @88, @75, @75, @86, @78, @102, @87, @92, @65, @77, @30];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){57, (Byte *)data.bytes, 15, 176};
        mainInputContent = [self StringFromNewData:&value];
    }
    return mainInputContent;
}

//: Confirm_Account_Deletion
- (NSString *)dream_honestlyUrl {
    /* static */ NSString *dream_honestlyUrl = nil;
    if (!dream_honestlyUrl) {
		NSArray<NSNumber *> *origin = @[@182, @154, @155, @147, @156, @135, @152, @170, @180, @150, @150, @154, @128, @155, @129, @170, @177, @144, @153, @144, @129, @156, @154, @155, @133];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){245, (Byte *)data.bytes, 24, 15};
        dream_honestlyUrl = [self StringFromNewData:&value];
    }
    return dream_honestlyUrl;
}

//: Explanation_Data_Deletion_content
- (NSString *)main_regardingText {
    /* static */ NSString *main_regardingText = nil;
    if (!main_regardingText) {
		NSArray<NSNumber *> *origin = @[@200, @245, @253, @225, @236, @227, @236, @249, @228, @226, @227, @210, @201, @236, @249, @236, @210, @201, @232, @225, @232, @249, @228, @226, @227, @210, @238, @226, @227, @249, @232, @227, @249, @162];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){141, (Byte *)data.bytes, 33, 77};
        main_regardingText = [self StringFromNewData:&value];
    }
    return main_regardingText;
}

//: contact_tag_fragment_sure
- (NSString *)user_fullFormat {
    /* static */ NSString *user_fullFormat = nil;
    if (!user_fullFormat) {
		NSArray<NSNumber *> *origin = @[@35, @47, @46, @52, @33, @35, @52, @31, @52, @33, @39, @31, @38, @50, @33, @39, @45, @37, @46, @52, @31, @51, @53, @50, @37, @77];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){64, (Byte *)data.bytes, 25, 25};
        user_fullFormat = [self StringFromNewData:&value];
    }
    return user_fullFormat;
}

//: #02D8C9
- (NSString *)kAggressiveStr {
    /* static */ NSString *kAggressiveStr = nil;
    if (!kAggressiveStr) {
		NSArray<NSNumber *> *origin = @[@141, @158, @156, @234, @150, @237, @151, @50];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){174, (Byte *)data.bytes, 7, 211};
        kAggressiveStr = [self StringFromNewData:&value];
    }
    return kAggressiveStr;
}

//: Vertify_login_password
- (NSString *)dream_strikeStr {
    /* static */ NSString *dream_strikeStr = nil;
    if (!dream_strikeStr) {
		NSArray<NSNumber *> *origin = @[@158, @173, @186, @188, @161, @174, @177, @151, @164, @167, @175, @161, @166, @151, @184, @169, @187, @187, @191, @167, @186, @172, @57];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){200, (Byte *)data.bytes, 22, 97};
        dream_strikeStr = [self StringFromNewData:&value];
    }
    return dream_strikeStr;
}

//: contact_tag_fragment_cancel
- (NSString *)notiReplyTitle {
    /* static */ NSString *notiReplyTitle = nil;
    if (!notiReplyTitle) {
		NSArray<NSNumber *> *origin = @[@89, @85, @84, @78, @91, @89, @78, @101, @78, @91, @93, @101, @92, @72, @91, @93, @87, @95, @84, @78, @101, @89, @91, @84, @89, @95, @86, @153];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){58, (Byte *)data.bytes, 27, 36};
        notiReplyTitle = [self StringFromNewData:&value];
    }
    return notiReplyTitle;
}

//: Irreversible_Operation_content
- (NSString *)mProximateMessage {
    /* static */ NSString *mProximateMessage = nil;
    if (!mProximateMessage) {
		NSArray<NSNumber *> *origin = @[@89, @98, @98, @117, @102, @117, @98, @99, @121, @114, @124, @117, @79, @95, @96, @117, @98, @113, @100, @121, @127, @126, @79, @115, @127, @126, @100, @117, @126, @100, @212];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){16, (Byte *)data.bytes, 30, 126};
        mProximateMessage = [self StringFromNewData:&value];
    }
    return mProximateMessage;
}

//: #5D5F66
- (NSString *)dreamNameTitle {
    /* static */ NSString *dreamNameTitle = nil;
    if (!dreamNameTitle) {
		NSArray<NSNumber *> *origin = @[@90, @76, @61, @76, @63, @79, @79, @112];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){121, (Byte *)data.bytes, 7, 73};
        dreamNameTitle = [self StringFromNewData:&value];
    }
    return dreamNameTitle;
}

//: agree_account_deletion_terms
- (NSString *)notiShowMessage {
    /* static */ NSString *notiShowMessage = nil;
    if (!notiShowMessage) {
		NSArray<NSNumber *> *origin = @[@161, @167, @178, @165, @165, @159, @161, @163, @163, @175, @181, @174, @180, @159, @164, @165, @172, @165, @180, @169, @175, @174, @159, @180, @165, @178, @173, @179, @245];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){192, (Byte *)data.bytes, 28, 167};
        notiShowMessage = [self StringFromNewData:&value];
    }
    return notiShowMessage;
}

//: #2C3042
- (NSString *)k_labelTitleContent {
    /* static */ NSString *k_labelTitleContent = nil;
    if (!k_labelTitleContent) {
		NSArray<NSNumber *> *origin = @[@34, @51, @66, @50, @49, @53, @51, @150];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){1, (Byte *)data.bytes, 7, 212};
        k_labelTitleContent = [self StringFromNewData:&value];
    }
    return k_labelTitleContent;
}

//: #BCC1C8
- (NSString *)mainExplainUrl {
    /* static */ NSString *mainExplainUrl = nil;
    if (!mainExplainUrl) {
		NSArray<NSNumber *> *origin = @[@186, @219, @218, @218, @168, @218, @161, @64];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){153, (Byte *)data.bytes, 7, 139};
        mainExplainUrl = [self StringFromNewData:&value];
    }
    return mainExplainUrl;
}

//: activity_comment_setting_cancel_account
- (NSString *)m_forbidTitle {
    /* static */ NSString *m_forbidTitle = nil;
    if (!m_forbidTitle) {
		NSArray<NSNumber *> *origin = @[@156, @158, @137, @148, @139, @148, @137, @132, @162, @158, @146, @144, @144, @152, @147, @137, @162, @142, @152, @137, @137, @148, @147, @154, @162, @158, @156, @147, @158, @152, @145, @162, @156, @158, @158, @146, @136, @147, @137, @177];
		NSData *data = [NewData NewDataToData:origin];
        StructNewData value = (StructNewData){253, (Byte *)data.bytes, 39, 154};
        m_forbidTitle = [self StringFromNewData:&value];
    }
    return m_forbidTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MyView.m
//  NIM
//
//  Created by Yan Wang on 2024/9/3.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONDeleteAccountView.h"
#import "MyView.h"

//: @interface ZMONDeleteAccountView ()<UITextFieldDelegate>
@interface MyView ()<UITextFieldDelegate>

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
//: @property (nonatomic,strong) UIView *contentBox;
@property (nonatomic,strong) UIView *contentBox;
//: @property (nonatomic,strong) UIButton *agreementButton;
@property (nonatomic,strong) UIButton *agreementButton;

//: @end
@end

//: @implementation ZMONDeleteAccountView
@implementation MyView

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
        [self initExtraUi];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initExtraUi{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-532)/2, [[UIScreen mainScreen] bounds].size.width-30, 532)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-532)/2, [[UIScreen mainScreen] bounds].size.width-30, 532)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.img];
    [_box addSubview:self.img];
    //: self.img.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-80)/2, -40, 80, 80);
    self.img.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-80)/2, -40, 80, 80);

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, self.img.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.titleLabel.frame = CGRectMake(0, self.img.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 20);

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 20)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 20)];
    //: labtitle.font = [UIFont systemFontOfSize:14.f];
    labtitle.font = [UIFont systemFontOfSize:14.f];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#2C3042"];
    labtitle.textColor = [UIColor status:[[NewData sharedInstance] k_labelTitleContent]];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"Confirm_Account_Deletion"];
    labtitle.text = [SendName streetSmart:[[NewData sharedInstance] dream_honestlyUrl]];
    //: [_box addSubview:labtitle];
    [_box addSubview:labtitle];

//    [_box addSubview:self.nextBox];
//    self.nextBox.frame = CGRectMake(20, labtitle.bottom+10, SCREEN_WIDTH-70, 54);

    //: [_box addSubview:self.contentBox];
    [_box addSubview:self.contentBox];
    //: self.contentBox.frame = CGRectMake(20, labtitle.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 360);
    self.contentBox.frame = CGRectMake(20, labtitle.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 360);



    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 532-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 532-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 532-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 532-20-height, width, height);
}



//: - (void)updateTheNickname{
- (void)exceptRecord{

    //: if (_agreementButton.selected == NO) {
    if (_agreementButton.selected == NO) {
        //: [self makeToast:[FFFLanguageManager getTextWithKey:@"Read_agree_agreement"] duration:2.0 position:CSToastPositionCenter];
        [self makeToast:[SendName streetSmart:[[NewData sharedInstance] user_cellId]] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: [self animationClose];
    [self tingShould];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteNextButton)]) {
    if ([self.delegate respondsToSelector:@selector(replyTag)]) {
        //: [self.delegate didTouchDeleteNextButton];
        [self.delegate replyTag];
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
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor status:[[NewData sharedInstance] k_labelTitleContent]];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
//        _titleLabel.numberOfLines = 1;
//        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _titleLabel.text = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        _titleLabel.text = [SendName streetSmart:[[NewData sharedInstance] m_forbidTitle]];
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
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[[NewData sharedInstance] main_proximateStr]]];
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

        //: UIView *numView1 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIView *numView1 = [[UIView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: numView1.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        numView1.backgroundColor = [UIColor status:[[NewData sharedInstance] kAggressiveStr]];
        //: numView1.layer.cornerRadius = 10;
        numView1.layer.cornerRadius = 10;
        //: numView1.layer.masksToBounds = YES;
        numView1.layer.masksToBounds = YES;
        //: [view1 addSubview:numView1];
        [view1 addSubview:numView1];
        //: UILabel *labtitlenum1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        UILabel *labtitlenum1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        //: labtitlenum1.font = [UIFont systemFontOfSize:12.f];
        labtitlenum1.font = [UIFont systemFontOfSize:12.f];
        //: labtitlenum1.textColor = [UIColor whiteColor];
        labtitlenum1.textColor = [UIColor whiteColor];
        //: labtitlenum1.text = @"1";
        labtitlenum1.text = @"1";
        //: labtitlenum1.textAlignment = NSTextAlignmentCenter;
        labtitlenum1.textAlignment = NSTextAlignmentCenter;
        //: [numView1 addSubview:labtitlenum1];
        [numView1 addSubview:labtitlenum1];

        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView1.bottom+4, width, 30)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, numView1.bottom+4, width, 30)];
        //: labtitle1.font = [UIFont systemFontOfSize:11.f];
        labtitle1.font = [UIFont systemFontOfSize:11.f];
        //: labtitle1.textColor = [UIColor blackColor];
        labtitle1.textColor = [UIColor blackColor];
        //: labtitle1.text = [FFFLanguageManager getTextWithKey:@"Read_agree_agreement"];
        labtitle1.text = [SendName streetSmart:[[NewData sharedInstance] user_cellId]];
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
        //: numView2.backgroundColor = [UIColor colorWithHexString:@"#BCC1C8"];
        numView2.backgroundColor = [UIColor status:[[NewData sharedInstance] mainExplainUrl]];
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
        //: labtitle2.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        labtitle2.textColor = [UIColor status:[[NewData sharedInstance] dreamNameTitle]];
        //: labtitle2.text = [FFFLanguageManager getTextWithKey:@"Vertify_login_password"];
        labtitle2.text = [SendName streetSmart:[[NewData sharedInstance] dream_strikeStr]];
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
        numView3.backgroundColor = [UIColor status:[[NewData sharedInstance] mainExplainUrl]];
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
        labtitle3.textColor = [UIColor status:[[NewData sharedInstance] dreamNameTitle]];
        //: labtitle3.text = [FFFLanguageManager getTextWithKey:@"Complete_operation"];
        labtitle3.text = [SendName streetSmart:[[NewData sharedInstance] main_woodenId]];
        //: labtitle3.numberOfLines = 2;
        labtitle3.numberOfLines = 2;
        //: labtitle3.textAlignment = NSTextAlignmentCenter;
        labtitle3.textAlignment = NSTextAlignmentCenter;
        //: [view3 addSubview:labtitle3];
        [view3 addSubview:labtitle3];

        //: UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        //: arrow1.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow1.image = [UIImage imageNamed:[[NewData sharedInstance] mainInputContent]];
        //: [_nextBox addSubview:arrow1];
        [_nextBox addSubview:arrow1];

        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        //: arrow2.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow2.image = [UIImage imageNamed:[[NewData sharedInstance] mainInputContent]];
        //: [_nextBox addSubview:arrow2];
        [_nextBox addSubview:arrow2];
    }
    //: return _nextBox;
    return _nextBox;
}

//: - (UIView *)contentBox
- (UIView *)contentBox
{
    //: if(!_contentBox){
    if(!_contentBox){
        //: _contentBox = [[UIView alloc]init];
        _contentBox = [[UIView alloc]init];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40);
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40);

        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        //: labtitle1.font = [UIFont boldSystemFontOfSize:12.f];
        labtitle1.font = [UIFont boldSystemFontOfSize:12.f];
        //: labtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle1.textColor = [UIColor status:[[NewData sharedInstance] main_toMakePath]];
        //: labtitle1.text = [FFFLanguageManager getTextWithKey:@"Consequences_Account_Deletion"];
        labtitle1.text = [SendName streetSmart:[[NewData sharedInstance] mainTextMsg]];
        //: [_contentBox addSubview:labtitle1];
        [_contentBox addSubview:labtitle1];
        //: UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom, width, 70)];
        UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom, width, 70)];
        //: labsubtitle1.font = [UIFont systemFontOfSize:12.f];
        labsubtitle1.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle1.textColor = [UIColor status:[[NewData sharedInstance] main_toMakePath]];
        //: labsubtitle1.text = [FFFLanguageManager getTextWithKey:@"Consequences_Account_Deletion_content"];
        labsubtitle1.text = [SendName streetSmart:[[NewData sharedInstance] dream_forbidName]];
        //: labsubtitle1.numberOfLines = 0;
        labsubtitle1.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle1];
        [_contentBox addSubview:labsubtitle1];
        //: [labsubtitle1 sizeToFit];
        [labsubtitle1 sizeToFit];

        //: UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labsubtitle1.bottom, width, 20)];
        UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labsubtitle1.bottom, width, 20)];
        //: labtitle2.font = [UIFont boldSystemFontOfSize:12.f];
        labtitle2.font = [UIFont boldSystemFontOfSize:12.f];
        //: labtitle2.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle2.textColor = [UIColor status:[[NewData sharedInstance] main_toMakePath]];
        //: labtitle2.text = [FFFLanguageManager getTextWithKey:@"Explanation_Data_Deletion"];
        labtitle2.text = [SendName streetSmart:[[NewData sharedInstance] noti_overseeMessage]];
        //: [_contentBox addSubview:labtitle2];
        [_contentBox addSubview:labtitle2];
        //: UILabel *labsubtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle2.bottom, width, 70)];
        UILabel *labsubtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle2.bottom, width, 70)];
        //: labsubtitle2.font = [UIFont systemFontOfSize:12.f];
        labsubtitle2.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle2.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle2.textColor = [UIColor status:[[NewData sharedInstance] main_toMakePath]];
        //: labsubtitle2.text = [FFFLanguageManager getTextWithKey:@"Explanation_Data_Deletion_content"];
        labsubtitle2.text = [SendName streetSmart:[[NewData sharedInstance] main_regardingText]];
        //: labsubtitle2.numberOfLines = 0;
        labsubtitle2.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle2];
        [_contentBox addSubview:labsubtitle2];
        //: [labsubtitle2 sizeToFit];
        [labsubtitle2 sizeToFit];

        //: UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labsubtitle2.bottom, width, 20)];
        UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labsubtitle2.bottom, width, 20)];
        //: labtitle3.font = [UIFont boldSystemFontOfSize:12.f];
        labtitle3.font = [UIFont boldSystemFontOfSize:12.f];
        //: labtitle3.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle3.textColor = [UIColor status:[[NewData sharedInstance] main_toMakePath]];
        //: labtitle3.text = [FFFLanguageManager getTextWithKey:@"Irreversible_Operation"];
        labtitle3.text = [SendName streetSmart:[[NewData sharedInstance] mainCellMessage]];
        //: [_contentBox addSubview:labtitle3];
        [_contentBox addSubview:labtitle3];
        //: UILabel *labsubtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle3.bottom, width, 70)];
        UILabel *labsubtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle3.bottom, width, 70)];
        //: labsubtitle3.font = [UIFont systemFontOfSize:12.f];
        labsubtitle3.font = [UIFont systemFontOfSize:12.f];
        //: labsubtitle3.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle3.textColor = [UIColor status:[[NewData sharedInstance] main_toMakePath]];
        //: labsubtitle3.text = [FFFLanguageManager getTextWithKey:@"Irreversible_Operation_content"];
        labsubtitle3.text = [SendName streetSmart:[[NewData sharedInstance] mProximateMessage]];
        //: labsubtitle3.numberOfLines = 0;
        labsubtitle3.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle3];
        [_contentBox addSubview:labsubtitle3];
        //: [labsubtitle3 sizeToFit];
        [labsubtitle3 sizeToFit];

        //: _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _agreementButton.frame = CGRectMake(0, labsubtitle3.bottom+30, 16, 16);
        _agreementButton.frame = CGRectMake(0, labsubtitle3.bottom+30, 16, 16);
        //: _agreementButton.selected = YES;
        _agreementButton.selected = YES;
        //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_normal"] forState:UIControlStateNormal];
        [_agreementButton setImage:[UIImage imageNamed:[[NewData sharedInstance] mChildKey]] forState:UIControlStateNormal];
        //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
        [_agreementButton setImage:[UIImage imageNamed:[[NewData sharedInstance] app_fullMessage]] forState:UIControlStateSelected];
        //: [_agreementButton addTarget:self action:@selector(agreementButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [_agreementButton addTarget:self action:@selector(agreementsed:) forControlEvents:UIControlEventTouchUpInside];
        //: [_contentBox addSubview:_agreementButton];
        [_contentBox addSubview:_agreementButton];

        //: UILabel *labprotocol = [[UILabel alloc] initWithFrame:CGRectMake(_agreementButton.right+10, _agreementButton.top, [[UIScreen mainScreen] bounds].size.width-70-40, 32)];
        UILabel *labprotocol = [[UILabel alloc] initWithFrame:CGRectMake(_agreementButton.right+10, _agreementButton.top, [[UIScreen mainScreen] bounds].size.width-70-40, 32)];
        //: labprotocol.font = [UIFont systemFontOfSize:12.f];
        labprotocol.font = [UIFont systemFontOfSize:12.f];
//        labprotocol.textColor = TextColor_4;
//        labprotocol.text = @"I have read and agree to the account deactivation terms";
        //: labprotocol.numberOfLines = 0;
        labprotocol.numberOfLines = 0;
        //: [_contentBox addSubview:labprotocol];
        [_contentBox addSubview:labprotocol];
        //: labprotocol.userInteractionEnabled = YES;
        labprotocol.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleProtocol)];
        UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(coverDisable)];
        //: [labprotocol addGestureRecognizer:singleTap];
        [labprotocol addGestureRecognizer:singleTap];

        //: NSMutableAttributedString *tncString = [[NSMutableAttributedString alloc] initWithString:[FFFLanguageManager getTextWithKey:@"agree_account_deletion_terms"]];
        NSMutableAttributedString *tncString = [[NSMutableAttributedString alloc] initWithString:[SendName streetSmart:[[NewData sharedInstance] notiShowMessage]]];
        //: [tncString addAttribute:NSUnderlineStyleAttributeName
        [tncString addAttribute:NSUnderlineStyleAttributeName
                          //: value:@(NSUnderlineStyleSingle)
                          value:@(NSUnderlineStyleSingle)
                          //: range:(NSRange){0,[tncString length]}];
                          range:(NSRange){0,[tncString length]}];
        //: [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"#2C3042"] range:NSMakeRange(0,[tncString length])];
        [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor status:[[NewData sharedInstance] k_labelTitleContent]] range:NSMakeRange(0,[tncString length])];
        //: [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor colorWithHexString:@"#2C3042"] range:(NSRange){0,[tncString length]}];
        [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor status:[[NewData sharedInstance] k_labelTitleContent]] range:(NSRange){0,[tncString length]}];
        //: labprotocol.attributedText = tncString;
        labprotocol.attributedText = tncString;

        //: [labprotocol sizeToFit];
        [labprotocol sizeToFit];


    }
    //: return _contentBox;
    return _contentBox;
}

//: -(void)agreementButtonClick:(UIButton *)senderBtn
-(void)agreementsed:(UIButton *)senderBtn
{
    //: senderBtn.selected = !senderBtn.selected;
    senderBtn.selected = !senderBtn.selected;
}

//: -(void)handleProtocol
-(void)coverDisable
{
//    [self animationClose];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteProtocolButton)]) {
    if ([self.delegate respondsToSelector:@selector(modelString)]) {
        //: [self.delegate didTouchDeleteProtocolButton];
        [self.delegate modelString];
    }
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
        [_closeBtn setTitleColor:[UIColor status:[[NewData sharedInstance] dreamNameTitle]] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[SendName streetSmart:[[NewData sharedInstance] notiReplyTitle]] forState:UIControlStateNormal];
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
        [_sureBtn setTitle:[SendName streetSmart:[[NewData sharedInstance] user_fullFormat]] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor status:[[NewData sharedInstance] showMinName]];
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
- (void)messageHidden
{
    //: self.hidden = NO;
    self.hidden = NO;

}


//: @end
@end