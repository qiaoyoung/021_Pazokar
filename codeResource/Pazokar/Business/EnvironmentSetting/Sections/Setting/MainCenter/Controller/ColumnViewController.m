
#import <Foundation/Foundation.h>

@interface SemenAwarenessData : NSObject

+ (instancetype)sharedInstance;

//: #999999
@property (nonatomic, copy) NSString *appSituationRangeIdent;

//: group_info_activity_without
@property (nonatomic, copy) NSString *appAggressiveUrl;

//: #000000
@property (nonatomic, copy) NSString *m_idealFormat;

//: back_arrow_bl
@property (nonatomic, copy) NSString *dreamTitleMessage;

//: my_log
@property (nonatomic, copy) NSString *mainLineName;

//: #F6F7FA
@property (nonatomic, copy) NSString *notiGateName;

//: 日志项目 %ld
@property (nonatomic, copy) NSString *mRedTitle;

//: ic_none_LogList
@property (nonatomic, copy) NSString *showFactorUrl;

@end

@implementation SemenAwarenessData

+ (instancetype)sharedInstance {
    static SemenAwarenessData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)SemenAwarenessDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)SemenAwarenessDataToCache:(Byte *)data {
    int virusValue = data[0];
    Byte redMessage = data[1];
    int build = data[2];
    for (int i = build; i < build + virusValue; i++) {
        int value = data[i] + redMessage;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[build + virusValue] = 0;
    return data + build;
}

- (NSString *)StringFromSemenAwarenessData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SemenAwarenessDataToCache:data]];
}

