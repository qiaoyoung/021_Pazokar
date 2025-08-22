
#import <Foundation/Foundation.h>

typedef struct {
    Byte cramFull;
    Byte *touristValue;
    unsigned int product;
} StructWoodenData;

@interface WoodenData : NSObject

+ (instancetype)sharedInstance;

//: ZMONTeamCartSet%ld
@property (nonatomic, copy) NSString *dream_resentIdent;

//: back_arrow_bl
@property (nonatomic, copy) NSString *user_consciousnessName;

//: #F6F7FA
@property (nonatomic, copy) NSString *show_respectivelyLiableNameStr;

//: contact_list_activity_complete
@property (nonatomic, copy) NSString *noti_producerBeerGivenMessage;

//: #02D8C9
@property (nonatomic, copy) NSString *mainGreenMakePath;

@end

@implementation WoodenData

+ (instancetype)sharedInstance {
    static WoodenData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)WoodenDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)WoodenDataToByte:(StructWoodenData *)data {
    for (int i = 0; i < data->product; i++) {
        data->touristValue[i] ^= data->cramFull;
    }
    data->touristValue[data->product] = 0;
    return data->touristValue;
}

- (NSString *)StringFromWoodenData:(StructWoodenData *)data {
    return [NSString stringWithUTF8String:(char *)[self WoodenDataToByte:data]];
}

//: #02D8C9
- (NSString *)mainGreenMakePath {
    if (!_mainGreenMakePath) {
		NSArray<NSString *> *origin = @[@"145", @"130", @"128", @"246", @"138", @"241", @"139", @"208"];
		NSData *data = [WoodenData WoodenDataToData:origin];
        StructWoodenData value = (StructWoodenData){178, (Byte *)data.bytes, 7};
        _mainGreenMakePath = [self StringFromWoodenData:&value];
    }
    return _mainGreenMakePath;
}

//: back_arrow_bl
- (NSString *)user_consciousnessName {
    if (!_user_consciousnessName) {
		NSArray<NSString *> *origin = @[@"77", @"78", @"76", @"68", @"112", @"78", @"93", @"93", @"64", @"88", @"112", @"77", @"67", @"23"];
		NSData *data = [WoodenData WoodenDataToData:origin];
        StructWoodenData value = (StructWoodenData){47, (Byte *)data.bytes, 13};
        _user_consciousnessName = [self StringFromWoodenData:&value];
    }
    return _user_consciousnessName;
}

//: ZMONTeamCartSet%ld
- (NSString *)dream_resentIdent {
    if (!_dream_resentIdent) {
		NSArray<NSString *> *origin = @[@"149", @"130", @"128", @"129", @"155", @"170", @"174", @"162", @"140", @"174", @"189", @"187", @"156", @"170", @"187", @"234", @"163", @"171", @"33"];
		NSData *data = [WoodenData WoodenDataToData:origin];
        StructWoodenData value = (StructWoodenData){207, (Byte *)data.bytes, 18};
        _dream_resentIdent = [self StringFromWoodenData:&value];
    }
    return _dream_resentIdent;
}

//: contact_list_activity_complete
- (NSString *)noti_producerBeerGivenMessage {
    if (!_noti_producerBeerGivenMessage) {
		NSArray<NSString *> *origin = @[@"191", @"179", @"178", @"168", @"189", @"191", @"168", @"131", @"176", @"181", @"175", @"168", @"131", @"189", @"191", @"168", @"181", @"170", @"181", @"168", @"165", @"131", @"191", @"179", @"177", @"172", @"176", @"185", @"168", @"185", @"126"];
		NSData *data = [WoodenData WoodenDataToData:origin];
        StructWoodenData value = (StructWoodenData){220, (Byte *)data.bytes, 30};
        _noti_producerBeerGivenMessage = [self StringFromWoodenData:&value];
    }
    return _noti_producerBeerGivenMessage;
}

