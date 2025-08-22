
#import <Foundation/Foundation.h>

@interface DemonData : NSObject

@end

@implementation DemonData

+ (NSData *)DemonDataToData:(NSString *)value {
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

+ (Byte *)DemonDataToCache:(Byte *)data {
    int procedureForbid = data[0];
    Byte overseeLabel = data[1];
    int inscription = data[2];
    for (int i = inscription; i < inscription + procedureForbid; i++) {
        int value = data[i] + overseeLabel;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[inscription + procedureForbid] = 0;
    return data + inscription;
}

+ (NSString *)StringFromDemonData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DemonDataToCache:data]];
}

//: question
+ (NSString *)k_lineData {
    /* static */ NSString *k_lineData = nil;
    if (!k_lineData) {
		NSString *origin = @"084d058f6724281826271c222150";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_lineData = [self StringFromDemonData:value];
    }
    return k_lineData;
}

//: invitecode
+ (NSString *)noti_consciousnessData {
    /* static */ NSString *noti_consciousnessData = nil;
    if (!noti_consciousnessData) {
		NSString *origin = @"0a320478373c44374233313d323378";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_consciousnessData = [self StringFromDemonData:value];
    }
    return noti_consciousnessData;
}

//: head_default
+ (NSString *)dream_showValue {
    /* static */ NSString *dream_showValue = nil;
    if (!dream_showValue) {
		NSString *origin = @"0c6107be90acbf07040003fe03040500140b133c";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_showValue = [self StringFromDemonData:value];
    }
    return dream_showValue;
}

//: friend_verify_avtivity_net_error
+ (NSString *)kDetectNameOnId {
    /* static */ NSString *kDetectNameOnId = nil;
    if (!kDetectNameOnId) {
		NSString *origin = @"2003059eca636f66626b615c73626f6663765c5e737166736671765c6b62715c626f6f6c6ff3";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kDetectNameOnId = [self StringFromDemonData:value];
    }
    return kDetectNameOnId;
}

//: passwd
+ (NSString *)dream_justiceValue {
    /* static */ NSString *dream_justiceValue = nil;
    if (!dream_justiceValue) {
		NSString *origin = @"060a07c529f72b665769696d5ab3";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_justiceValue = [self StringFromDemonData:value];
    }
    return dream_justiceValue;
}

//: UserPassWord
+ (NSString *)showCrisisStr {
    /* static */ NSString *showCrisisStr = nil;
    if (!showCrisisStr) {
		NSString *origin = @"0c520d29fe89ab4ea9c1bfaf9503211320fe0f2121051d2012d6";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showCrisisStr = [self StringFromDemonData:value];
    }
    return showCrisisStr;
}

//: client
+ (NSString *)dream_makeId {
    /* static */ NSString *dream_makeId = nil;
    if (!dream_makeId) {
		NSString *origin = @"062b098f6da33e9b3038413e3a434944";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_makeId = [self StringFromDemonData:value];
    }
    return dream_makeId;
}

//: /validate/check_username_available
+ (NSString *)k_sirKey {
    /* static */ NSString *k_sirKey = nil;
    if (!k_sirKey) {
		NSString *origin = @"225904d2d61d0813100b081b0cd60a0f0c0a12061c1a0c191508140c06081d0810130809130cc4";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_sirKey = [self StringFromDemonData:value];
    }
    return k_sirKey;
}

//: /user/ismustmobile
+ (NSString *)app_reliabilityCenterText {
    /* static */ NSString *app_reliabilityCenterText = nil;
    if (!app_reliabilityCenterText) {
		NSString *origin = @"121803175d5b4d5a17515b555d5b5c55574a51544ddb";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_reliabilityCenterText = [self StringFromDemonData:value];
    }
    return app_reliabilityCenterText;
}

//: mobilecode
+ (NSString *)dreamMentorKey {
    /* static */ NSString *dreamMentorKey = nil;
    if (!dreamMentorKey) {
		NSString *origin = @"0a180355574a51544d4b574c4d5c";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamMentorKey = [self StringFromDemonData:value];
    }
    return dreamMentorKey;
}

