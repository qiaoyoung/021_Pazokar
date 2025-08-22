
#import <Foundation/Foundation.h>

@interface ExplainData : NSObject

+ (instancetype)sharedInstance;

//: msg
@property (nonatomic, copy) NSString *appInfoMsg;

//: UserAccount
@property (nonatomic, copy) NSString *main_nameIdent;

//: login_activity_login_failed
@property (nonatomic, copy) NSString *mainRedIdent;

//: activity_register_agree
@property (nonatomic, copy) NSString *appSolutionKey;

//: friend_verify_avtivity_net_error
@property (nonatomic, copy) NSString *userAwarenessId;

//: UserPassWord
@property (nonatomic, copy) NSString *dreamAwarenessCellUrl;

//: login_logo
@property (nonatomic, copy) NSString *show_forbidMessage;

//: login_icon_pwd
@property (nonatomic, copy) NSString *show_viewIdent;

//: ic_visible
@property (nonatomic, copy) NSString *app_differentlyIdent;

//: register_account_activity_account
@property (nonatomic, copy) NSString *k_childCellStr;

//: login_bg
@property (nonatomic, copy) NSString *main_listRecentPath;

//: ppp
@property (nonatomic, copy) NSString *show_successData;

//: NotificationLogout
@property (nonatomic, copy) NSString *userCurrentlyMKey;

//: iOS%@
@property (nonatomic, copy) NSString *userFrameIdent;

//: login_success
@property (nonatomic, copy) NSString *app_usuallyUrl;

//: login_icon_user
@property (nonatomic, copy) NSString *kProcedureId;

//: login_agreement_press
@property (nonatomic, copy) NSString *notiMakeText;

//: login_activity_login_success
@property (nonatomic, copy) NSString *user_laughLeadershipId;

//: RegistFinshNotification
@property (nonatomic, copy) NSString *show_viewTitleKey;

//: tap
@property (nonatomic, copy) NSString *m_minValue;

//: ios
@property (nonatomic, copy) NSString *dreamOverseeStr;

//: lang
@property (nonatomic, copy) NSString *notiTightenIdent;

//: activity_login_login
@property (nonatomic, copy) NSString *user_sourceStr;

//: activity_login_has_no_account
@property (nonatomic, copy) NSString *show_vsValue;

//: #8282A7
@property (nonatomic, copy) NSString *dreamRedData;

//: #5D5F66
@property (nonatomic, copy) NSString *m_toolKey;

//: token
@property (nonatomic, copy) NSString *user_woodenUrl;

//: #ffffff
@property (nonatomic, copy) NSString *noti_viewCountText;

//: client
@property (nonatomic, copy) NSString *mainDeleteFainIdent;

//: deviceid
@property (nonatomic, copy) NSString *m_nameIdent;

//: ^[A-Za-z0-9_]{6,18}$
@property (nonatomic, copy) NSString *user_minIdent;

//: systems
@property (nonatomic, copy) NSString *showDifferentlyText;

//: #333333
@property (nonatomic, copy) NSString *notiCenterMsg;

//: login_agreement_normal
@property (nonatomic, copy) NSString *m_defensiveData;

//: type
@property (nonatomic, copy) NSString *k_clickFormat;

//: activity_comment_setting_ys
@property (nonatomic, copy) NSString *mainBottomText;

//: nimtoken
@property (nonatomic, copy) NSString *k_numberStr;

//: login_error
@property (nonatomic, copy) NSString *showStrikeData;

//: register_account_activity_psw
@property (nonatomic, copy) NSString *mainVirusIdent;

//: data
@property (nonatomic, copy) NSString *dream_sizeId;

//: #999999
@property (nonatomic, copy) NSString *mainIdealRedContent;

//: #02D8C9
@property (nonatomic, copy) NSString *k_pathUrl;

//: tun
@property (nonatomic, copy) NSString *mMyLetterData;

//: activity_register_title
@property (nonatomic, copy) NSString *mainGateKey;

//: telname
@property (nonatomic, copy) NSString *user_messageKey;

//: issup
@property (nonatomic, copy) NSString *m_objectFilePath;

//: activity_login_welcome
@property (nonatomic, copy) NSString *show_toolTitle;

//: account
@property (nonatomic, copy) NSString *mKillerId;

//: ic_invisible
@property (nonatomic, copy) NSString *appFainStr;

//: SELF MATCHES %@
@property (nonatomic, copy) NSString *mainTeamKey;

//: code
@property (nonatomic, copy) NSString *noti_usuallyName;

//: vpn
@property (nonatomic, copy) NSString *showMotorMessage;

//: ^[A-Za-z0-9_]{6,12}$
@property (nonatomic, copy) NSString *m_procedureContent;

//: password
@property (nonatomic, copy) NSString *user_cellFormat;

//: /user/login
@property (nonatomic, copy) NSString *mEcruText;

//: __SCOPED__
@property (nonatomic, copy) NSString *appAggressiveMessage;

@end

@implementation ExplainData

+ (instancetype)sharedInstance {
    static ExplainData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ExplainDataToCache:(Byte *)data {
    int honestlyShow = data[0];
    Byte sizeTool = data[1];
    int migrationFrom = data[2];
    for (int i = migrationFrom; i < migrationFrom + honestlyShow; i++) {
        int value = data[i] - sizeTool;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[migrationFrom + honestlyShow] = 0;
    return data + migrationFrom;
}

- (NSString *)StringFromExplainData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ExplainDataToCache:data]];
}

//: #5D5F66
- (NSString *)m_toolKey {
    if (!_m_toolKey) {
        Byte value[] = {7, 80, 3, 115, 133, 148, 133, 150, 134, 134, 142};
        _m_toolKey = [self StringFromExplainData:value];
    }
    return _m_toolKey;
}

//: data
- (NSString *)dream_sizeId {
    if (!_dream_sizeId) {
        Byte value[] = {4, 42, 11, 170, 60, 100, 98, 190, 113, 87, 205, 142, 139, 158, 139, 92};
        _dream_sizeId = [self StringFromExplainData:value];
    }
    return _dream_sizeId;
}

//: #999999
- (NSString *)mainIdealRedContent {
    if (!_mainIdealRedContent) {
        Byte value[] = {7, 23, 11, 11, 102, 181, 175, 199, 18, 87, 205, 58, 80, 80, 80, 80, 80, 80, 52};
        _mainIdealRedContent = [self StringFromExplainData:value];
    }
    return _mainIdealRedContent;
}

//: token
- (NSString *)user_woodenUrl {
    if (!_user_woodenUrl) {
        Byte value[] = {5, 66, 3, 182, 177, 173, 167, 176, 82};
        _user_woodenUrl = [self StringFromExplainData:value];
    }
    return _user_woodenUrl;
}

//: deviceid
- (NSString *)m_nameIdent {
    if (!_m_nameIdent) {
        Byte value[] = {8, 12, 11, 43, 190, 155, 226, 27, 51, 27, 236, 112, 113, 130, 117, 111, 113, 117, 112, 10};
        _m_nameIdent = [self StringFromExplainData:value];
    }
    return _m_nameIdent;
}

//: login_icon_pwd
- (NSString *)show_viewIdent {
    if (!_show_viewIdent) {
        Byte value[] = {14, 55, 3, 163, 166, 158, 160, 165, 150, 160, 154, 166, 165, 150, 167, 174, 155, 89};
        _show_viewIdent = [self StringFromExplainData:value];
    }
    return _show_viewIdent;
}

//: tun
- (NSString *)mMyLetterData {
    if (!_mMyLetterData) {
        Byte value[] = {3, 55, 3, 171, 172, 165, 247};
        _mMyLetterData = [self StringFromExplainData:value];
    }
    return _mMyLetterData;
}

//: login_icon_user
- (NSString *)kProcedureId {
    if (!_kProcedureId) {
        Byte value[] = {15, 61, 5, 130, 210, 169, 172, 164, 166, 171, 156, 166, 160, 172, 171, 156, 178, 176, 162, 175, 205};
        _kProcedureId = [self StringFromExplainData:value];
    }
    return _kProcedureId;
}

//: ppp
- (NSString *)show_successData {
    if (!_show_successData) {
        Byte value[] = {3, 55, 10, 170, 156, 190, 33, 146, 183, 129, 167, 167, 167, 146};
        _show_successData = [self StringFromExplainData:value];
    }
    return _show_successData;
}

//: telname
- (NSString *)user_messageKey {
    if (!_user_messageKey) {
        Byte value[] = {7, 87, 12, 159, 211, 53, 194, 20, 172, 235, 179, 248, 203, 188, 195, 197, 184, 196, 188, 248};
        _user_messageKey = [self StringFromExplainData:value];
    }
    return _user_messageKey;
}

//: login_error
- (NSString *)showStrikeData {
    if (!_showStrikeData) {
        Byte value[] = {11, 61, 8, 188, 221, 1, 16, 162, 169, 172, 164, 166, 171, 156, 162, 175, 175, 172, 175, 246};
        _showStrikeData = [self StringFromExplainData:value];
    }
    return _showStrikeData;
}

