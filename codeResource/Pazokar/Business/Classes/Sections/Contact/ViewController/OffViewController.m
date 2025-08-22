
#import <Foundation/Foundation.h>

typedef struct {
    Byte present;
    Byte *modeDoing;
    unsigned int sawdustSaloonSource;
	int my;
	int range;
} StructMyData;

@interface MyData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation MyData

+ (instancetype)sharedInstance {
    static MyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)MyDataToByte:(StructMyData *)data {
    for (int i = 0; i < data->sawdustSaloonSource; i++) {
        data->modeDoing[i] ^= data->present;
    }
    data->modeDoing[data->sawdustSaloonSource] = 0;
	if (data->sawdustSaloonSource >= 2) {
		data->my = data->modeDoing[0];
		data->range = data->modeDoing[1];
	}
    return data->modeDoing;
}

- (NSString *)StringFromMyData:(StructMyData *)data {
    return [NSString stringWithUTF8String:(char *)[self MyDataToByte:data]];
}

//: /team/create
- (NSString *)kLabelMessage {
    /* static */ NSString *kLabelMessage = nil;
    if (!kLabelMessage) {
        StructMyData value = (StructMyData){59, (Byte []){20, 79, 94, 90, 86, 20, 88, 73, 94, 90, 79, 94, 199}, 12, 115, 40};
        kLabelMessage = [self StringFromMyData:&value];
    }
    return kLabelMessage;
}

//: #5D5F66
- (NSString *)noti_letterMessage {
    /* static */ NSString *noti_letterMessage = nil;
    if (!noti_letterMessage) {
        StructMyData value = (StructMyData){245, (Byte []){214, 192, 177, 192, 179, 195, 195, 176}, 7, 32, 236};
        noti_letterMessage = [self StringFromMyData:&value];
    }
    return noti_letterMessage;
}

//: #999999
- (NSString *)kMinName {
    /* static */ NSString *kMinName = nil;
    if (!kMinName) {
        StructMyData value = (StructMyData){212, (Byte []){247, 237, 237, 237, 237, 237, 237, 76}, 7, 40, 102};
        kMinName = [self StringFromMyData:&value];
    }
    return kMinName;
}

//: tname
- (NSString *)m_voiceContent {
    /* static */ NSString *m_voiceContent = nil;
    if (!m_voiceContent) {
        StructMyData value = (StructMyData){242, (Byte []){134, 156, 147, 159, 151, 153}, 5, 101, 237};
        m_voiceContent = [self StringFromMyData:&value];
    }
    return m_voiceContent;
}

//: contact_group
- (NSString *)user_nameMsg {
    /* static */ NSString *user_nameMsg = nil;
    if (!user_nameMsg) {
        StructMyData value = (StructMyData){189, (Byte []){222, 210, 211, 201, 220, 222, 201, 226, 218, 207, 210, 200, 205, 48}, 13, 119, 159};
        user_nameMsg = [self StringFromMyData:&value];
    }
    return user_nameMsg;
}

//: #02D8C9
- (NSString *)m_removeData {
    /* static */ NSString *m_removeData = nil;
    if (!m_removeData) {
        StructMyData value = (StructMyData){171, (Byte []){136, 155, 153, 239, 147, 232, 146, 186}, 7, 115, 210};
        m_removeData = [self StringFromMyData:&value];
    }
    return m_removeData;
}

//: setting_privacy_camera
- (NSString *)k_cellContent {
    /* static */ NSString *k_cellContent = nil;
    if (!k_cellContent) {
        StructMyData value = (StructMyData){212, (Byte []){167, 177, 160, 160, 189, 186, 179, 139, 164, 166, 189, 162, 181, 183, 173, 139, 183, 181, 185, 177, 166, 181, 168}, 22, 43, 60};
        k_cellContent = [self StringFromMyData:&value];
    }
    return k_cellContent;
}

//: activity_create_group_name_create_group
- (NSString *)show_mImageText {
    /* static */ NSString *show_mImageText = nil;
    if (!show_mImageText) {
        StructMyData value = (StructMyData){46, (Byte []){79, 77, 90, 71, 88, 71, 90, 87, 113, 77, 92, 75, 79, 90, 75, 113, 73, 92, 65, 91, 94, 113, 64, 79, 67, 75, 113, 77, 92, 75, 79, 90, 75, 113, 73, 92, 65, 91, 94, 187}, 39, 137, 22};
        show_mImageText = [self StringFromMyData:&value];
    }
    return show_mImageText;
}

//: contact_tag_fragment_friend
- (NSString *)dream_toolTitle {
    /* static */ NSString *dream_toolTitle = nil;
    if (!dream_toolTitle) {
        StructMyData value = (StructMyData){188, (Byte []){223, 211, 210, 200, 221, 223, 200, 227, 200, 221, 219, 227, 218, 206, 221, 219, 209, 217, 210, 200, 227, 218, 206, 213, 217, 210, 216, 193}, 27, 112, 11};
        dream_toolTitle = [self StringFromMyData:&value];
    }
    return dream_toolTitle;
}

//: data
- (NSString *)noti_imageMsg {
    /* static */ NSString *noti_imageMsg = nil;
    if (!noti_imageMsg) {
        StructMyData value = (StructMyData){167, (Byte []){195, 198, 211, 198, 100}, 4, 29, 219};
        noti_imageMsg = [self StringFromMyData:&value];
    }
    return noti_imageMsg;
}

//: team_create_helper_create_failed
- (NSString *)k_sourceModeMessage {
    /* static */ NSString *k_sourceModeMessage = nil;
    if (!k_sourceModeMessage) {
        StructMyData value = (StructMyData){40, (Byte []){92, 77, 73, 69, 119, 75, 90, 77, 73, 92, 77, 119, 64, 77, 68, 88, 77, 90, 119, 75, 90, 77, 73, 92, 77, 119, 78, 73, 65, 68, 77, 76, 46}, 32, 161, 158};
        k_sourceModeMessage = [self StringFromMyData:&value];
    }
    return k_sourceModeMessage;
}

//: warm_prompt
- (NSString *)mTitleData {
    /* static */ NSString *mTitleData = nil;
    if (!mTitleData) {
        StructMyData value = (StructMyData){195, (Byte []){180, 162, 177, 174, 156, 179, 177, 172, 174, 179, 183, 236}, 11, 253, 103};
        mTitleData = [self StringFromMyData:&value];
    }
    return mTitleData;
}

//: contact_tag_fragment_cancel
- (NSString *)kClickSuccessMsg {
    /* static */ NSString *kClickSuccessMsg = nil;
    if (!kClickSuccessMsg) {
        StructMyData value = (StructMyData){25, (Byte []){122, 118, 119, 109, 120, 122, 109, 70, 109, 120, 126, 70, 127, 107, 120, 126, 116, 124, 119, 109, 70, 122, 120, 119, 122, 124, 117, 102}, 27, 187, 181};
        kClickSuccessMsg = [self StringFromMyData:&value];
    }
    return kClickSuccessMsg;
}

//: notification
- (NSString *)main_inputSizeId {
    /* static */ NSString *main_inputSizeId = nil;
    if (!main_inputSizeId) {
        StructMyData value = (StructMyData){84, (Byte []){58, 59, 32, 61, 50, 61, 55, 53, 32, 61, 59, 58, 70}, 12, 138, 195};
        main_inputSizeId = [self StringFromMyData:&value];
    }
    return main_inputSizeId;
}

//: contact_notice
- (NSString *)app_makeName {
    /* static */ NSString *app_makeName = nil;
    if (!app_makeName) {
        StructMyData value = (StructMyData){124, (Byte []){31, 19, 18, 8, 29, 31, 8, 35, 18, 19, 8, 21, 31, 25, 54}, 14, 246, 214};
        app_makeName = [self StringFromMyData:&value];
    }
    return app_makeName;
}