//: msg
+ (NSString *)app_topicId {
    /* static */ NSString *app_topicId = nil;
    if (!app_topicId) {
		NSString *origin = @"031d0be0ac2cb448ea464b50564ab6";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_topicId = [self StringFromDemonData:value];
    }
    return app_topicId;
}

//: RegistFinshNotification
+ (NSString *)app_risingStr {
    /* static */ NSString *app_risingStr = nil;
    if (!app_risingStr) {
		NSString *origin = @"173c0ac021fee12c915916292b2d37380a2d32372c1233382d2a2d2725382d3332fe";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_risingStr = [self StringFromDemonData:value];
    }
    return app_risingStr;
}

//: code
+ (NSString *)userMessageIdealText {
    /* static */ NSString *userMessageIdealText = nil;
    if (!userMessageIdealText) {
		NSString *origin = @"04140517e54f5b50511e";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userMessageIdealText = [self StringFromDemonData:value];
    }
    return userMessageIdealText;
}

//: iOS
+ (NSString *)show_pinValue {
    /* static */ NSString *show_pinValue = nil;
    if (!show_pinValue) {
		NSString *origin = @"0362045a07edf135";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_pinValue = [self StringFromDemonData:value];
    }
    return show_pinValue;
}

//: /user/smsregister
+ (NSString *)k_makeText {
    /* static */ NSString *k_makeText = nil;
    if (!k_makeText) {
		NSString *origin = @"110e0d9ed14d05e18420aec0ca216765576421655f656457595b65665764ac";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_makeText = [self StringFromDemonData:value];
    }
    return k_makeText;
}

//: account
+ (NSString *)app_ahKey {
    /* static */ NSString *app_ahKey = nil;
    if (!app_ahKey) {
		NSString *origin = @"07490d32fd67063ccdf2ae316b181a1a262c252b71";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_ahKey = [self StringFromDemonData:value];
    }
    return app_ahKey;
}

//: password
+ (NSString *)dream_hmMessage {
    /* static */ NSString *dream_hmMessage = nil;
    if (!dream_hmMessage) {
		NSString *origin = @"081f089baffdc612514254545850534566";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_hmMessage = [self StringFromDemonData:value];
    }
    return dream_hmMessage;
}

//: mobile
+ (NSString *)userSuccessPotentialData {
    /* static */ NSString *userSuccessPotentialData = nil;
    if (!userSuccessPotentialData) {
		NSString *origin = @"0639075325655b34362930332c01";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userSuccessPotentialData = [self StringFromDemonData:value];
    }
    return userSuccessPotentialData;
}

//: answer
+ (NSString *)showPotentialStr {
    /* static */ NSString *showPotentialStr = nil;
    if (!showPotentialStr) {
		NSString *origin = @"06240dd58d5e7ad785f6e27f703d4a4f53414efb";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showPotentialStr = [self StringFromDemonData:value];
    }
    return showPotentialStr;
}

//: /user/register
+ (NSString *)notiControlBeliefFormat {
    /* static */ NSString *notiControlBeliefFormat = nil;
    if (!notiControlBeliefFormat) {
		NSString *origin = @"0e200ba994ade087178b120f555345520f524547495354455235";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiControlBeliefFormat = [self StringFromDemonData:value];
    }
    return notiControlBeliefFormat;
}

//: username
+ (NSString *)user_viewValue {
    /* static */ NSString *user_viewValue = nil;
    if (!user_viewValue) {
		NSString *origin = @"086305673d1210020f0bfe0a0265";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_viewValue = [self StringFromDemonData:value];
    }
    return user_viewValue;
}

//: gender
+ (NSString *)main_selectData {
    /* static */ NSString *main_selectData = nil;
    if (!main_selectData) {
		NSString *origin = @"065309cac09525888d14121b11121fdf";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_selectData = [self StringFromDemonData:value];
    }
    return main_selectData;
}

//: register_avtivity3_register_fail
+ (NSString *)appFinId {
    /* static */ NSString *appFinId = nil;
    if (!appFinId) {
		NSString *origin = @"204f04b42316181a24251623101227251a271a252ae4102316181a242516231017121a1d50";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appFinId = [self StringFromDemonData:value];
    }
    return appFinId;
}