//: UserAccount
- (NSString *)main_nameIdent {
    if (!_main_nameIdent) {
        Byte value[] = {11, 78, 11, 169, 247, 36, 8, 55, 129, 134, 211, 163, 193, 179, 192, 143, 177, 177, 189, 195, 188, 194, 124};
        _main_nameIdent = [self StringFromExplainData:value];
    }
    return _main_nameIdent;
}

//: #02D8C9
- (NSString *)k_pathUrl {
    if (!_k_pathUrl) {
        Byte value[] = {7, 67, 7, 38, 207, 36, 15, 102, 115, 117, 135, 123, 134, 124, 252};
        _k_pathUrl = [self StringFromExplainData:value];
    }
    return _k_pathUrl;
}

//: login_bg
- (NSString *)main_listRecentPath {
    if (!_main_listRecentPath) {
        Byte value[] = {8, 14, 11, 66, 226, 164, 147, 107, 135, 207, 106, 122, 125, 117, 119, 124, 109, 112, 117, 58};
        _main_listRecentPath = [self StringFromExplainData:value];
    }
    return _main_listRecentPath;
}

//: activity_register_agree
- (NSString *)appSolutionKey {
    if (!_appSolutionKey) {
        Byte value[] = {23, 17, 4, 131, 114, 116, 133, 122, 135, 122, 133, 138, 112, 131, 118, 120, 122, 132, 133, 118, 131, 112, 114, 120, 131, 118, 118, 81};
        _appSolutionKey = [self StringFromExplainData:value];
    }
    return _appSolutionKey;
}

//: __SCOPED__
- (NSString *)appAggressiveMessage {
    if (!_appAggressiveMessage) {
        Byte value[] = {10, 12, 12, 87, 72, 199, 207, 178, 85, 96, 161, 108, 107, 107, 95, 79, 91, 92, 81, 80, 107, 107, 154};
        _appAggressiveMessage = [self StringFromExplainData:value];
    }
    return _appAggressiveMessage;
}

//: ic_invisible
- (NSString *)appFainStr {
    if (!_appFainStr) {
        Byte value[] = {12, 9, 11, 132, 19, 31, 224, 168, 90, 43, 142, 114, 108, 104, 114, 119, 127, 114, 124, 114, 107, 117, 110, 245};
        _appFainStr = [self StringFromExplainData:value];
    }
    return _appFainStr;
}

//: #8282A7
- (NSString *)dreamRedData {
    if (!_dreamRedData) {
        Byte value[] = {7, 75, 9, 153, 100, 118, 133, 171, 5, 110, 131, 125, 131, 125, 140, 130, 164};
        _dreamRedData = [self StringFromExplainData:value];
    }
    return _dreamRedData;
}

//: login_agreement_press
- (NSString *)notiMakeText {
    if (!_notiMakeText) {
        Byte value[] = {21, 55, 12, 199, 231, 116, 189, 155, 142, 192, 38, 87, 163, 166, 158, 160, 165, 150, 152, 158, 169, 156, 156, 164, 156, 165, 171, 150, 167, 169, 156, 170, 170, 6};
        _notiMakeText = [self StringFromExplainData:value];
    }
    return _notiMakeText;
}

//: ios
- (NSString *)dreamOverseeStr {
    if (!_dreamOverseeStr) {
        Byte value[] = {3, 27, 3, 132, 138, 142, 201};
        _dreamOverseeStr = [self StringFromExplainData:value];
    }
    return _dreamOverseeStr;
}

//: UserPassWord
- (NSString *)dreamAwarenessCellUrl {
    if (!_dreamAwarenessCellUrl) {
        Byte value[] = {12, 37, 4, 55, 122, 152, 138, 151, 117, 134, 152, 152, 124, 148, 151, 137, 97};
        _dreamAwarenessCellUrl = [self StringFromExplainData:value];
    }
    return _dreamAwarenessCellUrl;
}

//: #ffffff
- (NSString *)noti_viewCountText {
    if (!_noti_viewCountText) {
        Byte value[] = {7, 92, 3, 127, 194, 194, 194, 194, 194, 194, 45};
        _noti_viewCountText = [self StringFromExplainData:value];
    }
    return _noti_viewCountText;
}

//: #333333
- (NSString *)notiCenterMsg {
    if (!_notiCenterMsg) {
        Byte value[] = {7, 71, 8, 239, 166, 141, 220, 220, 106, 122, 122, 122, 122, 122, 122, 94};
        _notiCenterMsg = [self StringFromExplainData:value];
    }
    return _notiCenterMsg;
}

//: ^[A-Za-z0-9_]{6,18}$
- (NSString *)user_minIdent {
    if (!_user_minIdent) {
        Byte value[] = {20, 63, 4, 29, 157, 154, 128, 108, 153, 160, 108, 185, 111, 108, 120, 158, 156, 186, 117, 107, 112, 119, 188, 99, 36};
        _user_minIdent = [self StringFromExplainData:value];
    }
    return _user_minIdent;
}

//: msg
- (NSString *)appInfoMsg {
    if (!_appInfoMsg) {
        Byte value[] = {3, 83, 10, 62, 185, 14, 87, 141, 57, 1, 192, 198, 186, 31};
        _appInfoMsg = [self StringFromExplainData:value];
    }
    return _appInfoMsg;
}

//: lang
- (NSString *)notiTightenIdent {
    if (!_notiTightenIdent) {
        Byte value[] = {4, 14, 3, 122, 111, 124, 117, 66};
        _notiTightenIdent = [self StringFromExplainData:value];
    }
    return _notiTightenIdent;
}

//: activity_comment_setting_ys
- (NSString *)mainBottomText {
    if (!_mainBottomText) {
        Byte value[] = {27, 96, 7, 60, 24, 187, 21, 193, 195, 212, 201, 214, 201, 212, 217, 191, 195, 207, 205, 205, 197, 206, 212, 191, 211, 197, 212, 212, 201, 206, 199, 191, 217, 211, 99};
        _mainBottomText = [self StringFromExplainData:value];
    }
    return _mainBottomText;
}

//: account
- (NSString *)mKillerId {
    if (!_mKillerId) {
        Byte value[] = {7, 96, 3, 193, 195, 195, 207, 213, 206, 212, 245};
        _mKillerId = [self StringFromExplainData:value];
    }
    return _mKillerId;
}

//: login_logo
- (NSString *)show_forbidMessage {
    if (!_show_forbidMessage) {
        Byte value[] = {10, 33, 13, 95, 20, 193, 108, 94, 2, 1, 117, 255, 77, 141, 144, 136, 138, 143, 128, 141, 144, 136, 144, 73};
        _show_forbidMessage = [self StringFromExplainData:value];
    }
    return _show_forbidMessage;
}

//: RegistFinshNotification
- (NSString *)show_viewTitleKey {
    if (!_show_viewTitleKey) {
        Byte value[] = {23, 29, 12, 111, 117, 174, 132, 153, 87, 169, 106, 178, 111, 130, 132, 134, 144, 145, 99, 134, 139, 144, 133, 107, 140, 145, 134, 131, 134, 128, 126, 145, 134, 140, 139, 27};
        _show_viewTitleKey = [self StringFromExplainData:value];
    }
    return _show_viewTitleKey;
}

//: ic_visible
- (NSString *)app_differentlyIdent {
    if (!_app_differentlyIdent) {
        Byte value[] = {10, 80, 13, 211, 108, 196, 10, 3, 119, 131, 34, 145, 217, 185, 179, 175, 198, 185, 195, 185, 178, 188, 181, 21};
        _app_differentlyIdent = [self StringFromExplainData:value];
    }
    return _app_differentlyIdent;
}

//: activity_login_has_no_account
- (NSString *)show_vsValue {
    if (!_show_vsValue) {
        Byte value[] = {29, 98, 5, 154, 155, 195, 197, 214, 203, 216, 203, 214, 219, 193, 206, 209, 201, 203, 208, 193, 202, 195, 213, 193, 208, 209, 193, 195, 197, 197, 209, 215, 208, 214, 244};
        _show_vsValue = [self StringFromExplainData:value];
    }
    return _show_vsValue;
}

//: register_account_activity_psw
- (NSString *)mainVirusIdent {
    if (!_mainVirusIdent) {
        Byte value[] = {29, 75, 4, 20, 189, 176, 178, 180, 190, 191, 176, 189, 170, 172, 174, 174, 186, 192, 185, 191, 170, 172, 174, 191, 180, 193, 180, 191, 196, 170, 187, 190, 194, 185};
        _mainVirusIdent = [self StringFromExplainData:value];
    }
    return _mainVirusIdent;
}

//: NotificationLogout
- (NSString *)userCurrentlyMKey {
    if (!_userCurrentlyMKey) {
        Byte value[] = {18, 47, 10, 174, 58, 206, 95, 108, 176, 40, 125, 158, 163, 152, 149, 152, 146, 144, 163, 152, 158, 157, 123, 158, 150, 158, 164, 163, 115};
        _userCurrentlyMKey = [self StringFromExplainData:value];
    }
    return _userCurrentlyMKey;
}

//: SELF MATCHES %@
- (NSString *)mainTeamKey {
    if (!_mainTeamKey) {
        Byte value[] = {15, 20, 7, 210, 167, 58, 45, 103, 89, 96, 90, 52, 97, 85, 104, 87, 92, 89, 103, 52, 57, 84, 154};
        _mainTeamKey = [self StringFromExplainData:value];
    }
    return _mainTeamKey;
}

