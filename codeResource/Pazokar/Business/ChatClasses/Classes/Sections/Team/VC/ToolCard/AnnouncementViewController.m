
#import <Foundation/Foundation.h>

@interface MallPsychologistData : NSObject

@end

@implementation MallPsychologistData

+ (Byte *)MallPsychologistDataToCache:(Byte *)data {
    int manipulateRepresent = data[0];
    Byte theologicalCheck = data[1];
    int phrase = data[2];
    for (int i = phrase; i < phrase + manipulateRepresent; i++) {
        int value = data[i] + theologicalCheck;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[phrase + manipulateRepresent] = 0;
    return data + phrase;
}

+ (NSString *)StringFromMallPsychologistData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MallPsychologistDataToCache:data]];
}

//: Group_description
+ (NSString *)user_namePath {
    /* static */ NSString *user_namePath = nil;
    if (!user_namePath) {
        Byte value[] = {17, 11, 11, 89, 92, 18, 101, 108, 27, 90, 86, 60, 103, 100, 106, 101, 84, 89, 90, 104, 88, 103, 94, 101, 105, 94, 100, 99, 189};
        user_namePath = [self StringFromMallPsychologistData:value];
    }
    return user_namePath;
}

//: #999999
+ (NSString *)kManipulateValue {
    /* static */ NSString *kManipulateValue = nil;
    if (!kManipulateValue) {
        Byte value[] = {7, 90, 7, 44, 51, 89, 148, 201, 223, 223, 223, 223, 223, 223, 98};
        kManipulateValue = [self StringFromMallPsychologistData:value];
    }
    return kManipulateValue;
}

//: back_arrow_bl
+ (NSString *)m_showClickManipulateMsg {
    /* static */ NSString *m_showClickManipulateMsg = nil;
    if (!m_showClickManipulateMsg) {
        Byte value[] = {13, 71, 3, 27, 26, 28, 36, 24, 26, 43, 43, 40, 48, 24, 27, 37, 158};
        m_showClickManipulateMsg = [self StringFromMallPsychologistData:value];
    }
    return m_showClickManipulateMsg;
}

//: Announcement_title
+ (NSString *)app_mpYaStr {
    /* static */ NSString *app_mpYaStr = nil;
    if (!app_mpYaStr) {
        Byte value[] = {18, 48, 9, 174, 108, 61, 227, 229, 17, 17, 62, 62, 63, 69, 62, 51, 53, 61, 53, 62, 68, 47, 68, 57, 68, 60, 53, 218};
        app_mpYaStr = [self StringFromMallPsychologistData:value];
    }
    return app_mpYaStr;
}

//: feedback_activity_submit
+ (NSString *)dreamTeamMsg {
    /* static */ NSString *dreamTeamMsg = nil;
    if (!dreamTeamMsg) {
        Byte value[] = {24, 99, 3, 3, 2, 2, 1, 255, 254, 0, 8, 252, 254, 0, 17, 6, 19, 6, 17, 22, 252, 16, 18, 255, 10, 6, 17, 171};
        dreamTeamMsg = [self StringFromMallPsychologistData:value];
    }
    return dreamTeamMsg;
}

//: #EEEEEE
+ (NSString *)dreamRedMessage {
    /* static */ NSString *dreamRedMessage = nil;
    if (!dreamRedMessage) {
        Byte value[] = {7, 59, 9, 152, 24, 88, 164, 182, 44, 232, 10, 10, 10, 10, 10, 10, 46};
        dreamRedMessage = [self StringFromMallPsychologistData:value];
    }
    return dreamRedMessage;
}

//: #F6F7FA
+ (NSString *)notiCooperationKey {
    /* static */ NSString *notiCooperationKey = nil;
    if (!notiCooperationKey) {
        Byte value[] = {7, 25, 8, 109, 211, 207, 218, 45, 10, 45, 29, 45, 30, 45, 40, 179};
        notiCooperationKey = [self StringFromMallPsychologistData:value];
    }
    return notiCooperationKey;
}

//: Please_enter_content
+ (NSString *)showNowhereKey {
    /* static */ NSString *showNowhereKey = nil;
    if (!showNowhereKey) {
        Byte value[] = {20, 91, 3, 245, 17, 10, 6, 24, 10, 4, 10, 19, 25, 10, 23, 4, 8, 20, 19, 25, 10, 19, 25, 39};
        showNowhereKey = [self StringFromMallPsychologistData:value];
    }
    return showNowhereKey;
}

//: #02D8C9
+ (NSString *)notiElectronValue {
    /* static */ NSString *notiElectronValue = nil;
    if (!notiElectronValue) {
        Byte value[] = {7, 82, 3, 209, 222, 224, 242, 230, 241, 231, 177};
        notiElectronValue = [self StringFromMallPsychologistData:value];
    }
    return notiElectronValue;
}