//: code
- (NSString *)user_rangeFormat {
    /* static */ NSString *user_rangeFormat = nil;
    if (!user_rangeFormat) {
        StructMyData value = (StructMyData){136, (Byte []){235, 231, 236, 237, 131}, 4, 181, 9};
        user_rangeFormat = [self StringFromMyData:&value];
    }
    return user_rangeFormat;
}

//: /group/
- (NSString *)m_listName {
    /* static */ NSString *m_listName = nil;
    if (!m_listName) {
        StructMyData value = (StructMyData){222, (Byte []){241, 185, 172, 177, 171, 174, 241, 139}, 7, 242, 198};
        m_listName = [self StringFromMyData:&value];
    }
    return m_listName;
}

//: ic_none_ContactList
- (NSString *)main_listName {
    /* static */ NSString *main_listName = nil;
    if (!main_listName) {
        StructMyData value = (StructMyData){115, (Byte []){26, 16, 44, 29, 28, 29, 22, 44, 48, 28, 29, 7, 18, 16, 7, 63, 26, 0, 7, 186}, 19, 245, 109};
        main_listName = [self StringFromMyData:&value];
    }
    return main_listName;
}

//: contact_add_friend
- (NSString *)userTitleSearchName {
    /* static */ NSString *userTitleSearchName = nil;
    if (!userTitleSearchName) {
        StructMyData value = (StructMyData){142, (Byte []){237, 225, 224, 250, 239, 237, 250, 209, 239, 234, 234, 209, 232, 252, 231, 235, 224, 234, 117}, 18, 140, 230};
        userTitleSearchName = [self StringFromMyData:&value];
    }
    return userTitleSearchName;
}

//: #CCECFC
- (NSString *)noti_messageMinData {
    /* static */ NSString *noti_messageMinData = nil;
    if (!noti_messageMinData) {
        StructMyData value = (StructMyData){205, (Byte []){238, 142, 142, 136, 142, 139, 142, 173}, 7, 175, 131};
        noti_messageMinData = [self StringFromMyData:&value];
    }
    return noti_messageMinData;
}

//: user_id
- (NSString *)m_afterName {
    /* static */ NSString *m_afterName = nil;
    if (!m_afterName) {
        StructMyData value = (StructMyData){121, (Byte []){12, 10, 28, 11, 38, 16, 29, 221}, 7, 28, 185};
        m_afterName = [self StringFromMyData:&value];
    }
    return m_afterName;
}

//: user_info_avtivity_upload_avatar_failed
- (NSString *)show_redTitle {
    /* static */ NSString *show_redTitle = nil;
    if (!show_redTitle) {
        StructMyData value = (StructMyData){157, (Byte []){232, 238, 248, 239, 194, 244, 243, 251, 242, 194, 252, 235, 233, 244, 235, 244, 233, 228, 194, 232, 237, 241, 242, 252, 249, 194, 252, 235, 252, 233, 252, 239, 194, 251, 252, 244, 241, 248, 249, 49}, 39, 85, 238};
        show_redTitle = [self StringFromMyData:&value];
    }
    return show_redTitle;
}

//: contact_fragment_group
- (NSString *)showModeVerticalTitle {
    /* static */ NSString *showModeVerticalTitle = nil;
    if (!showModeVerticalTitle) {
        StructMyData value = (StructMyData){89, (Byte []){58, 54, 55, 45, 56, 58, 45, 6, 63, 43, 56, 62, 52, 60, 55, 45, 6, 62, 43, 54, 44, 41, 225}, 22, 82, 20};
        showModeVerticalTitle = [self StringFromMyData:&value];
    }
    return showModeVerticalTitle;
}

//: #F7D2F3
- (NSString *)appFrameKey {
    /* static */ NSString *appFrameKey = nil;
    if (!appFrameKey) {
        StructMyData value = (StructMyData){250, (Byte []){217, 188, 205, 190, 200, 188, 201, 209}, 7, 148, 178};
        appFrameKey = [self StringFromMyData:&value];
    }
    return appFrameKey;
}

//: #F6F6F6
- (NSString *)dreamRecordViewData {
    /* static */ NSString *dreamRecordViewData = nil;
    if (!dreamRecordViewData) {
        StructMyData value = (StructMyData){22, (Byte []){53, 80, 32, 80, 32, 80, 32, 216}, 7, 247, 135};
        dreamRecordViewData = [self StringFromMyData:&value];
    }
    return dreamRecordViewData;
}

//: E3F4AA
- (NSString *)userNameToNextData {
    /* static */ NSString *userNameToNextData = nil;
    if (!userNameToNextData) {
        StructMyData value = (StructMyData){59, (Byte []){126, 8, 125, 15, 122, 122, 21}, 6, 38, 34};
        userNameToNextData = [self StringFromMyData:&value];
    }
    return userNameToNextData;
}

//: #EEEEEE
- (NSString *)show_managerName {
    /* static */ NSString *show_managerName = nil;
    if (!show_managerName) {
        StructMyData value = (StructMyData){172, (Byte []){143, 233, 233, 233, 233, 233, 233, 31}, 7, 217, 4};
        show_managerName = [self StringFromMyData:&value];
    }
    return show_managerName;
}

//: name
- (NSString *)userSourceKey {
    /* static */ NSString *userSourceKey = nil;
    if (!userSourceKey) {
        StructMyData value = (StructMyData){51, (Byte []){93, 82, 94, 86, 239}, 4, 77, 49};
        userSourceKey = [self StringFromMyData:&value];
    }
    return userSourceKey;
}

//: jpg
- (NSString *)main_withMakeFullMessage {
    /* static */ NSString *main_withMakeFullMessage = nil;
    if (!main_withMakeFullMessage) {
        StructMyData value = (StructMyData){35, (Byte []){73, 83, 68, 222}, 3, 178, 175};
        main_withMakeFullMessage = [self StringFromMyData:&value];
    }
    return main_withMakeFullMessage;
}

//: owner
- (NSString *)mReadStr {
    /* static */ NSString *mReadStr = nil;
    if (!mReadStr) {
        StructMyData value = (StructMyData){140, (Byte []){227, 251, 226, 233, 254, 7}, 5, 149, 172};
        mReadStr = [self StringFromMyData:&value];
    }
    return mReadStr;
}

//: #2C3042
- (NSString *)dreamBarSuccessTitle {
    /* static */ NSString *dreamBarSuccessTitle = nil;
    if (!dreamBarSuccessTitle) {
        StructMyData value = (StructMyData){65, (Byte []){98, 115, 2, 114, 113, 117, 115, 252}, 7, 11, 101};
        dreamBarSuccessTitle = [self StringFromMyData:&value];
    }
    return dreamBarSuccessTitle;
}

//: tid
- (NSString *)userManagerStr {
    /* static */ NSString *userManagerStr = nil;
    if (!userManagerStr) {
        StructMyData value = (StructMyData){217, (Byte []){173, 176, 189, 42}, 3, 193, 153};
        userManagerStr = [self StringFromMyData:&value];
    }
    return userManagerStr;
}

//: contact_fragment_friend
- (NSString *)k_showPath {
    /* static */ NSString *k_showPath = nil;
    if (!k_showPath) {
        StructMyData value = (StructMyData){45, (Byte []){78, 66, 67, 89, 76, 78, 89, 114, 75, 95, 76, 74, 64, 72, 67, 89, 114, 75, 95, 68, 72, 67, 73, 29}, 23, 10, 91};
        k_showPath = [self StringFromMyData:&value];
    }
    return k_showPath;
}

