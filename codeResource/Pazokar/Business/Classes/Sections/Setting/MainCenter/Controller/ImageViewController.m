
#import <Foundation/Foundation.h>

@interface ClickData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ClickData

+ (instancetype)sharedInstance {
    static ClickData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ClickDataToData:(NSString *)value {
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

- (Byte *)ClickDataToCache:(Byte *)data {
    int replyPop = data[0];
    Byte nameText = data[1];
    int majorLeagueClub = data[2];
    for (int i = majorLeagueClub; i < majorLeagueClub + replyPop; i++) {
        int value = data[i] + nameText;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[majorLeagueClub + replyPop] = 0;
    return data + majorLeagueClub;
}

- (NSString *)StringFromClickData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ClickDataToCache:data]];
}

//: Belgium-fr
- (NSString *)dreamAfterValue {
    /* static */ NSString *dreamAfterValue = nil;
    if (!dreamAfterValue) {
		NSString *origin = @"0a35060262920d303732344038f8313dfd";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamAfterValue = [self StringFromClickData:value];
    }
    return dreamAfterValue;
}

//: back_arrow_bl
- (NSString *)notiLetterRangeKey {
    /* static */ NSString *notiLetterRangeKey = nil;
    if (!notiLetterRangeKey) {
		NSString *origin = @"0d300579983231333b2f3142423f472f323c51";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiLetterRangeKey = [self StringFromClickData:value];
    }
    return notiLetterRangeKey;
}

//: #F6F7FA
- (NSString *)noti_infoMsg {
    /* static */ NSString *noti_infoMsg = nil;
    if (!noti_infoMsg) {
		NSString *origin = @"0726052539fd20102011201b31";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_infoMsg = [self StringFromClickData:value];
    }
    return noti_infoMsg;
}

//: En français
- (NSString *)app_teamLabelShowIdent {
    /* static */ NSString *app_teamLabelShowIdent = nil;
    if (!app_teamLabelShowIdent) {
		NSString *origin = @"0c1206c649d8335c0e54604f5cb1954f57613d";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_teamLabelShowIdent = [self StringFromClickData:value];
    }
    return app_teamLabelShowIdent;
}

//: Türkçe
- (NSString *)notiRecentMsg {
    /* static */ NSString *notiRecentMsg = nil;
    if (!notiRecentMsg) {
		NSString *origin = @"084d0a100e8fc217ed9d07766f251e765a18fd";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiRecentMsg = [self StringFromClickData:value];
    }
    return notiRecentMsg;
}

//: Czech Republic
- (NSString *)user_controlName {
    /* static */ NSString *user_controlName = nil;
    if (!user_controlName) {
		NSString *origin = @"0e4d055db1f62d18161bd305182328151f1c1669";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_controlName = [self StringFromClickData:value];
    }
    return user_controlName;
}

//: flag_sl
- (NSString *)noti_successStr {
    /* static */ NSString *noti_successStr = nil;
    if (!noti_successStr) {
		NSString *origin = @"074a0a096dc8651c9d9e1c22171d152922a6";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_successStr = [self StringFromClickData:value];
    }
    return noti_successStr;
}

//: flag_hi
- (NSString *)userLineFormat {
    /* static */ NSString *userLineFormat = nil;
    if (!userLineFormat) {
		NSString *origin = @"075a0a01a538c9b2eac30c12070d050e0f31";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userLineFormat = [self StringFromClickData:value];
    }
    return userLineFormat;
}

//: 中文繁体（新加坡）
- (NSString *)notiBottomContent {
    /* static */ NSString *notiBottomContent = nil;
    if (!notiBottomContent) {
		NSString *origin = @"1b360446ae8277b06051b1834bae875db98652b0607aaf546aaf676bb98653e1";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiBottomContent = [self StringFromClickData:value];
    }
    return notiBottomContent;
}

//: system_change_language
- (NSString *)showPopText {
    /* static */ NSString *showPopText = nil;
    if (!showPopText) {
		NSString *origin = @"163e0c47734d0e449a79c133353b3536272f21252a23302927212e2330293723292723";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showPopText = [self StringFromClickData:value];
    }
    return showPopText;
}

//: flag_pl
- (NSString *)kManagerKey {
    /* static */ NSString *kManagerKey = nil;
    if (!kManagerKey) {
		NSString *origin = @"07200d7b8fbde2d12d2da29089464c41473f504c8a";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kManagerKey = [self StringFromClickData:value];
    }
    return kManagerKey;
}

//: Finland
- (NSString *)kMessageUrl {
    /* static */ NSString *kMessageUrl = nil;
    if (!kMessageUrl) {
		NSString *origin = @"07510cf8c339a56263f28989f5181d1b101d13ea";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kMessageUrl = [self StringFromClickData:value];
    }
    return kMessageUrl;
}

//: Hungary
- (NSString *)appShouldMessage {
    /* static */ NSString *appShouldMessage = nil;
    if (!appShouldMessage) {
		NSString *origin = @"07600dd68655f9fdf6732741c1e8150e0701121966";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appShouldMessage = [self StringFromClickData:value];
    }
    return appShouldMessage;
}

//: lang
- (NSString *)user_factorMsg {
    /* static */ NSString *user_factorMsg = nil;
    if (!user_factorMsg) {
		NSString *origin = @"04200a3b6de74e4d25cf4c414e476f";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_factorMsg = [self StringFromClickData:value];
    }
    return user_factorMsg;
}

//: flag
- (NSString *)kTitleSuccessIdent {
    /* static */ NSString *kTitleSuccessIdent = nil;
    if (!kTitleSuccessIdent) {
		NSString *origin = @"04240b6baac299d7e9834a42483d438e";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleSuccessIdent = [self StringFromClickData:value];
    }
    return kTitleSuccessIdent;
}

//: flag_cy
- (NSString *)showMakeIdent {
    /* static */ NSString *showMakeIdent = nil;
    if (!showMakeIdent) {
		NSString *origin = @"070105a98f656b60665e627820";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showMakeIdent = [self StringFromClickData:value];
    }
    return showMakeIdent;
}