//: #2B2F36
+ (NSString *)dreamAhAmbitiousData {
    /* static */ NSString *dreamAhAmbitiousData = nil;
    if (!dreamAhAmbitiousData) {
        Byte value[] = {7, 83, 9, 146, 185, 43, 112, 250, 147, 208, 223, 239, 223, 243, 224, 227, 174};
        dreamAhAmbitiousData = [self StringFromMallPsychologistData:value];
    }
    return dreamAhAmbitiousData;
}

//: 2B2F36
+ (NSString *)mainInmateMessage {
    /* static */ NSString *mainInmateMessage = nil;
    if (!mainInmateMessage) {
        Byte value[] = {6, 54, 5, 157, 255, 252, 12, 252, 16, 253, 0, 3};
        mainInmateMessage = [self StringFromMallPsychologistData:value];
    }
    return mainInmateMessage;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCreateTeamAnnouncement.m
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCreateTeamAnnouncement.h"
#import "AnnouncementViewController.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFKitKeyboardInfo.h"
#import "AffairWith.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "UITextView+Util.h"
#import "UITextView+Util.h"

//: @interface FFFCreateTeamAnnouncement () <UITextFieldDelegate, UITextViewDelegate>
@interface AnnouncementViewController () <UITextFieldDelegate, UITextViewDelegate>
//: @property (strong, nonatomic) UITextField *titleTextField;
@property (strong, nonatomic) UITextField *titleTextField;
//: @property (strong, nonatomic) UITextView *contentTextView;
@property (strong, nonatomic) UITextView *contentTextView;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;
//: @property (nonatomic,strong) UILabel *numLabel;
@property (nonatomic,strong) UILabel *numLabel;

//: @end
@end

//: @implementation FFFCreateTeamAnnouncement
@implementation AnnouncementViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}


//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor status:[MallPsychologistData notiCooperationKey]];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice statusOrLevel]))];
//    bgView.backgroundColor = [UIColor redColor];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];


    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice statusOrLevel]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[MallPsychologistData m_showClickManipulateMsg]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(numberernationalTing) forControlEvents:UIControlEventTouchUpInside];
    //: [bgView addSubview:backButton];
    [bgView addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight]+4, 200, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice statusOrLevel]+4, 200, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"Group_description"];
    labtitle.text = [SendName streetSmart:[MallPsychologistData user_namePath]];
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];



//    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    submitButton.frame = CGRectMake(SCREEN_WIDTH-15-40, SCREEN_STATUS_HEIGHT+4, 40, 40);
//    [submitButton setImage:[UIImage imageNamed:@"icon_checkbox_selected"] forState:(UIControlStateNormal)];
//    [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
//    [bgView addSubview:submitButton];


//    UIView *titleView = [[UIView alloc]initWithFrame:CGRectMake(15, SCREEN_TOP_HEIGHT+10, SCREEN_WIDTH-30, 50)];
////    titleView.backgroundColor = [UIColor whiteColor];
////    titleView.layer.cornerRadius = 8;
//    [self.view addSubview:titleView];
//    titleView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    titleView.layer.cornerRadius = 8;
//    titleView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    titleView.layer.shadowOffset = CGSizeMake(0,3);
//    titleView.layer.shadowOpacity = 1;
//    titleView.layer.shadowRadius = 0;




    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width-30, 300)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(15, (44.0f + [UIDevice statusOrLevel])+10, [[UIScreen mainScreen] bounds].size.width-30, 300)];
    //: contentView.backgroundColor = [UIColor whiteColor];
    contentView.backgroundColor = [UIColor whiteColor];
    //: contentView.layer.cornerRadius = 8;
    contentView.layer.cornerRadius = 8;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];
