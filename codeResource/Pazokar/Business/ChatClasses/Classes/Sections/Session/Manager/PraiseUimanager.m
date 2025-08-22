
#import <Foundation/Foundation.h>

typedef struct {
    Byte shuttleEnemy;
    Byte *ambitious;
    unsigned int cognisant;
	int old;
	int psychologist;
	int numerous;
} StructWhetherData;

@interface WhetherData : NSObject

@end

@implementation WhetherData

+ (NSData *)WhetherDataToData:(NSString *)value {
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

+ (Byte *)WhetherDataToByte:(StructWhetherData *)data {
    for (int i = 0; i < data->cognisant; i++) {
        data->ambitious[i] ^= data->shuttleEnemy;
    }
    data->ambitious[data->cognisant] = 0;
	if (data->cognisant >= 3) {
		data->old = data->ambitious[0];
		data->psychologist = data->ambitious[1];
		data->numerous = data->ambitious[2];
	}
    return data->ambitious;
}

+ (NSString *)StringFromWhetherData:(StructWhetherData *)data {
    return [NSString stringWithUTF8String:(char *)[self WhetherDataToByte:data]];
}

//: 确认转发给
+ (NSString *)kFiveName {
    /* static */ NSString *kFiveName = nil;
    if (!kFiveName) {
		NSString *origin = @"296F6026606A2673622B415F29755718";
		NSData *data = [WhetherData WhetherDataToData:origin];
        StructWhetherData value = (StructWhetherData){206, (Byte *)data.bytes, 15, 229, 200, 145};
        kFiveName = [self StringFromWhetherData:&value];
    }
    return kFiveName;
}

//: 已发送
+ (NSString *)userOverageTransportationId {
    /* static */ NSString *userOverageTransportationId = nil;
    if (!userOverageTransportationId) {
		NSString *origin = @"500207503A245C35343E";
		NSData *data = [WhetherData WhetherDataToData:origin];
        StructWhetherData value = (StructWhetherData){181, (Byte *)data.bytes, 9, 7, 128, 168};
        userOverageTransportationId = [self StringFromWhetherData:&value];
    }
    return userOverageTransportationId;
}

//: 选择会话类型
+ (NSString *)dreamAdequateStr {
    /* static */ NSString *dreamAdequateStr = nil;
    if (!dreamAdequateStr) {
		NSString *origin = @"2049402F42602D75532166542E78722C574284";
		NSData *data = [WhetherData WhetherDataToData:origin];
        StructWhetherData value = (StructWhetherData){201, (Byte *)data.bytes, 18, 216, 201, 183};
        dreamAdequateStr = [self StringFromWhetherData:&value];
    }
    return dreamAdequateStr;
}

//: %@.code:%zd
+ (NSString *)show_statueFormat {
    /* static */ NSString *show_statueFormat = nil;
    if (!show_statueFormat) {
		NSString *origin = @"B3D6B8F5F9F2F3ACB3ECF2DF";
		NSData *data = [WhetherData WhetherDataToData:origin];
        StructWhetherData value = (StructWhetherData){150, (Byte *)data.bytes, 11, 170, 128, 45};
        show_statueFormat = [self StringFromWhetherData:&value];
    }
    return show_statueFormat;
}

//: contact_fragment_group
+ (NSString *)showPiMessage {
    /* static */ NSString *showPiMessage = nil;
    if (!showPiMessage) {
		NSString *origin = @"5458594356544368514556505A52594368504558424726";
		NSData *data = [WhetherData WhetherDataToData:origin];
        StructWhetherData value = (StructWhetherData){55, (Byte *)data.bytes, 22, 206, 48, 209};
        showPiMessage = [self StringFromWhetherData:&value];
    }
    return showPiMessage;
}

//: 确认转发
+ (NSString *)user_cabinTitle {
    /* static */ NSString *user_cabinTitle = nil;
    if (!user_cabinTitle) {
		NSString *origin = @"81C7C88EC8C28EDBCA83E9F71F";
		NSData *data = [WhetherData WhetherDataToData:origin];
        StructWhetherData value = (StructWhetherData){102, (Byte *)data.bytes, 12, 219, 222, 1};
        user_cabinTitle = [self StringFromWhetherData:&value];
    }
    return user_cabinTitle;
}

//: message_super_team
+ (NSString *)notiMaleAfterMsg {
    /* static */ NSString *notiMaleAfterMsg = nil;
    if (!notiMaleAfterMsg) {
		NSString *origin = @"727A6C6C7E787A406C6A6F7A6D406B7A7E727D";
		NSData *data = [WhetherData WhetherDataToData:origin];
        StructWhetherData value = (StructWhetherData){31, (Byte *)data.bytes, 18, 144, 204, 237};
        notiMaleAfterMsg = [self StringFromWhetherData:&value];
    }
    return notiMaleAfterMsg;
}

//: watch_multiretweet_activity_person
+ (NSString *)kShouldSelectClassifyMsg {
    /* static */ NSString *kShouldSelectClassifyMsg = nil;
    if (!kShouldSelectClassifyMsg) {
		NSString *origin = @"4E584D5A5166544C554D504B5C4D4E5C5C4D66585A4D504F504D4066495C4B4A5657FE";
		NSData *data = [WhetherData WhetherDataToData:origin];
        StructWhetherData value = (StructWhetherData){57, (Byte *)data.bytes, 34, 39, 50, 121};
        kShouldSelectClassifyMsg = [self StringFromWhetherData:&value];
    }
    return kShouldSelectClassifyMsg;
}

//: contact_tag_fragment_cancel
+ (NSString *)dreamAttemptKey {
    /* static */ NSString *dreamAttemptKey = nil;
    if (!dreamAttemptKey) {
		NSString *origin = @"8B87869C898B9CB79C898FB78E9A898F858D869CB78B89868B8D84F8";
		NSData *data = [WhetherData WhetherDataToData:origin];
        StructWhetherData value = (StructWhetherData){232, (Byte *)data.bytes, 27, 124, 199, 3};
        dreamAttemptKey = [self StringFromWhetherData:&value];
    }
    return dreamAttemptKey;
}

//: 转发失败
+ (NSString *)user_recommendFormat {
    /* static */ NSString *user_recommendFormat = nil;
    if (!user_recommendFormat) {
		NSString *origin = @"C09584CDA7B9CD8C99C09C8D87";
		NSData *data = [WhetherData WhetherDataToData:origin];
        StructWhetherData value = (StructWhetherData){40, (Byte *)data.bytes, 12, 192, 88, 77};
        user_recommendFormat = [self StringFromWhetherData:&value];
    }
    return user_recommendFormat;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  PraiseUimanager.m
// Case
//
//  Created by 丁文超 on 2020/3/19.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFChatUIManager.h"
#import "PraiseUimanager.h"
//: #import "FFFContactSelectConfig.h"
#import "NameConfig.h"
//: #import "FFFContactSelectViewController.h"
#import "BrandViewController.h"
//: #import "FFFKitInfoFetchOption.h"
#import "InfoGreenImage.h"
//: #import "UIView+FFFToast.h"
#import "UIView+ParentToast.h"

//: @implementation FFFChatUIManager
@implementation PraiseUimanager

//: + (instancetype)sharedManager
+ (instancetype)manageressTouch
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static FFFChatUIManager *instance;
    static PraiseUimanager *instance;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [self.alloc init];
        instance = [self.alloc init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)forwardMessage:(NIMMessage *)message fromViewController:(UIViewController *)fromVC
- (void)noneFrom:(NIMMessage *)message icon:(UIViewController *)fromVC
{
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"选择会话类型"] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[SendName streetSmart:[WhetherData dreamAdequateStr]] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"watch_multiretweet_activity_person"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[SendName streetSmart:[WhetherData kShouldSelectClassifyMsg]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        TitleConfig *config = [[TitleConfig alloc] init];
        //: config.needMutiSelected = NO;
        config.needMutiSelected = NO;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        BrandViewController *vc = [[BrandViewController alloc] initWithMax:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *userId = array.firstObject;
            NSString *userId = array.firstObject;
            //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self dateShow:message file:session block:fromVC];
        //: };
        };
        //: [vc show];
        [vc totalRelation];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_group"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[SendName streetSmart:[WhetherData showPiMessage]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        ButtonColorConfig *config = [[ButtonColorConfig alloc] init];
        //: config.teamType = NIMKitTeamTypeNomal;
        config.teamType = NIMKitTeamTypeNomal;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        BrandViewController *vc = [[BrandViewController alloc] initWithMax:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self dateShow:message file:session block:fromVC];
        //: };
        };
        //: [vc show];
        [vc totalRelation];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"message_super_team"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[SendName streetSmart:[WhetherData notiMaleAfterMsg]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        ButtonColorConfig *config = [[ButtonColorConfig alloc] init];
        //: config.teamType = NIMKitTeamTypeSuper;
        config.teamType = NIMKitTeamTypeSuper;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        BrandViewController *vc = [[BrandViewController alloc] initWithMax:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self dateShow:message file:session block:fromVC];
        //: };
        };
        //: [vc show];
        [vc totalRelation];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:nil]];
    [alertController addAction:[UIAlertAction actionWithTitle:[SendName streetSmart:[WhetherData dreamAttemptKey]] style:UIAlertActionStyleCancel handler:nil]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: - (void)forwardMessage:(NIMMessage *)message toSession:(NIMSession *)session fromViewController:(UIViewController *)fromVC
- (void)dateShow:(NIMMessage *)message file:(NIMSession *)session block:(UIViewController *)fromVC
{
    //: NSString *name;
    NSString *name;
    //: if (session.sessionType == NIMSessionTypeP2P) {
    if (session.sessionType == NIMSessionTypeP2P) {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        InfoGreenImage *option = [[InfoGreenImage alloc] init];
        //: option.session = session;
        option.session = session;
        //: name = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option].showName;
        name = [[Case pastTop] consumer:session.sessionId message:option].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeTeam) {
    else if (session.sessionType == NIMSessionTypeTeam) {
        //: name = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil].showName;
        name = [[Case pastTop] controlOption:session.sessionId my:nil].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam) {
    else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: name = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil].showName;
        name = [[Case pastTop] ting:session.sessionId container:nil].showName;
    }
    //: NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString(@"确认转发给", nil), name];
    NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString([WhetherData kFiveName], nil), name];
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"确认转发", nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString([WhetherData user_cabinTitle], nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
    //: [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil]];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确认", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确认", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: if (message.session) {
        if (message.session) {
            //: [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
            [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
        //: } else {
        } else {
            //: [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
            [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
        }
        //: if (error) {
        if (error) {
            //: NSString *errorMessage = [NSString stringWithFormat:@"%@.code:%zd", NSLocalizedString(@"转发失败", nil), error.code];
            NSString *errorMessage = [NSString stringWithFormat:[WhetherData show_statueFormat], NSLocalizedString([WhetherData user_recommendFormat], nil), error.code];
            //: [fromVC.view nim_showToast:errorMessage duration:2.0];
            [fromVC.view action:errorMessage view:2.0];
        //: } else {
        } else {
            //: [fromVC.view nim_showToast:NSLocalizedString(@"已发送", nil) duration:2.0];
            [fromVC.view action:NSLocalizedString([WhetherData userOverageTransportationId], nil) view:2.0];
        }
    //: }]];
    }]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: @end
@end