//: Bulgaria
- (NSString *)userViewKey {
    /* static */ NSString *userViewKey = nil;
    if (!userViewKey) {
		NSString *origin = @"0839065fd8f3093c332e2839302818";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userViewKey = [self StringFromClickData:value];
    }
    return userViewKey;
}

//: hant
- (NSString *)dream_cellPath {
    /* static */ NSString *dream_cellPath = nil;
    if (!dream_cellPath) {
		NSString *origin = @"04630bc0ef42e372197a0905fe0b1169";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_cellPath = [self StringFromClickData:value];
    }
    return dream_cellPath;
}

//: flag_de
- (NSString *)dreamFileFromFormat {
    /* static */ NSString *dreamFileFromFormat = nil;
    if (!dreamFileFromFormat) {
		NSString *origin = @"072003464c41473f444587";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamFileFromFormat = [self StringFromClickData:value];
    }
    return dreamFileFromFormat;
}

//: flag_spa
- (NSString *)showLetterIdent {
    /* static */ NSString *showLetterIdent = nil;
    if (!showLetterIdent) {
		NSString *origin = @"0843068a2d8223291e241c302d1edd";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showLetterIdent = [self StringFromClickData:value];
    }
    return showLetterIdent;
}

//: flag_sa
- (NSString *)show_successStr {
    /* static */ NSString *show_successStr = nil;
    if (!show_successStr) {
		NSString *origin = @"074005ecd5262c21271f3321aa";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_successStr = [self StringFromClickData:value];
    }
    return show_successStr;
}

//: flag_ko
- (NSString *)userChildMsg {
    /* static */ NSString *userChildMsg = nil;
    if (!userChildMsg) {
		NSString *origin = @"07540c12a4aa4edc769824bb12180d130b171bd5";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userChildMsg = [self StringFromClickData:value];
    }
    return userChildMsg;
}

//: flag_da
- (NSString *)show_nameTitle {
    /* static */ NSString *show_nameTitle = nil;
    if (!show_nameTitle) {
		NSString *origin = @"0751060bd00b151b10160e131075";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_nameTitle = [self StringFromClickData:value];
    }
    return show_nameTitle;
}

//: Belgium-nl
- (NSString *)show_messageStr {
    /* static */ NSString *show_messageStr = nil;
    if (!show_messageStr) {
		NSString *origin = @"0a120a820ae7ba4ca12830535a5557635b1b5c5a76";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_messageStr = [self StringFromClickData:value];
    }
    return show_messageStr;
}

//: Malta
- (NSString *)notiWithName {
    /* static */ NSString *notiWithName = nil;
    if (!notiWithName) {
		NSString *origin = @"052f0aa6782aefbfb72c1e323d453231";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiWithName = [self StringFromClickData:value];
    }
    return notiWithName;
}

//: Cyprus-tr
- (NSString *)user_imageRecordIdent {
    /* static */ NSString *user_imageRecordIdent = nil;
    if (!user_imageRecordIdent) {
		NSString *origin = @"09270df870435344e195448adc1c52494b4e4c064d4bc5";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_imageRecordIdent = [self StringFromClickData:value];
    }
    return user_imageRecordIdent;
}

//: flag_sk
- (NSString *)dreamDoingText {
    /* static */ NSString *dreamDoingText = nil;
    if (!dreamDoingText) {
		NSString *origin = @"073e0705816e75282e232921352d0c";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamDoingText = [self StringFromClickData:value];
    }
    return dreamDoingText;
}

//: Slovenia
- (NSString *)userOptionName {
    /* static */ NSString *userOptionName = nil;
    if (!userOptionName) {
		NSString *origin = @"080f082252c3a539445d6067565f5a52fd";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userOptionName = [self StringFromClickData:value];
    }
    return userOptionName;
}

//: flag_vi
- (NSString *)mainNextMsg {
    /* static */ NSString *mainNextMsg = nil;
    if (!mainNextMsg) {
		NSString *origin = @"075c0c90845589cbf8520a6d0a10050b031a0d82";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainNextMsg = [self StringFromClickData:value];
    }
    return mainNextMsg;
}

//: Romania
- (NSString *)mClickMessageUrl {
    /* static */ NSString *mClickMessageUrl = nil;
    if (!mClickMessageUrl) {
		NSString *origin = @"074a0620263208252317241f1704";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mClickMessageUrl = [self StringFromClickData:value];
    }
    return mClickMessageUrl;
}

//: flag_pt
- (NSString *)appSelectData {
    /* static */ NSString *appSelectData = nil;
    if (!appSelectData) {
		NSString *origin = @"071203545a4f554d5e6204";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appSelectData = [self StringFromClickData:value];
    }
    return appSelectData;
}

//: flag_sv
- (NSString *)dream_enableUrl {
    /* static */ NSString *dream_enableUrl = nil;
    if (!dream_enableUrl) {
		NSString *origin = @"07340ad1567191655c1932382d332b3f4222";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_enableUrl = [self StringFromClickData:value];
    }
    return dream_enableUrl;
}

//: Slovakia
- (NSString *)kModeUrl {
    /* static */ NSString *kModeUrl = nil;
    if (!kModeUrl) {
		NSString *origin = @"08080704d5228a4b64676e59636159d8";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kModeUrl = [self StringFromClickData:value];
    }
    return kModeUrl;
}

//: flag_mt
- (NSString *)main_cellMsg {
    /* static */ NSString *main_cellMsg = nil;
    if (!main_cellMsg) {
		NSString *origin = @"071304c953594e544c5a616d";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_cellMsg = [self StringFromClickData:value];
    }
    return main_cellMsg;
}

//: flag_zh
- (NSString *)appToolMsg {
    /* static */ NSString *appToolMsg = nil;
    if (!appToolMsg) {
		NSString *origin = @"0704065f2cb962685d635b7664a5";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appToolMsg = [self StringFromClickData:value];
    }
    return appToolMsg;
}