//: /user/login
- (NSString *)mEcruText {
    if (!_mEcruText) {
        Byte value[] = {11, 97, 6, 7, 177, 96, 144, 214, 212, 198, 211, 144, 205, 208, 200, 202, 207, 238};
        _mEcruText = [self StringFromExplainData:value];
    }
    return _mEcruText;
}

//: systems
- (NSString *)showDifferentlyText {
    if (!_showDifferentlyText) {
        Byte value[] = {7, 3, 3, 118, 124, 118, 119, 104, 112, 118, 251};
        _showDifferentlyText = [self StringFromExplainData:value];
    }
    return _showDifferentlyText;
}

//: code
- (NSString *)noti_usuallyName {
    if (!_noti_usuallyName) {
        Byte value[] = {4, 94, 13, 137, 250, 161, 35, 58, 196, 116, 236, 161, 237, 193, 205, 194, 195, 78};
        _noti_usuallyName = [self StringFromExplainData:value];
    }
    return _noti_usuallyName;
}

//: login_activity_login_success
- (NSString *)user_laughLeadershipId {
    if (!_user_laughLeadershipId) {
        Byte value[] = {28, 37, 13, 23, 66, 80, 68, 156, 193, 77, 75, 96, 21, 145, 148, 140, 142, 147, 132, 134, 136, 153, 142, 155, 142, 153, 158, 132, 145, 148, 140, 142, 147, 132, 152, 154, 136, 136, 138, 152, 152, 88};
        _user_laughLeadershipId = [self StringFromExplainData:value];
    }
    return _user_laughLeadershipId;
}

//: register_account_activity_account
- (NSString *)k_childCellStr {
    if (!_k_childCellStr) {
        Byte value[] = {33, 80, 8, 162, 147, 221, 36, 145, 194, 181, 183, 185, 195, 196, 181, 194, 175, 177, 179, 179, 191, 197, 190, 196, 175, 177, 179, 196, 185, 198, 185, 196, 201, 175, 177, 179, 179, 191, 197, 190, 196, 44};
        _k_childCellStr = [self StringFromExplainData:value];
    }
    return _k_childCellStr;
}

//: login_success
- (NSString *)app_usuallyUrl {
    if (!_app_usuallyUrl) {
        Byte value[] = {13, 47, 7, 21, 136, 184, 227, 155, 158, 150, 152, 157, 142, 162, 164, 146, 146, 148, 162, 162, 132};
        _app_usuallyUrl = [self StringFromExplainData:value];
    }
    return _app_usuallyUrl;
}

//: activity_register_title
- (NSString *)mainGateKey {
    if (!_mainGateKey) {
        Byte value[] = {23, 31, 10, 81, 98, 57, 205, 132, 182, 132, 128, 130, 147, 136, 149, 136, 147, 152, 126, 145, 132, 134, 136, 146, 147, 132, 145, 126, 147, 136, 147, 139, 132, 252};
        _mainGateKey = [self StringFromExplainData:value];
    }
    return _mainGateKey;
}

//: login_agreement_normal
- (NSString *)m_defensiveData {
    if (!_m_defensiveData) {
        Byte value[] = {22, 67, 9, 228, 208, 10, 11, 111, 3, 175, 178, 170, 172, 177, 162, 164, 170, 181, 168, 168, 176, 168, 177, 183, 162, 177, 178, 181, 176, 164, 175, 109};
        _m_defensiveData = [self StringFromExplainData:value];
    }
    return _m_defensiveData;
}

//: ^[A-Za-z0-9_]{6,12}$
- (NSString *)m_procedureContent {
    if (!_m_procedureContent) {
        Byte value[] = {20, 33, 3, 127, 124, 98, 78, 123, 130, 78, 155, 81, 78, 90, 128, 126, 156, 87, 77, 82, 83, 158, 69, 109};
        _m_procedureContent = [self StringFromExplainData:value];
    }
    return _m_procedureContent;
}

//: activity_login_login
- (NSString *)user_sourceStr {
    if (!_user_sourceStr) {
        Byte value[] = {20, 17, 5, 22, 32, 114, 116, 133, 122, 135, 122, 133, 138, 112, 125, 128, 120, 122, 127, 112, 125, 128, 120, 122, 127, 194};
        _user_sourceStr = [self StringFromExplainData:value];
    }
    return _user_sourceStr;
}

//: type
- (NSString *)k_clickFormat {
    if (!_k_clickFormat) {
        Byte value[] = {4, 17, 9, 136, 93, 46, 165, 229, 203, 133, 138, 129, 118, 146};
        _k_clickFormat = [self StringFromExplainData:value];
    }
    return _k_clickFormat;
}

//: iOS%@
- (NSString *)userFrameIdent {
    if (!_userFrameIdent) {
        Byte value[] = {5, 77, 4, 172, 182, 156, 160, 114, 141, 127};
        _userFrameIdent = [self StringFromExplainData:value];
    }
    return _userFrameIdent;
}

//: vpn
- (NSString *)showMotorMessage {
    if (!_showMotorMessage) {
        Byte value[] = {3, 64, 13, 249, 241, 201, 202, 45, 116, 187, 242, 77, 132, 182, 176, 174, 103};
        _showMotorMessage = [self StringFromExplainData:value];
    }
    return _showMotorMessage;
}

//: password
- (NSString *)user_cellFormat {
    if (!_user_cellFormat) {
        Byte value[] = {8, 51, 12, 177, 78, 45, 112, 173, 26, 142, 13, 159, 163, 148, 166, 166, 170, 162, 165, 151, 218};
        _user_cellFormat = [self StringFromExplainData:value];
    }
    return _user_cellFormat;
}

//: friend_verify_avtivity_net_error
- (NSString *)userAwarenessId {
    if (!_userAwarenessId) {
        Byte value[] = {32, 33, 4, 142, 135, 147, 138, 134, 143, 133, 128, 151, 134, 147, 138, 135, 154, 128, 130, 151, 149, 138, 151, 138, 149, 154, 128, 143, 134, 149, 128, 134, 147, 147, 144, 147, 61};
        _userAwarenessId = [self StringFromExplainData:value];
    }
    return _userAwarenessId;
}

//: tap
- (NSString *)m_minValue {
    if (!_m_minValue) {
        Byte value[] = {3, 85, 10, 86, 10, 253, 86, 178, 103, 78, 201, 182, 197, 43};
        _m_minValue = [self StringFromExplainData:value];
    }
    return _m_minValue;
}

//: nimtoken
- (NSString *)k_numberStr {
    if (!_k_numberStr) {
        Byte value[] = {8, 71, 10, 161, 126, 60, 238, 10, 91, 184, 181, 176, 180, 187, 182, 178, 172, 181, 137};
        _k_numberStr = [self StringFromExplainData:value];
    }
    return _k_numberStr;
}

//: client
- (NSString *)mainDeleteFainIdent {
    if (!_mainDeleteFainIdent) {
        Byte value[] = {6, 81, 13, 227, 18, 74, 168, 169, 35, 176, 201, 220, 239, 180, 189, 186, 182, 191, 197, 150};
        _mainDeleteFainIdent = [self StringFromExplainData:value];
    }
    return _mainDeleteFainIdent;
}

//: activity_login_welcome
- (NSString *)show_toolTitle {
    if (!_show_toolTitle) {
        Byte value[] = {22, 18, 7, 128, 83, 251, 126, 115, 117, 134, 123, 136, 123, 134, 139, 113, 126, 129, 121, 123, 128, 113, 137, 119, 126, 117, 129, 127, 119, 219};
        _show_toolTitle = [self StringFromExplainData:value];
    }
    return _show_toolTitle;
}

//: login_activity_login_failed
- (NSString *)mainRedIdent {
    if (!_mainRedIdent) {
        Byte value[] = {27, 9, 11, 65, 103, 97, 53, 133, 12, 63, 7, 117, 120, 112, 114, 119, 104, 106, 108, 125, 114, 127, 114, 125, 130, 104, 117, 120, 112, 114, 119, 104, 111, 106, 114, 117, 110, 109, 31};
        _mainRedIdent = [self StringFromExplainData:value];
    }
    return _mainRedIdent;
}