//: group_info_activity_without
- (NSString *)dreamCellId {
    /* static */ NSString *dreamCellId = nil;
    if (!dreamCellId) {
        StructMyData value = (StructMyData){169, (Byte []){206, 219, 198, 220, 217, 246, 192, 199, 207, 198, 246, 200, 202, 221, 192, 223, 192, 221, 208, 246, 222, 192, 221, 193, 198, 220, 221, 245}, 27, 126, 111};
        dreamCellId = [self StringFromMyData:&value];
    }
    return dreamCellId;
}

//: invite_you_group
- (NSString *)kSuccessPath {
    /* static */ NSString *kSuccessPath = nil;
    if (!kSuccessPath) {
        StructMyData value = (StructMyData){145, (Byte []){248, 255, 231, 248, 229, 244, 206, 232, 254, 228, 206, 246, 227, 254, 228, 225, 153}, 16, 76, 233};
        kSuccessPath = [self StringFromMyData:&value];
    }
    return kSuccessPath;
}

//: add_friend_activity_add_friend
- (NSString *)show_inputValue {
    /* static */ NSString *show_inputValue = nil;
    if (!show_inputValue) {
        StructMyData value = (StructMyData){5, (Byte []){100, 97, 97, 90, 99, 119, 108, 96, 107, 97, 90, 100, 102, 113, 108, 115, 108, 113, 124, 90, 100, 97, 97, 90, 99, 119, 108, 96, 107, 97, 208}, 30, 241, 189};
        show_inputValue = [self StringFromMyData:&value];
    }
    return show_inputValue;
}

//: ids
- (NSString *)mToName {
    /* static */ NSString *mToName = nil;
    if (!mToName) {
        StructMyData value = (StructMyData){16, (Byte []){121, 116, 99, 130}, 3, 136, 152};
        mToName = [self StringFromMyData:&value];
    }
    return mToName;
}

//: type
- (NSString *)dream_cornerName {
    /* static */ NSString *dream_cornerName = nil;
    if (!dream_cornerName) {
        StructMyData value = (StructMyData){38, (Byte []){82, 95, 86, 67, 151}, 4, 226, 65};
        dream_cornerName = [self StringFromMyData:&value];
    }
    return dream_cornerName;
}

//: tag_activity_set
- (NSString *)user_objectValue {
    /* static */ NSString *user_objectValue = nil;
    if (!user_objectValue) {
        StructMyData value = (StructMyData){126, (Byte []){10, 31, 25, 33, 31, 29, 10, 23, 8, 23, 10, 7, 33, 13, 27, 10, 253}, 16, 127, 38};
        user_objectValue = [self StringFromMyData:&value];
    }
    return user_objectValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OffViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//
//#import "NTESContactSearchResultVC.h"

// __M_A_C_R_O__
//: #import "CCCContactsViewController.h"
#import "OffViewController.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"
//: #import "NTESSessionViewController.h"
#import "TopViewController.h"
//: #import "NTESContactUtilItem.h"
#import "MessageName.h"
//: #import "NTESContactDefines.h"
#import "NTESContactDefines.h"
//: #import "NTESGroupedContacts.h"
#import "LabelDataCollection.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESCustomNotificationDB.h"
#import "AppDb.h"
//: #import "NTESNotificationCenter.h"
#import "CanLabel.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+Enable.h"
//: #import "NTESContactAddFriendViewController.h"
#import "BubbleViewController.h"
//: #import "NTESPersonalCardViewController.h"
#import "SharedViewController.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Enable.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESContactUtilCell.h"
#import "ViewCell.h"
//: #import "NTESContactDataCell.h"
#import "IndexPointDataCell.h"
//: #import "FFFContactSelectViewController.h"
#import "BrandViewController.h"
//: #import "NTESUserUtil.h"
#import "InformationUtil.h"
//: #import "NTESBundleSetting.h"
#import "EnvironmentSetting.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "NTESContactSearchViewController.h"
#import "RedViewController.h"
//: #import "NTESSystemNotificationViewController.h"
#import "NotificationViewController.h"
//: #import "CCCBlackListViewController.h"
#import "ItemViewController.h"
//: #import "NTESContactHeaderView.h"
#import "TextView.h"
//: #import "CCCContactScanViewController.h"
#import "AppViewController.h"
//: #import "NTESContactTableHeader.h"
#import "DeviceLengthView.h"
//: #import "NTESContactGroupCell.h"
#import "RowView.h"
//: #import "CCCAddressBookManager.h"
#import "AddressData.h"
//: #import "NSObject+YYModel.h"
#import "NSObject+YYModel.h"
//: #import <FFDropDownMenu/FFDropDownMenu.h>
#import <FFDropDownMenu/FFDropDownMenu.h>
//: #import <FFDropDownMenu/FFDropDownMenuView.h>
#import <FFDropDownMenu/FFDropDownMenuView.h>
//: #import "NTESFriendListTableViewCell.h"
#import "InsertViewCell.h"
//: #import "FFFKitFileLocationHelper.h"
#import "LocationHelper.h"

//: static const NSString *contactCellUtilIcon = @"icon";
static const NSString *show_fromName = @"icon";
//: static const NSString *contactCellUtilVC = @"vc";
static const NSString *k_contentMessage = @"vc";
//: static const NSString *contactCellUtilBadge = @"badge";
static const NSString *mainEventData = @"badge";
//: static const NSString *contactCellUtilTitle = @"title";
static const NSString *dreamArrayMessage = @"title";
//: static const NSString *contactCellUtilUid = @"uid";
static const NSString *mainTextIdent = @"uid";
//: static const NSString *contactCellUtilSelectorName = @"selName";
static const NSString *main_documentFormat = @"selName";


//: @interface CCCContactsViewController ()<NTESUserListCellDelegate,NIMUserManagerDelegate,NIMSystemNotificationManagerDelegate,
@interface OffViewController ()<CompartmentReload,NIMUserManagerDelegate,NIMSystemNotificationManagerDelegate,
//: NTESContactUtilCellDelegate,
GreenClean,
//: FFFContactDataCellDelegate,
MediaPinDelegate,
//: NIMLoginManagerDelegate,
NIMLoginManagerDelegate,
//: NIMEventSubscribeManagerDelegate,
NIMEventSubscribeManagerDelegate,
//: NTESContactSearchDelegate> {
BarDelegate> {
    //: UIRefreshControl *_refreshControl;
    UIRefreshControl *_refreshControl;
    //: NTESGroupedContacts *_contacts;
    LabelDataCollection *_contacts;
}


//: @property (nonatomic,strong) NSArray * datas;
@property (nonatomic,strong) NSArray * datas;
//: @property (nonatomic,strong) UIButton *btnfriend;
@property (nonatomic,strong) UIButton *btnfriend;
//: @property (nonatomic,strong) UIButton *btngroup;
@property (nonatomic,strong) UIButton *btngroup;

//: @property (nonatomic,strong) UIButton *btnScan;
@property (nonatomic,strong) UIButton *btnScan;
//: @property (nonatomic,strong) UIButton *btnCreatgroup;
@property (nonatomic,strong) UIButton *btnCreatgroup;


//: @property (nonatomic ,strong) NSArray *advancedTeamArray;
@property (nonatomic ,strong) NSArray *advancedTeamArray;
//: @property (nonatomic ,assign) NSInteger sliderIndex;
@property (nonatomic ,assign) NSInteger sliderIndex;

//: @property (nonatomic ,strong) NSArray *groupArray;
@property (nonatomic ,strong) NSArray *groupArray;

//: @property (nonatomic ,strong) NSMutableArray *tempOpenArray;
@property (nonatomic ,strong) NSMutableArray *tempOpenArray;

//: @property (nonatomic,strong) UIView *friendheaderView;
@property (nonatomic,strong) UIView *friendheaderView;
//: @property (nonatomic,strong) UIView *groupheaderView;
@property (nonatomic,strong) UIView *groupheaderView;
//: @property (nonatomic,strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic,strong) MoreView *loadingView;

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation CCCContactsViewController
@implementation OffViewController

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].userManager removeDelegate:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
    [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];

}