//: flag_Be
- (NSString *)mainCellInfoUrl {
    /* static */ NSString *mainCellInfoUrl = nil;
    if (!mainCellInfoUrl) {
		NSString *origin = @"07350bc0716cdf9b0beca531372c322a0d30b8";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainCellInfoUrl = [self StringFromClickData:value];
    }
    return mainCellInfoUrl;
}

//: flag_fi
- (NSString *)showFileId {
    /* static */ NSString *showFileId = nil;
    if (!showFileId) {
		NSString *origin = @"0709065b13c95d63585e565d60cb";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showFileId = [self StringFromClickData:value];
    }
    return showFileId;
}

//: flag_ja
- (NSString *)show_replyId {
    /* static */ NSString *show_replyId = nil;
    if (!show_replyId) {
		NSString *origin = @"075c06a32dd90a10050b030e0518";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_replyId = [self StringFromClickData:value];
    }
    return show_replyId;
}

//: flag_Au
- (NSString *)showMessageTextControlContent {
    /* static */ NSString *showMessageTextControlContent = nil;
    if (!showMessageTextControlContent) {
		NSString *origin = @"070c0af3a3e86a278b615a60555b533569ef";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showMessageTextControlContent = [self StringFromClickData:value];
    }
    return showMessageTextControlContent;
}

//: flag_et
- (NSString *)main_lineUrl {
    /* static */ NSString *main_lineUrl = nil;
    if (!main_lineUrl) {
		NSString *origin = @"07220d07bf44341a391022d831444a3f453d4352b5";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_lineUrl = [self StringFromClickData:value];
    }
    return main_lineUrl;
}

//: flag_ga
- (NSString *)show_sizeRemoveText {
    /* static */ NSString *show_sizeRemoveText = nil;
    if (!show_sizeRemoveText) {
		NSString *origin = @"072d0ba4bf12b138e73040393f343a323a34d5";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_sizeRemoveText = [self StringFromClickData:value];
    }
    return show_sizeRemoveText;
}

//: flag_hr
- (NSString *)userGreenKey {
    /* static */ NSString *userGreenKey = nil;
    if (!userGreenKey) {
		NSString *origin = @"071a089fd4e9b3384c52474d454e582a";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userGreenKey = [self StringFromClickData:value];
    }
    return userGreenKey;
}

//: flag_lb
- (NSString *)notiSourceStr {
    /* static */ NSString *notiSourceStr = nil;
    if (!notiSourceStr) {
		NSString *origin = @"07440deb52d7181deffec7eff522281d231b281e5d";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiSourceStr = [self StringFromClickData:value];
    }
    return notiSourceStr;
}

//: flag_it
- (NSString *)dream_lineIdent {
    /* static */ NSString *dream_lineIdent = nil;
    if (!dream_lineIdent) {
		NSString *origin = @"070103656b60665e6873f4";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_lineIdent = [self StringFromClickData:value];
    }
    return dream_lineIdent;
}

//: Netherlands
- (NSString *)showMessageCornerName {
    /* static */ NSString *showMessageCornerName = nil;
    if (!showMessageCornerName) {
		NSString *origin = @"0b0206c8b5734c63726663706a5f6c62710c";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showMessageCornerName = [self StringFromClickData:value];
    }
    return showMessageCornerName;
}

//: #000000
- (NSString *)userMakeCellStr {
    /* static */ NSString *userMakeCellStr = nil;
    if (!userMakeCellStr) {
		NSString *origin = @"071f053ec104111111111111cc";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userMakeCellStr = [self StringFromClickData:value];
    }
    return userMakeCellStr;
}

//: Latvia
- (NSString *)app_afterInputPath {
    /* static */ NSString *app_afterInputPath = nil;
    if (!app_afterInputPath) {
		NSString *origin = @"06470d51fb08863a65b4c35cf7051a2d2f221a5f";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_afterInputPath = [self StringFromClickData:value];
    }
    return app_afterInputPath;
}

//: Title
- (NSString *)noti_minMsg {
    /* static */ NSString *noti_minMsg = nil;
    if (!noti_minMsg) {
		NSString *origin = @"05200823d7222d803449544c4506";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_minMsg = [self StringFromClickData:value];
    }
    return noti_minMsg;
}

//: Language
- (NSString *)dreamViewFormat {
    /* static */ NSString *dreamViewFormat = nil;
    if (!dreamViewFormat) {
		NSString *origin = @"08330c3ae5b5cfb95c5dd521192e3b34422e343252";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamViewFormat = [self StringFromClickData:value];
    }
    return dreamViewFormat;
}

//: Español
- (NSString *)show_childIdent {
    /* static */ NSString *show_childIdent = nil;
    if (!show_childIdent) {
		NSString *origin = @"083f03063431228472302df3";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_childIdent = [self StringFromClickData:value];
    }
    return show_childIdent;
}

//: flag_lv
- (NSString *)user_imageStr {
    /* static */ NSString *user_imageStr = nil;
    if (!user_imageStr) {
		NSString *origin = @"070b05884f5b61565c54616b0d";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_imageStr = [self StringFromClickData:value];
    }
    return user_imageStr;
}

//: Croatia
- (NSString *)kOptionRedPath {
    /* static */ NSString *kOptionRedPath = nil;
    if (!kOptionRedPath) {
		NSString *origin = @"073c089724fee98a07363325382d259c";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kOptionRedPath = [self StringFromClickData:value];
    }
    return kOptionRedPath;
}

//: selectLang
- (NSString *)dreamFileValue {
    /* static */ NSString *dreamFileValue = nil;
    if (!dreamFileValue) {
		NSString *origin = @"0a040a243fc5a44b48876f6168615f70485d6a63eb";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamFileValue = [self StringFromClickData:value];
    }
    return dreamFileValue;
}

//: Italy
- (NSString *)main_redNameKey {
    /* static */ NSString *main_redNameKey = nil;
    if (!main_redNameKey) {
		NSString *origin = @"055504a4f41f0c1724ae";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_redNameKey = [self StringFromClickData:value];
    }
    return main_redNameKey;
}