//: issup
- (NSString *)m_objectFilePath {
    if (!_m_objectFilePath) {
        Byte value[] = {5, 13, 13, 241, 40, 139, 173, 151, 136, 105, 22, 134, 118, 118, 128, 128, 130, 125, 78};
        _m_objectFilePath = [self StringFromExplainData:value];
    }
    return _m_objectFilePath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PinViewController.m
//  NIMDemo
//
//  Created by ght on 15-1-26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFLoginViewController.h"
#import "PinViewController.h"
//: #import "NTESMainTabController.h"
#import "LightGreenViewController.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "NSString+NTES.h"
#import "NSString+Date.h"
//: #import "CCCLoginManager.h"
#import "RowTop.h"
//: #import "NTESNotificationCenter.h"
#import "CanLabel.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+Enable.h"
//: #import "FFFRegisterViewController.h"
#import "TapViewController.h"
//: #import "NTESRegistConfigManager.h"
#import "PinMoreManager.h"
//: #import <CoreTelephony/CTCellularData.h>
#import <CoreTelephony/CTCellularData.h>
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "CCCAutoLoginManager.h"
#import "NoticeManager.h"
//: #import "SNDevice.h"
#import "CutVersion.h"
//: #import "ZMONPolicyPrivacyViewController.h"
#import "InformationViewController.h"
//: #import "GetBackPasswordViewController.h"
#import "SendViewController.h"

//: @interface FFFLoginViewController ()<UITextFieldDelegate> {
@interface PinViewController ()<UITextFieldDelegate> {
    //: UIActivityIndicatorView *_ActivityIndicator;
    UIActivityIndicatorView *_ActivityIndicator;
    //: BOOL _isloading;
    BOOL _isloading;
}
//: @property (strong, nonatomic) UIImageView *logoImageView;
@property (strong, nonatomic) UIImageView *logoImageView;

//: @property (nonatomic, strong) UIButton *agreementButton;
@property (nonatomic, strong) UIButton *agreementButton;
//: @property (nonatomic, strong) UIButton *secureButton;
@property (nonatomic, strong) UIButton *secureButton;

//: @property (strong, nonatomic) UIButton *registerButton;
@property (strong, nonatomic) UIButton *registerButton;
//: @property (strong, nonatomic) UITextField *usernameTextField;
@property (strong, nonatomic) UITextField *usernameTextField;
//: @property (strong, nonatomic) UIImageView *titleImg;
@property (strong, nonatomic) UIImageView *titleImg;
//: @property (strong, nonatomic) UIImageView *titleImg2;
@property (strong, nonatomic) UIImageView *titleImg2;

//: @property (strong, nonatomic) UITextField *passwordTextField;
@property (strong, nonatomic) UITextField *passwordTextField;

//: @property (strong, nonatomic) UIButton *loginButton;
@property (strong, nonatomic) UIButton *loginButton;

//: @property (nonatomic,strong) YYLabel *protocolLabel;
@property (nonatomic,strong) YYLabel *protocolLabel;
//: @property (nonatomic,strong) YYLabel *registLabel;
@property (nonatomic,strong) YYLabel *registLabel;

//: @property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) MoreView *loadingView;

//: @end
@end

//: @implementation FFFLoginViewController
@implementation PinViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"login_bg"];
    bg.image = [UIImage imageNamed:[ExplainData sharedInstance].main_listRecentPath];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [NTESRegistConfigManager shareConfigManager].loginVC = self;
    [PinMoreManager impression].loginVC = self;

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    DataMaxDefaults *userDefaults = [DataMaxDefaults max];
    //: if (userDefaults.language.length > 0) {
    if (userDefaults.language.length > 0) {
        //: [CCCAutoLoginManager sharedManager].isRequestAutoLoginFinish = YES;
        [NoticeManager view].isRequestAutoLoginFinish = YES;
        //: [self autoLogin];
        [self autoRecording];
    //: } else {
    } else {

        //等待登陆菊花初始化：
        //: _ActivityIndicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
        _ActivityIndicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
        //设置菊花的中心点，貌似不能设置菊花的大小，系统自带的有三种样式
        //: _ActivityIndicator.color = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        _ActivityIndicator.color = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: _ActivityIndicator.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2);
        _ActivityIndicator.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2);
        //添加菊花
        //: [self.view addSubview:_ActivityIndicator];
        [self.view addSubview:_ActivityIndicator];

        //: [self needsInitUI];
        [self action];
    }

    //1.获取网络权限 根绝权限进行人机交互
     //: if (100000) {
     if (100000) {
         //: [self networkStatus];
         [self filter];
     //: }else {
     }else {
         //2.2已经开启网络权限 监听网络状态
         //: [self addReachabilityManager];
         [self comment];
     }

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(registSuccessWithAccount:) name:@"RegistFinshNotification" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(bubbleMessage:) name:[ExplainData sharedInstance].show_viewTitleKey object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];



//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:KEKENotificationLanguageChanged object:nil];

//    [self.view addSubview:self.loadingView];
//    self.loadingView.hidden = YES;
}

//- (void)languageChanged:(NSNotification *)noti {
////    [self refreshNavBarStyle];
//    [_loginButton setTitle:LangKey(@"activity_login_login") forState:UIControlStateNormal];
//    [_registerButton setTitle:LangKey(@"activity_register_title") forState:UIControlStateNormal];
//}

//: - (void)needsInitUI {
- (void)action {

    //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
    DataMaxDefaults *userDefaults = [DataMaxDefaults max];
    //: if (userDefaults.language && userDefaults.language.length <= 0) {
    if (userDefaults.language && userDefaults.language.length <= 0) {

        //在某个地方设置其 ，开始旋转动画
        //: [_ActivityIndicator startAnimating];
        [_ActivityIndicator startAnimating];

        //: [ZCHttpManager refreshGlobalConfig:^(NSDictionary * _Nonnull configDict) {
        [TitleManageressManager compartment:^(NSDictionary * _Nonnull configDict) {//处理第一次启动语言问题
            //: if (configDict.allKeys.count > 0) {
            if (configDict.allKeys.count > 0) {
                //: NIMUserDefaults *userDefaults = [NIMUserDefaults standardUserDefaults];
                DataMaxDefaults *userDefaults = [DataMaxDefaults max];
                //: NSString *lang = [configDict newStringValueForKey:@"lang"];
                NSString *lang = [configDict tag:[ExplainData sharedInstance].notiTightenIdent];
                //: if (userDefaults.yinnihione.length > 0 && [userDefaults.yinnihione boolValue]){
                if (userDefaults.yinnihione.length > 0 && [userDefaults.yinnihione boolValue]){
                    //: lang = @"en";
                    lang = @"en";
                }
                //: userDefaults.language = lang;
                userDefaults.language = lang;
                //: [[FFFLanguageManager shareInstance] setLanguagre:lang];
                [[SendName along] setMagnitudeernationality:lang];
                //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
                [[NSNotificationCenter defaultCenter] postNotificationName:[ExplainData sharedInstance].userCurrentlyMKey object:nil];
                //: AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
                AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
                //: if (delegate.deviceToken) {
                if (delegate.deviceToken) {
                    //: [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
                    [[NIMSDK sharedSDK] updateApnsToken:delegate.deviceToken
                                       //: customContentKey:lang];
                                       customContentKey:lang];

                    //: dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
                    dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
                        //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
                        id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
                        //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
                        NIMPushNotificationSetting *setting = [apnsManager currentSetting];
                        //: setting.type = NIMPushNotificationDisplayTypeNoDetail;
                        setting.type = NIMPushNotificationDisplayTypeNoDetail;

                        //: [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
                        [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
                            //: if (error)
                            if (error)
                            {

                            }
                        //: }];
                        }];
                    //: });
                    });
                }

                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //菊花停止旋转
                    //: [_ActivityIndicator stopAnimating];
                    [_ActivityIndicator stopAnimating];
                    //菊花隐藏
                    //: [_ActivityIndicator setHidesWhenStopped:YES];
                    [_ActivityIndicator setHidesWhenStopped:YES];

                    //需要执行的方法
                    //: [self autoLogin];
                    [self autoRecording];
                //: });
                });
            //: } else {
            } else {
                //: [self autoLogin];
                [self autoRecording];
            }
        //: }];
        }];
    //: } else {
    } else {
        //: [self autoLogin];
        [self autoRecording];
    }
}