//: #F6F7FA
- (NSString *)show_respectivelyLiableNameStr {
    if (!_show_respectivelyLiableNameStr) {
		NSArray<NSString *> *origin = @[@"202", @"175", @"223", @"175", @"222", @"175", @"168", @"150"];
		NSData *data = [WoodenData WoodenDataToData:origin];
        StructWoodenData value = (StructWoodenData){233, (Byte *)data.bytes, 7};
        _show_respectivelyLiableNameStr = [self StringFromWoodenData:&value];
    }
    return _show_respectivelyLiableNameStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  StateViewController.m
// Case
//
//  Created by Netease on 2019/7/16.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyTeamCardSelectedViewController.h"
#import "StateViewController.h"
//: #import "BusyGlobalMacro.h"
#import "BusyGlobalMacro.h"
//: #import "BusyTeamCartSetTableViewCell.h"
#import "RowTitleView.h"

//: @interface BusyTeamCardSelectedViewController ()<UITableViewDelegate, UITableViewDataSource>
@interface StateViewController ()<UITableViewDelegate, UITableViewDataSource>

//: @property (nonatomic, strong) NSMutableArray <id <BusyKitSelectCardData>> *datas;
@property (nonatomic, strong) NSMutableArray <id <BusyKitSelectCardData>> *datas;

//: @property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UITableView *tableView;

//: @property (nonatomic, assign) NSInteger selectedIndex;
@property (nonatomic, assign) NSInteger selectedIndex;

//: @property (nonatomic, assign) NSInteger oriSelectedIndex;
@property (nonatomic, assign) NSInteger oriSelectedIndex;

//: @property (nonatomic, strong) UIView *footView;
@property (nonatomic, strong) UIView *footView;

//: @end
@end

//: @implementation BusyTeamCardSelectedViewController
@implementation StateViewController

//: + (instancetype)instanceWithTitle:(NSString *)title
+ (instancetype)title:(NSString *)title
                            //: items:(NSMutableArray <id <BusyKitSelectCardData>> *)items
                            by:(NSMutableArray <id <BusyKitSelectCardData>> *)items
                           //: result:(NIMSelectedCompletion)result {
                           user:(NIMSelectedCompletion)result {
    //: BusyTeamCardSelectedViewController *vc = [[BusyTeamCardSelectedViewController alloc] initWithItems:items];
    StateViewController *vc = [[StateViewController alloc] initWithRecent:items];
    //: vc.titleString = title ?: @"";
    vc.titleString = title ?: @"";
    //: vc.resultHandle = result;
    vc.resultHandle = result;
    //: return vc;
    return vc;
}

//: - (instancetype)initWithItems:(NSMutableArray <id <BusyKitSelectCardData>> *)items {
- (instancetype)initWithRecent:(NSMutableArray <id <BusyKitSelectCardData>> *)items {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _datas = items;
        _datas = items;
        //: _selectedIndex = -1;
        _selectedIndex = -1;
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [items enumerateObjectsUsingBlock:^(id<BusyKitSelectCardData> _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [items enumerateObjectsUsingBlock:^(id<BusyKitSelectCardData> _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: if (obj.selected) {
            if (obj.selected) {
                //: weakSelf.selectedIndex = idx;
                weakSelf.selectedIndex = idx;
            }
        //: }];
        }];
        //: _oriSelectedIndex = _selectedIndex;
        _oriSelectedIndex = _selectedIndex;
    }
    //: return self;
    return self;
}

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
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor status:[WoodenData sharedInstance].show_respectivelyLiableNameStr];
//    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//    bg.image = [UIImage imageNamed:@"common_bg"];
//    [self.view addSubview:bg];

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice statusOrLevel]))];
    //: [self.view addSubview:bgView];
    [self.view addSubview:bgView];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice statusOrLevel]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[WoodenData sharedInstance].user_consciousnessName] forState:(UIControlStateNormal)];
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
    //: labtitle.text = _titleString ?: @"";
    labtitle.text = _titleString ?: @"";
    //: [bgView addSubview:labtitle];
    [bgView addSubview:labtitle];

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.tableFooterView = self.footView;
    self.tableView.tableFooterView = self.footView;
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
//    _tableView.frame = self.view.bounds;
}