//: UserAccount
+ (NSString *)main_deserveIdent {
    /* static */ NSString *main_deserveIdent = nil;
    if (!main_deserveIdent) {
		NSString *origin = @"0b5f07f97df120f6140613e2040410160f15f5";
		NSData *data = [DemonData DemonDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_deserveIdent = [self StringFromDemonData:value];
    }
    return main_deserveIdent;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  PinMoreManager.m
//  NIM
//
//  Created by 彭爽 on 2021/9/6.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRegistConfigManager.h"
#import "PinMoreManager.h"

//: @interface NTESRegistConfigManager ()
@interface PinMoreManager ()
//: @property (nonatomic ,strong) UINavigationController *nav;
@property (nonatomic ,strong) UINavigationController *nav;
//: @end
@end

//: @implementation NTESRegistConfigManager
@implementation PinMoreManager

//: static NTESRegistConfigManager *shareConfigManager = nil;
static PinMoreManager *kResultUrl = nil;

//: + (NTESRegistConfigManager *)shareConfigManager {
+ (PinMoreManager *)impression {
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareConfigManager == nil) {
        if (kResultUrl == nil) {
            //: shareConfigManager = [[NTESRegistConfigManager alloc] init];
            kResultUrl = [[PinMoreManager alloc] init];

            //: [shareConfigManager registDictDefault];
            [kResultUrl dict];
        }
        //: return shareConfigManager;
        return kResultUrl;
    }
}

//: - (NSMutableDictionary *)registDictDefault{
- (NSMutableDictionary *)dict{
    //: [NTESRegistConfigManager shareConfigManager].registDict = [NSMutableDictionary dictionaryWithCapacity:0];
    [PinMoreManager impression].registDict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: NSMutableDictionary *dict = [NTESRegistConfigManager shareConfigManager].registDict;
    NSMutableDictionary *dict = [PinMoreManager impression].registDict;
    //: [dict setObject:@"iOS" forKey:@"client"];
    [dict setObject:[DemonData show_pinValue] forKey:[DemonData dream_makeId]];
    //: [dict setObject:@"" forKey:@"invitecode"];
    [dict setObject:@"" forKey:[DemonData noti_consciousnessData]];
    //: [dict setObject:@"" forKey:@"mobilecode"];
    [dict setObject:@"" forKey:[DemonData dreamMentorKey]];
    //: [dict setObject:@"" forKey:@"question"];
    [dict setObject:@"" forKey:[DemonData k_lineData]];
    //: [dict setObject:@"" forKey:@"answer"];
    [dict setObject:@"" forKey:[DemonData showPotentialStr]];
    //: [dict setObject:@"1" forKey:@"gender"];
    [dict setObject:@"1" forKey:[DemonData main_selectData]];

    //: return [NTESRegistConfigManager shareConfigManager].registDict;
    return [PinMoreManager impression].registDict;
}

//: + (void)refreshRegistConfig{
+ (void)border{

    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/user/ismustmobile"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManageressManager empty:[NSString stringWithFormat:[DemonData app_reliabilityCenterText]] change:nil time:NO ting:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } showResponseFailed:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: + (void)firstSendRegistName:(NSString *)name pd:(NSString *)pd RequestWithComplete:(void(^)(BOOL sucess, NSString * msg))complete {
+ (void)pointOut:(NSString *)name measure:(NSString *)pd item:(void(^)(BOOL sucess, NSString * msg))complete {

    //#define Server_first_regist_config    [NSString stringWithFormat:@"%@/api/validate/check_username_available",[IndexTag sharedConfig].domainURL]
    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/validate/check_username_available"] params:@{@"username":name , @"passwd":pd } isShow:NO success:^(id responseObject) {
    [TitleManageressManager empty:[NSString stringWithFormat:[DemonData k_sirKey]] change:@{[DemonData user_viewValue]:name , [DemonData dream_justiceValue]:pd } time:NO ting:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict tag:[DemonData userMessageIdealText]];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict tag:[DemonData app_topicId]];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: !complete ? : complete(YES,msg);
            !complete ? : complete(YES,msg);
        //: } else {
        } else {
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD stormCenter:msg];
            //: !complete ? : complete(NO,msg);
            !complete ? : complete(NO,msg);
        }

    //: } failed:^(id responseObject, NSError *error) {
    } showResponseFailed:^(id responseObject, NSError *error) {
        //: !complete ? : complete(NO,[BusyLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]);
        !complete ? : complete(NO,[SendName streetSmart:[DemonData kDetectNameOnId]]);
    //: }];
    }];
}