//: - (void)autoLogin {
- (void)autoRecording {

    //: if (![CCCAutoLoginManager sharedManager].isRequestAutoLoginFinish){
    if (![NoticeManager view].isRequestAutoLoginFinish){
        //: return;
        return;
    }

    //: if (![NIMUserDefaults standardUserDefaults].autoLogin.boolValue){
    if (![DataMaxDefaults max].autoLogin.boolValue){
        //: [self initUI];
        [self initAction];
        //: return;
        return;
    }

    //: if ([NIMUserDefaults standardUserDefaults].accid.length > 0){
    if ([DataMaxDefaults max].accid.length > 0){
        //: [self initUI];
        [self initAction];
        //: return;
        return;
    }

    //: if ([CCCAutoLoginManager sharedManager].isloading){
    if ([NoticeManager view].isloading){
        //: return;
        return;
    }
    //: [CCCAutoLoginManager sharedManager].isloading = YES;
    [NoticeManager view].isloading = YES;

    //: [SVProgressHUD show];
    [SVProgressHUD show];

    //: [ZCHttpManager refreshGenerateUser:^(NSDictionary * _Nonnull data) {
    [TitleManageressManager itemOf:^(NSDictionary * _Nonnull data) {

        //: if (data.allKeys.count > 0) {
        if (data.allKeys.count > 0) {

            //: NSString *nimtoken = [data newStringValueForKey:@"nimtoken"];
            NSString *nimtoken = [data tag:[ExplainData sharedInstance].k_numberStr];
            //: NSString *accid = [data newStringValueForKey:@"id"];
            NSString *accid = [data tag:@"id"];
            //: NSString *accountName = [data newStringValueForKey:@"account"];
            NSString *accountName = [data tag:[ExplainData sharedInstance].mKillerId];
            //: NSString *loginToken = [data newStringValueForKey:@"token"];
            NSString *loginToken = [data tag:[ExplainData sharedInstance].user_woodenUrl];
            //: NSString *issup = [data newStringValueForKey:@"issup"];
            NSString *issup = [data tag:[ExplainData sharedInstance].m_objectFilePath];


            //: [NIMUserDefaults standardUserDefaults].loginToken = loginToken;
            [DataMaxDefaults max].loginToken = loginToken;
            //: [NIMUserDefaults standardUserDefaults].accid = accid;
            [DataMaxDefaults max].accid = accid;
            //: [NIMUserDefaults standardUserDefaults].nimToken = nimtoken;
            [DataMaxDefaults max].nimToken = nimtoken;
            //: [NIMUserDefaults standardUserDefaults].accountName = accountName;
            [DataMaxDefaults max].accountName = accountName;
            //: [NIMUserDefaults standardUserDefaults].issup = issup;
            [DataMaxDefaults max].issup = issup;


            //: [SVProgressHUD dismissWithDelay:0.1 completion:^{
            [SVProgressHUD dismissWithDelay:0.1 completion:^{

                //: [CCCAutoLoginManager sharedManager].isloading = NO;
                [NoticeManager view].isloading = NO;


                //: NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                NIMAutoLoginData *loginData = [[NIMAutoLoginData alloc] init];
                //: loginData.account = accid;
                loginData.account = accid;
                //: loginData.token = nimtoken;
                loginData.token = nimtoken;
                //: loginData.authType = 0;
                loginData.authType = 0;
                //: loginData.loginExtension = @"";
                loginData.loginExtension = @"";

                //: NTESLoginData *sdkData = [[NTESLoginData alloc] init];
                DirectionData *sdkData = [[DirectionData alloc] init];
                //: sdkData.account = accid;
                sdkData.account = accid;
                //: sdkData.token = nimtoken;
                sdkData.token = nimtoken;
                //: sdkData.authType = 0;
                sdkData.authType = 0;
                //: sdkData.loginExtension = @"";
                sdkData.loginExtension = @"";

                //: [[CCCLoginManager sharedManager] setCurrentLoginData:sdkData];
                [[RowTop heatherMixture] setCurrentLoginData:sdkData];

                //: [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];
                [[[NIMSDK sharedSDK] loginManager] autoLogin:loginData];

                //: NTESMainTabController * mainTab = [[NTESMainTabController alloc] initWithNibName:nil bundle:nil];
                LightGreenViewController * mainTab = [[LightGreenViewController alloc] initWithNibName:nil bundle:nil];
                //: [UIApplication sharedApplication].windows.firstObject.rootViewController = mainTab;
                [UIApplication sharedApplication].windows.firstObject.rootViewController = mainTab;

//                AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
//                [delegate setupRTCCallKit];
            //: }];
            }];

        }
        //: else {
        else {

            //: [CCCAutoLoginManager sharedManager].isloading = NO;
            [NoticeManager view].isloading = NO;
            //: [self initUI];
            [self initAction];

            //: [SVProgressHUD dismissWithDelay:0.25 completion:^{
            [SVProgressHUD dismissWithDelay:0.25 completion:^{

            //: }];
            }];
        }
    //: }];
    }];
}

/*
 CTCellularData在iOS9之前是私有类，权限设置是iOS10开始的，所以App Store审核没有问题
 获取网络权限状态
 */
//: - (void)networkStatus {
- (void)filter {
    //2.根据权限执行相应的交互
    //: CTCellularData *cellularData = [[CTCellularData alloc] init];
    CTCellularData *cellularData = [[CTCellularData alloc] init];

    /*
     此函数会在网络权限改变时再次调用
     */
    //: cellularData.cellularDataRestrictionDidUpdateNotifier = ^(CTCellularDataRestrictedState state) {
    cellularData.cellularDataRestrictionDidUpdateNotifier = ^(CTCellularDataRestrictedState state) {
        //: switch (state) {
        switch (state) {
            //: case kCTCellularDataRestricted:
            case kCTCellularDataRestricted:

                //: NSLog(@"Restricted");
                //2.1权限关闭的情况下 再次请求网络数据会弹出设置网络提示
                //: break;
                break;
            //: case kCTCellularDataNotRestricted:
            case kCTCellularDataNotRestricted:
            {
                //: NSLog(@"NotRestricted");
                //2.2已经开启网络权限 监听网络状态
                //: [self addReachabilityManager];
                [self comment];
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self needsInitUI];
                    [self action];
                //: });
                });
            }
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    //: };
    };
}

/**
 实时检查当前网络状态
 */
//: - (void)addReachabilityManager {
- (void)comment {
    //: AFNetworkReachabilityManager *afNetworkReachabilityManager = [AFNetworkReachabilityManager sharedManager];
    AFNetworkReachabilityManager *afNetworkReachabilityManager = [AFNetworkReachabilityManager sharedManager];

    //: [afNetworkReachabilityManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
    [afNetworkReachabilityManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //: switch (status) {
        switch (status) {
            //: case AFNetworkReachabilityStatusNotReachable:{
            case AFNetworkReachabilityStatusNotReachable:{
                //: NSLog(@"网络不通：%@",@(status) );
                //: break;
                break;
            }
            //: case AFNetworkReachabilityStatusReachableViaWiFi:{
            case AFNetworkReachabilityStatusReachableViaWiFi:{
                //: NSLog(@"网络通过WIFI连接：%@",@(status));
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self needsInitUI];
                    [self action];
                //: });
                });
                //: break;
                break;
            }
            //: case AFNetworkReachabilityStatusReachableViaWWAN:{
            case AFNetworkReachabilityStatusReachableViaWWAN:{
                //: NSLog(@"网络通过无线连接：%@",@(status) );
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self needsInitUI];
                    [self action];
                //: });
                });
                //: break;
                break;
            }
            //: default:
            default:
                //: break;
                break;
        }
    //: }];
    }];

    //: [afNetworkReachabilityManager startMonitoring]; 
    [afNetworkReachabilityManager startMonitoring]; //开启网络监视器；
}

//: -(void)registSuccessWithAccount:(NSNotification *)notification{
-(void)bubbleMessage:(NSNotification *)notification{
    //: NSDictionary *dict = notification.object;
    NSDictionary *dict = notification.object;
    //: _usernameTextField.text = [dict newStringValueForKey:@"UserAccount"];
    _usernameTextField.text = [dict tag:[ExplainData sharedInstance].main_nameIdent];
    //: _passwordTextField.text = [dict newStringValueForKey:@"UserPassWord"];
    _passwordTextField.text = [dict tag:[ExplainData sharedInstance].dreamAwarenessCellUrl];

    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: [self doLogin];
        [self thanEvent];
    //: });
    });
}
//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self preferredStatusBarStyle];
    [self preferredStatusBarStyle];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)initUI{
- (void)initAction{


    //: _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice vg_statusBarHeight])+10, 120, 120)];
    _logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-120)/2, (44.0f + [UIDevice statusOrLevel])+10, 120, 120)];
    //: _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    _logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    //: _logoImageView.backgroundColor = [UIColor clearColor];
    _logoImageView.backgroundColor = [UIColor clearColor];
    //: [self.view addSubview:_logoImageView];
    [self.view addSubview:_logoImageView];
    //: _logoImageView.image = [UIImage imageNamed:@"login_logo"];
    _logoImageView.image = [UIImage imageNamed:[ExplainData sharedInstance].show_forbidMessage];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, [[UIScreen mainScreen] bounds].size.width, 30)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _logoImageView.bottom, [[UIScreen mainScreen] bounds].size.width, 30)];
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_login_welcome"];
    labtitle.text = [SendName streetSmart:[ExplainData sharedInstance].show_toolTitle];
    //: labtitle.textColor = [UIColor blackColor];
    labtitle.textColor = [UIColor blackColor];
    //: labtitle.font = [UIFont boldSystemFontOfSize:16];
    labtitle.font = [UIFont boldSystemFontOfSize:16];
    //: labtitle.textAlignment = NSTextAlignmentCenter;
    labtitle.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:labtitle];
    [self.view addSubview:labtitle];

    //: UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, labtitle.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *usernameView = [[UIView alloc]initWithFrame:CGRectMake(20, labtitle.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: usernameView.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    usernameView.backgroundColor = [UIColor status:[ExplainData sharedInstance].noti_viewCountText];
    //: usernameView.layer.cornerRadius = 24;
    usernameView.layer.cornerRadius = 24;
    //: usernameView.layer.masksToBounds = YES;
    usernameView.layer.masksToBounds = YES;
    //: [self.view addSubview:usernameView];
    [self.view addSubview:usernameView];

    //: self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 14, 20, 20)];
    self.titleImg = [[UIImageView alloc] initWithFrame:CGRectMake(15, 14, 20, 20)];
    //: self.titleImg.image = [UIImage imageNamed:@"login_icon_user"];
    self.titleImg.image = [UIImage imageNamed:[ExplainData sharedInstance].kProcedureId];
    //: [usernameView addSubview:self.titleImg];
    [usernameView addSubview:self.titleImg];

    //: _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    _usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-90, 44)];
    //: _usernameTextField.font = [UIFont systemFontOfSize:16];
    _usernameTextField.font = [UIFont systemFontOfSize:16];
    //: _usernameTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _usernameTextField.textColor = [UIColor status:[ExplainData sharedInstance].notiCenterMsg];
    //: NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[FFFLanguageManager getTextWithKey:@"register_account_activity_account"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:[SendName streetSmart:[ExplainData sharedInstance].k_childCellStr] attributes:@{NSForegroundColorAttributeName:[UIColor status:[ExplainData sharedInstance].mainIdealRedContent]}];
    //: _usernameTextField.attributedPlaceholder = attrString;
    _usernameTextField.attributedPlaceholder = attrString;
    //: [usernameView addSubview:_usernameTextField];
    [usernameView addSubview:_usernameTextField];
    //: if ([NIMUserDefaults standardUserDefaults].accountName && [NIMUserDefaults standardUserDefaults].accountName.length > 0){
    if ([DataMaxDefaults max].accountName && [DataMaxDefaults max].accountName.length > 0){
        //: _usernameTextField.text = [NIMUserDefaults standardUserDefaults].accountName;
        _usernameTextField.text = [DataMaxDefaults max].accountName;
    }

    //: UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    UIView *psdView = [[UIView alloc]initWithFrame:CGRectMake(20, usernameView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48)];
    //: psdView.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    psdView.backgroundColor = [UIColor status:[ExplainData sharedInstance].noti_viewCountText];
    //: psdView.layer.masksToBounds = YES;
    psdView.layer.masksToBounds = YES;
    //: psdView.layer.cornerRadius = 24;
    psdView.layer.cornerRadius = 24;
    //: [self.view addSubview:psdView];
    [self.view addSubview:psdView];

    //: self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 14, 20, 20)];
    self.titleImg2 = [[UIImageView alloc] initWithFrame:CGRectMake(15, 14, 20, 20)];
    //: self.titleImg2.image = [UIImage imageNamed:@"login_icon_pwd"];
    self.titleImg2.image = [UIImage imageNamed:[ExplainData sharedInstance].show_viewIdent];
    //: [psdView addSubview:self.titleImg2];
    [psdView addSubview:self.titleImg2];

    //: _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-140, 44)];
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 2, [[UIScreen mainScreen] bounds].size.width-140, 44)];
    //: _passwordTextField.font = [UIFont systemFontOfSize:16];
    _passwordTextField.font = [UIFont systemFontOfSize:16];
    //: _passwordTextField.textColor = [UIColor colorWithHexString:@"#333333"];
    _passwordTextField.textColor = [UIColor status:[ExplainData sharedInstance].notiCenterMsg];
    //: _passwordTextField.secureTextEntry = YES;
    _passwordTextField.secureTextEntry = YES;