//: flag_en
- (NSString *)mDismissName {
    /* static */ NSString *mDismissName = nil;
    if (!mDismissName) {
		NSString *origin = @"073a0dfe3b149fd5aab0cc5acd2c32272d252b3424";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mDismissName = [self StringFromClickData:value];
    }
    return mDismissName;
}

//: English
- (NSString *)noti_modeStr {
    /* static */ NSString *noti_modeStr = nil;
    if (!noti_modeStr) {
		NSString *origin = @"0748071b63150bfd261f24212b205a";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_modeStr = [self StringFromClickData:value];
    }
    return noti_modeStr;
}

//: Das ist Deutsch.
- (NSString *)dreamRedPath {
    /* static */ NSString *dreamRedPath = nil;
    if (!dreamRedPath) {
		NSString *origin = @"1006068c56ed3e5b6d1a636d6e1a3e5f6f6e6d5d6228ab";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamRedPath = [self StringFromClickData:value];
    }
    return dreamRedPath;
}

//: flag_th
- (NSString *)dreamPathHandleText {
    /* static */ NSString *dreamPathHandleText = nil;
    if (!dreamPathHandleText) {
		NSString *origin = @"07540312180d130b2014ff";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamPathHandleText = [self StringFromClickData:value];
    }
    return dreamPathHandleText;
}

//: Austria
- (NSString *)mainFrameValue {
    /* static */ NSString *mainFrameValue = nil;
    if (!mainFrameValue) {
		NSString *origin = @"075e0db57bbdddf5adf49850aee3171516140b03d8";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainFrameValue = [self StringFromClickData:value];
    }
    return mainFrameValue;
}

//: #02D8C9
- (NSString *)dreamFromRemoveUrl {
    /* static */ NSString *dreamFromRemoveUrl = nil;
    if (!dreamFromRemoveUrl) {
		NSString *origin = @"074406ca3ba1dfecee00f4fff55e";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamFromRemoveUrl = [self StringFromClickData:value];
    }
    return dreamFromRemoveUrl;
}

//: Língua portuguesa
- (NSString *)kRangeName {
    /* static */ NSString *kRangeName = nil;
    if (!kRangeName) {
		NSString *origin = @"124b03017862231c2a16d5252427292a1c2a1a281620";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kRangeName = [self StringFromClickData:value];
    }
    return kRangeName;
}

//: flag_lt
- (NSString *)noti_removeFormat {
    /* static */ NSString *noti_removeFormat = nil;
    if (!noti_removeFormat) {
		NSString *origin = @"070108ac88a708e4656b60665e6b7313";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_removeFormat = [self StringFromClickData:value];
    }
    return noti_removeFormat;
}

//: spa
- (NSString *)noti_greenMessage {
    /* static */ NSString *noti_greenMessage = nil;
    if (!noti_greenMessage) {
		NSString *origin = @"031a04dd59564727";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_greenMessage = [self StringFromClickData:value];
    }
    return noti_greenMessage;
}

//: flag_cs
- (NSString *)show_enableUrl {
    /* static */ NSString *show_enableUrl = nil;
    if (!show_enableUrl) {
		NSString *origin = @"0751043e151b10160e1222ca";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_enableUrl = [self StringFromClickData:value];
    }
    return show_enableUrl;
}

//: Sweden
- (NSString *)k_replyPath {
    /* static */ NSString *k_replyPath = nil;
    if (!k_replyPath) {
		NSString *origin = @"06450b7bc4977f44d286b00e32201f202913";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_replyPath = [self StringFromClickData:value];
    }
    return k_replyPath;
}

//: flag_fr
- (NSString *)dream_titleStr {
    /* static */ NSString *dream_titleStr = nil;
    if (!dream_titleStr) {
		NSString *origin = @"072105d735454b40463e455180";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_titleStr = [self StringFromClickData:value];
    }
    return dream_titleStr;
}

//: flag_el
- (NSString *)k_lineTitle {
    /* static */ NSString *k_lineTitle = nil;
    if (!k_lineTitle) {
		NSString *origin = @"0730053969363c31372f353c28";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_lineTitle = [self StringFromClickData:value];
    }
    return k_lineTitle;
}

//: flag_bg
- (NSString *)dream_mCornerKey {
    /* static */ NSString *dream_mCornerKey = nil;
    if (!dream_mCornerKey) {
		NSString *origin = @"072e08cec15f438e383e3339313439a3";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_mCornerKey = [self StringFromClickData:value];
    }
    return dream_mCornerKey;
}

//: flag_ro
- (NSString *)show_redPath {
    /* static */ NSString *show_redPath = nil;
    if (!show_redPath) {
		NSString *origin = @"0709078591d1c25d63585e5669666c";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_redPath = [self StringFromClickData:value];
    }
    return show_redPath;
}

//: Việt nam
- (NSString *)main_fromPath {
    /* static */ NSString *main_fromPath = nil;
    if (!main_fromPath) {
		NSString *origin = @"0a4d06415e72091c946e3a27d32114205d";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_fromPath = [self StringFromClickData:value];
    }
    return main_fromPath;
}

//: flag_tr
- (NSString *)k_withRemoveValue {
    /* static */ NSString *k_withRemoveValue = nil;
    if (!k_withRemoveValue) {
		NSString *origin = @"07510c4c6f4021f4fc1b1c24151b10160e232137";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_withRemoveValue = [self StringFromClickData:value];
    }
    return k_withRemoveValue;
}

//: Estonia
- (NSString *)dream_shouldStr {
    /* static */ NSString *dream_shouldStr = nil;
    if (!dream_shouldStr) {
		NSString *origin = @"071e09a1177dbfb3b727555651504b43d0";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_shouldStr = [self StringFromClickData:value];
    }
    return dream_shouldStr;
}

//: Greece
- (NSString *)mShowTitle {
    /* static */ NSString *mShowTitle = nil;
    if (!mShowTitle) {
		NSString *origin = @"060609771116986025416c5f5f5d5f24";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mShowTitle = [self StringFromClickData:value];
    }
    return mShowTitle;
}