//: + (void)sendRegistRequest:(UINavigationController *)nav{
+ (void)request:(UINavigationController *)nav{

    //: [NTESRegistConfigManager shareConfigManager].nav = nav;
    [PinMoreManager impression].nav = nav;
    //: NSString *ismustmobile = [NIMUserDefaults standardUserDefaults].ismustmobile;
    NSString *ismustmobile = [DataMaxDefaults max].ismustmobile;//是否手机

    //: if ([NTESRegistConfigManager shareConfigManager].headerImage == nil) {
    if ([PinMoreManager impression].headerImage == nil) {//默认头像
        //: [NTESRegistConfigManager shareConfigManager].headerImage = [UIImage imageNamed:@"head_default"];
        [PinMoreManager impression].headerImage = [UIImage imageNamed:[DemonData dream_showValue]];
    }

    //: if (ismustmobile.integerValue > 0) {
    if (ismustmobile.integerValue > 0) {
        //: [[NTESRegistConfigManager shareConfigManager] mobileRegist];
        [[PinMoreManager impression] placeHide];
    //: }else{
    }else{
        //: [[NTESRegistConfigManager shareConfigManager] accountRegist];
        [[PinMoreManager impression] remote];

    }

}

//: -(void)mobileRegist{
-(void)placeHide{

    //: NSString *account = [[NTESRegistConfigManager shareConfigManager].registDict newStringValueForKey:@"account"];
    NSString *account = [[PinMoreManager impression].registDict tag:[DemonData app_ahKey]];
    //: [[NTESRegistConfigManager shareConfigManager].registDict setObject:account forKey:@"mobile"];
    [[PinMoreManager impression].registDict setObject:account forKey:[DemonData userSuccessPotentialData]];

    //: NSDictionary *dict = [NTESRegistConfigManager shareConfigManager].registDict;
    NSDictionary *dict = [PinMoreManager impression].registDict;
    //: UIImage *image = [NTESRegistConfigManager shareConfigManager].headerImage;
    UIImage *image = [PinMoreManager impression].headerImage;

    //: if (!image) {
    if (!image) {

        //: [ZCHttpManager uploadImagesWithURL:[NSString stringWithFormat:@"/user/smsregister"] parameters:dict images:@[UIImageJPEGRepresentation(image, 0.3)] progress:^(NSProgress *progress) {
        [TitleManageressManager loadItem:[NSString stringWithFormat:[DemonData k_makeText]] disableView:dict uploadLineBigness_strong:@[UIImageJPEGRepresentation(image, 0.3)] on:^(NSProgress *progress) {

        //: } success:^(id responseObject) {
        } tap:^(id responseObject) {
            //: NSLog(@"%@",responseObject);
            //: [self.nav popToRootViewControllerAnimated:YES];
            [self.nav popToRootViewControllerAnimated:YES];


        //: } failed:^(id responseObject, NSError *error) {
        } prolusionResponseFailed:^(id responseObject, NSError *error) {
            //: NSLog(@"%@",error);

        //: }];
        }];
    //: }else{
    }else{
        //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/smsregister"] params:dict isShow:YES success:^(id responseObject) {
        [TitleManageressManager size:[NSString stringWithFormat:[DemonData k_makeText]] read:dict indicator:YES spaceOf:^(id responseObject) {
            //: NSDictionary *resultDict = (NSDictionary *)responseObject;
            NSDictionary *resultDict = (NSDictionary *)responseObject;
            //: NSString *code = [resultDict newStringValueForKey:@"code"];
            NSString *code = [resultDict tag:[DemonData userMessageIdealText]];
            //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
            NSString *msg = [resultDict tag:[DemonData app_topicId]];
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD stormCenter:msg];
            //: if (code.integerValue <= 0) {
            if (code.integerValue <= 0) {
                //: [self.nav popToRootViewControllerAnimated:YES];
                [self.nav popToRootViewControllerAnimated:YES];

                //: NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                //: [notiDict setObject:[dict newStringValueForKey:@"account"] ? :@"" forKey:@"UserAccount"];
                [notiDict setObject:[dict tag:[DemonData app_ahKey]] ? :@"" forKey:[DemonData main_deserveIdent]];
                //: [notiDict setObject:[dict newStringValueForKey:@"password"] ? :@"" forKey:@"UserPassWord"];
                [notiDict setObject:[dict tag:[DemonData dream_hmMessage]] ? :@"" forKey:[DemonData showCrisisStr]];
                //: [[NSNotificationCenter defaultCenter] postNotificationName:@"RegistFinshNotification" object:notiDict];
                [[NSNotificationCenter defaultCenter] postNotificationName:[DemonData app_risingStr] object:notiDict];


            }
        //: } failed:^(id responseObject, NSError *error) {
        } session:^(id responseObject, NSError *error) {

        //: }];
        }];
    }


}