//    self.passwordTextField.delegate = self;
    //: NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:[FFFLanguageManager getTextWithKey:@"register_account_activity_psw"] attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#999999"]}];
    NSMutableAttributedString *attrString1 = [[NSMutableAttributedString alloc]initWithString:[SendName streetSmart:[ExplainData sharedInstance].mainVirusIdent] attributes:@{NSForegroundColorAttributeName:[UIColor status:[ExplainData sharedInstance].mainIdealRedContent]}];
    //: _passwordTextField.attributedPlaceholder = attrString1;
    _passwordTextField.attributedPlaceholder = attrString1;
    //: [psdView addSubview:_passwordTextField];
    [psdView addSubview:_passwordTextField];

    //: self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    self.secureButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: self.secureButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 17, 16, 16);
    self.secureButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-70, 17, 16, 16);
    //: [self.secureButton addTarget:self action:@selector(pwdTextSwitch:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.secureButton addTarget:self action:@selector(commentses:) forControlEvents:(UIControlEventTouchUpInside)];
    //: [self.secureButton setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
    [self.secureButton setImage:[UIImage imageNamed:[ExplainData sharedInstance].app_differentlyIdent] forState:UIControlStateNormal];
    //: [self.secureButton setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateSelected];
    [self.secureButton setImage:[UIImage imageNamed:[ExplainData sharedInstance].appFainStr] forState:UIControlStateSelected];
//    self.secureButton.hidden = YES;
    //: [psdView addSubview:self.secureButton];
    [psdView addSubview:self.secureButton];

    //: _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _loginButton.frame = CGRectMake(20, psdView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    _loginButton.frame = CGRectMake(20, psdView.bottom+20, [[UIScreen mainScreen] bounds].size.width-40, 48);
    //: _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _loginButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_loginButton setTitle:[FFFLanguageManager getTextWithKey:@"activity_login_login"] forState:UIControlStateNormal];
    [_loginButton setTitle:[SendName streetSmart:[ExplainData sharedInstance].user_sourceStr] forState:UIControlStateNormal];
    //: [_loginButton addTarget:self action:@selector(doLogin) forControlEvents:UIControlEventTouchUpInside];
    [_loginButton addTarget:self action:@selector(thanEvent) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_loginButton];
    [self.view addSubview:_loginButton];
    //: _loginButton.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
    _loginButton.backgroundColor = [UIColor status:[ExplainData sharedInstance].k_pathUrl];
    //: _loginButton.layer.cornerRadius = 24;
    _loginButton.layer.cornerRadius = 24;

    //: _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _registerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _registerButton.frame = CGRectMake(30, self.loginButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 40);
    _registerButton.frame = CGRectMake(30, self.loginButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-60, 40);
//    _registerButton.backgroundColor = ThemeColor;
    //: _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    _registerButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [_registerButton setTitleColor:[UIColor colorWithHexString:@"#02D8C9"] forState:UIControlStateNormal];
    [_registerButton setTitleColor:[UIColor status:[ExplainData sharedInstance].k_pathUrl] forState:UIControlStateNormal];
//    [_registerButton setTitle:LangKey(@"zanwuzhanhaozhuce") forState:UIControlStateNormal];
    //: [_registerButton addTarget:self action:@selector(doRegister) forControlEvents:UIControlEventTouchUpInside];
    [_registerButton addTarget:self action:@selector(publicationHigh) forControlEvents:UIControlEventTouchUpInside];
    //: NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    NSDictionary *attributes = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    //: NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[FFFLanguageManager getTextWithKey:@"activity_register_title"] attributes:attributes];
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:[SendName streetSmart:[ExplainData sharedInstance].mainGateKey] attributes:attributes];
    //: [_registerButton setAttributedTitle:attributedString forState:UIControlStateNormal];
    [_registerButton setAttributedTitle:attributedString forState:UIControlStateNormal];
    //: [self.view addSubview:_registerButton];
    [self.view addSubview:_registerButton];
//    _registerButton.layer.masksToBounds = YES;
//    _registerButton.layer.cornerRadius = 16;


    //: _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _agreementButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _agreementButton.frame = CGRectMake(15, self.registerButton.bottom+15, 20, 20);
    _agreementButton.frame = CGRectMake(15, self.registerButton.bottom+15, 20, 20);
    //: _agreementButton.selected = YES;
    _agreementButton.selected = YES;
    //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_normal"] forState:UIControlStateNormal];
    [_agreementButton setImage:[UIImage imageNamed:[ExplainData sharedInstance].m_defensiveData] forState:UIControlStateNormal];
    //: [_agreementButton setImage:[UIImage imageNamed:@"login_agreement_press"] forState:UIControlStateSelected];
    [_agreementButton setImage:[UIImage imageNamed:[ExplainData sharedInstance].notiMakeText] forState:UIControlStateSelected];
    //: [_agreementButton addTarget:self action:@selector(agreementButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_agreementButton addTarget:self action:@selector(agreementsed:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.view addSubview:_agreementButton];
    [self.view addSubview:_agreementButton];

    //: [self.view addSubview:self.protocolLabel];
    [self.view addSubview:self.protocolLabel];
    //: self.protocolLabel.frame = CGRectMake(_agreementButton.right+5, self.registerButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 50);
    self.protocolLabel.frame = CGRectMake(_agreementButton.right+5, self.registerButton.bottom+15, [[UIScreen mainScreen] bounds].size.width-70, 50);

//    UIButton *forgetPSD = [UIButton buttonWithType:UIButtonTypeCustom];
//    forgetPSD.frame = CGRectMake(15, self.loginButton.bottom+15, SCREEN_WIDTH-30, 40);
//    forgetPSD.titleLabel.font = [UIFont systemFontOfSize:14];
//    [forgetPSD setTitleColor:ThemeColor forState:UIControlStateNormal];
//    [forgetPSD setTitle:LangKey(@"activity_safe_setting_modify") forState:UIControlStateNormal];
//    [forgetPSD addTarget:self action:@selector(forgetPSDButtonClick) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:forgetPSD];



    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];
    //: [self.view bringSubviewToFront:self.loadingView];
    [self.view bringSubviewToFront:self.loadingView];
    //: self.loadingView.hidden = YES;
    self.loadingView.hidden = YES;
}