//: ic_none_LogList
- (NSString *)showFactorUrl {
    if (!_showFactorUrl) {
		NSArray<NSString *> *origin = @[@"15", @"61", @"12", @"149", @"85", @"50", @"65", @"193", @"113", @"60", @"111", @"96", @"44", @"38", @"34", @"49", @"50", @"49", @"40", @"34", @"15", @"50", @"42", @"15", @"44", @"54", @"55", @"131"];
		NSData *data = [SemenAwarenessData SemenAwarenessDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showFactorUrl = [self StringFromSemenAwarenessData:value];
    }
    return _showFactorUrl;
}

//: #000000
- (NSString *)m_idealFormat {
    if (!_m_idealFormat) {
		NSArray<NSString *> *origin = @[@"7", @"45", @"12", @"229", @"163", @"73", @"89", @"190", @"158", @"221", @"242", @"235", @"246", @"3", @"3", @"3", @"3", @"3", @"3", @"180"];
		NSData *data = [SemenAwarenessData SemenAwarenessDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_idealFormat = [self StringFromSemenAwarenessData:value];
    }
    return _m_idealFormat;
}

//: #F6F7FA
- (NSString *)notiGateName {
    if (!_notiGateName) {
		NSArray<NSString *> *origin = @[@"7", @"50", @"8", @"123", @"51", @"52", @"93", @"247", @"241", @"20", @"4", @"20", @"5", @"20", @"15", @"224"];
		NSData *data = [SemenAwarenessData SemenAwarenessDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiGateName = [self StringFromSemenAwarenessData:value];
    }
    return _notiGateName;
}

//: my_log
- (NSString *)mainLineName {
    if (!_mainLineName) {
		NSArray<NSString *> *origin = @[@"6", @"85", @"3", @"24", @"36", @"10", @"23", @"26", @"18", @"146"];
		NSData *data = [SemenAwarenessData SemenAwarenessDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainLineName = [self StringFromSemenAwarenessData:value];
    }
    return _mainLineName;
}

//: back_arrow_bl
- (NSString *)dreamTitleMessage {
    if (!_dreamTitleMessage) {
		NSArray<NSString *> *origin = @[@"13", @"75", @"4", @"115", @"23", @"22", @"24", @"32", @"20", @"22", @"39", @"39", @"36", @"44", @"20", @"23", @"33", @"52"];
		NSData *data = [SemenAwarenessData SemenAwarenessDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamTitleMessage = [self StringFromSemenAwarenessData:value];
    }
    return _dreamTitleMessage;
}

//: group_info_activity_without
- (NSString *)appAggressiveUrl {
    if (!_appAggressiveUrl) {
		NSArray<NSString *> *origin = @[@"27", @"78", @"9", @"169", @"110", @"223", @"45", @"28", @"77", @"25", @"36", @"33", @"39", @"34", @"17", @"27", @"32", @"24", @"33", @"17", @"19", @"21", @"38", @"27", @"40", @"27", @"38", @"43", @"17", @"41", @"27", @"38", @"26", @"33", @"39", @"38", @"44"];
		NSData *data = [SemenAwarenessData SemenAwarenessDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appAggressiveUrl = [self StringFromSemenAwarenessData:value];
    }
    return _appAggressiveUrl;
}

//: #999999
- (NSString *)appSituationRangeIdent {
    if (!_appSituationRangeIdent) {
		NSArray<NSString *> *origin = @[@"7", @"82", @"4", @"92", @"209", @"231", @"231", @"231", @"231", @"231", @"231", @"185"];
		NSData *data = [SemenAwarenessData SemenAwarenessDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appSituationRangeIdent = [self StringFromSemenAwarenessData:value];
    }
    return _appSituationRangeIdent;
}

//: 日志项目 %ld
- (NSString *)mRedTitle {
    if (!_mRedTitle) {
		NSArray<NSString *> *origin = @[@"16", @"47", @"9", @"182", @"99", @"200", @"89", @"214", @"73", @"183", @"104", @"118", @"182", @"144", @"104", @"186", @"114", @"138", @"184", @"108", @"127", @"241", @"246", @"61", @"53", @"154"];
		NSData *data = [SemenAwarenessData SemenAwarenessDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mRedTitle = [self StringFromSemenAwarenessData:value];
    }
    return _mRedTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColumnViewController.m
//  Riverla
//
//  Created by mac on 2025/4/18.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "MyLogViewController.h"
#import "ColumnViewController.h"

//: @interface MyLogViewController ()<UITableViewDelegate,UITableViewDataSource>
@interface ColumnViewController ()<UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;
//: @property (nonatomic, strong) NSMutableArray *data;
@property (nonatomic, strong) NSMutableArray *data;
//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation MyLogViewController
@implementation ColumnViewController

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
//: - (void)backAction{
- (void)numberernationalTing{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}
//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor status:[SemenAwarenessData sharedInstance].notiGateName];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice statusOrLevel]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[SemenAwarenessData sharedInstance].dreamTitleMessage] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(numberernationalTing) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice statusOrLevel]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#000000"];
    labtitle.textColor = [UIColor status:[SemenAwarenessData sharedInstance].m_idealFormat];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [BusyLanguageManager getTextWithKey:@"my_log"];
    labtitle.text = [SendName streetSmart:[SemenAwarenessData sharedInstance].mainLineName];
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-15) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice statusOrLevel])+15, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice statusOrLevel])-15) style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];

    //: self.data = [NSMutableArray array];
    self.data = [NSMutableArray array];
    //: [self loadData];
    [self refresh];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
}

//: - (void)loadData {
- (void)refresh {
    // 这里可以加载其他类型的数据，或者显示空状态
    //: if (self.data.count == 0) {
    if (self.data.count == 0) {
        //: self.defView.hidden = NO;
        self.defView.hidden = NO;
        //: self.tableView.hidden = YES;
        self.tableView.hidden = YES;
    //: } else {
    } else {
        //: self.defView.hidden = YES;
        self.defView.hidden = YES;
        //: self.tableView.hidden = NO;
        self.tableView.hidden = NO;
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    }
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return self.data.count;
    return self.data.count;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: return 60;
    return 60;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 10;
    return 10;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
}

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: static NSString *cellIdentifier = @"LogCell";
    static NSString *cellIdentifier = @"LogCell";
    //: UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    //: if (!cell) {
    if (!cell) {
        //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        //: cell.backgroundColor = [UIColor whiteColor];
        cell.backgroundColor = [UIColor whiteColor];
        //: cell.layer.cornerRadius = 8;
        cell.layer.cornerRadius = 8;
        //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }

    // 配置cell内容
    //: cell.textLabel.text = [NSString stringWithFormat:@"日志项目 %ld", (long)indexPath.section + 1];
    cell.textLabel.text = [NSString stringWithFormat:[SemenAwarenessData sharedInstance].mRedTitle, (long)indexPath.section + 1];

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    // 处理点击事件
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice statusOrLevel])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        //: _defView.hidden = YES;
        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_LogList"];
        defImg.image = [UIImage imageNamed:[SemenAwarenessData sharedInstance].showFactorUrl];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];

        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor status:[SemenAwarenessData sharedInstance].appSituationRangeIdent];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [BusyLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [SendName streetSmart:[SemenAwarenessData sharedInstance].appAggressiveUrl];
    }
    //: return _defView;
    return _defView;
}

//: @end
@end