//: -(void)accountRegist{
-(void)remote{

    //: NSDictionary *dict = [NTESRegistConfigManager shareConfigManager].registDict;
    NSDictionary *dict = [PinMoreManager impression].registDict;
    //: UIImage *image = [NTESRegistConfigManager shareConfigManager].headerImage;
    UIImage *image = [PinMoreManager impression].headerImage;
    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image view:CGSizeMake(150, 150)];

    //: if (image) {
    if (image) {
        //: [ZCHttpManager uploadImagesWithURL:[NSString stringWithFormat:@"/user/register"] parameters:dict images:@[UIImageJPEGRepresentation(imageForAvatarUpload, 0.7)] progress:^(NSProgress *progress) {
        [TitleManageressManager loadItem:[NSString stringWithFormat:[DemonData notiControlBeliefFormat]] disableView:dict uploadLineBigness_strong:@[UIImageJPEGRepresentation(imageForAvatarUpload, 0.7)] on:^(NSProgress *progress) {

        //: } success:^(id responseObject) {
        } tap:^(id responseObject) {
            //: NSDictionary *resultDict = (NSDictionary *)responseObject;
            NSDictionary *resultDict = (NSDictionary *)responseObject;
            //: NSString *code = [resultDict newStringValueForKey:@"code"];
            NSString *code = [resultDict tag:[DemonData userMessageIdealText]];
            //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
            NSString *msg = [resultDict tag:[DemonData app_topicId]];
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD stormCenter:msg];

            //: if (code.integerValue <= 0) {
            if (code.integerValue <= 0) {
                //: [self.nav popToRootViewControllerAnimated:YES];
                [self.nav popToRootViewControllerAnimated:YES];
                //: NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                //: NSString *mobile = [dict newStringValueForKey:@"mobile"] ? :@"";
                NSString *mobile = [dict tag:[DemonData userSuccessPotentialData]] ? :@"";
                //: NSString *account = [dict newStringValueForKey:@"account"] ? :@"";
                NSString *account = [dict tag:[DemonData app_ahKey]] ? :@"";
                //: NSString *UserAccount = mobile.length > 0 ? mobile:account ;
                NSString *UserAccount = mobile.length > 0 ? mobile:account ;
                //: NSString *UserPassWord = [dict newStringValueForKey:@"password"] ? :@"";
                NSString *UserPassWord = [dict tag:[DemonData dream_hmMessage]] ? :@"";
                //: [notiDict setObject:UserAccount forKey:@"UserAccount"];
                [notiDict setObject:UserAccount forKey:[DemonData main_deserveIdent]];
                //: [notiDict setObject:UserPassWord forKey:@"UserPassWord"];
                [notiDict setObject:UserPassWord forKey:[DemonData showCrisisStr]];
                //: [[NSNotificationCenter defaultCenter] postNotificationName:@"RegistFinshNotification" object:notiDict];
                [[NSNotificationCenter defaultCenter] postNotificationName:[DemonData app_risingStr] object:notiDict];
            }

        //: } failed:^(id responseObject, NSError *error) {
        } prolusionResponseFailed:^(id responseObject, NSError *error) {
            //: [SVProgressHUD showMessage:[BusyLanguageManager getTextWithKey:@"register_avtivity3_register_fail"]];
            [SVProgressHUD stormCenter:[SendName streetSmart:[DemonData appFinId]]];

        //: }];
        }];
    }
}

//: @end
@end