//: - (void)forgetPSDButtonClick
- (void)messageForget
{
    //: GetBackPasswordViewController *vc = [[GetBackPasswordViewController alloc]init];
    SendViewController *vc = [[SendViewController alloc]init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)doRegister
- (void)publicationHigh
{
    //: FFFRegisterViewController *vc = [[FFFRegisterViewController alloc]init];
    TapViewController *vc = [[TapViewController alloc]init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)pwdTextSwitch:(UIButton *)sender {
- (void)commentses:(UIButton *)sender {

    // 切换按钮的状态
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;

    //: if (sender.selected) { 
    if (sender.selected) { // 按下去了就是明文

        //: [sender setImage:[UIImage imageNamed:@"ic_invisible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[ExplainData sharedInstance].appFainStr] forState:UIControlStateNormal];

        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.passwordTextField.secureTextEntry = NO;
            self.passwordTextField.secureTextEntry = NO;
        //: }];
        }];

    //: } else { 
    } else { // 暗文

        //: [sender setImage:[UIImage imageNamed:@"ic_visible"] forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:[ExplainData sharedInstance].app_differentlyIdent] forState:UIControlStateNormal];

        //: [UIView animateWithDuration:0.25 animations:^{
        [UIView animateWithDuration:0.25 animations:^{
            //: self.passwordTextField.secureTextEntry = YES;
            self.passwordTextField.secureTextEntry = YES;
        //: }];
        }];
    }
}

//: -(YYLabel *)protocolLabel{
-(YYLabel *)protocolLabel{
    //: if (!_protocolLabel) {
    if (!_protocolLabel) {
        //: NSString *originText = [FFFLanguageManager getTextWithKey:@"activity_register_agree"];
        NSString *originText = [SendName streetSmart:[ExplainData sharedInstance].appSolutionKey];
        //: NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        //: text1.yy_font = [UIFont boldSystemFontOfSize:14];
        text1.yy_font = [UIFont boldSystemFontOfSize:14];
        //: text1.yy_alignment = NSTextAlignmentLeft;
        text1.yy_alignment = NSTextAlignmentLeft;
        //: text1.yy_lineSpacing = 3;
        text1.yy_lineSpacing = 3;

        //: [text1 yy_setTextHighlightRange:NSMakeRange(0, originText.length)
        [text1 yy_setTextHighlightRange:NSMakeRange(0, originText.length)//设置点击的位置
                                  //: color:[UIColor colorWithHexString:@"#02D8C9"]
                                  color:[UIColor status:[ExplainData sharedInstance].k_pathUrl]
                        //: backgroundColor:[UIColor systemGroupedBackgroundColor]
                        backgroundColor:[UIColor systemGroupedBackgroundColor]
                              //: tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
                              tapAction:^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect)
         {

            //: ZMONPolicyPrivacyViewController *vc = [[ZMONPolicyPrivacyViewController alloc] init];
            InformationViewController *vc = [[InformationViewController alloc] init];
            //: vc.webTitle = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
            vc.webTitle = [SendName streetSmart:[ExplainData sharedInstance].mainBottomText];
            //: vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
            vc.urlString = [DataMaxDefaults max].yshref;
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
//            @weakify(self);
//            vc.complete = ^{
//                @strongify(self);
//                [self.navigationController popViewControllerAnimated:NO];
//                self.agreementButton.selected = YES;
//            };
        //: }];
        }];

        //: YYLabel *titleLb = [[YYLabel alloc] init];
        YYLabel *titleLb = [[YYLabel alloc] init];
        //: titleLb.userInteractionEnabled = YES;
        titleLb.userInteractionEnabled = YES;
        //: titleLb.attributedText = text1;
        titleLb.attributedText = text1;
        //: titleLb.font = [UIFont systemFontOfSize:14];
        titleLb.font = [UIFont systemFontOfSize:14];
        //: titleLb.numberOfLines = 0;
        titleLb.numberOfLines = 0;
        //: titleLb.textVerticalAlignment = YYTextVerticalAlignmentTop;
        titleLb.textVerticalAlignment = YYTextVerticalAlignmentTop;
        //: titleLb.backgroundColor = [UIColor clearColor];
        titleLb.backgroundColor = [UIColor clearColor];
        //: _protocolLabel = titleLb;
        _protocolLabel = titleLb;
    }
    //: return _protocolLabel;
    return _protocolLabel;
}


//: -(YYLabel *)registLabel{
-(YYLabel *)registLabel{
    //: if (!_registLabel) {
    if (!_registLabel) {
        //: NSString *noCount = [FFFLanguageManager getTextWithKey:@"activity_login_has_no_account"];
        NSString *noCount = [SendName streetSmart:[ExplainData sharedInstance].show_vsValue];
        //: NSString *originText = [NSString stringWithFormat:@"%@",noCount];
        NSString *originText = [NSString stringWithFormat:@"%@",noCount];
        //: NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        NSMutableAttributedString *text1 = [[NSMutableAttributedString alloc] initWithString:originText];
        //: text1.yy_font = [UIFont boldSystemFontOfSize:14];
        text1.yy_font = [UIFont boldSystemFontOfSize:14];
        //: text1.yy_alignment = NSTextAlignmentCenter;
        text1.yy_alignment = NSTextAlignmentCenter;
        //: text1.yy_color = [UIColor colorWithHexString:@"#8282A7"];
        text1.yy_color = [UIColor status:[ExplainData sharedInstance].dreamRedData];
        //: text1.yy_lineSpacing = 8;
        text1.yy_lineSpacing = 8;


        //: YYLabel *titleLb = [[YYLabel alloc] init];
        YYLabel *titleLb = [[YYLabel alloc] init];
        //: titleLb.userInteractionEnabled = YES;
        titleLb.userInteractionEnabled = YES;
        //: titleLb.attributedText = text1;
        titleLb.attributedText = text1;
        //: titleLb.font = [UIFont systemFontOfSize:14];
        titleLb.font = [UIFont systemFontOfSize:14];
        //: titleLb.textVerticalAlignment = YYTextVerticalAlignmentCenter;
        titleLb.textVerticalAlignment = YYTextVerticalAlignmentCenter;
        //: titleLb.backgroundColor = [UIColor clearColor];
        titleLb.backgroundColor = [UIColor clearColor];
        //: titleLb.numberOfLines = 0;
        titleLb.numberOfLines = 0;
        //: _registLabel = titleLb;
        _registLabel = titleLb;
    }
    //: return _registLabel;
    return _registLabel;
}

//: -(void)agreementButtonClick:(UIButton *)senderBtn
-(void)agreementsed:(UIButton *)senderBtn
{
    //: senderBtn.selected = !senderBtn.selected;
    senderBtn.selected = !senderBtn.selected;
}

//: -(void)inputAccount:(NSString*)account password:(NSString *)password{
-(void)account:(NSString*)account should:(NSString *)password{
    //: _usernameTextField.text = account;
    _usernameTextField.text = account;
    //: _passwordTextField.text = password;
    _passwordTextField.text = password;
}