//: -(void)viewWillAppear:(BOOL)animated{
-(void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
    //: [self prepareData];
    [self nameAssemblage];
    //: self.advancedTeamArray = [self advancedDidFetchTeams];
    self.advancedTeamArray = [self keyDoingTeams];
//    [self.tableView reloadData];
    //: [self loadTheView];
    [self the];
}

//: - (void)loadTheView
- (void)the
{
    //: if (_sliderIndex<=0) {
    if (_sliderIndex<=0) {

        //: if([_contacts groupCount]>0){
        if([_contacts imageView]>0){
           //: self.defView.hidden = YES;
           self.defView.hidden = YES;
           //: [self.tableView reloadData];
           [self.tableView reloadData];
        //: } else{
        } else{
            //: self.defView.hidden = NO;
            self.defView.hidden = NO;
        }


    //: }else{
    }else{
        //: if(self.advancedTeamArray.count>0){
        if(self.advancedTeamArray.count>0){
           //: self.defView.hidden = YES;
           self.defView.hidden = YES;
           //: [self.tableView reloadData];
           [self.tableView reloadData];
        //: } else{
        } else{
            //: self.defView.hidden = NO;
            self.defView.hidden = NO;
        }
    }

}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];

    //: [self setUpNavItem];
    [self quantityeract];

    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.tableHeaderView = self.friendheaderView;
    self.tableView.tableHeaderView = self.friendheaderView;

    //: if ([self.tableView respondsToSelector:@selector(setSectionIndexColor:)]) {
    if ([self.tableView respondsToSelector:@selector(setSectionIndexColor:)]) {
        //: self.tableView.sectionIndexColor = [UIColor colorWithHexString:@"#2C3042"]; 
        self.tableView.sectionIndexColor = [UIColor status:[[MyData sharedInstance] dreamBarSuccessTitle]]; // 索引文字颜色
//        self.tableView.sectionIndexBackgroundColor = [UIColor clearColor]; // 索引背景色
//        self.tableView.sectionIndexTrackingBackgroundColor = [UIColor lightGrayColor]; // 选中时的背景色
    }

//    [self prepareData];
    //: self.tempOpenArray = [NSMutableArray arrayWithCapacity:0];
    self.tempOpenArray = [NSMutableArray arrayWithCapacity:0];

    //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
    [[NIMSDK sharedSDK].loginManager addDelegate:self];
    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];
    //: [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
    [[NIMSDK sharedSDK].subscribeManager addDelegate:self];

    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+140, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice vg_statusBarHeight]-140-(49.0f))];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice statusOrLevel]+140, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice statusOrLevel]-140-(49.0f))];
        //: _defView.backgroundColor = [UIColor whiteColor];
        _defView.backgroundColor = [UIColor whiteColor];
//        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 20, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 20, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_ContactList"];
        defImg.image = [UIImage imageNamed:[[MyData sharedInstance] main_listName]];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];


        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor status:[[MyData sharedInstance] kMinName]];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [SendName streetSmart:[[MyData sharedInstance] dreamCellId]];


    }
    //: return _defView;
    return _defView;
}

//: -(void)getGroupData{
-(void)asMessageReply{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/group/"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[[MyData sharedInstance] m_listName]] read:nil indicator:NO spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict tag:[[MyData sharedInstance] user_rangeFormat]];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {

            //: NSArray *friendList = [[NIMSDK sharedSDK].userManager myFriends];
            NSArray *friendList = [[NIMSDK sharedSDK].userManager myFriends];
            //: NSMutableArray *friendIds = [NSMutableArray arrayWithCapacity:0];
            NSMutableArray *friendIds = [NSMutableArray arrayWithCapacity:0];
            //: for (NIMUser *user in friendList) {
            for (NIMUser *user in friendList) {
                //: NSDictionary *dict = [NSDictionary dictionaryWithObject:user.userId forKey:@"user_id"];
                NSDictionary *dict = [NSDictionary dictionaryWithObject:user.userId forKey:[[MyData sharedInstance] m_afterName]];
                //: [friendIds addObject:dict];
                [friendIds addObject:dict];
            }


            //: NSMutableDictionary *myfriend = [NSMutableDictionary dictionaryWithCapacity:0];
            NSMutableDictionary *myfriend = [NSMutableDictionary dictionaryWithCapacity:0];
            //: [myfriend setObject:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_friend"] forKey:@"name"];
            [myfriend setObject:[SendName streetSmart:[[MyData sharedInstance] dream_toolTitle]] forKey:[[MyData sharedInstance] userSourceKey]];
            //: [myfriend setObject:friendIds forKey:@"ids"];
            [myfriend setObject:friendIds forKey:[[MyData sharedInstance] mToName]];
            //: NSMutableArray *dataArray = [NSMutableArray arrayWithCapacity:0];
            NSMutableArray *dataArray = [NSMutableArray arrayWithCapacity:0];
            //: [dataArray addObject:myfriend];
            [dataArray addObject:myfriend];


            //: NSArray *data = [resultDict arrayValueForKey:@"data"];
            NSArray *data = [resultDict unwished:[[MyData sharedInstance] noti_imageMsg]];
            //: [dataArray addObjectsFromArray:data];
            [dataArray addObjectsFromArray:data];
            //: _groupArray = dataArray;
            _groupArray = dataArray;
            //: [_tableView reloadData];
            [_tableView reloadData];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];


}

//: - (void)setUpNavItem
- (void)quantityeract
{
    //: UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [UIDevice vg_statusBarHeight]+132)];
    UIView *navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [UIDevice statusOrLevel]+132)];
    //: [self.view addSubview:navView];
    [self.view addSubview:navView];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, [UIDevice vg_statusBarHeight]+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(15, [UIDevice statusOrLevel]+8, [[UIScreen mainScreen] bounds].size.width-30, 48)];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    topview.backgroundColor = [UIColor status:[[MyData sharedInstance] dreamRecordViewData]];
    //: topview.layer.cornerRadius = 24;
    topview.layer.cornerRadius = 24;
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-12)/2;

    //: _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnfriend = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btnfriend.frame = CGRectMake(6, 6, width, 36);
    _btnfriend.frame = CGRectMake(6, 6, width, 36);
    //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
    _btnfriend.backgroundColor = [UIColor status:[[MyData sharedInstance] m_removeData]];
    //: _btnfriend.layer.cornerRadius = 18;
    _btnfriend.layer.cornerRadius = 18;
    //: _btnfriend.tag = 0;
    _btnfriend.tag = 0;
    //: _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    _btnfriend.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_btnfriend setTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_friend"] forState:UIControlStateNormal];
    [_btnfriend setTitle:[SendName streetSmart:[[MyData sharedInstance] k_showPath]] forState:UIControlStateNormal];
    //: [_btnfriend addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btnfriend addTarget:self action:@selector(voiced:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btnfriend];
    [topview addSubview:_btnfriend];

    //: _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    _btngroup = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    _btngroup.frame = CGRectMake(width+6, 6, width, 36);
    //: _btngroup.tag = 1;
    _btngroup.tag = 1;
    //: _btngroup.layer.cornerRadius = 18;
    _btngroup.layer.cornerRadius = 18;
    //: _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    _btngroup.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_btngroup setTitleColor:[UIColor status:[[MyData sharedInstance] noti_letterMessage]] forState:UIControlStateNormal];
    //: [_btngroup setTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_group"] forState:UIControlStateNormal];
    [_btngroup setTitle:[SendName streetSmart:[[MyData sharedInstance] showModeVerticalTitle]] forState:UIControlStateNormal];
    //: [_btngroup addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btngroup addTarget:self action:@selector(voiced:) forControlEvents:UIControlEventTouchUpInside];
    //: [topview addSubview:_btngroup];
    [topview addSubview:_btngroup];


    //: UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, topview.bottom+8, [[UIScreen mainScreen] bounds].size.width, 1)];
    //: lineview.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    lineview.backgroundColor = [UIColor status:[[MyData sharedInstance] show_managerName]];
    //: [navView addSubview:lineview];
    [navView addSubview:lineview];

}