//: Ireland
- (NSString *)user_nameFromUrl {
    /* static */ NSString *user_nameFromUrl = nil;
    if (!user_nameFromUrl) {
		NSString *origin = @"0709071e3c214140695c6358655b92";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_nameFromUrl = [self StringFromClickData:value];
    }
    return user_nameFromUrl;
}

//: Lithuania
- (NSString *)notiRangeKey {
    /* static */ NSString *notiRangeKey = nil;
    if (!notiRangeKey) {
		NSString *origin = @"09340a6b302e4cedf14518354034412d3a352d14";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiRangeKey = [self StringFromClickData:value];
    }
    return notiRangeKey;
}

//: flag_hu
- (NSString *)k_pinValue {
    /* static */ NSString *k_pinValue = nil;
    if (!k_pinValue) {
		NSString *origin = @"073a0509a52c32272d252e3b45";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_pinValue = [self StringFromClickData:value];
    }
    return k_pinValue;
}

//: flag_nl
- (NSString *)notiMakeTitle {
    /* static */ NSString *notiMakeTitle = nil;
    if (!notiMakeTitle) {
		NSString *origin = @"072a068dc6cd3c42373d35444277";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiMakeTitle = [self StringFromClickData:value];
    }
    return notiMakeTitle;
}

//: Cyprus-el
- (NSString *)user_modeValue {
    /* static */ NSString *user_modeValue = nil;
    if (!user_modeValue) {
		NSString *origin = @"09370ad11761963213f00c42393b3e3cf62e35ac";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_modeValue = [self StringFromClickData:value];
    }
    return user_modeValue;
}

//: Poland
- (NSString *)dream_teamStr {
    /* static */ NSString *dream_teamStr = nil;
    if (!dream_teamStr) {
		NSString *origin = @"061e07d168a1fe32514e4350465f";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_teamStr = [self StringFromClickData:value];
    }
    return dream_teamStr;
}

//: Luxembourg
- (NSString *)dreamTeamValue {
    /* static */ NSString *dreamTeamValue = nil;
    if (!dreamTeamValue) {
		NSString *origin = @"0a1b03315a5d4a5247545a574cec";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamTeamValue = [self StringFromClickData:value];
    }
    return dreamTeamValue;
}

//: Denmark
- (NSString *)userTeamMsg {
    /* static */ NSString *userTeamMsg = nil;
    if (!userTeamMsg) {
		NSString *origin = @"072606e578941e3f48473b4c45e5";
		NSData *data = [ClickData ClickDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userTeamMsg = [self StringFromClickData:value];
    }
    return userTeamMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageViewController.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESLanguageViewController.h"
#import "ImageViewController.h"
//: #import "NTESLanguageTableViewCell.h"
#import "VersionView.h"

//: @interface NTESLanguageViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>
@interface ImageViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic,copy ) NSArray *tData;
@property (nonatomic,copy ) NSArray *tData;
//: @property (nonatomic,copy ) NSArray *data;
@property (nonatomic,copy ) NSArray *data;

//: @property (nonatomic,copy ) NSMutableArray *MuttableData;
@property (nonatomic,copy ) NSMutableArray *MuttableData;

//: @property (nonatomic,strong) UIButton *btnClose;
@property (nonatomic,strong) UIButton *btnClose;

//: @end
@end

//: @implementation NTESLanguageViewController
@implementation ImageViewController

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
    self.view.backgroundColor = [UIColor status:[[ClickData sharedInstance] noti_infoMsg]];

    //: UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backButton.frame = CGRectMake(5, [UIDevice vg_statusBarHeight]+4, 40, 40);
    backButton.frame = CGRectMake(5, [UIDevice statusOrLevel]+4, 40, 40);
    //: [backButton setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
    [backButton setImage:[UIImage imageNamed:[[ClickData sharedInstance] notiLetterRangeKey]] forState:(UIControlStateNormal)];
    //: [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton addTarget:self action:@selector(numberernationalTing) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:backButton];
    [self.view addSubview:backButton];

    //: UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    UILabel *labtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, [UIDevice statusOrLevel]+4, [[UIScreen mainScreen] bounds].size.width, 40)];
    //: labtitle.font = [UIFont systemFontOfSize:16.f];
    labtitle.font = [UIFont systemFontOfSize:16.f];
    //: labtitle.textColor = [UIColor colorWithHexString:@"#000000"];
    labtitle.textColor = [UIColor status:[[ClickData sharedInstance] userMakeCellStr]];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"system_change_language"];
    labtitle.text = [SendName streetSmart:[[ClickData sharedInstance] showPopText]];
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
//    self.tableView.scrollEnabled = NO;
//    self.tableView.layer.cornerRadius = 12;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: [self.tableView registerClass:[NTESLanguageTableViewCell class] forCellReuseIdentifier:@"lang"];
    [self.tableView registerClass:[VersionView class] forCellReuseIdentifier:[[ClickData sharedInstance] user_factorMsg]];


    //: self.tData = @[
    self.tData = @[

    //: @{
    @{
        //: @"Title" : @"English",
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] noti_modeStr],
        //: @"selectLang" : @"en",
        [[ClickData sharedInstance] dreamFileValue] : @"en",
        //: @"Language" : @"en",
        [[ClickData sharedInstance] dreamViewFormat] : @"en",
        //: @"flag" : @"flag_en",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] mDismissName],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Việt nam", // 越南
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] main_fromPath], // 越南
        //: @"selectLang" : @"vi",
        [[ClickData sharedInstance] dreamFileValue] : @"vi",
        //: @"Language" : @"vi",
        [[ClickData sharedInstance] dreamViewFormat] : @"vi",
        //: @"flag" : @"flag_vi",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] mainNextMsg],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"ภาษาไทย ", // 泰语
        [[ClickData sharedInstance] noti_minMsg] : @"ภาษาไทย ", // 泰语
        //: @"selectLang" : @"th",
        [[ClickData sharedInstance] dreamFileValue] : @"th",
        //: @"Language" : @"th",
        [[ClickData sharedInstance] dreamViewFormat] : @"th",
        //: @"flag" : @"flag_th",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] dreamPathHandleText],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"हिंदी", // 印度
        [[ClickData sharedInstance] noti_minMsg] : @"हिंदी", // 印度
        //: @"selectLang" : @"hi",
        [[ClickData sharedInstance] dreamFileValue] : @"hi",
        //: @"Language" : @"hi",
        [[ClickData sharedInstance] dreamViewFormat] : @"hi",
        //: @"flag" : @"flag_hi",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] userLineFormat],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"にほんご", // 日语
        [[ClickData sharedInstance] noti_minMsg] : @"にほんご", // 日语
        //: @"selectLang" : @"ja",
        [[ClickData sharedInstance] dreamFileValue] : @"ja",
        //: @"Language" : @"ja",
        [[ClickData sharedInstance] dreamViewFormat] : @"ja",
        //: @"flag" : @"flag_ja",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] show_replyId],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"한국어", //韩语
        [[ClickData sharedInstance] noti_minMsg] : @"한국어", //韩语
        //: @"selectLang" : @"ko",
        [[ClickData sharedInstance] dreamFileValue] : @"ko",
        //: @"Language" : @"ko",
        [[ClickData sharedInstance] dreamViewFormat] : @"ko",
        //: @"flag" : @"flag_ko",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] userChildMsg],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"العربية", // 阿拉伯语-沙特
        [[ClickData sharedInstance] noti_minMsg] : @"العربية", // 阿拉伯语-沙特
        //: @"selectLang" : @"sa",
        [[ClickData sharedInstance] dreamFileValue] : @"sa",
        //: @"Language" : @"sa",
        [[ClickData sharedInstance] dreamViewFormat] : @"sa",
        //: @"flag" : @"flag_sa",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] show_successStr],
    //: },
    },