//: #pragma mark - Action
#pragma mark - Action
//: - (void)onDone{
- (void)addImage{
    //: if (_oriSelectedIndex != _selectedIndex) {
    if (_oriSelectedIndex != _selectedIndex) {
        //: id <BusyKitSelectCardData> bodyData = _datas[_selectedIndex];
        id <BusyKitSelectCardData> bodyData = _datas[_selectedIndex];
        //: if (_resultHandle) {
        if (_resultHandle) {
            //: _resultHandle(bodyData);
            _resultHandle(bodyData);
        }
    }
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: #pragma mark - Delegate
#pragma mark - Delegate
//- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    CGFloat cornerRadius = 8.f;// 圆角弧度半径
//    // 设置cell的背景色为透明，如果不设置这个的话，则原来的背景色不会被覆盖
//    cell.backgroundColor = UIColor.clearColor;
//
//    // 创建一个shapeLayer
//    CAShapeLayer *layer = [[CAShapeLayer alloc] init];
//    CAShapeLayer *backgroundLayer = [[CAShapeLayer alloc] init]; //显示选中
//    // 创建一个可变的图像Path句柄，该路径用于保存绘图信息
//    CGMutablePathRef pathRef = CGPathCreateMutable();
//    // 获取cell的size
//    // 第一个参数,是整个 cell 的 bounds, 第二个参数是距左右两端的距离,第三个参数是距上下两端的距离
//    CGRect bounds = CGRectInset(cell.bounds, 0, 0);
//
//    // CGRectGetMinY：返回对象顶点坐标
//    // CGRectGetMaxY：返回对象底点坐标
//    // CGRectGetMinX：返回对象左边缘坐标
//    // CGRectGetMaxX：返回对象右边缘坐标
//    // CGRectGetMidX: 返回对象中心点的X坐标
//    // CGRectGetMidY: 返回对象中心点的Y坐标
//
//    NSInteger row = indexPath.row;
//    NSInteger lastRow =[tableView numberOfRowsInSection:indexPath.section] - 1;
//
//    //第一行
//   if(row == 0)
//    {
//        // 初始起点为cell的左下角坐标
//        CGPathMoveToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMaxY(bounds));
//        // 起始坐标为左下角，设为p，（CGRectGetMinX(bounds), CGRectGetMinY(bounds)）为左上角的点，设为p1(x1,y1)，(CGRectGetMidX(bounds), CGRectGetMinY(bounds))为顶部中点的点，设为p2(x2,y2)。然后连接p1和p2为一条直线l1，连接初始点p到p1成一条直线l，则在两条直线相交处绘制弧度为r的圆角。
//        CGPathAddArcToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMinY(bounds), CGRectGetMidX(bounds), CGRectGetMinY(bounds), cornerRadius);
//
//        CGPathAddArcToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMinY(bounds), CGRectGetMaxX(bounds), CGRectGetMidY(bounds), cornerRadius);
//        // 终点坐标为右下角坐标点，把绘图信息都放到路径中去,根据这些路径就构成了一块区域了
//        CGPathAddLineToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds));
//    }
//    //最后一行
//    else if (row == lastRow)
//    {
//        // 初始起点为cell的左上角坐标
//        CGPathMoveToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMinY(bounds));
//        CGPathAddArcToPoint(pathRef, nil, CGRectGetMinX(bounds), CGRectGetMaxY(bounds), CGRectGetMidX(bounds), CGRectGetMaxY(bounds), cornerRadius);
//        CGPathAddArcToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds), CGRectGetMaxX(bounds), CGRectGetMidY(bounds), cornerRadius);
//        // 添加一条直线，终点坐标为右下角坐标点并放到路径中去
//        CGPathAddLineToPoint(pathRef, nil, CGRectGetMaxX(bounds), CGRectGetMinY(bounds));
//        
//        cell.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        cell.layer.shadowOffset = CGSizeMake(0,3);
//        cell.layer.shadowOpacity = 1;
//        cell.layer.shadowRadius = 0;
//    }else
//    {
//        //添加cell的rectangle信息到path中（不包括圆角）
//        CGPathAddRect(pathRef, nil, bounds);
//    }
//
//    // 把已经绘制好的可变图像路径赋值给图层，然后图层根据这图像path进行图像渲染render
//    layer.path = pathRef;
//    backgroundLayer.path = pathRef;
//    // 注意：但凡通过Quartz2D中带有creat/copy/retain方法创建出来的值都必须要释放
//    CFRelease(pathRef);
//    // 按照shape layer的path填充颜色，类似于渲染render
//    // layer.fillColor = [UIColor colorWithWhite:1.f alpha:0.8f].CGColor;
//    layer.fillColor = [UIColor whiteColor].CGColor;
//    // view大小与cell一致
//    UIView *roundView = [[UIView alloc] initWithFrame:bounds];
//    // 添加自定义圆角后的图层到roundView中
//    [roundView.layer insertSublayer:layer atIndex:0];
//    roundView.backgroundColor = UIColor.clearColor;
//    // cell的背景view
//    cell.backgroundView = roundView;
//
//}
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return _datas.count;
    return _datas.count;
}
//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

        //: return 1;
        return 1;

}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: return 56.0f;
    return 56.0f;
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

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: id <BusyKitSelectCardData> bodyData = _datas[indexPath.section];
    id <BusyKitSelectCardData> bodyData = _datas[indexPath.section];