//: - (void)handleNotice
- (void)seeTeam
{
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] initWithNibName:nil bundle:nil];
    NotificationViewController *vc = [[NotificationViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)prepareData{
- (void)nameAssemblage{
    //: _contacts = [[NTESGroupedContacts alloc] init];
    _contacts = [[LabelDataCollection alloc] init];
}

//普通群组
//: - (NSMutableArray *)normalDidFetchTeams{
- (NSMutableArray *)snap{
    //: NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    //: for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
    for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
        //: if (team.type == NIMTeamTypeNormal) {
        if (team.type == NIMTeamTypeNormal) {
            //: [myTeams addObject:team];
            [myTeams addObject:team];
        }
    }
    //: return myTeams;
    return myTeams;
}

//: - (NSMutableArray *)advancedDidFetchTeams {
- (NSMutableArray *)keyDoingTeams {
    //: NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    NSMutableArray *myTeams = [[NSMutableArray alloc]init];
    //: for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
    for (NIMTeam *team in [NIMSDK sharedSDK].teamManager.allMyTeams) {
        //: if (team.type == NIMTeamTypeAdvanced) {
        if (team.type == NIMTeamTypeAdvanced) {
            //: [myTeams addObject:team];
            [myTeams addObject:team];
        }
    }
    //: return myTeams;
    return myTeams;
}

//: #pragma mark - Action
#pragma mark - Action
//: - (void)onEnterMyComputer{
- (void)nameComputer{
    //: NSString *uid = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *uid = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMSession *session = [NIMSession session:uid type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:uid type:NIMSessionTypeP2P];
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    TopViewController *vc = [[TopViewController alloc] initWithMedia:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: -(void)createGroupRequestWithTeamID:(NSString *)teamID teamName:(NSString *)teamName type:(NSString *)type{
-(void)post:(NSString *)teamID icon:(NSString *)teamName pinFind:(NSString *)type{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"owner"] = currentUserId;
    dict[[[MyData sharedInstance] mReadStr]] = currentUserId;
    //: dict[@"type"] = type;
    dict[[[MyData sharedInstance] dream_cornerName]] = type;
    //: dict[@"tname"] = teamName;
    dict[[[MyData sharedInstance] m_voiceContent]] = teamName;
    //: dict[@"tid"] = teamID;
    dict[[[MyData sharedInstance] userManagerStr]] = teamID;

}

//: - (void)searchAction:(id)sender {
- (void)tincture:(id)sender {
    //: NTESContactSearchViewController *vc = [[NTESContactSearchViewController alloc] init];
    RedViewController *vc = [[RedViewController alloc] init];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: id<NTESContactItem> contactItem = (id<NTESContactItem>)[_contacts memberOfIndex:indexPath];
        id<DirectionImage> contactItem = (id<DirectionImage>)[_contacts sessionMoreIndex:indexPath];
        //: if ([contactItem respondsToSelector:@selector(selName)] && [contactItem selName].length) {
        if ([contactItem respondsToSelector:@selector(ofNeed)] && [contactItem ofNeed].length) {
            //: SEL sel = NSSelectorFromString([contactItem selName]);
            SEL sel = NSSelectorFromString([contactItem ofNeed]);
            //: SuppressPerformSelectorLeakWarning([self performSelector:sel withObject:nil]);
            SuppressPerformSelectorLeakWarning([self performSelector:sel withObject:nil]);
        }
        //: else if (contactItem.vcName.length) {
        else if (contactItem.body.length) {
            //: Class clazz = NSClassFromString(contactItem.vcName);
            Class clazz = NSClassFromString(contactItem.body);
            //: UIViewController * vc = [[clazz alloc] initWithNibName:nil bundle:nil];
            UIViewController * vc = [[clazz alloc] initWithNibName:nil bundle:nil];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        //: }else if([contactItem respondsToSelector:@selector(userId)]){
        }else if([contactItem respondsToSelector:@selector(modeContent)]){
            //: NSString * friendId = contactItem.userId;
            NSString * friendId = contactItem.modeContent;
            //: [self enterPersonalCard:friendId];
            [self preface:friendId];
        }
    //: }else{
    }else{
        //: NSArray *itemArray = _advancedTeamArray;
        NSArray *itemArray = _advancedTeamArray;
        //: NIMTeam *team = itemArray[indexPath.section];
        NIMTeam *team = itemArray[indexPath.section];
        //: NIMSession *session = [self didGetSessionWithTeam:team];
        NIMSession *session = [self streetwise:team];
        //: if (session) {
        if (session) {
            //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
            TopViewController *vc = [[TopViewController alloc] initWithMedia:session];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    id<DirectionImage> contactItem = (id<DirectionImage>)[_contacts memberOfIndex:indexPath];
//    return contactItem.uiHeight;
    //: return 64;
    return 64;
}

//: - (NIMSession *)didGetSessionWithTeam:(id)team {
- (NIMSession *)streetwise:(id)team {
    //: NIMTeam *teamItem = (NIMTeam *)team;
    NIMTeam *teamItem = (NIMTeam *)team;
    //: NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    NIMSession *session = [NIMSession session:teamItem.teamId type:NIMSessionTypeTeam];
    //: return session;
    return session;
}

//: #pragma mark - UITableViewDataSource
#pragma mark - UITableViewDataSource
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return [_contacts groupCount];
        return [_contacts imageView];
    //: }else{
    }else{
        //: return _advancedTeamArray.count;
        return _advancedTeamArray.count;

    }
}
//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return [_contacts memberCountOfGroup:section];
        return [_contacts withClear:section];
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    //: if (_sliderIndex == 0) {
    if (_sliderIndex == 0) {
            //: return 30;
            return 30;
        }
        //: return 2.2250738585072014e-308;
        return 2.2250738585072014e-308;

}
//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return 0.01f;
    return 0.01f;
}


//: - (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{

    //: if (_sliderIndex == 0) {
    if (_sliderIndex == 0) {
           //: UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 30)];
           UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 30)];
           //: view.backgroundColor = [UIColor whiteColor];
           view.backgroundColor = [UIColor whiteColor];

           //: UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 7.5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
           UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 7.5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
           //: label.text = [_contacts titleOfGroup:section];
           label.text = [_contacts body:section];
           //: label.font = [UIFont systemFontOfSize:16];
           label.font = [UIFont systemFontOfSize:16];
           //: label.textColor = [UIColor colorWithHexString:@"#2C3042"];
           label.textColor = [UIColor status:[[MyData sharedInstance] dreamBarSuccessTitle]];
           //: [view addSubview:label];
           [view addSubview:label];

           //: return view;
           return view;
       }
       //: return [[UIView alloc] init];
       return [[UIView alloc] init];
}


//: - (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: return [[UIView alloc] init];
    return [[UIView alloc] init];
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //: NTESFriendListTableViewCell *cell = [NTESFriendListTableViewCell cellWithTableView:tableView];
    InsertViewCell *cell = [InsertViewCell compartment:tableView];
    //        cell.delegate = self;
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: id contactItem = [_contacts memberOfIndex:indexPath];
        id contactItem = [_contacts sessionMoreIndex:indexPath];
        //: [cell refreshUser:contactItem];
        [cell record:contactItem];
    //: }else{
    }else{
        //: NIMTeam *team = _advancedTeamArray[indexPath.section];
        NIMTeam *team = _advancedTeamArray[indexPath.section];
        //: [cell refreshTeam:team];
        [cell sample:team];
    }

    //: return cell;
    return cell;
}