//    @{
//        @"Title"         : @"বাঙ্গালি",// 孟加拉语
//        @"selectLang"      : @"bd",
//        @"Language"      : @"en",
//        @"flag"      : @"flag_bd",
//    },
//    @{
//        @"Title"         : @"русск",// 俄语
//        @"selectLang"      : @"ru",
//        @"Language"      : @"ru",
//        @"flag"      : @"flag_ru",
//    },
//    @{
//        @"Title"         : @"‎اردو",// 乌尔都语-巴基斯坦
//        @"selectLang"      : @"pk",
//        @"Language"      : @"pk",
//        @"flag"      : @"flag_pk",
//    },
//    @{
//        @"Title"         : @"Kiswahili",// 斯瓦希里语  - 乌干达
//        @"selectLang"      : @"ug",
//        @"Language"      : @"ug",
//        @"flag"      : @"flag_ug",
//    },
    //: @{
    @{
        //: @"Title" : @"Türkçe",// 土耳其语
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] notiRecentMsg],// 土耳其语
        //: @"selectLang" : @"tr",
        [[ClickData sharedInstance] dreamFileValue] : @"tr",
        //: @"Language" : @"tr",
        [[ClickData sharedInstance] dreamViewFormat] : @"tr",
        //: @"flag" : @"flag_tr",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] k_withRemoveValue],
    //: },
    },
