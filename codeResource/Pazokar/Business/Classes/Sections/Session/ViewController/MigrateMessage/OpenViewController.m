
#import <Foundation/Foundation.h>

NSString *StringFromHqData(Byte *data);


//: 未找到消息备份。请先在旧设备上导出消息记录
Byte main_posseId[] = {32, 63, 85, 13, 186, 131, 96, 37, 228, 102, 119, 182, 173, 59, 241, 255, 59, 222, 19, 58, 221, 5, 59, 11, 221, 59, 214, 4, 58, 249, 220, 57, 16, 18, 56, 213, 215, 61, 4, 12, 58, 218, 221, 58, 241, 253, 59, 236, 252, 61, 3, 19, 58, 249, 220, 57, 13, 223, 58, 4, 17, 58, 220, 15, 59, 11, 221, 59, 214, 4, 61, 3, 5, 58, 18, 234, 181};

//: 本地消息导出
Byte m_redIdent[] = {31, 18, 88, 9, 126, 60, 162, 225, 146, 62, 244, 4, 61, 244, 8, 62, 14, 224, 62, 217, 7, 61, 7, 20, 61, 223, 18, 51};

//: action
Byte user_backgroundStr[] = {54, 6, 43, 4, 140, 142, 159, 148, 154, 153, 50};

//: 发生了错误
Byte k_penalLogicTitle[] = {84, 15, 70, 7, 83, 129, 38, 43, 213, 215, 45, 218, 229, 42, 0, 204, 47, 218, 223, 46, 245, 245, 44};

//: 本地消息将存至云端，会耗费较长时间
Byte userHonestlyName[] = {87, 51, 83, 7, 187, 43, 42, 57, 239, 255, 56, 239, 3, 57, 9, 219, 57, 212, 2, 56, 3, 217, 56, 0, 235, 59, 218, 6, 55, 13, 228, 58, 254, 2, 66, 15, 223, 55, 15, 237, 59, 211, 234, 59, 7, 12, 59, 17, 214, 60, 232, 18, 57, 234, 9, 60, 234, 7, 248};

//: row
Byte mainRecordSideUrl[] = {31, 3, 95, 12, 66, 210, 246, 246, 215, 48, 56, 93, 209, 206, 214, 158};

//: onTouchImportLocalMessages:
Byte app_scapeFormat[] = {93, 27, 47, 11, 62, 194, 45, 184, 140, 3, 165, 158, 157, 131, 158, 164, 146, 151, 120, 156, 159, 158, 161, 163, 123, 158, 146, 144, 155, 124, 148, 162, 162, 144, 150, 148, 162, 105, 82};

//: 继续导出
Byte mFainHandleFormat[] = {31, 12, 27, 13, 183, 205, 169, 66, 60, 38, 106, 70, 90, 2, 214, 194, 2, 214, 200, 0, 202, 215, 0, 162, 213, 61};

//: title
Byte kFactorText[] = {85, 5, 17, 12, 43, 10, 237, 12, 204, 180, 193, 146, 133, 122, 133, 125, 118, 201};

//: 确定导出本地消息？
Byte dreamNameStr[] = {55, 27, 44, 9, 234, 37, 100, 96, 3, 19, 205, 218, 17, 218, 198, 17, 219, 232, 17, 179, 230, 18, 200, 216, 17, 200, 220, 18, 226, 180, 18, 173, 219, 27, 232, 203, 34};

//: 本地消息迁移
Byte dreamDecorateWeepPath[] = {12, 18, 91, 12, 219, 223, 65, 170, 155, 35, 154, 1, 65, 247, 7, 64, 247, 11, 65, 17, 227, 65, 220, 10, 67, 26, 220, 66, 2, 22, 220};

//: 本地消息导入
Byte k_weepMallFormat[] = {8, 18, 86, 5, 36, 60, 242, 2, 59, 242, 6, 60, 12, 222, 60, 215, 5, 59, 5, 18, 59, 219, 251, 122};