//: - (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return [_contacts titleOfGroup:section];
        return [_contacts body:section];
    //: }else{
    }else{
        //: return @"";
        return @"";
    }
}

//: - (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    //: if (_sliderIndex <= 0) {
    if (_sliderIndex <= 0) {
        //: return _contacts.sortedGroupTitles;
        return _contacts.sortedGroupTitles;
    //: }else{
    }else{
        //: NSArray *itemArray = _advancedTeamArray;
        NSArray *itemArray = _advancedTeamArray;
        //: NSMutableArray *array = [NSMutableArray arrayWithCapacity:itemArray.count];
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:itemArray.count];
        //: for (int i = 0; i < itemArray.count; i++) {
        for (int i = 0; i < itemArray.count; i++) {
            //: [array addObject:@""];
            [array addObject:@""];
        }
        //: return array;
        return array;
    }
}

//: - (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    //: return index + 1;
    return index + 1;
}

//: #pragma mark - NTESUserListCellDelegate
#pragma mark - CompartmentReload
//: - (void)didTouchMessageButton:(NSString *)memberId
- (void)magnituded:(NSString *)memberId
{
    //: NIMSession *session = [NIMSession session:memberId type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:memberId type:NIMSessionTypeP2P];
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    TopViewController *vc = [[TopViewController alloc] initWithMedia:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: #pragma mark - NTESContactSearchDelegate
#pragma mark - BarDelegate
//: - (BOOL)disableSearchTeam {
- (BOOL)disableSearchTeam {
    //: return _disableSearchTeam;
    return _disableSearchTeam;
}

//: - (BOOL)ignoreCase {
- (BOOL)messageTo {
    //: return _searchIgoreCase;
    return _searchIgoreCase;
}

//: #pragma mark - FFFContactDataCellDelegate
#pragma mark - MediaPinDelegate
//: - (void)onPressAvatar:(NSString *)memberId{
- (void)offLoad:(NSString *)memberId{
    //: [self enterPersonalCard:memberId];
    [self preface:memberId];
}

//: #pragma mark - NTESContactUtilCellDelegate
#pragma mark - GreenClean
//: - (void)onPressUtilImage:(NSString *)content{
- (void)pressImage:(NSString *)content{

}

//: #pragma mark - NIMContactSelectDelegate
#pragma mark - NoticeBar
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)fillInSearch:(NSArray *)selectedContacts{

}

//: #pragma mark - NIMSDK Delegate
#pragma mark - NIMSDK Delegate
//: - (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    //: [self prepareData];
    [self nameAssemblage];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)onLogin:(NIMLoginStep)step
- (void)onLogin:(NIMLoginStep)step
{
    //: if (step == NIMLoginStepSyncOK) {
    if (step == NIMLoginStepSyncOK) {
        //: if (self.isViewLoaded) {
        if (self.isViewLoaded) {//没有加载view的话viewDidLoad里会走一遍prepareData
            //: [self prepareData];
            [self nameAssemblage];
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        }
    }
}

//: - (void)onUserInfoChanged:(NIMUser *)user
- (void)onUserInfoChanged:(NIMUser *)user
{
    //: [self refresh];
    [self relatedRefresh];
}

//: - (void)onFriendChanged:(NIMUser *)user{
- (void)onFriendChanged:(NIMUser *)user{
    //: [self refresh];
    [self relatedRefresh];
}

//: - (void)onBlackListChanged
- (void)onBlackListChanged
{
    //: [self refresh];
    [self relatedRefresh];
}

//: - (void)onMuteListChanged
- (void)onMuteListChanged
{
    //: [self refresh];
    [self relatedRefresh];
}

//: - (void)refresh
- (void)relatedRefresh
{
    //: [self prepareData];
    [self nameAssemblage];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}


//: #pragma mark - NIMEventSubscribeManagerDelegate
#pragma mark - NIMEventSubscribeManagerDelegate

//: - (void)onRecvSubscribeEvents:(NSArray *)events
- (void)onRecvSubscribeEvents:(NSArray *)events
{
    //: NSMutableSet *ids = [[NSMutableSet alloc] init];
    NSMutableSet *ids = [[NSMutableSet alloc] init];
    //: for (NIMSubscribeEvent *event in events) {
    for (NIMSubscribeEvent *event in events) {
        //: [ids addObject:event.from];
        [ids addObject:event.from];
    }

    //: NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    //: for (NSIndexPath *indexPath in self.tableView.indexPathsForVisibleRows) {
    for (NSIndexPath *indexPath in self.tableView.indexPathsForVisibleRows) {

        //: id<NTESContactItem> contactItem = (id<NTESContactItem>)[_contacts memberOfIndex:indexPath];
        id<DirectionImage> contactItem = (id<DirectionImage>)[_contacts sessionMoreIndex:indexPath];
        //: if([contactItem respondsToSelector:@selector(userId)]){
        if([contactItem respondsToSelector:@selector(modeContent)]){
            //: NSString * friendId = contactItem.userId;
            NSString * friendId = contactItem.modeContent;
            //: if ([ids containsObject:friendId]) {
            if ([ids containsObject:friendId]) {
                //: [indexPaths addObject:indexPath];
                [indexPaths addObject:indexPath];
            }
        }
    }
    //: if (indexPaths.count > 0)
    if (indexPaths.count > 0)
    {
        //: [self.tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
        [self.tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
    }
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)enterPersonalCard:(NSString *)userId{
- (void)preface:(NSString *)userId{
    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:userId];
    SharedViewController *vc = [[SharedViewController alloc] initWithByFullId:userId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)presentMemberSelector:(ContactSelectFinishBlock) block{
- (void)member:(ContactSelectFinishBlock) block{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //使用内置的好友选择器
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    TitleConfig *config = [[TitleConfig alloc] init];
    //获取自己id
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [users addObject:currentUserId];
    [users addObject:currentUserId];
    //将自己的id过滤
    //: config.filterIds = users;
    config.filterIds = users;
    //需要多选
    //: config.needMutiSelected = YES;
    config.needMutiSelected = YES;
    //: config.showSelectHeaderview = YES;
    config.showSelectHeaderview = YES;
    //初始化联系人选择器
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    BrandViewController *vc = [[BrandViewController alloc] initWithMax:config];
    //回调处理
    //: vc.finshBlock = block;
    vc.finshBlock = block;
    //: [vc show];
    [vc totalRelation];
}


//: - (UITableView *)tableView {
- (UITableView *)tableView {
    //: if (!_tableView) {
    if (!_tableView) {
        //: _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice vg_statusBarHeight]-64-(49.0f)) style:UITableViewStyleGrouped];
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [UIDevice statusOrLevel]+64, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[UIDevice statusOrLevel]-64-(49.0f)) style:UITableViewStyleGrouped];
        //: _tableView.delegate = self;
        _tableView.delegate = self;
        //: _tableView.dataSource = self;
        _tableView.dataSource = self;
        //: UIEdgeInsets separatorInset = self.tableView.separatorInset;
        UIEdgeInsets separatorInset = self.tableView.separatorInset;
        //: separatorInset.right = 0;
        separatorInset.right = 0;
        //: _tableView.separatorInset = separatorInset;
        _tableView.separatorInset = separatorInset;
        //: _tableView.sectionIndexBackgroundColor = [UIColor clearColor];
        _tableView.sectionIndexBackgroundColor = [UIColor clearColor];
        //: _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    //: return _tableView;
    return _tableView;
}


//: #pragma mark - NTESContactHeaderDelegate
#pragma mark - TinkleSort
//: -(void)searchClick{
-(void)deleteBy{
    //: [self searchAction:nil];
    [self tincture:nil];
}

//: -(void)addFriend{
-(void)viewFriend{
    //: NTESContactAddFriendViewController *vc = [[NTESContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
    BubbleViewController *vc = [[BubbleViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: -(void)newGroup{
-(void)searchedBy{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self presentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self member:^(NSArray *uids, NSString *name, UIImage *avater) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;

        //: [self.loadingView animationShow];
        [self.loadingView select];

        //: [self uploadImage:avater complete:^(NSString *urlString) {
        [self atEnable:avater comment:^(NSString *urlString) {

            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            //: NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            //: option.name = name;
            option.name = name;
            //: option.avatarUrl = urlString ? : @"";
            option.avatarUrl = urlString ? : @"";
            //: option.type = NIMTeamTypeAdvanced;
            option.type = NIMTeamTypeAdvanced;
            //: option.joinMode = NIMTeamJoinModeNoAuth;
            option.joinMode = NIMTeamJoinModeNoAuth;
            //: option.postscript = [FFFLanguageManager getTextWithKey:@"invite_you_group"];
            option.postscript = [SendName streetSmart:[[MyData sharedInstance] kSuccessPath]];
//            [SVProgressHUD show];


            //: [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
            [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
//                [SVProgressHUD dismiss];
                //: [self.loadingView animationClose];
                [self.loadingView tingShould];
                //: if (!error) {
                if (!error) {
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                    TopViewController *vc = [[TopViewController alloc] initWithMedia:session];
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                    //: [self createGroupRequestWithTeamID:teamId teamName:option.name type:@"1"];
                    [self post:teamId icon:option.name pinFind:@"1"];
                    //: [self newGroupSyncRequest:option.name teamID:teamId];
                    [self byId:option.name deleteCan:teamId];
                //: }else{
                }else{
                    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[SendName streetSmart:[[MyData sharedInstance] k_sourceModeMessage]] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];
        //: }];
        }];
    //: }];
    }];
}

//: - (void)uploadImage:(UIImage *)image complete:(void(^)(NSString *urlString ))complete {
- (void)atEnable:(UIImage *)image comment:(void(^)(NSString *urlString ))complete {

    //: if (!image) {
    if (!image) {
        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
        //: return;
        return;
    }

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(375, 375)];
    UIImage *imageForAvatarUpload = [image view:CGSizeMake(375, 375)];
    //: NSString *fileName = [FFFKitFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [LocationHelper post:[[MyData sharedInstance] main_withMakeFullMessage]];
    //: NSString *filePath = [[FFFKitFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
    NSString *filePath = [[LocationHelper showOf] stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.3);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.3);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
        [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
            //: NSLog(@"%.2f",progress);
        //: } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
        } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
            //: if (!error && wself) {
            if (!error && wself) {


            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[SendName streetSmart:[[MyData sharedInstance] show_redTitle]]
                             //: duration:2
                             duration:2
                             //: position:CSToastPositionCenter];
                             position:CSToastPositionCenter];
            }

            //: !complete ? :complete(urlString);
            !complete ? :complete(urlString);
        //: }];
        }];
    //: }else{
    }else{
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
        [self.view makeToast:[SendName streetSmart:[[MyData sharedInstance] show_redTitle]]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];

        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
    }

}