//    @{
//        @"Title"         : @"العربية المصرية",// 埃及阿拉伯语
//        @"selectLang"      : @"eg",
//        @"Language"      : @"eg",
//        @"flag"      : @"flag_eg",
//    },
    //: @{
    @{
        //: @"Title" : @"Austria",// 奥地利语
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] mainFrameValue],// 奥地利语
        //: @"selectLang" : @"Au",
        [[ClickData sharedInstance] dreamFileValue] : @"Au",
        //: @"Language" : @"de",
        [[ClickData sharedInstance] dreamViewFormat] : @"de",
        //: @"flag" : @"flag_Au",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] showMessageTextControlContent],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Belgium-fr",// 比利时法语
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] dreamAfterValue],// 比利时法语
        //: @"selectLang" : @"fr",
        [[ClickData sharedInstance] dreamFileValue] : @"fr",
        //: @"Language" : @"fr",
        [[ClickData sharedInstance] dreamViewFormat] : @"fr",
        //: @"flag" : @"flag_Be",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] mainCellInfoUrl],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Belgium-nl",// 比利时荷兰语
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] show_messageStr],// 比利时荷兰语
        //: @"selectLang" : @"nl",
        [[ClickData sharedInstance] dreamFileValue] : @"nl",
        //: @"Language" : @"nl",
        [[ClickData sharedInstance] dreamViewFormat] : @"nl",
        //: @"flag" : @"flag_Be",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] mainCellInfoUrl],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Bulgaria",// 保加利亚语
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] userViewKey],// 保加利亚语
        //: @"selectLang" : @"bg",
        [[ClickData sharedInstance] dreamFileValue] : @"bg",
        //: @"Language" : @"bg",
        [[ClickData sharedInstance] dreamViewFormat] : @"bg",
        //: @"flag" : @"flag_bg",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] dream_mCornerKey],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Croatia",// 克罗地亚语
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] kOptionRedPath],// 克罗地亚语
        //: @"selectLang" : @"hr",
        [[ClickData sharedInstance] dreamFileValue] : @"hr",
        //: @"Language" : @"hr",
        [[ClickData sharedInstance] dreamViewFormat] : @"hr",
        //: @"flag" : @"flag_hr",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] userGreenKey],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Cyprus-tr",// 塞浦路斯-土耳其语
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] user_imageRecordIdent],// 塞浦路斯-土耳其语
        //: @"selectLang" : @"tr",
        [[ClickData sharedInstance] dreamFileValue] : @"tr",
        //: @"Language" : @"tr",
        [[ClickData sharedInstance] dreamViewFormat] : @"tr",
        //: @"flag" : @"flag_cy",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] showMakeIdent],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Cyprus-el",// 塞浦路斯-希腊语
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] user_modeValue],// 塞浦路斯-希腊语
        //: @"selectLang" : @"el",
        [[ClickData sharedInstance] dreamFileValue] : @"el",
        //: @"Language" : @"el",
        [[ClickData sharedInstance] dreamViewFormat] : @"el",
        //: @"flag" : @"flag_cy",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] showMakeIdent],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Czech Republic",// 捷克语
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] user_controlName],// 捷克语
        //: @"selectLang" : @"cs",
        [[ClickData sharedInstance] dreamFileValue] : @"cs",
        //: @"Language" : @"cs",
        [[ClickData sharedInstance] dreamViewFormat] : @"cs",
        //: @"flag" : @"flag_cs",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] show_enableUrl],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Denmark",// 丹麦
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] userTeamMsg],// 丹麦
        //: @"selectLang" : @"da",
        [[ClickData sharedInstance] dreamFileValue] : @"da",
        //: @"Language" : @"da",
        [[ClickData sharedInstance] dreamViewFormat] : @"da",
        //: @"flag" : @"flag_da",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] show_nameTitle],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Estonia",// 爱沙尼亚
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] dream_shouldStr],// 爱沙尼亚
        //: @"selectLang" : @"et",
        [[ClickData sharedInstance] dreamFileValue] : @"et",
        //: @"Language" : @"et",
        [[ClickData sharedInstance] dreamViewFormat] : @"et",
        //: @"flag" : @"flag_et",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] main_lineUrl],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Finland",// 芬兰
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] kMessageUrl],// 芬兰
        //: @"selectLang" : @"fi",
        [[ClickData sharedInstance] dreamFileValue] : @"fi",
        //: @"Language" : @"fi",
        [[ClickData sharedInstance] dreamViewFormat] : @"fi",
        //: @"flag" : @"flag_fi",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] showFileId],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"En français", // 法语
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] app_teamLabelShowIdent], // 法语
        //: @"selectLang" : @"fr",
        [[ClickData sharedInstance] dreamFileValue] : @"fr",
        //: @"Language" : @"fr",
        [[ClickData sharedInstance] dreamViewFormat] : @"fr",
        //: @"flag" : @"flag_fr",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] dream_titleStr],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Das ist Deutsch.",// 德语
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] dreamRedPath],// 德语
        //: @"selectLang" : @"de",
        [[ClickData sharedInstance] dreamFileValue] : @"de",
        //: @"Language" : @"de",
        [[ClickData sharedInstance] dreamViewFormat] : @"de",
        //: @"flag" : @"flag_de",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] dreamFileFromFormat],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Greece",// 希腊
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] mShowTitle],// 希腊
        //: @"selectLang" : @"el",
        [[ClickData sharedInstance] dreamFileValue] : @"el",
        //: @"Language" : @"el",
        [[ClickData sharedInstance] dreamViewFormat] : @"el",
        //: @"flag" : @"flag_el",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] k_lineTitle],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Hungary",// 匈牙利
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] appShouldMessage],// 匈牙利
        //: @"selectLang" : @"hu",
        [[ClickData sharedInstance] dreamFileValue] : @"hu",
        //: @"Language" : @"hu",
        [[ClickData sharedInstance] dreamViewFormat] : @"hu",
        //: @"flag" : @"flag_hu",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] k_pinValue],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Ireland",// 爱尔兰
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] user_nameFromUrl],// 爱尔兰
        //: @"selectLang" : @"ga",
        [[ClickData sharedInstance] dreamFileValue] : @"ga",
        //: @"Language" : @"ga",
        [[ClickData sharedInstance] dreamViewFormat] : @"ga",
        //: @"flag" : @"flag_ga",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] show_sizeRemoveText],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Italy",// 意大利语
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] main_redNameKey],// 意大利语
        //: @"selectLang" : @"it",
        [[ClickData sharedInstance] dreamFileValue] : @"it",
        //: @"Language" : @"it",
        [[ClickData sharedInstance] dreamViewFormat] : @"it",
        //: @"flag" : @"flag_it",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] dream_lineIdent],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Latvia",// 拉脱维亚
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] app_afterInputPath],// 拉脱维亚
        //: @"selectLang" : @"lv",
        [[ClickData sharedInstance] dreamFileValue] : @"lv",
        //: @"Language" : @"lv",
        [[ClickData sharedInstance] dreamViewFormat] : @"lv",
        //: @"flag" : @"flag_lv",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] user_imageStr],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Lithuania",// 立陶宛
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] notiRangeKey],// 立陶宛
        //: @"selectLang" : @"lt",
        [[ClickData sharedInstance] dreamFileValue] : @"lt",
        //: @"Language" : @"lt",
        [[ClickData sharedInstance] dreamViewFormat] : @"lt",
        //: @"flag" : @"flag_lt",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] noti_removeFormat],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Luxembourg",// 卢森堡
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] dreamTeamValue],// 卢森堡
        //: @"selectLang" : @"lb",
        [[ClickData sharedInstance] dreamFileValue] : @"lb",
        //: @"Language" : @"lb",
        [[ClickData sharedInstance] dreamViewFormat] : @"lb",
        //: @"flag" : @"flag_lb",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] notiSourceStr],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Malta",// 马耳他
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] notiWithName],// 马耳他
        //: @"selectLang" : @"mt",
        [[ClickData sharedInstance] dreamFileValue] : @"mt",
        //: @"Language" : @"mt",
        [[ClickData sharedInstance] dreamViewFormat] : @"mt",
        //: @"flag" : @"flag_mt",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] main_cellMsg],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Netherlands",// 荷兰
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] showMessageCornerName],// 荷兰
        //: @"selectLang" : @"nl",
        [[ClickData sharedInstance] dreamFileValue] : @"nl",
        //: @"Language" : @"nl",
        [[ClickData sharedInstance] dreamViewFormat] : @"nl",
        //: @"flag" : @"flag_nl",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] notiMakeTitle],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Poland",// 波兰
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] dream_teamStr],// 波兰
        //: @"selectLang" : @"pl",
        [[ClickData sharedInstance] dreamFileValue] : @"pl",
        //: @"Language" : @"pl",
        [[ClickData sharedInstance] dreamViewFormat] : @"pl",
        //: @"flag" : @"flag_pl",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] kManagerKey],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Língua portuguesa", // 葡萄牙
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] kRangeName], // 葡萄牙
        //: @"selectLang" : @"pt",
        [[ClickData sharedInstance] dreamFileValue] : @"pt",
        //: @"Language" : @"pt",
        [[ClickData sharedInstance] dreamViewFormat] : @"pt",
        //: @"flag" : @"flag_pt",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] appSelectData],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Romania",// 罗马尼亚
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] mClickMessageUrl],// 罗马尼亚
        //: @"selectLang" : @"ro",
        [[ClickData sharedInstance] dreamFileValue] : @"ro",
        //: @"Language" : @"ro",
        [[ClickData sharedInstance] dreamViewFormat] : @"ro",
        //: @"flag" : @"flag_ro",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] show_redPath],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Slovakia",// 斯洛伐克
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] kModeUrl],// 斯洛伐克
        //: @"selectLang" : @"sk",
        [[ClickData sharedInstance] dreamFileValue] : @"sk",
        //: @"Language" : @"sk",
        [[ClickData sharedInstance] dreamViewFormat] : @"sk",
        //: @"flag" : @"flag_sk",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] dreamDoingText],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Slovenia",// 斯洛文尼亚
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] userOptionName],// 斯洛文尼亚
        //: @"selectLang" : @"sl",
        [[ClickData sharedInstance] dreamFileValue] : @"sl",
        //: @"Language" : @"sl",
        [[ClickData sharedInstance] dreamViewFormat] : @"sl",
        //: @"flag" : @"flag_sl",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] noti_successStr],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Español", // 西班牙
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] show_childIdent], // 西班牙
        //: @"selectLang" : @"spa",
        [[ClickData sharedInstance] dreamFileValue] : [[ClickData sharedInstance] noti_greenMessage],
        //: @"Language" : @"spa",
        [[ClickData sharedInstance] dreamViewFormat] : [[ClickData sharedInstance] noti_greenMessage],
        //: @"flag" : @"flag_spa",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] showLetterIdent],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"Sweden",// 瑞典
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] k_replyPath],// 瑞典
        //: @"selectLang" : @"sv",
        [[ClickData sharedInstance] dreamFileValue] : @"sv",
        //: @"Language" : @"sv",
        [[ClickData sharedInstance] dreamViewFormat] : @"sv",
        //: @"flag" : @"flag_sv",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] dream_enableUrl],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"中文",
        [[ClickData sharedInstance] noti_minMsg] : @"中文",
        //: @"selectLang" : @"zh",
        [[ClickData sharedInstance] dreamFileValue] : @"zh",
        //: @"Language" : @"zh",
        [[ClickData sharedInstance] dreamViewFormat] : @"zh",
        //: @"flag" : @"flag_zh",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] appToolMsg],
    //: },
    },
    //: @{
    @{
        //: @"Title" : @"中文繁体（新加坡）",
        [[ClickData sharedInstance] noti_minMsg] : [[ClickData sharedInstance] notiBottomContent],
        //: @"Language" : @"hant",
        [[ClickData sharedInstance] dreamViewFormat] : [[ClickData sharedInstance] dream_cellPath],
        //: @"selectLang" : @"hant",
        [[ClickData sharedInstance] dreamFileValue] : [[ClickData sharedInstance] dream_cellPath],
        //: @"flag" : @"flag_zh",
        [[ClickData sharedInstance] kTitleSuccessIdent] : [[ClickData sharedInstance] appToolMsg],
    }
    //: ];
    ];

    //: self.data = [NSArray arrayWithArray:self.tData];
    self.data = [NSArray arrayWithArray:self.tData];

    //: self.MuttableData = [NSMutableArray array];
    self.MuttableData = [NSMutableArray array];

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

    //: return 56;
    return 56;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 2.2250738585072014e-308;
    return 2.2250738585072014e-308;
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
    //: return 10;
    return 10;
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

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: NTESLanguageTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"lang" forIndexPath:indexPath];
    VersionView *cell = [self.tableView dequeueReusableCellWithIdentifier:[[ClickData sharedInstance] user_factorMsg] forIndexPath:indexPath];
      //MyTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ft"];
      //if(cell == nil) {
      //    cell = [[MyTableViewCell alloc] initWithStyle:UITableViewStylePlain reuseIdentifier:@"ft"];
      //}
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;

    //: NSDictionary *dic = self.data[indexPath.section];
    NSDictionary *dic = self.data[indexPath.section];
    //: cell.labTitle.text = dic[@"Title"];
    cell.labTitle.text = dic[[[ClickData sharedInstance] noti_minMsg]];
    //: cell.countyImg.image = [UIImage imageNamed:dic[@"flag"]];
    cell.countyImg.image = [UIImage imageNamed:dic[[[ClickData sharedInstance] kTitleSuccessIdent]]];

    //: NSString *lang = dic[@"selectLang"];
    NSString *lang = dic[[[ClickData sharedInstance] dreamFileValue]];
    //: NSString *language = [NIMUserDefaults standardUserDefaults].language;
    NSString *language = [DataMaxDefaults max].language;
    //: if([lang isEqualToString:language]){
    if([lang isEqualToString:language]){
        //: cell.layer.borderWidth = 2;
        cell.layer.borderWidth = 2;
        //: cell.layer.borderColor = [UIColor colorWithHexString:@"#02D8C9"].CGColor;
        cell.layer.borderColor = [UIColor status:[[ClickData sharedInstance] dreamFromRemoveUrl]].CGColor;
    //: }else{
    }else{
        //: cell.layer.borderWidth = 0;
        cell.layer.borderWidth = 0;
    }

      //: return cell;
      return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];

    //: [self changedLanguages:self.data[indexPath.section][@"Language"]];
    [self center:self.data[indexPath.section][[[ClickData sharedInstance] dreamViewFormat]]];

}

//: - (void)changedLanguages:(NSString *)lang {
- (void)center:(NSString *)lang {


    //: [[NIMUserDefaults standardUserDefaults] updateLanguageWith:lang];
    [[DataMaxDefaults max] can:lang];

    //: [self.navigationController popToRootViewControllerAnimated:NO];
    [self.navigationController popToRootViewControllerAnimated:NO];



}



//: @end
@end