//: - (BOOL)isVPNConnected
- (BOOL)tapStart
{
    //: NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
    NSDictionary *dict = CFBridgingRelease(CFNetworkCopySystemProxySettings());
        //: NSArray *keys = [dict[@"__SCOPED__"]allKeys];
        NSArray *keys = [dict[[ExplainData sharedInstance].appAggressiveMessage]allKeys];
        //: for (NSString *key in keys) {
        for (NSString *key in keys) {
            //: if ([key rangeOfString:@"tap"].location != NSNotFound ||
            if ([key rangeOfString:[ExplainData sharedInstance].m_minValue].location != NSNotFound ||
                //: [key rangeOfString:@"tun"].location != NSNotFound ||
                [key rangeOfString:[ExplainData sharedInstance].mMyLetterData].location != NSNotFound ||
                //: [key rangeOfString:@"ppp"].location != NSNotFound){
                [key rangeOfString:[ExplainData sharedInstance].show_successData].location != NSNotFound){
                //: return YES;
                return YES;
            }
        }
        //: return NO;
        return NO;
}
//: - (BOOL)isAccountValidString:(NSString *)input {
- (BOOL)inscriptionName:(NSString *)input {
    //: NSString *pattern = @"^[A-Za-z0-9_]{6,12}$";
    NSString *pattern = [ExplainData sharedInstance].m_procedureContent;

    //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[ExplainData sharedInstance].mainTeamKey, pattern];
    //: return [predicate evaluateWithObject:input];
    return [predicate evaluateWithObject:input];
}
//: - (BOOL)isPSDValidString:(NSString *)input {
- (BOOL)showTing:(NSString *)input {
    //: NSString *pattern = @"^[A-Za-z0-9_]{6,18}$";
    NSString *pattern = [ExplainData sharedInstance].user_minIdent;

    //: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[ExplainData sharedInstance].mainTeamKey, pattern];
    //: return [predicate evaluateWithObject:input];
    return [predicate evaluateWithObject:input];
}
//: - (void)doLogin {
- (void)thanEvent {

//    if (_agreementButton.selected == NO) {
//        [self.view makeToast:LangKey(@"Read_agree_agreement") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }

    //: _usernameTextField.text = [_usernameTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    _usernameTextField.text = [_usernameTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: _passwordTextField.text = [_passwordTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    _passwordTextField.text = [_passwordTextField.text stringByReplacingOccurrencesOfString:@" " withString:@""];

    //: if (_usernameTextField.text && _usernameTextField.text.length <= 0){
    if (_usernameTextField.text && _usernameTextField.text.length <= 0){
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"register_account_activity_account"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[SendName streetSmart:[ExplainData sharedInstance].k_childCellStr] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

    //: if (_passwordTextField.text && _passwordTextField.text.length <= 0){
    if (_passwordTextField.text && _passwordTextField.text.length <= 0){
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"register_account_activity_psw"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[SendName streetSmart:[ExplainData sharedInstance].mainVirusIdent] duration:2.0 position:CSToastPositionCenter];
        //: return;
        return;
    }

//    if (![self isAccountValidString:_usernameTextField.text]){
//        [self.view makeToast:LangKey(@"user_tip") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }
//    
//    if (![self isPSDValidString:_passwordTextField.text]){
//        [self.view makeToast:LangKey(@"pass_tip") duration:2.0 position:CSToastPositionCenter];
//        return;
//    }

    //: [_usernameTextField resignFirstResponder];
    [_usernameTextField resignFirstResponder];
    //: [_passwordTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: [dict setObject:@"ios" forKey:@"client"];
    [dict setObject:[ExplainData sharedInstance].dreamOverseeStr forKey:[ExplainData sharedInstance].mainDeleteFainIdent];
    //: [dict setObject:@"1" forKey:@"type"];
    [dict setObject:@"1" forKey:[ExplainData sharedInstance].k_clickFormat];
    //: [dict setObject:_usernameTextField.text forKey:@"account"];
    [dict setObject:_usernameTextField.text forKey:[ExplainData sharedInstance].mKillerId];
    //: [dict setObject:_passwordTextField.text forKey:@"password"];
    [dict setObject:_passwordTextField.text forKey:[ExplainData sharedInstance].user_cellFormat];
    //: [dict setObject:[NSString stringWithFormat:@"iOS%@",[ZCHttpRequestHeader deviceVersion]] forKey:@"telname"];
    [dict setObject:[NSString stringWithFormat:[ExplainData sharedInstance].userFrameIdent,[ReadContentHeader manager]] forKey:[ExplainData sharedInstance].user_messageKey];
    //: [dict setObject:[ZCHttpRequestHeader getIOSVersion] forKey:@"systems"];
    [dict setObject:[ReadContentHeader menu] forKey:[ExplainData sharedInstance].showDifferentlyText];
    //: [dict setObject:[SNDevice deviceIUUID] forKey:@"deviceid"];
    [dict setObject:[CutVersion app] forKey:[ExplainData sharedInstance].m_nameIdent];

    //: [dict setObject:[self isVPNConnected]?@"1":@"0" forKey:@"vpn"];
    [dict setObject:[self tapStart]?@"1":@"0" forKey:[ExplainData sharedInstance].showMotorMessage];

    //: if (_isloading){
    if (_isloading){
        //: return;
        return;
    }
    //: _isloading = YES;
    _isloading = YES;

    //: [self.loadingView animationShow];
    [self.loadingView select];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/login"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[ExplainData sharedInstance].mEcruText] read:dict indicator:NO spaceOf:^(id responseObject) {

        //: _isloading = NO;
        _isloading = NO;

        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict tag:[ExplainData sharedInstance].noti_usuallyName];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict tag:[ExplainData sharedInstance].appInfoMsg];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {

            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict selected:[ExplainData sharedInstance].dream_sizeId];
            //: __block NSString *nimtoken = [data newStringValueForKey:@"nimtoken"];
            __block NSString *nimtoken = [data tag:[ExplainData sharedInstance].k_numberStr];
            //: __block NSString *accid = [data newStringValueForKey:@"id"];
            __block NSString *accid = [data tag:@"id"];

            //: [NIMUserDefaults standardUserDefaults].loginToken = [data newStringValueForKey:@"token"];
            [DataMaxDefaults max].loginToken = [data tag:[ExplainData sharedInstance].user_woodenUrl];
            //: [NIMUserDefaults standardUserDefaults].accid = [data newStringValueForKey:@"id"];
            [DataMaxDefaults max].accid = [data tag:@"id"];


            //: [[[NIMSDK sharedSDK] loginManager] login:accid token:nimtoken completion:^(NSError * _Nullable error) {
            [[[NIMSDK sharedSDK] loginManager] login:accid token:nimtoken completion:^(NSError * _Nullable error) {

                    //: [self.loadingView animationClose];
                    [self.loadingView tingShould];

                    //: if (error != nil) {
                    if (error != nil) {

                        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"login_activity_login_failed"] duration:2.0 position:CSToastPositionCenter];
                        [self.view makeToast:[SendName streetSmart:[ExplainData sharedInstance].mainRedIdent] duration:2.0 position:CSToastPositionCenter];

                        //: return;
                        return;
                    }


                //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
                CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
                //: style.backgroundColor = [UIColor whiteColor];
                style.backgroundColor = [UIColor whiteColor];
                  //: style.imageSize = CGSizeMake(20, 20);
                  style.imageSize = CGSizeMake(20, 20);
                //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
                style.messageColor = [UIColor status:[ExplainData sharedInstance].m_toolKey];
                //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"login_activity_login_success"] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_success"] style:style completion:nil];
                [self.view makeToast:[SendName streetSmart:[ExplainData sharedInstance].user_laughLeadershipId] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[ExplainData sharedInstance].app_usuallyUrl] style:style completion:nil];

                    //: NTESLoginData *sdkData = [[NTESLoginData alloc] init];
                    DirectionData *sdkData = [[DirectionData alloc] init];
                    //: sdkData.account = accid;
                    sdkData.account = accid;
                    //: sdkData.token = nimtoken;
                    sdkData.token = nimtoken;
                    //: sdkData.authType = 0;
                    sdkData.authType = 0;
                    //: sdkData.loginExtension = @"";
                    sdkData.loginExtension = @"";
                    //: [[CCCLoginManager sharedManager] setCurrentLoginData:sdkData];
                    [[RowTop heatherMixture] setCurrentLoginData:sdkData];




                    //: NTESMainTabController * mainTab = [[NTESMainTabController alloc] initWithNibName:nil bundle:nil];
                    LightGreenViewController * mainTab = [[LightGreenViewController alloc] initWithNibName:nil bundle:nil];
                    //: [UIApplication sharedApplication].windows.firstObject.rootViewController = mainTab;
                    [UIApplication sharedApplication].windows.firstObject.rootViewController = mainTab;
                    //: [NIMUserDefaults standardUserDefaults].accountName = _usernameTextField.text;
                    [DataMaxDefaults max].accountName = _usernameTextField.text;
                    //: [NIMUserDefaults standardUserDefaults].pCode = _passwordTextField.text;
                    [DataMaxDefaults max].pCode = _passwordTextField.text;


            //: }];
            }];
        //: }else{
        }else{
            //: [self.loadingView animationClose];
            [self.loadingView tingShould];

//            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
            //: style.backgroundColor = [UIColor whiteColor];
            style.backgroundColor = [UIColor whiteColor];
            //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
            style.messageColor = [UIColor status:[ExplainData sharedInstance].m_toolKey];
            //: style.imageSize = CGSizeMake(20, 20);
            style.imageSize = CGSizeMake(20, 20);
            //: [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
            [self.view makeToast:msg duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[ExplainData sharedInstance].showStrikeData] style:style completion:nil];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {
        //: [self.loadingView animationClose];
        [self.loadingView tingShould];
            //: _isloading = NO;
            _isloading = NO;
        //: CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        CSToastStyle *style = [[CSToastStyle alloc]initWithDefaultStyle];
        //: style.backgroundColor = [UIColor whiteColor];
        style.backgroundColor = [UIColor whiteColor];
        //: style.messageColor = [UIColor colorWithHexString:@"#5D5F66"];
        style.messageColor = [UIColor status:[ExplainData sharedInstance].m_toolKey];
        //: style.imageSize = CGSizeMake(20, 20);
        style.imageSize = CGSizeMake(20, 20);
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:@"login_error"] style:style completion:nil];
        [self.view makeToast:[SendName streetSmart:[ExplainData sharedInstance].userAwarenessId] duration:2.0 position:CSToastPositionCenter title:nil image:[UIImage imageNamed:[ExplainData sharedInstance].showStrikeData] style:style completion:nil];

    //: }];
    }];
}

//: #pragma mark - UITextFieldDelegate
#pragma mark - UITextFieldDelegate
//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    //: if ([string isEqualToString:@"\n"]) {
    if ([string isEqualToString:@"\n"]) {
        //: [self doLogin];
        [self thanEvent];
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (void)textFieldDidEndEditing:(UITextField *)textField {
- (void)textFieldDidEndEditing:(UITextField *)textField {
    //: self.secureButton.hidden = YES;
    self.secureButton.hidden = YES;
}

//: - (void)textFieldDidBeginEditing:(UITextField *)textField {
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    //: self.secureButton.hidden = NO;
    self.secureButton.hidden = NO;
    //: [textField bringSubviewToFront:self.secureButton];
    [textField bringSubviewToFront:self.secureButton];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //: [super touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];
    //: [_usernameTextField resignFirstResponder];
    [_usernameTextField resignFirstResponder];
    //: [_passwordTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (ZMONCustomLoadingView *)loadingView
- (MoreView *)loadingView
{
    //: if(!_loadingView){
    if(!_loadingView){
        //: _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _loadingView = [[MoreView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _loadingView.hidden = YES;
        _loadingView.hidden = YES;
    }
    //: return _loadingView;
    return _loadingView;
}


//: @end
@end