//同步数据
//: -(void)newGroupSyncRequest:(NSString *)groupName teamID:(NSString *)teamId{
-(void)byId:(NSString *)groupName deleteCan:(NSString *)teamId{
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"name"] = groupName;
    dict[[[MyData sharedInstance] userSourceKey]] = groupName;
    //: dict[@"id"] = teamId;
    dict[@"id"] = teamId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/create"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[[MyData sharedInstance] kLabelMessage]] read:dict indicator:NO spaceOf:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)scan{
-(void)nameScan{
    //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
    AppViewController *vc = [[AppViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: -(void)friendNotification{
-(void)withDrop{
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] init];
    NotificationViewController *vc = [[NotificationViewController alloc] init];
    //: vc.filterType = @"1";
    vc.filterType = @"1";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: -(void)groupNotification{
-(void)closeDataEnable{
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] init];
    NotificationViewController *vc = [[NotificationViewController alloc] init];
    //: vc.filterType = @"2";
    vc.filterType = @"2";
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}



//: -(void)blackFriendList{
-(void)atColor{
    //: CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    ItemViewController *vc = [[ItemViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: -(void)collectList{
-(void)mailingList{

}


//: -(void)sliderButtonClick:(UIButton *)sender
-(void)voiced:(UIButton *)sender
{
    //: sender.selected = YES;
    sender.selected = YES;

    //: if(sender == self.btnfriend){
    if(sender == self.btnfriend){
        //: _btnfriend.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        _btnfriend.backgroundColor = [UIColor status:[[MyData sharedInstance] m_removeData]];
        //: _btngroup.backgroundColor = [UIColor clearColor];
        _btngroup.backgroundColor = [UIColor clearColor];
        //: [_btngroup setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor status:[[MyData sharedInstance] noti_letterMessage]] forState:UIControlStateNormal];
        //: [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.tableView.tableHeaderView = self.friendheaderView;
        self.tableView.tableHeaderView = self.friendheaderView;

    //: }else if (sender == self.btngroup){
    }else if (sender == self.btngroup){
        //: _btngroup.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        _btngroup.backgroundColor = [UIColor status:[[MyData sharedInstance] m_removeData]];
        //: _btnfriend.backgroundColor = [UIColor clearColor];
        _btnfriend.backgroundColor = [UIColor clearColor];
        //: [_btnfriend setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_btnfriend setTitleColor:[UIColor status:[[MyData sharedInstance] noti_letterMessage]] forState:UIControlStateNormal];
        //: [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btngroup setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        //: self.tableView.tableHeaderView = self.groupheaderView;
        self.tableView.tableHeaderView = self.groupheaderView;
    }


    //: _sliderIndex = sender.tag;
    _sliderIndex = sender.tag;
//    [_tableView reloadData];
    //: [self loadTheView];
    [self the];

}

//: - (NSString *)arrayToJSONString:(NSArray *)array {
- (NSString *)colorName:(NSArray *)array {

    //: NSError *error = nil;
    NSError *error = nil;
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&error];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&error];
    //: NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    //: NSString *jsonTemp = [jsonString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    NSString *jsonTemp = [jsonString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    //: return jsonTemp;
    return jsonTemp;
}

/**
 *  请求相机权限
 */
//: - (void)requestAuthorizationForVideo {
- (void)easyLay {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    //: if (AVAuthorizationStatusNotDetermined == authorityStaus) {
    if (AVAuthorizationStatusNotDetermined == authorityStaus) {
        //: [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            //: if (granted == YES) {
            if (granted == YES) {
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                        //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
                        AppViewController *vc = [[AppViewController alloc] init];
                        //: [self.navigationController pushViewController:vc animated:YES];
                        [self.navigationController pushViewController:vc animated:YES];

                    }
                //: });
                });
            }
        //: }];
        }];
    //: } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
    } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
        //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
            AppViewController *vc = [[AppViewController alloc] init];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }

        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[SendName streetSmart:[[MyData sharedInstance] mTitleData]] message:[SendName streetSmart:[[MyData sharedInstance] k_cellContent]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[[MyData sharedInstance] kClickSuccessMsg]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[[MyData sharedInstance] user_objectValue]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        //: }])];
        }])];
        //: [self presentViewController:alertControl animated:YES completion:nil];
        [self presentViewController:alertControl animated:YES completion:nil];

    }
}