//    contentView.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//    contentView.layer.cornerRadius = 8;
//    contentView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//    contentView.layer.shadowOffset = CGSizeMake(0,3);
//    contentView.layer.shadowOpacity = 1;
//    contentView.layer.shadowRadius = 0;

    //: self.titleTextField = [[UITextField alloc] initWithFrame:CGRectMake(15, 10, [[UIScreen mainScreen] bounds].size.width-60, 30)];
    self.titleTextField = [[UITextField alloc] initWithFrame:CGRectMake(15, 10, [[UIScreen mainScreen] bounds].size.width-60, 30)];
    //: self.titleTextField.placeholder = [FFFLanguageManager getTextWithKey:@"Announcement_title"];
    self.titleTextField.placeholder = [SendName streetSmart:[MallPsychologistData app_mpYaStr]];
    //: self.titleTextField.font = [UIFont systemFontOfSize:18.f];
    self.titleTextField.font = [UIFont systemFontOfSize:18.f];
    //: self.titleTextField.textColor = [UIColor colorWithHexString:@"2B2F36"];
    self.titleTextField.textColor = [UIColor status:[MallPsychologistData mainInmateMessage]];
    //: self.titleTextField.text = self.defaultTitle;
    self.titleTextField.text = self.defaultTitle;
    //: self.titleTextField.delegate = self;
    self.titleTextField.delegate = self;
    //: [contentView addSubview:self.titleTextField];
    [contentView addSubview:self.titleTextField];

    //: UIView *line = [[UIView alloc]initWithFrame:CGRectMake(15, self.titleTextField.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 1)];
    UIView *line = [[UIView alloc]initWithFrame:CGRectMake(15, self.titleTextField.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 1)];
    //: line.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    line.backgroundColor = [UIColor status:[MallPsychologistData dreamRedMessage]];
    //: [contentView addSubview:line];
    [contentView addSubview:line];

    //: self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, line.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 230)];
    self.contentTextView = [[UITextView alloc] initWithFrame:CGRectMake(15, line.bottom+10, [[UIScreen mainScreen] bounds].size.width-60, 230)];
    //: self.contentTextView.textColor = [UIColor colorWithHexString:@"#2B2F36"];
    self.contentTextView.textColor = [UIColor status:[MallPsychologistData dreamAhAmbitiousData]];
    //: self.contentTextView.font = [UIFont systemFontOfSize:14.f];
    self.contentTextView.font = [UIFont systemFontOfSize:14.f];
    //: self.contentTextView.delegate = self;
    self.contentTextView.delegate = self;
    //: self.contentTextView.placeholder = [FFFLanguageManager getTextWithKey:@"Please_enter_content"];
    self.contentTextView.placeholder = [SendName streetSmart:[MallPsychologistData showNowhereKey]];
    //: self.contentTextView.text = self.defaultContent;
    self.contentTextView.text = self.defaultContent;
    //: [contentView addSubview:self.contentTextView];
    [contentView addSubview:self.contentTextView];

//    [self.view addSubview:self.numLabel];
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/512",(unsigned long)self.contentTextView.text.length];
//    self.numLabel.frame = CGRectMake(15, contentView.bottom+10, SCREEN_WIDTH-30, 20);

    //: UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
    submitButton.frame = CGRectMake(15, [[UIScreen mainScreen] bounds].size.height-48-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width-30, 48);
    //: submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    submitButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    //: [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [submitButton setTitle:[FFFLanguageManager getTextWithKey:@"feedback_activity_submit"] forState:UIControlStateNormal];
    [submitButton setTitle:[SendName streetSmart:[MallPsychologistData dreamTeamMsg]] forState:UIControlStateNormal];
    //: [submitButton addTarget:self action:@selector(onSave:) forControlEvents:UIControlEventTouchUpInside];
    [submitButton addTarget:self action:@selector(oned:) forControlEvents:UIControlEventTouchUpInside];
    //: submitButton.layer.cornerRadius = 24;
    submitButton.layer.cornerRadius = 24;
    //: submitButton.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
    submitButton.backgroundColor = [UIColor status:[MallPsychologistData notiElectronValue]];
    //: [self.view addSubview:submitButton];
    [self.view addSubview:submitButton];



}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)backAction{
- (void)numberernationalTing{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)textViewDidChange:(UITextView *)textView {
- (void)textViewDidChange:(UITextView *)textView {
//    self.numLabel.text = [NSString stringWithFormat:@"%lu/400",textView.text.length];
}


//: - (void)onSave:(id)sender {
- (void)oned:(id)sender {
    //: [self.titleTextField endEditing:YES];
    [self.titleTextField endEditing:YES];
    //: [self.contentTextView endEditing:YES];
    [self.contentTextView endEditing:YES];
    //: NSString *title = [self.titleTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *title = [self.titleTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *content = [self.contentTextView.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
    //: if([self.delegate respondsToSelector:@selector(createTeamAnnouncementCompleteWithTitle:content:)]) {
    if([self.delegate respondsToSelector:@selector(twineFromAccumulation:team:)]) {
        //: [self.delegate createTeamAnnouncementCompleteWithTitle:title content:content];
        [self.delegate twineFromAccumulation:title team:content];
    }
}

//: - (UILabel *)numLabel{
- (UILabel *)numLabel{
    //: if (!_numLabel) {
    if (!_numLabel) {
        //: _numLabel = [[UILabel alloc] init];
        _numLabel = [[UILabel alloc] init];
        //: _numLabel.font = [UIFont systemFontOfSize:12.f];
        _numLabel.font = [UIFont systemFontOfSize:12.f];
        //: _numLabel.textAlignment = NSTextAlignmentRight;
        _numLabel.textAlignment = NSTextAlignmentRight;
        //: _numLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _numLabel.textColor = [UIColor status:[MallPsychologistData kManipulateValue]];
    }
    //: return _numLabel;
    return _numLabel;
}



//: @end
@end