//    RowTitleView *cell = [RowTitleView cellWithTableView:tableView];
    //: NSString *identifier = [NSString stringWithFormat:@"ZMONTeamCartSet%ld",(long)indexPath.row];
    NSString *identifier = [NSString stringWithFormat:[WoodenData sharedInstance].dream_resentIdent,(long)indexPath.row];
    //: BusyTeamCartSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    RowTitleView *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[BusyTeamCartSetTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[RowTitleView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }

    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: cell.iconImageView.image = [UIImage imageNamed:bodyData.img];
    cell.iconImageView.image = [UIImage imageNamed:bodyData.img];
    //: cell.titleLabel.text = bodyData.title;
    cell.titleLabel.text = bodyData.title;
    //: cell.arrowsImageView.hidden = ![bodyData selected];
    cell.arrowsImageView.hidden = ![bodyData selected];

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    //: _selectedIndex = indexPath.section;
    _selectedIndex = indexPath.section;
    //: [_datas enumerateObjectsUsingBlock:^(id<BusyKitSelectCardData> _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [_datas enumerateObjectsUsingBlock:^(id<BusyKitSelectCardData> _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: BOOL selected = (idx == indexPath.section);
        BOOL selected = (idx == indexPath.section);
        //: [obj setSelected:selected];
        [obj setSelected:selected];
    //: }];
    }];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])) style:UITableViewStyleGrouped];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice statusOrLevel]), [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice statusOrLevel])) style:UITableViewStyleGrouped];
        //: _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
//        _tableView.scrollEnabled = NO;
//        _tableView.layer.cornerRadius = 12;
        //: _tableView.delegate = self;
        _tableView.delegate = self;
        //: _tableView.dataSource = self;
        _tableView.dataSource = self;
        //: _tableView.backgroundColor = [UIColor clearColor];
        _tableView.backgroundColor = [UIColor clearColor];
    }
    //: return _tableView;
    return _tableView;
}

//: - (UIView *)footView{
- (UIView *)footView{
    //: if(!_footView){
    if(!_footView){
        //: _footView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-30, 68)];
        _footView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-30, 68)];

        //: UIButton *btnClear = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnClear = [UIButton buttonWithType:UIButtonTypeCustom];
//        btnClear.backgroundColor = [UIColor whiteColor];
//        btnClear.layer.cornerRadius = 24;
        //: btnClear.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-30, 48);
        btnClear.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-30, 48);
        //: [btnClear setTitle:[BusyLanguageManager getTextWithKey:@"contact_list_activity_complete"] forState:UIControlStateNormal];
        [btnClear setTitle:[SendName streetSmart:[WoodenData sharedInstance].noti_producerBeerGivenMessage] forState:UIControlStateNormal];
        //: [btnClear addTarget:self action:@selector(onDone) forControlEvents:UIControlEventTouchUpInside];
        [btnClear addTarget:self action:@selector(addImage) forControlEvents:UIControlEventTouchUpInside];
        //: [_footView addSubview:btnClear];
        [_footView addSubview:btnClear];
        //: btnClear.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        btnClear.backgroundColor = [UIColor status:[WoodenData sharedInstance].mainGreenMakePath];
        //: btnClear.layer.cornerRadius = 24;
        btnClear.layer.cornerRadius = 24;
//        btnClear.layer.shadowColor = DeepBtnColor.CGColor;
//        btnClear.layer.shadowOffset = CGSizeMake(0,3);
//        btnClear.layer.shadowOpacity = 1;
//        btnClear.layer.shadowRadius = 0;


    }
    //: return _footView;
    return _footView;
}

//: @end
@end