//: -(void)creatTeamGroup{
-(void)bioticCommunityGroup{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [wself presentMemberSelector:^(NSArray *uids, NSString *groupName, UIImage *avater) {
    [wself member:^(NSArray *uids, NSString *groupName, UIImage *avater) {
        //: NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
        NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
        //: NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
        NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
        //: option.name = groupName;
        option.name = groupName;
        //: option.type = NIMTeamTypeAdvanced;
        option.type = NIMTeamTypeAdvanced;
        //: option.joinMode = NIMTeamJoinModeNoAuth;
        option.joinMode = NIMTeamJoinModeNoAuth;
        //: option.postscript = [FFFLanguageManager getTextWithKey:@"invite_you_group"];
        option.postscript = [SendName streetSmart:[[MyData sharedInstance] kSuccessPath]];
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
        [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: if (!error) {
            if (!error) {
                //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                TopViewController *vc = [[TopViewController alloc] initWithMedia:session];
                //: [wself.navigationController pushViewController:vc animated:YES];
                [wself.navigationController pushViewController:vc animated:YES];
                //: [self createGroupRequestWithTeamID:teamId teamName:option.name type:@"1"];
                [self post:teamId icon:option.name pinFind:@"1"];
                //: [wself newGroupSyncRequest:option.name teamID:teamId];
                [wself byId:option.name deleteCan:teamId];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[SendName streetSmart:[[MyData sharedInstance] k_sourceModeMessage]] duration:2.0 position:CSToastPositionCenter];
            }
        //: }];
        }];
    //: }];
    }];
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

//: - (UIView *)friendheaderView
- (UIView *)friendheaderView
{
    //: if (!_friendheaderView) {
    if (!_friendheaderView) {
        //: _friendheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 76)];
        _friendheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 76)];

        //: CGFloat width2 = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        CGFloat width2 = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        //: UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        //: editView.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
        editView.backgroundColor = [UIColor status:[[MyData sharedInstance] appFrameKey]];
        //: editView.layer.cornerRadius = 12;
        editView.layer.cornerRadius = 12;
        //: [_friendheaderView addSubview:editView];
        [_friendheaderView addSubview:editView];
        //: editView.userInteractionEnabled = YES;
        editView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleNotice)];
        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(seeTeam)];
        //: [editView addGestureRecognizer:singleTap1];
        [editView addGestureRecognizer:singleTap1];
        //: UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: editimg.image = [UIImage imageNamed:@"contact_notice"];
        editimg.image = [UIImage imageNamed:[[MyData sharedInstance] app_makeName]];
        //: [editView addSubview:editimg];
        [editView addSubview:editimg];
        //: UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: labedit.font = [UIFont systemFontOfSize:14];
        labedit.font = [UIFont systemFontOfSize:14];
        //: labedit.textColor = [UIColor colorWithHexString:@"#2C3042"];
        labedit.textColor = [UIColor status:[[MyData sharedInstance] dreamBarSuccessTitle]];
        //: labedit.text = [FFFLanguageManager getTextWithKey:@"notification"];
        labedit.text = [SendName streetSmart:[[MyData sharedInstance] main_inputSizeId]];
        //: [editView addSubview:labedit];
        [editView addSubview:labedit];

        //: UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        //: langView.backgroundColor = [UIColor colorWithHexString:@"E3F4AA"];
        langView.backgroundColor = [UIColor status:[[MyData sharedInstance] userNameToNextData]];
        //: langView.layer.cornerRadius = 12;
        langView.layer.cornerRadius = 12;
        //: [_friendheaderView addSubview:langView];
        [_friendheaderView addSubview:langView];
        //: langView.userInteractionEnabled = YES;
        langView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(addFriend)];
        UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(viewFriend)];
        //: [langView addGestureRecognizer:singleTap2];
        [langView addGestureRecognizer:singleTap2];
        //: UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: langimg.image = [UIImage imageNamed:@"contact_add_friend"];
        langimg.image = [UIImage imageNamed:[[MyData sharedInstance] userTitleSearchName]];
        //: [langView addSubview:langimg];
        [langView addSubview:langimg];
        //: UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: lablang.font = [UIFont systemFontOfSize:14];
        lablang.font = [UIFont systemFontOfSize:14];
        //: lablang.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lablang.textColor = [UIColor status:[[MyData sharedInstance] dreamBarSuccessTitle]];
        //: lablang.text = [FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
        lablang.text = [SendName streetSmart:[[MyData sharedInstance] show_inputValue]];
        //: [langView addSubview:lablang];
        [langView addSubview:lablang];
    }
    //: return _friendheaderView;
    return _friendheaderView;
}
//: - (UIView *)groupheaderView
- (UIView *)groupheaderView
{
    //: if (!_groupheaderView) {
    if (!_groupheaderView) {
        //: _groupheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 76)];
        _groupheaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 76)];

        //: CGFloat width2 = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        CGFloat width2 = ([[UIScreen mainScreen] bounds].size.width-45)/2;
        //: UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 16, width2, 52)];
        //: editView.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
        editView.backgroundColor = [UIColor status:[[MyData sharedInstance] appFrameKey]];
        //: editView.layer.cornerRadius = 12;
        editView.layer.cornerRadius = 12;
        //: [_groupheaderView addSubview:editView];
        [_groupheaderView addSubview:editView];
        //: editView.userInteractionEnabled = YES;
        editView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleNotice)];
        UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(seeTeam)];
        //: [editView addGestureRecognizer:singleTap1];
        [editView addGestureRecognizer:singleTap1];
        //: UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: editimg.image = [UIImage imageNamed:@"contact_notice"];
        editimg.image = [UIImage imageNamed:[[MyData sharedInstance] app_makeName]];
        //: [editView addSubview:editimg];
        [editView addSubview:editimg];
        //: UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: labedit.font = [UIFont systemFontOfSize:14];
        labedit.font = [UIFont systemFontOfSize:14];
        //: labedit.textColor = [UIColor colorWithHexString:@"#2C3042"];
        labedit.textColor = [UIColor status:[[MyData sharedInstance] dreamBarSuccessTitle]];
        //: labedit.text = [FFFLanguageManager getTextWithKey:@"notification"];
        labedit.text = [SendName streetSmart:[[MyData sharedInstance] main_inputSizeId]];
        //: [editView addSubview:labedit];
        [editView addSubview:labedit];

        //: UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width2+30, 16, width2, 52)];
        //: langView.backgroundColor = [UIColor colorWithHexString:@"#CCECFC"];
        langView.backgroundColor = [UIColor status:[[MyData sharedInstance] noti_messageMinData]];
        //: langView.layer.cornerRadius = 12;
        langView.layer.cornerRadius = 12;
        //: [_groupheaderView addSubview:langView];
        [_groupheaderView addSubview:langView];
        //: langView.userInteractionEnabled = YES;
        langView.userInteractionEnabled = YES;
        //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(newGroup)];
        UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(searchedBy)];
        //: [langView addGestureRecognizer:singleTap2];
        [langView addGestureRecognizer:singleTap2];
        //: UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width2-165, 0, 165, 52)];
        //: langimg.image = [UIImage imageNamed:@"contact_group"];
        langimg.image = [UIImage imageNamed:[[MyData sharedInstance] user_nameMsg]];
        //: [langView addSubview:langimg];
        [langView addSubview:langimg];
        //: UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        UILabel *lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width2-30, 52)];
        //: lablang.font = [UIFont systemFontOfSize:14];
        lablang.font = [UIFont systemFontOfSize:14];
        //: lablang.textColor = [UIColor colorWithHexString:@"#2C3042"];
        lablang.textColor = [UIColor status:[[MyData sharedInstance] dreamBarSuccessTitle]];
        //: lablang.text = [FFFLanguageManager getTextWithKey:@"activity_create_group_name_create_group"];
        lablang.text = [SendName streetSmart:[[MyData sharedInstance] show_mImageText]];
        //: [langView addSubview:lablang];
        [langView addSubview:lablang];
    }
    //: return _groupheaderView;
    return _groupheaderView;
}

//: @end
@end