//: onTouchExportLocalMessages:
Byte dream_replyFormat[] = {54, 27, 58, 12, 245, 114, 188, 20, 56, 24, 247, 143, 169, 168, 142, 169, 175, 157, 162, 127, 178, 170, 169, 172, 174, 134, 169, 157, 155, 166, 135, 159, 173, 173, 155, 161, 159, 173, 116, 130};

//: headerTitle
Byte appPosseMessage[] = {66, 11, 38, 9, 138, 73, 80, 42, 108, 142, 139, 135, 138, 139, 152, 122, 143, 154, 146, 139, 19};

// __DEBUG__
// __CLOSE_PRINT__
//
//  OpenViewController.m
//  NIM
//
//  Created by Sampson on 2018/12/10.
//  Copyright © 2018 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMigrateMessageViewController.h"
#import "OpenViewController.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "FFFCommonTableDelegate.h"
#import "MessageDelegate.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESExportMessageViewController.h"
#import "SmartViewController.h"
//: #import "NTESImportMessageViewController.h"
#import "OnViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"

//: @interface NTESMigrateMessageViewController ()
@interface OpenViewController ()

//: @property (nonatomic,copy) NSArray *data;
@property (nonatomic,copy) NSArray *data;
//: @property (nonatomic,strong) FFFCommonTableDelegate *delegator;
@property (nonatomic,strong) MessageDelegate *delegator;

//: @end
@end

//: @implementation NTESMigrateMessageViewController
@implementation OpenViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.title = @"本地消息迁移".ntes_localized;
    self.title = StringFromHqData(dreamDecorateWeepPath).untilNtes;
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self buildData];
    [self mode];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: self.delegator = [[FFFCommonTableDelegate alloc] initWithTableData:^NSArray *{
    self.delegator = [[MessageDelegate alloc] initWithFrame:^NSArray *{
        //: return wself.data;
        return wself.data;
    //: }];
    }];

    //: self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    //: self.tableView.delegate = self.delegator;
    self.tableView.delegate = self.delegator;
    //: self.tableView.dataSource = self.delegator;
    self.tableView.dataSource = self.delegator;
}

//: - (void)viewDidLayoutSubviews {
- (void)viewDidLayoutSubviews {
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
    //: CGFloat heightAdjust = self.view.safeAreaInsets.bottom;
    CGFloat heightAdjust = self.view.safeAreaInsets.bottom;
    //: const CGRect frame = self.view.frame;
    const CGRect frame = self.view.frame;
    //: self.tableView.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame) - heightAdjust);
    self.tableView.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame) - heightAdjust);

}

//: #pragma mark --
#pragma mark --
//: - (void)buildData {
- (void)mode {
    //: NSArray *data = @[
    NSArray *data = @[
                      //: @{
                      @{
                          //: @"headerTitle" : @"",
                          StringFromHqData(appPosseMessage) : @"",
                          //: @"row" : @[
                          StringFromHqData(mainRecordSideUrl) : @[
                                  //: @{
                                  @{
                                      //: @"title" : @"本地消息导出".ntes_localized,
                                      StringFromHqData(kFactorText) : StringFromHqData(m_redIdent).untilNtes,
                                      //: @"action" : @"onTouchExportLocalMessages:",
                                      StringFromHqData(user_backgroundStr) : StringFromHqData(dream_replyFormat),
                                      //: },
                                      },
                                  //: @{
                                  @{
                                      //: @"title" : @"本地消息导入".ntes_localized,
                                      StringFromHqData(kFactorText) : StringFromHqData(k_weepMallFormat).untilNtes,
                                      //: @"action" : @"onTouchImportLocalMessages:",
                                      StringFromHqData(user_backgroundStr) : StringFromHqData(app_scapeFormat),
                                      //: },
                                      },
                                  ]
                          }
                      //: ];
                      ];
    //: self.data = [NIMCommonTableSection sectionsWithData:data];
    self.data = [ContentTagSection member:data];
}

