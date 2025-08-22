
#import <Foundation/Foundation.h>

@interface ToolData : NSObject

+ (instancetype)sharedInstance;

//: #999999
@property (nonatomic, copy) NSString *showDismissData;

//: discovery
@property (nonatomic, copy) NSString *k_contentPath;

//: #fffBusy
@property (nonatomic, copy) NSString *m_toolFormat;

//: group_info_activity_without
@property (nonatomic, copy) NSString *mSizeFrameKey;

//: chat_top_bg
@property (nonatomic, copy) NSString *appSuccessPinText;

//: ic_none_LogList
@property (nonatomic, copy) NSString *notiShowData;

@end

@implementation ToolData

+ (instancetype)sharedInstance {
    static ToolData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ToolDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ToolDataToCache:(Byte *)data {
    int country = data[0];
    Byte messageRecord = data[1];
    int bottomTeam = data[2];
    for (int i = bottomTeam; i < bottomTeam + country; i++) {
        int value = data[i] - messageRecord;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[bottomTeam + country] = 0;
    return data + bottomTeam;
}

- (NSString *)StringFromToolData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ToolDataToCache:data]];
}

//: discovery
- (NSString *)k_contentPath {
    if (!_k_contentPath) {
		NSArray<NSString *> *origin = @[@"9", @"43", @"4", @"161", @"143", @"148", @"158", @"142", @"154", @"161", @"144", @"157", @"164", @"207"];
		NSData *data = [ToolData ToolDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_contentPath = [self StringFromToolData:value];
    }
    return _k_contentPath;
}

//: group_info_activity_without
- (NSString *)mSizeFrameKey {
    if (!_mSizeFrameKey) {
		NSArray<NSString *> *origin = @[@"27", @"9", @"13", @"72", @"181", @"251", @"209", @"110", @"225", @"151", @"155", @"17", @"193", @"112", @"123", @"120", @"126", @"121", @"104", @"114", @"119", @"111", @"120", @"104", @"106", @"108", @"125", @"114", @"127", @"114", @"125", @"130", @"104", @"128", @"114", @"125", @"113", @"120", @"126", @"125", @"147"];
		NSData *data = [ToolData ToolDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mSizeFrameKey = [self StringFromToolData:value];
    }
    return _mSizeFrameKey;
}

//: chat_top_bg
- (NSString *)appSuccessPinText {
    if (!_appSuccessPinText) {
		NSArray<NSString *> *origin = @[@"11", @"23", @"6", @"203", @"39", @"135", @"122", @"127", @"120", @"139", @"118", @"139", @"134", @"135", @"118", @"121", @"126", @"101"];
		NSData *data = [ToolData ToolDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appSuccessPinText = [self StringFromToolData:value];
    }
    return _appSuccessPinText;
}

//: ic_none_LogList
- (NSString *)notiShowData {
    if (!_notiShowData) {
		NSArray<NSString *> *origin = @[@"15", @"92", @"6", @"190", @"32", @"60", @"197", @"191", @"187", @"202", @"203", @"202", @"193", @"187", @"168", @"203", @"195", @"168", @"197", @"207", @"208", @"63"];
		NSData *data = [ToolData ToolDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiShowData = [self StringFromToolData:value];
    }
    return _notiShowData;
}

//: #fffBusy
- (NSString *)m_toolFormat {
    if (!_m_toolFormat) {
		NSArray<NSString *> *origin = @[@"7", @"74", @"5", @"84", @"79", @"109", @"176", @"176", @"176", @"176", @"176", @"176", @"246"];
		NSData *data = [ToolData ToolDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_toolFormat = [self StringFromToolData:value];
    }
    return _m_toolFormat;
}

//: #999999
- (NSString *)showDismissData {
    if (!_showDismissData) {
		NSArray<NSString *> *origin = @[@"7", @"17", @"8", @"116", @"180", @"67", @"81", @"151", @"52", @"74", @"74", @"74", @"74", @"74", @"74", @"68"];
		NSData *data = [ToolData ToolDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showDismissData = [self StringFromToolData:value];
    }
    return _showDismissData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnableSendViewController.m
//  Riverla
//
//  Created by mac on 2025/3/31.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisCorveyViewController.h"
#import "EnableSendViewController.h"

//: @interface DisCorveyViewController()
@interface EnableSendViewController()

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation DisCorveyViewController
@implementation EnableSendViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    //: bg.image = [UIImage imageNamed:@"chat_top_bg"];
    bg.image = [UIImage imageNamed:[ToolData sharedInstance].appSuccessPinText];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width, 44)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice statusOrLevel], [[UIScreen mainScreen] bounds].size.width, 44)];
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 200, 44)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 200, 44)];
    //: labtitle.textColor = [UIColor whiteColor];
    labtitle.textColor = [UIColor whiteColor];
    //: labtitle.font = [UIFont boldSystemFontOfSize:18];
    labtitle.font = [UIFont boldSystemFontOfSize:18];
    //: labtitle.text = [BusyLanguageManager getTextWithKey:@"discovery"];
    labtitle.text = [SendName streetSmart:[ToolData sharedInstance].k_contentPath];
    //: [topview addSubview:labtitle];
    [topview addSubview:labtitle];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice statusOrLevel])+10, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice statusOrLevel]))];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#fffBusy"];
    contentView.backgroundColor = [UIColor status:[ToolData sharedInstance].m_toolFormat];
    //: contentView.layer.cornerRadius = 34;
    contentView.layer.cornerRadius = 34;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice statusOrLevel])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
//        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_LogList"];
        defImg.image = [UIImage imageNamed:[ToolData sharedInstance].notiShowData];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];


        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor status:[ToolData sharedInstance].showDismissData];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [BusyLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [SendName streetSmart:[ToolData sharedInstance].mSizeFrameKey];


    }
    //: return _defView;
    return _defView;
}

//: @end
@end