//: #pragma mark -- cellAction
#pragma mark -- cellAction
//: - (void)onTouchExportLocalMessages:(id)sender {
- (void)anyTing:(id)sender {
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"确定导出本地消息？".ntes_localized message:@"本地消息将存至云端，会耗费较长时间".ntes_localized preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:StringFromHqData(dreamNameStr).untilNtes message:StringFromHqData(userHonestlyName).untilNtes preferredStyle:UIAlertControllerStyleAlert];

    // 返回
    //: UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"返回".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"返回".untilNtes style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [alertController dismissViewControllerAnimated:YES completion:nil];
        [alertController dismissViewControllerAnimated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionCancel];
    [alertController addAction:actionCancel];

    // 导出
    //: UIAlertAction *actionExport = [UIAlertAction actionWithTitle:@"继续导出".ntes_localized style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *actionExport = [UIAlertAction actionWithTitle:StringFromHqData(mFainHandleFormat).untilNtes style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        //: NTESExportMessageViewController *exportController = [[NTESExportMessageViewController alloc] init];
        SmartViewController *exportController = [[SmartViewController alloc] init];
        //: UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:exportController];
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:exportController];
        //: [self presentViewController:navController animated:YES completion:nil];
        [self presentViewController:navController animated:YES completion:nil];
    //: }];
    }];
    //: [alertController addAction:actionExport];
    [alertController addAction:actionExport];

    //
    //: [self presentViewController:alertController animated:YES completion:nil];
    [self presentViewController:alertController animated:YES completion:nil];
}

//: - (void)onTouchImportLocalMessages:(id)sender {
- (void)messages:(id)sender {
    // check message
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    //: [[NIMSDK sharedSDK].conversationManager fetchMigrateMessageInfo:^(NSError * _Nullable error, NSString * _Nullable remoteFilePath, NSString * _Nullable secureKey)
    [[NIMSDK sharedSDK].conversationManager fetchMigrateMessageInfo:^(NSError * _Nullable error, NSString * _Nullable remoteFilePath, NSString * _Nullable secureKey)
    {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];

        //: if (error) {
        if (error) {
            //: [self onGetRemoteHistoryFailed:@"发生了错误".ntes_localized];
            [self refresh:StringFromHqData(k_penalLogicTitle).untilNtes];
            //: return;
            return;
        }
        //: if (remoteFilePath.length == 0) {
        if (remoteFilePath.length == 0) {
            //: [self onGetRemoteHistoryFailed:@"未找到消息备份。请先在旧设备上导出消息记录".ntes_localized];
            [self refresh:StringFromHqData(main_posseId).untilNtes];
            //: return;
            return;
        }

        //: [self onGetHistorySuccessWithRemotePath:remoteFilePath secureKey:secureKey];
        [self checked:remoteFilePath view:secureKey];
    //: }];
    }];
}

//: #pragma mark -- private
#pragma mark -- private
//: - (void)onGetHistorySuccessWithRemotePath:(NSString *)remotePath secureKey:(NSString *)secureKey {
- (void)checked:(NSString *)remotePath view:(NSString *)secureKey {
    //: NTESImportMessageViewController *importController = [[NTESImportMessageViewController alloc] init];
    OnViewController *importController = [[OnViewController alloc] init];
    //: importController.remoteFilePath = remotePath;
    importController.remoteFilePath = remotePath;
    //: importController.secureKey = secureKey;
    importController.secureKey = secureKey;
    //: UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:importController];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:importController];
    //: [self presentViewController:navController animated:YES completion:nil];
    [self presentViewController:navController animated:YES completion:nil];
}

//: - (void)onGetRemoteHistoryFailed:(NSString *)errorDescription {
- (void)refresh:(NSString *)errorDescription {
    //: [self.view makeToast:errorDescription duration:3.0 position:CSToastPositionCenter];
    [self.view makeToast:errorDescription duration:3.0 position:CSToastPositionCenter];
}

//: @end
@end

Byte * HqDataToCache(Byte *data) {
    int openEcru = data[0];
    int enemySemen = data[1];
    Byte chapterBoar = data[2];
    int pathMall = data[3];
    if (!openEcru) return data + pathMall;
    for (int i = pathMall; i < pathMall + enemySemen; i++) {
        int value = data[i] - chapterBoar;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[pathMall + enemySemen] = 0;
    return data + pathMall;
}

NSString *StringFromHqData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HqDataToCache(data)];
}
