
#import <Foundation/Foundation.h>

@interface GrayBottomData : NSObject

@end

@implementation GrayBottomData

+ (NSData *)GrayBottomDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)GrayBottomDataToCache:(Byte *)data {
    int haveQuantity = data[0];
    int programming = data[1];
    for (int i = 0; i < haveQuantity / 2; i++) {
        int begin = programming + i;
        int end = programming + haveQuantity - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[programming + haveQuantity] = 0;
    return data + programming;
}

+ (NSString *)StringFromGrayBottomData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self GrayBottomDataToCache:data]];
}  

//: message_send_camera
+ (NSString *)app_distinctiveData {
    /* static */ NSString *app_distinctiveData = nil;
    if (!app_distinctiveData) {
		NSArray<NSNumber *> *origin = @[@19, @4, @224, @198, @97, @114, @101, @109, @97, @99, @95, @100, @110, @101, @115, @95, @101, @103, @97, @115, @115, @101, @109, @187];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_distinctiveData = [self StringFromGrayBottomData:value];
    }
    return app_distinctiveData;
}

//: userName
+ (NSString *)mAyeId {
    /* static */ NSString *mAyeId = nil;
    if (!mAyeId) {
		NSArray<NSNumber *> *origin = @[@8, @2, @101, @109, @97, @78, @114, @101, @115, @117, @234];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mAyeId = [self StringFromGrayBottomData:value];
    }
    return mAyeId;
}

//: reply
+ (NSString *)dreamHeapEcruPath {
    /* static */ NSString *dreamHeapEcruPath = nil;
    if (!dreamHeapEcruPath) {
		NSArray<NSNumber *> *origin = @[@5, @5, @211, @115, @176, @121, @108, @112, @101, @114, @79];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamHeapEcruPath = [self StringFromGrayBottomData:value];
    }
    return dreamHeapEcruPath;
}

//: message_send_album
+ (NSString *)showGuaranteeName {
    /* static */ NSString *showGuaranteeName = nil;
    if (!showGuaranteeName) {
		NSArray<NSNumber *> *origin = @[@18, @12, @38, @13, @160, @235, @201, @239, @192, @141, @162, @155, @109, @117, @98, @108, @97, @95, @100, @110, @101, @115, @95, @101, @103, @97, @115, @115, @101, @109, @90];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showGuaranteeName = [self StringFromGrayBottomData:value];
    }
    return showGuaranteeName;
}

//: back_arrow_bl
+ (NSString *)userSymptomTitle {
    /* static */ NSString *userSymptomTitle = nil;
    if (!userSymptomTitle) {
		NSArray<NSNumber *> *origin = @[@13, @4, @124, @154, @108, @98, @95, @119, @111, @114, @114, @97, @95, @107, @99, @97, @98, @97];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userSymptomTitle = [self StringFromGrayBottomData:value];
    }
    return userSymptomTitle;
}

//: AUDIO
+ (NSString *)noti_surveyTitle {
    /* static */ NSString *noti_surveyTitle = nil;
    if (!noti_surveyTitle) {
		NSArray<NSNumber *> *origin = @[@5, @12, @139, @76, @235, @103, @122, @121, @52, @224, @59, @75, @79, @73, @68, @85, @65, @57];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_surveyTitle = [self StringFromGrayBottomData:value];
    }
    return noti_surveyTitle;
}

//: %@在群里@了你
+ (NSString *)user_jungleMessage {
    /* static */ NSString *user_jungleMessage = nil;
    if (!user_jungleMessage) {
		NSArray<NSNumber *> *origin = @[@18, @5, @230, @59, @240, @160, @189, @228, @134, @186, @228, @64, @140, @135, @233, @164, @190, @231, @168, @156, @229, @64, @37, @202];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_jungleMessage = [self StringFromGrayBottomData:value];
    }
    return user_jungleMessage;
}

//: message_please_enter_content
+ (NSString *)dream_gangMessage {
    /* static */ NSString *dream_gangMessage = nil;
    if (!dream_gangMessage) {
		NSArray<NSNumber *> *origin = @[@28, @7, @216, @226, @146, @234, @180, @116, @110, @101, @116, @110, @111, @99, @95, @114, @101, @116, @110, @101, @95, @101, @115, @97, @101, @108, @112, @95, @101, @103, @97, @115, @115, @101, @109, @17];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_gangMessage = [self StringFromGrayBottomData:value];
    }
    return dream_gangMessage;
}

//: icon_toolview_voice_normal
+ (NSString *)userHostageMessage {
    /* static */ NSString *userHostageMessage = nil;
    if (!userHostageMessage) {
		NSArray<NSNumber *> *origin = @[@26, @10, @153, @190, @251, @250, @87, @67, @22, @159, @108, @97, @109, @114, @111, @110, @95, @101, @99, @105, @111, @118, @95, @119, @101, @105, @118, @108, @111, @111, @116, @95, @110, @111, @99, @105, @168];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userHostageMessage = [self StringFromGrayBottomData:value];
    }
    return userHostageMessage;
}

//: icon_toolview_camera
+ (NSString *)k_builderStr {
    /* static */ NSString *k_builderStr = nil;
    if (!k_builderStr) {
		NSArray<NSNumber *> *origin = @[@20, @4, @248, @190, @97, @114, @101, @109, @97, @99, @95, @119, @101, @105, @118, @108, @111, @111, @116, @95, @110, @111, @99, @105, @130];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_builderStr = [self StringFromGrayBottomData:value];
    }
    return k_builderStr;
}

//: ic_block
+ (NSString *)appMigrationMorningData {
    /* static */ NSString *appMigrationMorningData = nil;
    if (!appMigrationMorningData) {
		NSArray<NSNumber *> *origin = @[@8, @10, @144, @141, @80, @139, @217, @105, @6, @239, @107, @99, @111, @108, @98, @95, @99, @105, @96];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appMigrationMorningData = [self StringFromGrayBottomData:value];
    }
    return appMigrationMorningData;
}

//: icon_toolview_album
+ (NSString *)k_acquireToId {
    /* static */ NSString *k_acquireToId = nil;
    if (!k_acquireToId) {
		NSArray<NSNumber *> *origin = @[@19, @4, @238, @105, @109, @117, @98, @108, @97, @95, @119, @101, @105, @118, @108, @111, @111, @116, @95, @110, @111, @99, @105, @3];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_acquireToId = [self StringFromGrayBottomData:value];
    }
    return k_acquireToId;
}

//: TEXT
+ (NSString *)appDiplomaticUrl {
    /* static */ NSString *appDiplomaticUrl = nil;
    if (!appDiplomaticUrl) {
		NSArray<NSNumber *> *origin = @[@4, @10, @132, @119, @239, @184, @32, @178, @231, @6, @84, @88, @69, @84, @37];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appDiplomaticUrl = [self StringFromGrayBottomData:value];
    }
    return appDiplomaticUrl;
}

//: content
+ (NSString *)mainSilentMessage {
    /* static */ NSString *mainSilentMessage = nil;
    if (!mainSilentMessage) {
		NSArray<NSNumber *> *origin = @[@7, @9, @152, @211, @83, @114, @175, @106, @15, @116, @110, @101, @116, @110, @111, @99, @34];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainSilentMessage = [self StringFromGrayBottomData:value];
    }
    return mainSilentMessage;
}

//: #00B01B
+ (NSString *)app_readIdent {
    /* static */ NSString *app_readIdent = nil;
    if (!app_readIdent) {
		NSArray<NSNumber *> *origin = @[@7, @8, @125, @45, @241, @187, @152, @67, @66, @49, @48, @66, @48, @48, @35, @163];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_readIdent = [self StringFromGrayBottomData:value];
    }
    return app_readIdent;
}

//: user_profile_avtivity_send
+ (NSString *)dream_voiceTitle {
    /* static */ NSString *dream_voiceTitle = nil;
    if (!dream_voiceTitle) {
		NSArray<NSNumber *> *origin = @[@26, @8, @6, @81, @233, @62, @241, @46, @100, @110, @101, @115, @95, @121, @116, @105, @118, @105, @116, @118, @97, @95, @101, @108, @105, @102, @111, @114, @112, @95, @114, @101, @115, @117, @214];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_voiceTitle = [self StringFromGrayBottomData:value];
    }
    return dream_voiceTitle;
}

//: ic_more
+ (NSString *)notiShouldTitle {
    /* static */ NSString *notiShouldTitle = nil;
    if (!notiShouldTitle) {
		NSArray<NSNumber *> *origin = @[@7, @8, @10, @191, @217, @218, @200, @195, @101, @114, @111, @109, @95, @99, @105, @245];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiShouldTitle = [self StringFromGrayBottomData:value];
    }
    return notiShouldTitle;
}

//: 777777
+ (NSString *)main_childCenterText {
    /* static */ NSString *main_childCenterText = nil;
    if (!main_childCenterText) {
		NSArray<NSNumber *> *origin = @[@6, @3, @25, @55, @55, @55, @55, @55, @55, @127];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_childCenterText = [self StringFromGrayBottomData:value];
    }
    return main_childCenterText;
}

//: head_default_group
+ (NSString *)noti_antData {
    /* static */ NSString *noti_antData = nil;
    if (!noti_antData) {
		NSArray<NSNumber *> *origin = @[@18, @9, @204, @39, @78, @166, @226, @119, @211, @112, @117, @111, @114, @103, @95, @116, @108, @117, @97, @102, @101, @100, @95, @100, @97, @101, @104, @76];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_antData = [self StringFromGrayBottomData:value];
    }
    return noti_antData;
}

//: F6F7FA
+ (NSString *)mainCheckBarMessage {
    /* static */ NSString *mainCheckBarMessage = nil;
    if (!mainCheckBarMessage) {
		NSArray<NSNumber *> *origin = @[@6, @12, @88, @116, @57, @227, @57, @152, @213, @243, @45, @139, @65, @70, @55, @70, @54, @70, @117];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainCheckBarMessage = [self StringFromGrayBottomData:value];
    }
    return mainCheckBarMessage;
}

//: temp_image_%@.jpg
+ (NSString *)appSeedKey {
    /* static */ NSString *appSeedKey = nil;
    if (!appSeedKey) {
		NSArray<NSNumber *> *origin = @[@17, @2, @103, @112, @106, @46, @64, @37, @95, @101, @103, @97, @109, @105, @95, @112, @109, @101, @116, @149];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appSeedKey = [self StringFromGrayBottomData:value];
    }
    return appSeedKey;
}

//: temp_video_%@.mp4
+ (NSString *)kPinValue {
    /* static */ NSString *kPinValue = nil;
    if (!kPinValue) {
		NSArray<NSNumber *> *origin = @[@17, @4, @208, @155, @52, @112, @109, @46, @64, @37, @95, @111, @101, @100, @105, @118, @95, @112, @109, @101, @116, @29];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kPinValue = [self StringFromGrayBottomData:value];
    }
    return kPinValue;
}

//: group_info_activity_op_failed
+ (NSString *)kRedId {
    /* static */ NSString *kRedId = nil;
    if (!kRedId) {
		NSArray<NSNumber *> *origin = @[@29, @6, @190, @96, @140, @163, @100, @101, @108, @105, @97, @102, @95, @112, @111, @95, @121, @116, @105, @118, @105, @116, @99, @97, @95, @111, @102, @110, @105, @95, @112, @117, @111, @114, @103, @74];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kRedId = [self StringFromGrayBottomData:value];
    }
    return kRedId;
}

//: #02D8C9
+ (NSString *)dream_jungleValue {
    /* static */ NSString *dream_jungleValue = nil;
    if (!dream_jungleValue) {
		NSArray<NSNumber *> *origin = @[@7, @8, @230, @89, @38, @95, @214, @252, @57, @67, @56, @68, @50, @48, @35, @172];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_jungleValue = [self StringFromGrayBottomData:value];
    }
    return dream_jungleValue;
}

//: message_administrator_speak
+ (NSString *)mMorningTitle {
    /* static */ NSString *mMorningTitle = nil;
    if (!mMorningTitle) {
		NSArray<NSNumber *> *origin = @[@27, @2, @107, @97, @101, @112, @115, @95, @114, @111, @116, @97, @114, @116, @115, @105, @110, @105, @109, @100, @97, @95, @101, @103, @97, @115, @115, @101, @109, @139];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mMorningTitle = [self StringFromGrayBottomData:value];
    }
    return mMorningTitle;
}

//: VIDEO
+ (NSString *)mLiterallyText {
    /* static */ NSString *mLiterallyText = nil;
    if (!mLiterallyText) {
		NSArray<NSNumber *> *origin = @[@5, @2, @79, @69, @68, @73, @86, @36];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mLiterallyText = [self StringFromGrayBottomData:value];
    }
    return mLiterallyText;
}

//: IMAGE
+ (NSString *)show_inmateShouldName {
    /* static */ NSString *show_inmateShouldName = nil;
    if (!show_inmateShouldName) {
		NSArray<NSNumber *> *origin = @[@5, @9, @67, @236, @132, @89, @16, @93, @168, @69, @71, @65, @77, @73, @117];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_inmateShouldName = [self StringFromGrayBottomData:value];
    }
    return show_inmateShouldName;
}

//: messageid
+ (NSString *)mDrivewayKey {
    /* static */ NSString *mDrivewayKey = nil;
    if (!mDrivewayKey) {
		NSArray<NSNumber *> *origin = @[@9, @5, @188, @136, @153, @100, @105, @101, @103, @97, @115, @115, @101, @109, @127];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mDrivewayKey = [self StringFromGrayBottomData:value];
    }
    return mDrivewayKey;
}

//: #F6F7FA
+ (NSString *)noti_imageFormat {
    /* static */ NSString *noti_imageFormat = nil;
    if (!noti_imageFormat) {
		NSArray<NSNumber *> *origin = @[@7, @5, @64, @244, @113, @65, @70, @55, @70, @54, @70, @35, @13];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_imageFormat = [self StringFromGrayBottomData:value];
    }
    return noti_imageFormat;
}

//: ic_block_no
+ (NSString *)appNegativeStr {
    /* static */ NSString *appNegativeStr = nil;
    if (!appNegativeStr) {
		NSArray<NSNumber *> *origin = @[@11, @9, @99, @100, @250, @129, @170, @180, @104, @111, @110, @95, @107, @99, @111, @108, @98, @95, @99, @105, @170];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appNegativeStr = [self StringFromGrayBottomData:value];
    }
    return appNegativeStr;
}

//: type
+ (NSString *)noti_childStr {
    /* static */ NSString *noti_childStr = nil;
    if (!noti_childStr) {
		NSArray<NSNumber *> *origin = @[@4, @2, @101, @112, @121, @116, @9];
		NSData *data = [GrayBottomData GrayBottomDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_childStr = [self StringFromGrayBottomData:value];
    }
    return noti_childStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DirectionViewController.m
// Case
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusySessionConfigurateProtocol.h"
#import "BusySessionConfigurateProtocol.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "BusyMessageCellProtocol.h"
#import "BusyMessageCellProtocol.h"
//: #import "BusyMessageModel.h"
#import "MoreModel.h"
//: #import "BusyKitUtil.h"
#import "OffMore.h"
//: #import "BusyBadgeView.h"
#import "SharedView.h"
//: #import "UITableView+NIMScrollToBottom.h"
#import "UITableView+NIMScrollToBottom.h"
//: #import "BusyMessageMaker.h"
#import "SharedMaker.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "BusySessionConfigurator.h"
#import "ViewConfigurator.h"
//: #import "BusyKitInfoFetchOption.h"
#import "InfoGreenImage.h"
//: #import "BusyKitTitleView.h"
#import "MyNameView.h"
//: #import "BusyKitKeyboardInfo.h"
#import "AffairWith.h"
//: #import "BusyReplyContentView.h"
#import "NoticeTagView.h"
//: #import "BusyKitDependency.h"
#import "BusyKitDependency.h"
//: #import "BusyKitQuickCommentUtil.h"
#import "TapColorUtil.h"
//: #import "BusyBubbleMenuView.h"
#import "ButtonPointView.h"
//: #import "BusyTextView.h"
#import "FormatNameView.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "NSObject+tyl_internalIdentifier.h"
#import "NSObject+IdentifierApp.h"
//: #import "BusyBubbleMenuView.h"
#import "ButtonPointView.h"
//: #import "BusyBubbleButtonModel.h"
#import "ModelContent.h"
//: #import "BusyInputEmoticonDefine.h"
#import "BusyInputEmoticonDefine.h"
//: #import "BusyInputAudioView.h"
#import "SaluteView.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "NTESPersonalCardViewController.h"
#import "SharedViewController.h"
//: #import "BusyTeamCardViewController.h"
#import "ReadOutViewController.h"
//: #import "BusyAdvancedTeamCardViewController.h"
#import "PtolemaicSystemViewController.h"
//: #import "PhotoContainerView.h"
#import "PhotoView.h"
//: #import "SSZipArchiveManager.h"
#import "ValuePraise.h"

//: @interface BusySessionViewController ()<NIMMediaManagerDelegate,NIMInputDelegate,BusyTeamCardViewControllerDelegate,NIMConversationManagerDelegate,CustomUISeletePhotosDelegate,UIGestureRecognizerDelegate>
@interface DirectionViewController ()<NIMMediaManagerDelegate,JointBubble,ImageTop,NIMConversationManagerDelegate,RowRed,UIGestureRecognizerDelegate>

//: @property (nonatomic,readwrite) NIMMessage *messageForMenu;
@property (nonatomic,readwrite) NIMMessage *messageForMenu;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *subTitleLabel;
@property (nonatomic,strong) UILabel *subTitleLabel;

//: @property (nonatomic,strong) NSIndexPath *lastVisibleIndexPathBeforeRotation;
@property (nonatomic,strong) NSIndexPath *lastVisibleIndexPathBeforeRotation;

//: @property (nonatomic,strong) BusySessionConfigurator *configurator;
@property (nonatomic,strong) ViewConfigurator *configurator;

//: @property (nonatomic,strong) UITapGestureRecognizer *tableViewTapGesture;
@property (nonatomic,strong) UITapGestureRecognizer *tableViewTapGesture;

//: @property (nonatomic,assign) NSInteger sessionUnreadCount;
@property (nonatomic,assign) NSInteger sessionUnreadCount;
//: @property (nonatomic,strong) BusyBadgeView *badgeView;
@property (nonatomic,strong) SharedView *badgeView;
//: @property (nonatomic,strong) UIImageView *headerImage;
@property (nonatomic,strong) UIImageView *headerImage;
//: @property (nonatomic,strong) UILabel *labtitle;
@property (nonatomic,strong) UILabel *labtitle;
//: @property (nonatomic,strong) UILabel *subtitle;
@property (nonatomic,strong) UILabel *subtitle;
//: @property (nonatomic,strong) UIButton *btnBlock;
@property (nonatomic,strong) UIButton *btnBlock;

//: @property (nonatomic, strong) UIView *topview;
@property (nonatomic, strong) UIView *topview;
//: @property (nonatomic, strong) UIButton *btnAudio;
@property (nonatomic, strong) UIButton *btnAudio;
//: @property (nonatomic, strong) BusyInputAudioView *audioContent;
@property (nonatomic, strong) SaluteView *audioContent;

//: @property (nonatomic, strong) UIView *photopicview;
@property (nonatomic, strong) UIView *photopicview;
//: @property (nonatomic, strong) PhotoContainerView *customAlbumView;
@property (nonatomic, strong) PhotoView *customAlbumView;


//: @end
@end

//: @implementation BusySessionViewController
@implementation DirectionViewController

//: - (instancetype)initWithSession:(NIMSession *)session{
- (instancetype)initWithMedia:(NIMSession *)session{
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _session = session;
        _session = session;
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [self removeListener];
    [self reload];

    //: _tableView.delegate = nil;
    _tableView.delegate = nil;
    //: _tableView.dataSource = nil;
    _tableView.dataSource = nil;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"F6F7FA"];
    self.view.backgroundColor = [UIColor status:[GrayBottomData mainCheckBarMessage]];
//        UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//        bg.image = [UIImage imageNamed:@"chating_bg"];
//        [self.view addSubview:bg];

    //: UIView *bottomview = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
    UIView *bottomview = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
    //: bottomview.backgroundColor = [UIColor whiteColor];
    bottomview.backgroundColor = [UIColor whiteColor];
    //: [self.view addSubview:bottomview];
    [self.view addSubview:bottomview];

    //消息 tableView
    //: [self setupTableView];
    [self progress];
    //导航栏
    //: [self setupNav];
    [self replyServer];

    //输入框 inputView
    //: [self setupInputView];
    [self doingView];
    //会话相关逻辑配置器安装
    //: [self setupConfigurator];
    [self tap];
    //进入会话时，标记所有消息已读，并发送已读回执
    //: [self markRead];
    [self status];
    //更新已读位置


//    [self.view addSubview:self.btnAudio];


     //: dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
     dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
         //: [self setBanned];
         [self be];
     //: });
     });

//    [[NIMSDK sharedSDK].conversationManager addDelegate:self];

    // 执行设置回调监听
//    [NERtcCallKit.sharedInstance addDelegate:self];
 }

//- (void)onInvited:(NSString *)invitor
//          userIDs:(NSArray<NSString *> *)userIDs
//      isFromGroup:(BOOL)isFromGroup
//          groupID:(nullable NSString *)groupID
//             type:(NERtcCallType)type
//       attachment:(nullable NSString *)attachment
//{
//    ZMONVideoCallViewController *vc = [[ZMONVideoCallViewController alloc] init];
//    vc.isInvait = YES;
//    vc.userId = invitor;
//    vc.roomId = self.session.sessionId;
//    [self.navigationController pushViewController:vc animated:YES];
//}

 //: - (void)setBanned {
 - (void)be {
     //: NIMSessionType type = self.session.sessionType;
     NIMSessionType type = self.session.sessionType;
     //: switch (type) {
     switch (type) {
         //: case NIMSessionTypeTeam:{
         case NIMSessionTypeTeam:{
             //: NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
             NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
             //: if (team.inAllMuteMode) {
             if (team.inAllMuteMode) {
                 //: if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                 if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                     //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     //: if (member.isMuted) {
                     if (member.isMuted) {
                         //: [self setInputViewPlaceholder:YES];
                         [self setViewStop:YES];
                     }
                 }
             }
         }
             //: break;
             break;

             //: break;
             break;
         //: case NIMSessionTypeSuperTeam: {
         case NIMSessionTypeSuperTeam: {
             //: NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
             NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
             //: if (team.inAllMuteMode) {
             if (team.inAllMuteMode) {
                 //: if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                 if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                     //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     //: if (member.isMuted) {
                     if (member.isMuted) {
                         //: [self setInputViewPlaceholder:YES];
                         [self setViewStop:YES];
                     }
                 }
             }
         }
         //: default:
         default:
             //: break;
             break;
     }
 }

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//: - (void)didAddRecentSession:(NIMRecentSession *)recentSession
- (void)didAddRecentSession:(NIMRecentSession *)recentSession
           //: totalUnreadCount:(NSInteger)totalUnreadCount{
           totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self already];
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
}


//: - (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount{
              totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self already];
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];

}


//: - (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self already];
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
}

//: - (void)messagesDeletedInSession:(NIMSession *)session{
- (void)messagesDeletedInSession:(NIMSession *)session{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self already];
    //: [self.interactor resetMessages:nil];
    [self.interactor sessionMessages:nil];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)allMessagesDeleted{
- (void)allMessagesDeleted{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self already];
}

//: - (void)allMessagesRead
- (void)allMessagesRead
{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self already];
}

//: - (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
- (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self already];
}


//: - (void)refreshSessionBadge
- (void)already
{

    //: if(self.sessionUnreadCount>0){
    if(self.sessionUnreadCount>0){
        //: _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
        _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
        //: _badgeView.hidden = NO;
        _badgeView.hidden = NO;
//        _labtitle.frame = CGRectMake(_badgeView.right+10, SCREEN_STATUS_HEIGHT, 100, 40);
    }
    //: else{
    else{
        //: _badgeView.hidden = YES;
        _badgeView.hidden = YES;
//        _labtitle.frame = CGRectMake(65, SCREEN_STATUS_HEIGHT, 200, 40);
    }
}

//: - (void)setupNav
- (void)replyServer
{
    //: _topview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    _topview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice statusOrLevel]))];
    //: _topview.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    _topview.backgroundColor = [UIColor status:[GrayBottomData noti_imageFormat]];
    //: [self.view addSubview:_topview];
    [self.view addSubview:_topview];

    //: UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight], 40, 40);
    backBtn.frame = CGRectMake(15, [UIDevice statusOrLevel], 40, 40);
    //: [backBtn addTarget:self action:@selector(gotoBack:) forControlEvents:UIControlEventTouchUpInside];
    [backBtn addTarget:self action:@selector(inputted:) forControlEvents:UIControlEventTouchUpInside];
    //: [backBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:[GrayBottomData userSymptomTitle]] forState:UIControlStateNormal];
    //: [_topview addSubview:backBtn];
    [_topview addSubview:backBtn];

    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
     //: _badgeView = [BusyBadgeView viewWithBadgeTip:@""];
     _badgeView = [SharedView location:@""];
    //: _badgeView.frame = CGRectMake(backBtn.right+5, backBtn.top+8, 24, 24);
    _badgeView.frame = CGRectMake(backBtn.right+5, backBtn.top+8, 24, 24);
    //: [_topview addSubview:_badgeView];
    [_topview addSubview:_badgeView];
    //: _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
    _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;

    //: _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight], 200, 40)];
    _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice statusOrLevel], 200, 40)];
    //: _labtitle.textColor = [UIColor blackColor];
    _labtitle.textColor = [UIColor blackColor];
    //: _labtitle.textAlignment = NSTextAlignmentCenter;
    _labtitle.textAlignment = NSTextAlignmentCenter;
    //: _labtitle.font = [UIFont boldSystemFontOfSize:16];
    _labtitle.font = [UIFont boldSystemFontOfSize:16];
    //: _labtitle.text = self.sessionTitle;
    _labtitle.text = self.nameSession;
    //: [_topview addSubview:_labtitle];
    [_topview addSubview:_labtitle];

//    _subtitle = [[UILabel alloc]initWithFrame:CGRectMake(_headerImage.right+10, _labtitle.bottom, 100, 20)];
//    _subtitle.textColor = RGB_COLOR_String(@"777777");
//    _subtitle.font = [UIFont boldSystemFontOfSize:12];
//    _subtitle.text = self.sessionSubTitle;
//    [topview addSubview:_subtitle];
//    if([self.sessionSubTitle isEqualToString:@"离线".ntes_localized]){
//        self.subtitle.textColor = RGB_COLOR_String(@"777777");
//    }else{
//        self.subtitle.textColor = RGB_COLOR_String(@"#00B01B");
//    }


    //: if (self.session.sessionType == NIMSessionTypeTeam)
    if (self.session.sessionType == NIMSessionTypeTeam)
    {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];

        //: CGFloat width = 30;
        CGFloat width = 30;
        //: UIButton *enterTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *enterTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [enterTeamCard addTarget:self action:@selector(enterTeamCard:) forControlEvents:UIControlEventTouchUpInside];
        [enterTeamCard addTarget:self action:@selector(locations:) forControlEvents:UIControlEventTouchUpInside];
        //: [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:UIControlStateNormal];
        [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:UIControlStateNormal];
        //: [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:(UIControlState)UIControlStateNormal placeholderImage:[UIImage imageNamed:@"head_default_group"]];
        [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:(UIControlState)UIControlStateNormal placeholderImage:[UIImage imageNamed:[GrayBottomData noti_antData]]];
        //: enterTeamCard.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice vg_statusBarHeight]+10, width, width);
        enterTeamCard.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice statusOrLevel]+10, width, width);
        //: enterTeamCard.layer.cornerRadius = width/2;
        enterTeamCard.layer.cornerRadius = width/2;
        //: enterTeamCard.layer.masksToBounds = YES;
        enterTeamCard.layer.masksToBounds = YES;
        //: [_topview addSubview:enterTeamCard];
        [_topview addSubview:enterTeamCard];
    }
    //: else if(self.session.sessionType == NIMSessionTypeP2P)
    else if(self.session.sessionType == NIMSessionTypeP2P)
    {
        //: CGFloat width = 20;
        CGFloat width = 20;


        //: _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width*2-15*2, [UIDevice vg_statusBarHeight]+10, width, width);
        _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width*2-15*2, [UIDevice statusOrLevel]+10, width, width);
        //: [_btnBlock addTarget:self action:@selector(handlerBtnBlock:) forControlEvents:UIControlEventTouchUpInside];
        [_btnBlock addTarget:self action:@selector(heatherMixtureBlock:) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnBlock setImage:[UIImage imageNamed:@"ic_block"] forState:UIControlStateNormal];
        [_btnBlock setImage:[UIImage imageNamed:[GrayBottomData appMigrationMorningData]] forState:UIControlStateNormal];
        //: [_btnBlock setImage:[UIImage imageNamed:@"ic_block_no"] forState:UIControlStateSelected];
        [_btnBlock setImage:[UIImage imageNamed:[GrayBottomData appNegativeStr]] forState:UIControlStateSelected];
        //: [_topview addSubview:_btnBlock];
        [_topview addSubview:_btnBlock];

        //: BOOL needNotify = [[NIMSDK sharedSDK].userManager notifyForNewMsg:self.session.sessionId];
        BOOL needNotify = [[NIMSDK sharedSDK].userManager notifyForNewMsg:self.session.sessionId];
        //: _btnBlock.selected = needNotify;
        _btnBlock.selected = needNotify;


        //: UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [infoBtn addTarget:self action:@selector(enterPersonInfoCard:) forControlEvents:UIControlEventTouchUpInside];
        [infoBtn addTarget:self action:@selector(outsideUser:) forControlEvents:UIControlEventTouchUpInside];
        //: [infoBtn setImage:[UIImage imageNamed:@"ic_more"] forState:UIControlStateNormal];
        [infoBtn setImage:[UIImage imageNamed:[GrayBottomData notiShouldTitle]] forState:UIControlStateNormal];
        //: infoBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice vg_statusBarHeight]+10, width, width);
        infoBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice statusOrLevel]+10, width, width);
        //: [_topview addSubview:infoBtn];
        [_topview addSubview:infoBtn];
    }



}
//: #pragma mark - 导航按钮
#pragma mark - 导航按钮
//: - (void)handlerBtnBlock:(UIButton *)sender
- (void)heatherMixtureBlock:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].userManager updateNotifyState:sender.selected forUser:self.session.sessionId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager updateNotifyState:sender.selected forUser:self.session.sessionId completion:^(NSError *error) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: if (error) {
            if (error) {
                //: [wself.view makeToast:[BusyLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0f position:CSToastPositionCenter];
                [wself.view makeToast:[SendName streetSmart:[GrayBottomData kRedId]] duration:2.0f position:CSToastPositionCenter];
            }
        //: }];
        }];
}
//: - (void)enterPersonInfoCard:(id)sender
- (void)outsideUser:(id)sender
{
    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:self.session.sessionId];
    SharedViewController *vc = [[SharedViewController alloc] initWithByFullId:self.session.sessionId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: - (void)enterTeamCard:(id)sender {
- (void)locations:(id)sender {
    //: BusyTeamCardViewController *vc = nil;
    ReadOutViewController *vc = nil;
    //: BusyTeamCardViewControllerOption *option = [[BusyTeamCardViewControllerOption alloc] init];
    TextTagOption *option = [[TextTagOption alloc] init];
    //: option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;
    option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;

    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if(team.type == NIMTeamTypeAdvanced){
    if(team.type == NIMTeamTypeAdvanced){
            //: vc = [[BusyAdvancedTeamCardViewController alloc] initWithTeam:team
            vc = [[PtolemaicSystemViewController alloc] initWith:team
                                                                 //: session:self.session
                                                                 scale:self.session
                                                                  //: option:option];
                                                                  title:option];
            //: vc.delegate = self;
            vc.delegate = self;
            //: vc.canMemberInfo = self.canMemberInfo;
            vc.canMemberInfo = self.canMemberInfo;
    }

    //: if (vc) {
    if (vc) {
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

//: - (void)gotoBack:(id)sender {
- (void)inputted:(id)sender {
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (void)setupTableView
- (void)progress
{
    //: CGFloat safeAreaInsetsBottom = [UIDevice vg_safeDistanceBottom];
    CGFloat safeAreaInsetsBottom = [UIDevice lipRead];
    //: CGFloat containerSafeHeight = [UIScreen mainScreen].bounds.size.height - safeAreaInsetsBottom - (44.0f + [UIDevice vg_statusBarHeight]);
    CGFloat containerSafeHeight = [UIScreen mainScreen].bounds.size.height - safeAreaInsetsBottom - (44.0f + [UIDevice statusOrLevel]);

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [UIScreen mainScreen].bounds.size.width, containerSafeHeight-51) style:UITableViewStylePlain];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice statusOrLevel]), [UIScreen mainScreen].bounds.size.width, containerSafeHeight-51) style:UITableViewStylePlain];
//    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-SCREEN_TABBAR_HEIGHT-SCREEN_BOTTOM_HEIGHT) style:UITableViewStylePlain];
//    self.tableView.backgroundColor = NEEKIT_UIColorFromRGB(0xe4e7ec);
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.estimatedRowHeight = 0;
    self.tableView.estimatedRowHeight = 0;
    //: self.tableView.estimatedSectionHeaderHeight = 0;
    self.tableView.estimatedSectionHeaderHeight = 0;
    //: self.tableView.estimatedSectionFooterHeight = 0;
    self.tableView.estimatedSectionFooterHeight = 0;
    //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    //: self.tableViewTapGesture = [[UITapGestureRecognizer alloc] init];
    self.tableViewTapGesture = [[UITapGestureRecognizer alloc] init];
    //: self.tableViewTapGesture.cancelsTouchesInView = NO;
    self.tableViewTapGesture.cancelsTouchesInView = NO;
    //: [self.tableViewTapGesture addTarget:self action:@selector(onTapTableView:)];
    [self.tableViewTapGesture addTarget:self action:@selector(futurisms:)];
    //: [self.tableView addGestureRecognizer:self.tableViewTapGesture];
    [self.tableView addGestureRecognizer:self.tableViewTapGesture];
    //: self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
    self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;

//    if ([self.sessionConfig respondsToSelector:@selector(sessionBackgroundImage)] && [self.sessionConfig sessionBackgroundImage]) {
//        UIImageView *imgView = [[UIImageView alloc] initWithFrame:self.view.bounds];
//        imgView.image = [self.sessionConfig sessionBackgroundImage];
//        imgView.contentMode = UIViewContentModeScaleAspectFill;
//        self.tableView.backgroundView = imgView;
//    }
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];

}


//: - (void)setupInputView
- (void)doingView
{
    //: if ([self shouldShowInputView])
    if ([self bindView])
    {
        //: self.sessionInputView = [[BusyInputView alloc] initWithFrame:CGRectMake(0, 0, self.view.nim_width,0) config:self.sessionConfig];
        self.sessionInputView = [[StateView alloc] initWithSumFrame:CGRectMake(0, 0, self.view.nim_width,0) monthSessionConfig:self.sessionConfig];
        //: self.sessionInputView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
        self.sessionInputView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
        //: [self.sessionInputView setSession:self.session];
        [self.sessionInputView setSession:self.session];
        //: [self.sessionInputView setInputDelegate:self];
        [self.sessionInputView setInputDelegate:self];
        //: [self.sessionInputView setInputActionDelegate:self];
        [self.sessionInputView setGrayDelegate:self];
        //: [self.sessionInputView refreshStatus:NIMInputStatusText];
        [self.sessionInputView shoot:NIMInputStatusText];
        //: [self.view addSubview:_sessionInputView];
        [self.view addSubview:_sessionInputView];
        //: self.tableView.bottom = self.sessionInputView.top;
        self.tableView.bottom = self.sessionInputView.top;
//        self.tableView.top = self.topview.bottom;
        //: [self.tableView sizeToFit];
        [self.tableView sizeToFit];
    }
}


//: - (void)setupConfigurator
- (void)tap
{
    //: _configurator = [[BusySessionConfigurator alloc] init];
    _configurator = [[ViewConfigurator alloc] init];
    //: [_configurator setup:self];
    [_configurator actionDownTitle:self];

    //: BOOL needProximityMonitor = [self needProximityMonitor];
    BOOL needProximityMonitor = [self cryStepSnoop];
    //: [[NIMSDK sharedSDK].mediaManager setNeedProximityMonitor:needProximityMonitor];
    [[NIMSDK sharedSDK].mediaManager setNeedProximityMonitor:needProximityMonitor];
}

//: - (void)viewWillAppear:(BOOL)animated
- (void)viewWillAppear:(BOOL)animated
{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.interactor onViewWillAppear];
    [self.interactor modelAppear];
    //: [self addListener];
    [self notHigh];

    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self already];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)viewWillDisappear:(BOOL)animated
- (void)viewWillDisappear:(BOOL)animated
{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.sessionInputView endEditing:YES];
    [self.sessionInputView endEditing:YES];
    // 隐藏长按弹窗
    //: [BusyBubbleMenuView.shareMenuView removeFromSuperview];
    [ButtonPointView.line removeFromSuperview];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)viewDidDisappear:(BOOL)animated
- (void)viewDidDisappear:(BOOL)animated
{
    //: [super viewDidDisappear:animated];
    [super viewDidDisappear:animated];
    //: [self.interactor onViewDidDisappear];
    [self.interactor vanguardDate];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
}

//: - (void)viewDidLayoutSubviews
- (void)viewDidLayoutSubviews
{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
//    [self changeLeftBarBadge:self.conversationManager.allUnreadCount];
    //: [self.interactor resetLayout];
    [self.interactor item];
}

//: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self.serviceContentTextView hideTextSelection];
    //: [BusyBubbleMenuView.shareMenuView removeFromSuperview];
    [ButtonPointView.line removeFromSuperview];
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
}

//: - (void)scrollViewDidScroll:(UIScrollView *)scrollView {
- (void)customNotice:(UIScrollView *)scrollView {
    //: if ([scrollView isKindOfClass:[UITextView class]]) {
    if ([scrollView isKindOfClass:[UITextView class]]) {
        //: [BusyBubbleMenuView.shareMenuView removeFromSuperview];
        [ButtonPointView.line removeFromSuperview];
    }
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
}



//: #pragma mark - 消息收发接口
#pragma mark - 消息收发接口
//: - (void)sendMessage:(NIMMessage *)message
- (void)inputTap:(NIMMessage *)message
{
    //: [self.interactor sendMessage:message toMessage:nil];
    [self.interactor dedication:message need:nil];
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
       //: [self cleanMenuMessage];
       [self sub];
    //: });
    });
}

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError * err))completion
- (void)scaleCompletion:(NIMMessage *)message message:(void(^)(NSError * err))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self.interactor sendMessage:message
    [self.interactor sizeHandleSuccess:message
                        //: toMessage:nil
                        message:nil
                      //: completion:^(NSError *err)
                      quick:^(NSError *err)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(err);
            completion(err);
        }
        //: [weakSelf cleanMenuMessage];
        [weakSelf sub];
    //: }];
    }];
}


//: #pragma mark - BusySessionConfiguratorDelegate
#pragma mark - BusySessionConfiguratorDelegate

//: - (void)didFetchMessageData
- (void)barLeft
{
//    [self uiCheckReceipts:nil];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
//    [self.tableView nim_scrollToBottom:NO];
}

//: - (void)didRefreshMessageData
- (void)collectionDisable
{
    //: [self refreshSessionTitle:self.sessionTitle];
    [self value:self.nameSession];
    //: [self refreshSessionSubTitle:self.sessionSubTitle];
    [self progress:self.sessionWith];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (void)didPullUpMessageData {}
- (void)courseTing {}

//: #pragma mark - 会话title
#pragma mark - 会话title
//: - (NSString *)sessionTitle
- (NSString *)nameSession
{
    //: NSString *title = @"";
    NSString *title = @"";
    //: NIMSessionType type = self.session.sessionType;
    NIMSessionType type = self.session.sessionType;
    //: switch (type) {
    switch (type) {
        //: case NIMSessionTypeTeam:{
        case NIMSessionTypeTeam:{
            //: NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
            NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
            //: title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            //: title = [NSString stringWithFormat:@"%@",[team teamName]];
            title = [NSString stringWithFormat:@"%@",[team teamName]];//不要人数

        }
            //: break;
            break;
        //: case NIMSessionTypeP2P:{
        case NIMSessionTypeP2P:{
            //: title = [BusyKitUtil showNick:self.session.sessionId inSession:self.session];
            title = [OffMore smallness:self.session.sessionId flush:self.session];
        }
            //: break;
            break;
        //: case NIMSessionTypeSuperTeam: {
        case NIMSessionTypeSuperTeam: {
            //: NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
            NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
            //: title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            //: title = [NSString stringWithFormat:@"%@",[team teamName]];
            title = [NSString stringWithFormat:@"%@",[team teamName]];//不要人数

        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return title;
    return title;
}

//: - (NSString *)sessionSubTitle{return @"";};
- (NSString *)sessionWith{return @"";};

//: #pragma mark - 状态操作
#pragma mark - 状态操作
//: - (NIMKitSessionState)sessionState {
- (NIMKitSessionState)bubble {
    //: return [self.interactor sessionState];
    return [self.interactor encounter];
}

//: - (void)setSessionState:(NIMKitSessionState)state {
- (void)setBubble:(NIMKitSessionState)state {
    //: [self.interactor setSessionState:state];
    [self.interactor setEncounter:state];
}

//: #pragma mark - NIMChatManagerDelegate
#pragma mark - NIMChatManagerDelegate
//开始发送
//: - (void)willSendMessage:(NIMMessage *)message
- (void)willSendMessage:(NIMMessage *)message
{
    //: id<NIMSessionInteractor> interactor = self.interactor;
    id<TagRed> interactor = self.interactor;

    //: if ([message.session isEqual:self.session]) {
    if ([message.session isEqual:self.session]) {
        //: if ([interactor findMessageModel:message]) {
        if ([interactor with:message]) {
            //: [interactor updateMessage:message];
            [interactor modify:message];
        //: }else{
        }else{
            //: [interactor addMessages:@[message]];
            [interactor between:@[message]];
        }
    }
}

//上传资源文件成功
//: - (void)uploadAttachmentSuccess:(NSString *)urlString
- (void)uploadAttachmentSuccess:(NSString *)urlString
                     //: forMessage:(NIMMessage *)message
                     forMessage:(NIMMessage *)message
{
    //如果需要使用富文本推送，可以在这里进行 message apns payload 的设置
//    [self.tableView reloadData];
}


//发送结果
//: - (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if ([message.session isEqual:_session])
    if ([message.session isEqual:_session])
    {
        //: if( message.messageType == NIMMessageTypeImage){
        if( message.messageType == NIMMessageTypeImage){
            //缓存图片URL
            //: NIMImageObject *imageObject = message.messageObject;
            NIMImageObject *imageObject = message.messageObject;
            //: NSString *urlString = imageObject.url;
            NSString *urlString = imageObject.url;

            //: NSMutableDictionary *dic = [[BusyConfig sharedConfig] Gdic];
            NSMutableDictionary *dic = [[IndexTag ambit] Gdic];
            //: NSData *data = [dic objectForKey:message.messageId];
            NSData *data = [dic objectForKey:message.messageId];
            //: if(data && urlString){
            if(data && urlString){
                //: NSString *key = [[SDWebImageManager sharedManager]cacheKeyForURL:[NSURL URLWithString:urlString]];
                NSString *key = [[SDWebImageManager sharedManager]cacheKeyForURL:[NSURL URLWithString:urlString]];
                //: dic[message.messageId] = nil;
                dic[message.messageId] = nil;
                //: __weak typeof(self) weakSelf = self;
                __weak typeof(self) weakSelf = self;
                //: [[SDImageCache sharedImageCache] storeImageData:data forKey:key completion:^{
                [[SDImageCache sharedImageCache] storeImageData:data forKey:key completion:^{
                    //: [weakSelf.interactor updateMessage:message];
                    [weakSelf.interactor modify:message];
                //: }];
                }];
            }
        //: }else{
        }else{
            //: [self.interactor updateMessage:message];
            [self.interactor modify:message];
//            [self.tableView reloadData];
        }


        //: if (message.session.sessionType == NIMSessionTypeTeam ||
        if (message.session.sessionType == NIMSessionTypeTeam ||
            //: message.session.sessionType == NIMSessionTypeSuperTeam)
            message.session.sessionType == NIMSessionTypeSuperTeam)
        {
            //如果是群的话需要检查一下回执显示情况
            //: NIMMessageReceipt *receipt = [[NIMMessageReceipt alloc] initWithMessage:message];
            NIMMessageReceipt *receipt = [[NIMMessageReceipt alloc] initWithMessage:message];
            //: [self.interactor checkReceipts:@[receipt]];
            [self.interactor magnitudeeract:@[receipt]];
        }
    }

}


//发送进度
//: -(void)sendMessage:(NIMMessage *)message progress:(float)progress
-(void)sendMessage:(NIMMessage *)message progress:(float)progress
{
    //: if ([message.session isEqual:_session]) {
    if ([message.session isEqual:_session]) {
        //: [self.interactor updateMessage:message];
        [self.interactor modify:message];
    }
}

//接收消息
//: - (void)onRecvMessages:(NSArray *)messages
- (void)onRecvMessages:(NSArray *)messages
{
    //: if ([self shouldAddListenerForNewMsg])
    if ([self action])
    {
        //: NIMMessage *message = messages.firstObject;
        NIMMessage *message = messages.firstObject;
        //: NIMSession *session = message.session;
        NIMSession *session = message.session;

        //: UIViewController *topvc = [self getTopMostController];
        UIViewController *topvc = [self itemController];
        //: if (![topvc isKindOfClass:NSClassFromString(@"NTESSessionViewController")] && ![topvc isKindOfClass:[BusySessionViewController class]]) {
        if (![topvc isKindOfClass:NSClassFromString(@"TopViewController")] && ![topvc isKindOfClass:[DirectionViewController class]]) {
            //: return;
            return;
        }

        //: if (![session isEqual:self.session] || !messages.count)
        if (![session isEqual:self.session] || !messages.count)
        {
            //: return;
            return;
        }

        //: [self uiInsertMessages:messages];
        [self color:messages];
        //: [self.interactor markRead:NO];
        [self.interactor keyWithFile:NO];

        // 群禁言后输入框改变占位符文字
        //: [self setBannedSpeakingWithMessage:messages];
        [self setRemote:messages];
    }
}

//: - (void)setBannedSpeakingWithMessage:(NSArray <NIMMessage *>*)messages {
- (void)setRemote:(NSArray <NIMMessage *>*)messages {

    //: [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull message, NSUInteger idx, BOOL * _Nonnull stop) {
    [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull message, NSUInteger idx, BOOL * _Nonnull stop) {

        //: NIMNotificationObject *object = message.messageObject;
        NIMNotificationObject *object = message.messageObject;
        //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        {
            //: NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            //: id attachment = [content attachment];
            id attachment = [content attachment];
            //: if (attachment && [attachment isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
            if (attachment && [attachment isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {

                //: NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)attachment;
                NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)attachment;
                //: if (teamAttachment && [teamAttachment.values count] > 0) {
                if (teamAttachment && [teamAttachment.values count] > 0) {

                    /**
                     *  群禁言模式
                     *  @discussion 0: 禁言关闭 1: 全员禁言，不包括管理员
                     */
                    // NIMTeamUpdateTagMuteMode       = 100,
                    /**
                     *  群全体禁言模式
                     *  @discussion 参考NIMTeamAllMuteMode定义。0: 禁言关闭 1: 全员禁言，不包括管理员 3: 全员禁言，包括群组和管理员
                     */
                    // NIMTeamUpdateTagAllMuteMode    = 101,

                    //                        if ([[teamAttachment.values allKeys] containsObject:@(100)]) {
                    //                            BOOL banned = [teamAttachment.values objectForKey:@(100)];
                    //                        }


                    //: if ([[teamAttachment.values allKeys] containsObject:@(101)]) {
                    if ([[teamAttachment.values allKeys] containsObject:@(101)]) {
                        //: BOOL banned = [teamAttachment.values boolValueForKey:@(101)];
                        BOOL banned = [teamAttachment.values view:@(101)];
                        //: [self setInputViewPlaceholder:banned];
                        [self setViewStop:banned];
                    }

                    //: else if ([[teamAttachment.values allKeys] containsObject:@(100)]) {
                    else if ([[teamAttachment.values allKeys] containsObject:@(100)]) {
                        //: BOOL banned = [teamAttachment.values boolValueForKey:@(100)];
                        BOOL banned = [teamAttachment.values view:@(100)];
                        //: [self setInputViewPlaceholder:banned];
                        [self setViewStop:banned];
                    }

                }

            }
        }
    //: }];
    }];
}

//: - (void)setInputViewPlaceholder:(BOOL)ban {
- (void)setViewStop:(BOOL)ban {
    //: if (ban){
    if (ban){
        //: [self.sessionInputView setInputTextPlaceHolder:[BusyLanguageManager getTextWithKey:@"message_administrator_speak"] color:[UIColor redColor]];
        [self.sessionInputView event:[SendName streetSmart:[GrayBottomData mMorningTitle]] findTitle:[UIColor redColor]];
        //: self.sessionInputView.userInteractionEnabled = NO;
        self.sessionInputView.userInteractionEnabled = NO;
        //: self.canTapVoiceBtn = NO;
        self.canTapVoiceBtn = NO;
    //: } else {
    } else {
        //: [self.sessionInputView setInputTextPlaceHolder:[BusyLanguageManager getTextWithKey:@"message_please_enter_content"] color:[UIColor grayColor]];
        [self.sessionInputView event:[SendName streetSmart:[GrayBottomData dream_gangMessage]] findTitle:[UIColor grayColor]];
        //: self.sessionInputView.userInteractionEnabled = YES;
        self.sessionInputView.userInteractionEnabled = YES;
        //: self.canTapVoiceBtn = YES;
        self.canTapVoiceBtn = YES;
    }
}


//获取当前最上层的控制器
//: - (UIViewController *)getTopMostController {
- (UIViewController *)itemController {
    //: UIViewController *topVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    UIViewController *topVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    //循环之前tempVC和topVC是一样的
    //: UIViewController *tempVC = topVC;
    UIViewController *tempVC = topVC;
    //: while (1) {
    while (1) {
        //: if ([topVC isKindOfClass:[UITabBarController class]]) {
        if ([topVC isKindOfClass:[UITabBarController class]]) {
            //: topVC = ((UITabBarController*)topVC).selectedViewController;
            topVC = ((UITabBarController*)topVC).selectedViewController;
        }
        //: if ([topVC isKindOfClass:[UINavigationController class]]) {
        if ([topVC isKindOfClass:[UINavigationController class]]) {
            //: topVC = ((UINavigationController*)topVC).visibleViewController;
            topVC = ((UINavigationController*)topVC).visibleViewController;
        }
        //: if (topVC.presentedViewController) {
        if (topVC.presentedViewController) {
            //: topVC = topVC.presentedViewController;
            topVC = topVC.presentedViewController;
        }
        //如果两者一样，说明循环结束了
        //: if ([tempVC isEqual:topVC]) {
        if ([tempVC isEqual:topVC]) {
            //: break;
            break;
        //: } else {
        } else {
        //如果两者不一样，继续循环
            //: tempVC = topVC;
            tempVC = topVC;
        }
    }
    //: return topVC;
    return topVC;
}


//: - (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
- (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
{
    //: if ([message.session isEqual:_session])
    if ([message.session isEqual:_session])
    {
        //: [self.interactor updateMessage:message];
        [self.interactor modify:message];
    }
}

//: - (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if ([message.session isEqual:_session])
    if ([message.session isEqual:_session])
    {
        //: BusyMessageModel *model = [self.interactor findMessageModel:message];
        MoreModel *model = [self.interactor with:message];
        //下完缩略图之后，因为比例有变化，重新刷下宽高。
        //: [model cleanCache];
        [model question];
        //: [self.interactor updateMessage:message];
        [self.interactor modify:message];
    }
}

//: - (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: if ([self shouldAddListenerForNewMsg])
    if ([self action])
    {
        //: NSMutableArray *handledReceipts = [[NSMutableArray alloc] init];
        NSMutableArray *handledReceipts = [[NSMutableArray alloc] init];
        //: for (NIMMessageReceipt *receipt in receipts) {
        for (NIMMessageReceipt *receipt in receipts) {
            //: if ([receipt.session isEqual:self.session])
            if ([receipt.session isEqual:self.session])
            {
                //: [handledReceipts addObject:receipt];
                [handledReceipts addObject:receipt];
            }
        }
        //: if (handledReceipts.count)
        if (handledReceipts.count)
        {
            //: [self uiCheckReceipts:handledReceipts];
            [self lyric:handledReceipts];
        }
    }
}

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//- (void)messagesDeletedInSession:(NIMSession *)session{
//    [self.interactor resetMessages:nil];
//    [self.tableView reloadData];
//}

// 远端消息清空回调
//: - (void)onRecvAllRemoteMessagesInSessionDeleted:(NIMSessionDeleteAllRemoteMessagesInfo *)info
- (void)onRecvAllRemoteMessagesInSessionDeleted:(NIMSessionDeleteAllRemoteMessagesInfo *)info
{
    //: [self refreshMessages];
    [self appear];
}

// 远端消息批量删除删除回调
//: - (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts
- (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts
{
    //: [self refreshMessages];
    [self appear];
}

//- (void)didAddRecentSession:(NIMRecentSession *)recentSession
//           totalUnreadCount:(NSInteger)totalUnreadCount{
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
//}
//
//- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
//              totalUnreadCount:(NSInteger)totalUnreadCount{
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
//}
//
//- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession
//              totalUnreadCount:(NSInteger)totalUnreadCount{
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
//}


//: - (void)changeUnreadCount:(NIMRecentSession *)recentSession
- (void)max:(NIMRecentSession *)recentSession
         //: totalUnreadCount:(NSInteger)totalUnreadCount{
         allInput:(NSInteger)totalUnreadCount{
    //: if ([recentSession.session isEqual:self.session]) {
    if ([recentSession.session isEqual:self.session]) {
        //: return;
        return;
    }

}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate
//: - (void)recordAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
- (void)recordAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
    //: if (!filePath || error) {
    if (!filePath || error) {
        //: _sessionInputView.recording = NO;
        _sessionInputView.recording = NO;
        //: [self onRecordFailed:error];
        [self changeFailed:error];
    }
}

//: - (void)recordAudio:(NSString *)filePath didCompletedWithError:(NSError *)error {
- (void)recordAudio:(NSString *)filePath didCompletedWithError:(NSError *)error {
    //: if(!error) {
    if(!error) {
        //: if ([self recordFileCanBeSend:filePath]) {
        if ([self compartment:filePath]) {
            //: [self sendMessage:[BusyMessageMaker msgWithAudio:filePath]];
            [self inputTap:[SharedMaker timeCapsule:filePath]];
        //: }else{
        }else{
            //: [self showRecordFileNotSendReason];
            [self object];
        }
    //: } else {
    } else {
        //: [self onRecordFailed:error];
        [self changeFailed:error];
    }
    //: _sessionInputView.recording = NO;
    _sessionInputView.recording = NO;
}


//: - (void)recordAudioDidCancelled {
- (void)recordAudioDidCancelled {
    //: _sessionInputView.recording = NO;
    _sessionInputView.recording = NO;
}

//: - (void)recordAudioProgress:(NSTimeInterval)currentTime {
- (void)recordAudioProgress:(NSTimeInterval)currentTime {
    //: [_sessionInputView updateAudioRecordTime:currentTime];
    [_sessionInputView title:currentTime];
}

//: - (void)recordAudioInterruptionBegin {
- (void)recordAudioInterruptionBegin {
    //: [[NIMSDK sharedSDK].mediaManager cancelRecord];
    [[NIMSDK sharedSDK].mediaManager cancelRecord];
}

//: #pragma mark - 录音相关接口
#pragma mark - 录音相关接口
//: - (void)onRecordFailed:(NSError *)error{}
- (void)changeFailed:(NSError *)error{}

//: - (BOOL)recordFileCanBeSend:(NSString *)filepath
- (BOOL)compartment:(NSString *)filepath
{
    //: return YES;
    return YES;
}

//: - (void)showRecordFileNotSendReason{}
- (void)object{}

//: #pragma mark - NIMInputDelegate
#pragma mark - JointBubble

//: - (void)didChangeInputHeight:(CGFloat)inputHeight
- (void)disabled:(CGFloat)inputHeight
{
    //: [self.interactor changeLayout:inputHeight];
    [self.interactor colorLayout:inputHeight];

//    self.btnAudio.bottom = self.sessionInputView.top-20;
}

//: #pragma mark - NIMInputActionDelegate
#pragma mark - FuturismDelegate
//: - (void)onTapPraiseItem:(NSInteger)index withMessage:(NIMMessage *)message
- (void)communication:(NSInteger)index chromatic:(NIMMessage *)message
{
//    self.messageForMenu = message;
//    [self praiseViewdidSelectIndex:index];

    //: __block NIMQuickComment *newComment = [NIMCommentMaker commentWithType:index content:@"" ext:@"扩展"];
    __block NIMQuickComment *newComment = [SortMaker text:index inputSignal:@"" change:@"扩展"];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
            //: [weakSelf.interactor addQuickComment:newComment toMessage:message completion:^(NSError *error)
            [weakSelf.interactor bar:newComment dateDoing:message immobilizeCompletion:^(NSError *error)
            {
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[BusyLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[SendName streetSmart:[GrayBottomData kRedId]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf sub];
            //: }];
            }];

}
//: - (BOOL)onTapMediaItem:(BusyMediaItem *)item{
- (BOOL)ended:(ModelMessage *)item{
    //: SEL sel = item.selctor;
    SEL sel = item.selctor;
    //: BOOL handled = sel && [self respondsToSelector:sel];
    BOOL handled = sel && [self respondsToSelector:sel];
    //: if (handled) {
    if (handled) {
        //: do {
        do {
        //: [self performSelector:sel withObject:item];
        [self performSelector:sel withObject:item];
        //: } while (0);
        } while (0);
        //: handled = YES;
        handled = YES;
    }
    //: return handled;
    return handled;
}

//: - (void)onTextChanged:(id)sender{}
- (void)reads:(id)sender{}

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers
- (void)picture:(NSString *)text inputSignal:(NSArray *)atUsers
{
    //: NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    //: if (self.session.sessionType == NIMSessionTypeP2P)
    if (self.session.sessionType == NIMSessionTypeP2P)
    {
        //: [users addObject:self.session.sessionId];
        [users addObject:self.session.sessionId];
    }

    //: NIMMessage *message = [BusyMessageMaker msgWithText:text];
    NIMMessage *message = [SharedMaker icon:text];
    //: if (atUsers.count)
    if (atUsers.count)
    {
        //: NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        //: apnsOption.userIds = atUsers;
        apnsOption.userIds = atUsers;
        //: apnsOption.forcePush = YES;
        apnsOption.forcePush = YES;

        //: BusyKitInfoFetchOption *option = [[BusyKitInfoFetchOption alloc] init];
        InfoGreenImage *option = [[InfoGreenImage alloc] init];
        //: option.session = self.session;
        option.session = self.session;

        //: NSString *me = [[MyUserKit sharedKit].provider infoByUser:[NIMSDK sharedSDK].loginManager.currentAccount option:option].showName;
        NSString *me = [[Case pastTop].provider consumer:[NIMSDK sharedSDK].loginManager.currentAccount message:option].showName;
        //: apnsOption.apnsContent = [NSString stringWithFormat:@"%@在群里@了你".nim_localized, me];
        apnsOption.apnsContent = [NSString stringWithFormat:[GrayBottomData user_jungleMessage].maxColor, me];
        //: message.apnsMemberOption = apnsOption;
        message.apnsMemberOption = apnsOption;
    }

    //: [self sendMessage:message];
    [self inputTap:message];
}

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers replymessage:(NIMMessage *)replymessage
- (void)targetLanguage:(NSString *)text outSession:(NSArray *)atUsers image_strong:(NIMMessage *)replymessage
{
    //: NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    //: if (self.session.sessionType == NIMSessionTypeP2P)
    if (self.session.sessionType == NIMSessionTypeP2P)
    {
        //: [users addObject:self.session.sessionId];
        [users addObject:self.session.sessionId];
    }

    //: NIMMessage *message = [BusyMessageMaker msgWithText:text];
    NIMMessage *message = [SharedMaker icon:text];
    //: NSString *type = @"";
    NSString *type = @"";
    //: NSString *contents = @"";
    NSString *contents = @"";

    //: if(replymessage.messageType == NIMMessageTypeText){
    if(replymessage.messageType == NIMMessageTypeText){
        //: type = @"TEXT";
        type = [GrayBottomData appDiplomaticUrl];
        //: contents = replymessage.text;
        contents = replymessage.text;
    //: }else if (replymessage.messageType == NIMMessageTypeImage){
    }else if (replymessage.messageType == NIMMessageTypeImage){
        //: type = @"IMAGE";
        type = [GrayBottomData show_inmateShouldName];
        //: NIMImageObject *imageObject = (NIMImageObject*)replymessage.messageObject;
        NIMImageObject *imageObject = (NIMImageObject*)replymessage.messageObject;
        //: NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];
        //: contents = url;
        contents = url;
    //: }else if (replymessage.messageType == NIMMessageTypeVideo){
    }else if (replymessage.messageType == NIMMessageTypeVideo){
        //: type = @"VIDEO";
        type = [GrayBottomData mLiterallyText];
        //: NIMVideoObject *videoObject = (NIMVideoObject*)replymessage.messageObject;
        NIMVideoObject *videoObject = (NIMVideoObject*)replymessage.messageObject;
        //: contents = videoObject.coverUrl;
        contents = videoObject.coverUrl;
    //: }else if (replymessage.messageType == NIMMessageTypeAudio){
    }else if (replymessage.messageType == NIMMessageTypeAudio){
        //: type = @"AUDIO";
        type = [GrayBottomData noti_surveyTitle];
        //: NIMAudioObject *audioObject = (NIMAudioObject*)replymessage.messageObject;
        NIMAudioObject *audioObject = (NIMAudioObject*)replymessage.messageObject;
        //: NSLog(@"%ld",(long)audioObject.duration);
        //: contents = [NSString stringWithFormat:@"%zd\"",(NSInteger)((audioObject.duration+500)/1000)];
        contents = [NSString stringWithFormat:@"%zd\"",(NSInteger)((audioObject.duration+500)/1000)];
    }

    //: BusyKitInfoFetchOption *option = [[BusyKitInfoFetchOption alloc] init];
    InfoGreenImage *option = [[InfoGreenImage alloc] init];
    //: option.message = replymessage;
    option.message = replymessage;
    //: BusyKitInfo *info = [[MyUserKit sharedKit] infoByUser:replymessage.from option:option];
    Info *info = [[Case pastTop] consumer:replymessage.from message:option];

    //: NSDictionary *dic = @{
    NSDictionary *dic = @{
            //: @"type": type,//type:TEXT、IMAGE、VIDEO
            [GrayBottomData noti_childStr]: type,//type:TEXT、IMAGE、VIDEO
            //: @"content": contents,//content:文本内容、图片url、视频url
            [GrayBottomData mainSilentMessage]: contents,//content:文本内容、图片url、视频url
            //: @"userName": info.showName,//消息发送者
            [GrayBottomData mAyeId]: info.showName,//消息发送者
            //: @"messageid": replymessage.messageId,//messageid：留着备用
            [GrayBottomData mDrivewayKey]: replymessage.messageId,//messageid：留着备用
    //: };
    };

    //: message.remoteExt = @{@"reply": dic };
    message.remoteExt = @{[GrayBottomData dreamHeapEcruPath]: dic };

    //: if (atUsers.count)
    if (atUsers.count)
    {
        //: NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        //: apnsOption.userIds = atUsers;
        apnsOption.userIds = atUsers;
        //: apnsOption.forcePush = YES;
        apnsOption.forcePush = YES;

        //: BusyKitInfoFetchOption *option = [[BusyKitInfoFetchOption alloc] init];
        InfoGreenImage *option = [[InfoGreenImage alloc] init];
        //: option.session = self.session;
        option.session = self.session;

        //: NSString *me = [[MyUserKit sharedKit].provider infoByUser:[NIMSDK sharedSDK].loginManager.currentAccount option:option].showName;
        NSString *me = [[Case pastTop].provider consumer:[NIMSDK sharedSDK].loginManager.currentAccount message:option].showName;
        //: apnsOption.apnsContent = [NSString stringWithFormat:@"%@在群里@了你".nim_localized, me];
        apnsOption.apnsContent = [NSString stringWithFormat:[GrayBottomData user_jungleMessage].maxColor, me];
        //: message.apnsMemberOption = apnsOption;
        message.apnsMemberOption = apnsOption;
    }

    //: [self sendMessage:message completion:^(NSError *err) {
    [self scaleCompletion:message message:^(NSError *err) {
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    //: }];
    }];
}

//: - (void)onSelectEmoticon:(NIMInputEmoticon *)emoticon
- (void)can:(CityCenterWith *)emoticon
{
    //: NSString *emoticonID = emoticon.emoticonID;
    NSString *emoticonID = emoticon.emoticonID;
    //: NSArray *array = [emoticonID componentsSeparatedByString:@"_"];
    NSArray *array = [emoticonID componentsSeparatedByString:@"_"];
    //: NSString *numberStr = [array lastObject];
    NSString *numberStr = [array lastObject];
    //: NSInteger number = [numberStr integerValue];
    NSInteger number = [numberStr integerValue];
    //: __block NIMQuickComment *newComment = [NIMCommentMaker commentWithType:number content:emoticon.tag ext:@"扩展"];
    __block NIMQuickComment *newComment = [SortMaker text:number inputSignal:emoticon.tag change:@"扩展"];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self hadCommentThisMessage:self.messageForMenu type:number
    [self bar:self.messageForMenu bargain:number
                      //: compltion:^(NSMapTable *result)
                      viewThis:^(NSMapTable *result)
     {
        //: NIMQuickComment *oldComment = [BusyKitQuickCommentUtil myCommentFromComments:0 keys:@[@(number)] comments:result];
        NIMQuickComment *oldComment = [TapColorUtil file:0 net:@[@(number)] collectionComments:result];
        //: BOOL contains = oldComment ? YES : NO;
        BOOL contains = oldComment ? YES : NO;
        //: if (!contains)
        if (!contains)
        {
            //: [weakSelf.interactor addQuickComment:newComment
            [weakSelf.interactor my:newComment
                                  //: completion:^(NSError *error)
                                  label:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[BusyLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[SendName streetSmart:[GrayBottomData kRedId]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf sub];
            //: }];
            }];
        }
        //: else
        else
        {
            //: [weakSelf.interactor delQuickComment:oldComment
            [weakSelf.interactor insertFilter:oldComment
                                   //: targetMessage:weakSelf.messageForMenu
                                   targetCompletion:weakSelf.messageForMenu
                                      //: completion:^(NSError *error)
                                      to:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[BusyLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[SendName streetSmart:[GrayBottomData kRedId]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf sub];
            //: }];
            }];
        }
    //: }];
    }];
}

//: - (void)didReplyCancelled
- (void)processingTimeCancelled
{
    //: self.messageForMenu = nil;
    self.messageForMenu = nil;
    //: [self.interactor setReferenceMessage:nil];
    [self.interactor setReferenceMessage:nil];

    //: if ([self.sessionConfig respondsToSelector:@selector(clearThreadMessageAfterSent)])
    if ([self.sessionConfig respondsToSelector:@selector(shouldIn)])
    {
        //: if ([self.sessionConfig clearThreadMessageAfterSent])
        if ([self.sessionConfig shouldIn])
        {
            //: [self.sessionConfig cleanThreadMessage];
            [self.sessionConfig harvestMoon];
        }
    }
}


//: - (void)onSelectChartlet:(NSString *)chartletId
- (void)chartletWith:(NSString *)chartletId
                 //: catalog:(NSString *)catalogId
                 select:(NSString *)catalogId
{
//    NSBundle *bundle = [Case sharedKit].emoticonBundle;
//    NSData *imageData = [NSData dataWithContentsOfFile:[bundle pathForResource:chartletId ofType:nil inDirectory:NEEKIT_EmojiPath]];
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[ValuePraise show] message];
    //: NSString *imagePath = [emojiPath stringByAppendingPathComponent:chartletId];
    NSString *imagePath = [emojiPath stringByAppendingPathComponent:chartletId];
    //: NSData *imageData = [NSData dataWithContentsOfFile:imagePath];
    NSData *imageData = [NSData dataWithContentsOfFile:imagePath];

//    UIImage *gif = [UIImage sd_imageWithGIFData:imageData];
//
//    NIMMessage *message = [SharedMaker msgWithImage:gif];
//    [self sendMessage:message];
//

    //: NIMMessage *message = [BusyMessageMaker msgWithImageData:imageData extension:@""];
    NIMMessage *message = [SharedMaker tool:imageData formatExtension:@""];
//    message.messageSubType = 77;//标记gif用
    //: NSMutableDictionary *dic = [[BusyConfig sharedConfig] Gdic];
    NSMutableDictionary *dic = [[IndexTag ambit] Gdic];
//    NSData *imageData = UIImagePNGRepresentation(image);
    //: [dic setObject:imageData forKey:message.messageId];
    [dic setObject:imageData forKey:message.messageId];

    //: [self sendMessage:message];
    [self inputTap:message];

    //: [self.sessionInputView.toolBar setPlaceHolder:[BusyLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [self.sessionInputView.toolBar setCompartmentHolder:[SendName streetSmart:[GrayBottomData dream_gangMessage]]];

//    [self.sessionInputView endEditing:YES];
}

//: - (void)onCancelRecording
- (void)disableStopMan
{
    //: [[NIMSDK sharedSDK].mediaManager cancelRecord];
    [[NIMSDK sharedSDK].mediaManager cancelRecord];
}

//: - (void)onStopRecording
- (void)optionCan
{
    //: [[NIMSDK sharedSDK].mediaManager stopRecord];
    [[NIMSDK sharedSDK].mediaManager stopRecord];
//    [self.audioContent animationClose];
}

//: - (void)onStartRecording
- (void)tingText
{
    //: _sessionInputView.recording = YES;
    _sessionInputView.recording = YES;
//    [_sessionInputView endEditing:YES];

    //: NIMAudioType type = [self recordAudioType];
    NIMAudioType type = [self valueType];
    //: NSTimeInterval duration = [MyUserKit sharedKit].config.recordMaxDuration;
    NSTimeInterval duration = [Case pastTop].config.recordMaxDuration;

    //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    [[NIMSDK sharedSDK].mediaManager addDelegate:self];

    //: [[NIMSDK sharedSDK].mediaManager record:type
    [[NIMSDK sharedSDK].mediaManager record:type
                                   //: duration:duration];
                                   duration:duration];
}

//: #pragma mark NIMChatExtendManagerDelegate
#pragma mark NIMChatExtendManagerDelegate

//: - (void)onRecvQuickComment:(NIMQuickComment *)comment
- (void)onRecvQuickComment:(NIMQuickComment *)comment
{
    //: [self.interactor updateMessage:comment.message];
    [self.interactor modify:comment.message];
}


//: - (void)onRemoveQuickComment:(NIMQuickComment *)comment
- (void)onRemoveQuickComment:(NIMQuickComment *)comment
{
    //: [self.interactor updateMessage:comment.message];
    [self.interactor modify:comment.message];
}

//: - (void)onNotifyAddMessagePin:(NIMMessagePinItem *)item
- (void)onNotifyAddMessagePin:(NIMMessagePinItem *)item
{
    //: NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    //: [self uiPinMessage:message];
    [self keyBy:message];
}

//: - (void)onNotifyRemoveMessagePin:(NIMMessagePinItem *)item
- (void)onNotifyRemoveMessagePin:(NIMMessagePinItem *)item
{
    //: NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    //: [self uiUnpinMessage:message];
    [self noneClean:message];
}

//: #pragma mark - BusyMessageCellDelegate
#pragma mark - SharedDelegate
//: - (BOOL)onTapCell:(BusyKitEvent *)event{
- (BOOL)replyEnable:(DirectionEvent *)event{
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: NSString *eventName = event.eventName;
    NSString *eventName = event.eventName;
    //: if ([eventName isEqualToString:BusyKitEventNameTapAudio])
    if ([eventName isEqualToString:mainEventId])
    {
        //: [self.interactor mediaAudioPressed:event.messageModel];
        [self.interactor item:event.messageModel];
        //: handle = YES;
        handle = YES;
    }
    //: return handle;
    return handle;
}

//: - (void)onRetryMessage:(NIMMessage *)message
- (void)packetAlongContainerRead:(NIMMessage *)message
{
    //: if (message.isReceivedMsg) {
    if (message.isReceivedMsg) {
        //: [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:message
        [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:message
                                                           //: error:nil];
                                                           error:nil];
    //: }else{
    }else{
        //: [[[NIMSDK sharedSDK] chatManager] resendMessage:message
        [[[NIMSDK sharedSDK] chatManager] resendMessage:message
                                                  //: error:nil];
                                                  error:nil];
    }
}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)checked:(NIMMessage *)message
                 //: inView:(UIView *)view
                 input:(UIView *)view
{
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: _messageForMenu = message;
    _messageForMenu = message;
    //: [self.interactor setReferenceMessage:message];
    [self.interactor setReferenceMessage:message];
    //: if (![self becomeFirstResponder]) {
    if (![self becomeFirstResponder]) {
        //: handle = NO;
        handle = NO;
        //: return handle;
        return handle;
    }
    //: if ([self shouldShowMenuByMessage:message])
    if ([self add:message])
    {
        //: [BusyBubbleMenuView.shareMenuView removeFromSuperview];
        [ButtonPointView.line removeFromSuperview];
        //: [self showMenuWithMessage:message withView:view];
        [self along:message oldShow:view];
    }
    //: handle = YES;
    handle = YES;
    //: return handle;
    return handle;
}

//: - (BOOL)onLongPressCell:(NIMMessage *)message complete:(void(^)(id data))complete; {
- (BOOL)colour:(NIMMessage *)message text:(void(^)(id data))complete; {
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: _messageForMenu = message;
    _messageForMenu = message;
    //: [self.interactor setReferenceMessage:message];
    [self.interactor setReferenceMessage:message];

    //: handle = [self shouldShowMenuByMessage:message];
    handle = [self add:message];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: !complete ? : complete(wself);
    !complete ? : complete(wself);

    //: return handle;
    return handle;
}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)changeCell:(NIMMessage *)message
{
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: _messageForMenu = message;
    _messageForMenu = message;
    //: [self.interactor setReferenceMessage:message];
    [self.interactor setReferenceMessage:message];
    //: if (![self becomeFirstResponder]) {
    if (![self becomeFirstResponder]) {
        //: handle = NO;
        handle = NO;
        //: return handle;
        return handle;
    }
    //: handle = YES;
    handle = YES;
    //: return handle;
    return handle;
}


//: - (BOOL)disableAudioPlayedStatusIcon:(NIMMessage *)message
- (BOOL)streetwiseRemote:(NIMMessage *)message
{
    //: BOOL disable = NO;
    BOOL disable = NO;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableAudioPlayedStatusIcon)])
    if ([self.sessionConfig respondsToSelector:@selector(belowAddTo)])
    {
        //: disable = [self.sessionConfig disableAudioPlayedStatusIcon];
        disable = [self.sessionConfig belowAddTo];
    }
    //: return disable;
    return disable;
}

//: - (void)onClickEmoticon:(NIMMessage *)message
- (void)extraData:(NIMMessage *)message
                //: comment:(NIMQuickComment *)comment
                ironed:(NIMQuickComment *)comment
               //: selected:(BOOL)isSelected
               moveAlongMentionDisplayElite:(BOOL)isSelected
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (isSelected)
    if (isSelected)
    {
        //: [self.interactor delQuickComment:comment
        [self.interactor insertFilter:comment
                           //: targetMessage:message
                           targetCompletion:message
                              //: completion:^(NSError *error)
                              to:^(NSError *error)
         {
//            [self.view hideToasts];
            //: if (!error)
            if (!error)
            {
                //: return;
                return;
            }
            //: [weakSelf.view makeToast:[BusyLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
            [weakSelf.view makeToast:[SendName streetSmart:[GrayBottomData kRedId]] duration:2 position:CSToastPositionCenter];
        //: }];
        }];
    }
    //: else
    else
    {
        //: NIMQuickComment *aComment = [comment copy];
        NIMQuickComment *aComment = [comment copy];
        //: [self.interactor addQuickComment:aComment
        [self.interactor bar:aComment
                               //: toMessage:message
                               dateDoing:message
                              //: completion:^(NSError *error)
                              immobilizeCompletion:^(NSError *error)
         {
//            [self.view hideToasts];
            //: if (!error)
            if (!error)
            {
                //: return;
                return;
            }
            //: [weakSelf.view makeToast:[BusyLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
            [weakSelf.view makeToast:[SendName streetSmart:[GrayBottomData kRedId]] duration:2 position:CSToastPositionCenter];
        //: }];
        }];
    }

}

//: #pragma mark - 配置项
#pragma mark - 配置项
//: - (id<BusySessionConfig>)sessionConfig
- (id<QuantityelligenceInformationCan>)sessionConfig
{
    //: return nil; 
    return nil; //使用默认配置
}

//: #pragma mark - 配置项列表
#pragma mark - 配置项列表
//是否需要监听新消息通知 : 某些场景不需要监听新消息，如浏览服务器消息历史界面
//: - (BOOL)shouldAddListenerForNewMsg
- (BOOL)action
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableReceiveNewMessages)]) {
    if ([self.sessionConfig respondsToSelector:@selector(hiddenShould)]) {
        //: should = ![self.sessionConfig disableReceiveNewMessages];
        should = ![self.sessionConfig hiddenShould];
    }
    //: return should;
    return should;
}



//是否需要显示输入框 : 某些场景不需要显示输入框，如使用 3D touch 的场景预览会话界面内容
//: - (BOOL)shouldShowInputView
- (BOOL)bindView
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableInputView)]) {
    if ([self.sessionConfig respondsToSelector:@selector(indexColor)]) {
        //: should = ![self.sessionConfig disableInputView];
        should = ![self.sessionConfig indexColor];
    }
    //: return should;
    return should;
}


//当前录音格式 : NIMSDK 支持 aac 和 amr 两种格式
//: - (NIMAudioType)recordAudioType
- (NIMAudioType)valueType
{
    //: NIMAudioType type = NIMAudioTypeAAC;
    NIMAudioType type = NIMAudioTypeAAC;
    //: if ([self.sessionConfig respondsToSelector:@selector(recordType)]) {
    if ([self.sessionConfig respondsToSelector:@selector(numerousnessRequest)]) {
        //: type = [self.sessionConfig recordType];
        type = [self.sessionConfig numerousnessRequest];
    }
    //: return type;
    return type;
}

//是否需要监听感应器事件
//: - (BOOL)needProximityMonitor
- (BOOL)cryStepSnoop
{
    //: BOOL needProximityMonitor = YES;
    BOOL needProximityMonitor = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableProximityMonitor)]) {
    if ([self.sessionConfig respondsToSelector:@selector(incapacitateGreen)]) {
        //: needProximityMonitor = !self.sessionConfig.disableProximityMonitor;
        needProximityMonitor = !self.sessionConfig.incapacitateGreen;
    }
    //: return needProximityMonitor;
    return needProximityMonitor;
}


//: #pragma mark -
#pragma mark -
//: #pragma mark - 长按菜单事件
#pragma mark - 长按菜单事件
//: - (NIMMessage *)messageForMenu
- (NIMMessage *)messageForMenu
{
    //: return _messageForMenu;
    return _messageForMenu;
}

//: - (BOOL)canBecomeFirstResponder
- (BOOL)canBecomeFirstResponder
{
    //: return YES;
    return YES;
}

//: - (BOOL)canPerformAction:(SEL)action withSender:(id)sender
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    //: NSArray *items = [[UIMenuController sharedMenuController] menuItems];
    NSArray *items = [[UIMenuController sharedMenuController] menuItems];
    //: for (UIMenuItem *item in items) {
    for (UIMenuItem *item in items) {
        //: if (action == [item action]){
        if (action == [item action]){
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}


//: - (void)copyText:(id)sender
- (void)to:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: if (message.tyl_internalIdentifier.length) {
    if (message.IdentifierApp.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.tyl_internalIdentifier];
        [pasteboard setString:message.IdentifierApp];
    }
    //: else if (message.text.length) {
    else if (message.text.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.text];
        [pasteboard setString:message.text];
    }
}

//: - (void)deleteMsg:(id)sender
- (void)imageColorRemote:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: [self uiDeleteMessage:message];
    [self analogDigitalConverter:message];
    //: [self.conversationManager deleteMessage:message];
    [self.existManager deleteMessage:message];
}

//: - (void)menuDidHide:(NSNotification *)notification
- (void)outOfDoors:(NSNotification *)notification
{
    //: [UIMenuController sharedMenuController].menuItems = nil;
    [UIMenuController sharedMenuController].menuItems = nil;
}

//: - (void)onTapMenuItemCopy:(BusyMediaItem *)item
- (void)onTapMenuItemCopy:(ModelMessage *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: if (message.tyl_internalIdentifier.length) {
    if (message.IdentifierApp.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.tyl_internalIdentifier];
        [pasteboard setString:message.IdentifierApp];
    }
    //: else if (message.text.length) {
    else if (message.text.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.text];
        [pasteboard setString:message.text];
    }
}

//: - (void)onTapMenuItemDelete:(BusyMediaItem *)item
- (void)marginOfError:(ModelMessage *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: [self uiDeleteMessage:message];
    [self analogDigitalConverter:message];
    //: [self.conversationManager deleteMessage:message];
    [self.existManager deleteMessage:message];
}

//: #pragma mark - 操作接口
#pragma mark - 操作接口
//: - (void)uiAddMessages:(NSArray *)messages
- (void)messages:(NSArray *)messages
{
    //: [self.interactor addMessages:messages];
    [self.interactor between:messages];
}

//: - (void)uiInsertMessages:(NSArray *)messages
- (void)color:(NSArray *)messages
{
    //: [self.interactor insertMessages:messages];
    [self.interactor bar:messages];
}

//: - (BusyMessageModel *)uiDeleteMessage:(NIMMessage *)message{
- (MoreModel *)analogDigitalConverter:(NIMMessage *)message{
    //: BusyMessageModel *model = [self.interactor deleteMessage:message];
    MoreModel *model = [self.interactor messageFind:message];
    //: if (model.shouldShowReadLabel && model.message.session.sessionType == NIMSessionTypeP2P)
    if (model.shouldShowReadLabel && model.message.session.sessionType == NIMSessionTypeP2P)
    {
        //: [self uiCheckReceipts:nil];
        [self lyric:nil];
    }
    //: return model;
    return model;
}

//: - (void)uiUpdateMessage:(NIMMessage *)message{
- (void)count:(NIMMessage *)message{
    //: [self.interactor updateMessage:message];
    [self.interactor modify:message];
}

//: - (void)uiPinMessage:(NIMMessage *)message
- (void)keyBy:(NIMMessage *)message
{
    //: [self.interactor addPinForMessage:message];
    [self.interactor user:message];
}

//: - (void)uiUnpinMessage:(NIMMessage *)message
- (void)noneClean:(NIMMessage *)message
{
    //: [self.interactor removePinForMessage:message];
    [self.interactor alongBuild:message];
}

//: - (void)uiCheckReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)lyric:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: [self.interactor checkReceipts:receipts];
    [self.interactor magnitudeeract:receipts];
}

//: - (void)onTapCameraBtn:(id)sender
- (void)totalerchangeBtn:(id)sender
{
//    [self.interactor mediaShootPressed];

    //: [self.view addSubview:self.customAlbumView];
    [self.view addSubview:self.customAlbumView];
    //: [self.customAlbumView.albumPickerView reloadMediaData];
    [self.customAlbumView.albumPickerView insertPath];
    //: [self.customAlbumView.albumPickerView.selectedAssets removeAllObjects];
    [self.customAlbumView.albumPickerView.selectedAssets removeAllObjects];
    //: [self.customAlbumView.albumPickerView.collectionView reloadData];
    [self.customAlbumView.albumPickerView.collectionView reloadData];
    //: [self.customAlbumView.confirmButton setTitle:[BusyLanguageManager getTextWithKey:@"user_profile_avtivity_send"] forState:UIControlStateNormal];
    [self.customAlbumView.confirmButton setTitle:[SendName streetSmart:[GrayBottomData dream_voiceTitle]] forState:UIControlStateNormal];
    //: [self.customAlbumView animationShow];
    [self.customAlbumView animationInsideExhibit];

}

//: - (void)onTapAlbunBtn:(id)sender
- (void)bies:(id)sender
{
//    [self.interactor mediaPicturePressed];

//    [self.view addSubview:self.photopicview];
//    self.photopicview.hidden = NO;
}

//: - (void)CustomPickerDidSelectCamera
- (void)matronymicQuestion
{
    //: [self.customAlbumView animationClose];
    [self.customAlbumView tingShould];
    //: [self.interactor mediaShootPressed];
    [self.interactor titleInvite];
}

//- (void)onTapAlbunArray:(NSArray<PHAsset *> *)assets
//: - (void)CustomPickerDidSelectAssets:(NSArray<PHAsset *> *)assets
- (void)notices:(NSArray<PHAsset *> *)assets
{
    //: NSLog(@"assets:%@",assets);

    //: for (PHAsset *asset in assets) {
    for (PHAsset *asset in assets) {
        //: if (asset.mediaType == PHAssetMediaTypeVideo) {
        if (asset.mediaType == PHAssetMediaTypeVideo) {

            // 获取视频路径
            //: [self getVideoPathFromPHAsset:asset completion:^(NSString *path) {
            [self imageTo:asset time:^(NSString *path) {
                //: if (path) {
                if (path) {
                    //: NSLog(@"视频路径: %@", path);
                    // 使用路径...
                    //: NIMMessage *message = [BusyMessageMaker msgWithVideo:path];
                    NIMMessage *message = [SharedMaker intervalerval:path];
                    //: [self sendMessage:message];
                    [self inputTap:message];
                //: } else {
                } else {
                    //: NSLog(@"获取视频路径失败");
                }
            //: }];
            }];

        //: }else{
        }else{




            //: [self getOriginalImageFromAsset:asset completion:^(UIImage *image) {
            [self getSizeFromImageAssetFirst:asset context:^(UIImage *image) {
                //: if (image) {
                if (image) {
                    //: NIMMessage *message = [BusyMessageMaker msgWithImage:image];
                    NIMMessage *message = [SharedMaker file:image];

                    //: NSMutableDictionary *dic = [[BusyConfig sharedConfig] Gdic];
                    NSMutableDictionary *dic = [[IndexTag ambit] Gdic];
                    //: NSData *imageData = UIImagePNGRepresentation(image);
                    NSData *imageData = UIImagePNGRepresentation(image);
                    //: [dic setObject:imageData forKey:message.messageId];
                    [dic setObject:imageData forKey:message.messageId];

                    //: [self sendMessage:message];
                    [self inputTap:message];

                //: } else {
                } else {
                    //: NSLog(@"获取图片路径失败");
                }
            //: }];
            }];

//            // 获取图片路径
//            [self getImagePathFromPHAsset:asset completion:^(NSString *path) {
//                if (path) {
//                    NSLog(@"图片路径: %@", path);
//                    // 使用路径...
//                    NIMMessage *message = [SharedMaker msgWithImagePath:path];
//                    [self sendMessage:message];
//                } else {
//                    NSLog(@"获取图片路径失败");
//                }
//            }];


        }
    }

}
//获取图片
//: - (void)getOriginalImageFromAsset:(PHAsset *)asset completion:(void (^)(UIImage *image))completion {
- (void)getSizeFromImageAssetFirst:(PHAsset *)asset context:(void (^)(UIImage *image))completion {
    //: PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    //: options.version = PHImageRequestOptionsVersionOriginal;
    options.version = PHImageRequestOptionsVersionOriginal;
    //: options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    //: options.networkAccessAllowed = YES;
    options.networkAccessAllowed = YES;

    //: [[PHImageManager defaultManager] requestImageDataForAsset:asset
    [[PHImageManager defaultManager] requestImageDataForAsset:asset
                                                     //: options:options
                                                     options:options
                                               //: resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
                                               resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
        //: if (imageData) {
        if (imageData) {
            //: UIImage *image = [UIImage imageWithData:imageData];
            UIImage *image = [UIImage imageWithData:imageData];
            //: completion(image);
            completion(image);
        //: } else {
        } else {
            //: NSLog(@"获取原始图片失败: %@", info);
            //: completion(nil);
            completion(nil);
        }
    //: }];
    }];
}

// 获取图片路径
//: - (void)getImagePathFromPHAsset:(PHAsset *)asset completion:(void (^)(NSString *path))completion {
- (void)action:(PHAsset *)asset place:(void (^)(NSString *path))completion {
    //: if (asset.mediaType != PHAssetMediaTypeImage) {
    if (asset.mediaType != PHAssetMediaTypeImage) {
        //: if (completion) completion(nil);
        if (completion) completion(nil);
        //: return;
        return;
    }

    //: PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    //: options.version = PHImageRequestOptionsVersionOriginal;
    options.version = PHImageRequestOptionsVersionOriginal;
    //: options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    //: options.networkAccessAllowed = YES;
    options.networkAccessAllowed = YES;
    //: options.synchronous = NO;
    options.synchronous = NO;

    //: [[PHImageManager defaultManager] requestImageDataForAsset:asset options:options resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
    [[PHImageManager defaultManager] requestImageDataForAsset:asset options:options resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
        //: if (imageData) {
        if (imageData) {
            //: NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"temp_image_%@.jpg", [NSUUID UUID].UUIDString]];
            NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:[GrayBottomData appSeedKey], [NSUUID UUID].UUIDString]];
            //: [imageData writeToFile:filePath atomically:YES];
            [imageData writeToFile:filePath atomically:YES];
            //: if (completion) completion(filePath);
            if (completion) completion(filePath);
        //: } else {
        } else {
            //: if (completion) completion(nil);
            if (completion) completion(nil);
        }
    //: }];
    }];
}
// 获取视频路径
//: - (void)getVideoPathFromPHAsset:(PHAsset *)asset completion:(void (^)(NSString *path))completion {
- (void)imageTo:(PHAsset *)asset time:(void (^)(NSString *path))completion {
    //: if (asset.mediaType != PHAssetMediaTypeVideo) {
    if (asset.mediaType != PHAssetMediaTypeVideo) {
        //: if (completion) completion(nil);
        if (completion) completion(nil);
        //: return;
        return;
    }

    //: PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
    PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
    //: options.version = PHVideoRequestOptionsVersionOriginal;
    options.version = PHVideoRequestOptionsVersionOriginal;
    //: options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;
    options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;
    //: options.networkAccessAllowed = YES;
    options.networkAccessAllowed = YES;

    //: [[PHImageManager defaultManager] requestAVAssetForVideo:asset options:options resultHandler:^(AVAsset * _Nullable avAsset, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
    [[PHImageManager defaultManager] requestAVAssetForVideo:asset options:options resultHandler:^(AVAsset * _Nullable avAsset, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
        //: if ([avAsset isKindOfClass:[AVURLAsset class]]) {
        if ([avAsset isKindOfClass:[AVURLAsset class]]) {
            //: AVURLAsset *urlAsset = (AVURLAsset *)avAsset;
            AVURLAsset *urlAsset = (AVURLAsset *)avAsset;
            //: NSURL *url = urlAsset.URL;
            NSURL *url = urlAsset.URL;
            //: if (completion) completion(url.path);
            if (completion) completion(url.path);
        //: } else {
        } else {
            // 如果无法直接获取URL，则需要导出到临时文件
            //: [self exportVideoToTempFile:avAsset completion:completion];
            [self argument:avAsset table:completion];
        }
    //: }];
    }];
}

//: - (void)exportVideoToTempFile:(AVAsset *)avAsset completion:(void (^)(NSString *path))completion {
- (void)argument:(AVAsset *)avAsset table:(void (^)(NSString *path))completion {
    //: NSArray *presets = [AVAssetExportSession exportPresetsCompatibleWithAsset:avAsset];
    NSArray *presets = [AVAssetExportSession exportPresetsCompatibleWithAsset:avAsset];
    //: if ([presets containsObject:AVAssetExportPresetHighestQuality]) {
    if ([presets containsObject:AVAssetExportPresetHighestQuality]) {
        //: AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:avAsset presetName:AVAssetExportPresetHighestQuality];
        AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:avAsset presetName:AVAssetExportPresetHighestQuality];

        //: NSString *outputPath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"temp_video_%@.mp4", [NSUUID UUID].UUIDString]];
        NSString *outputPath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:[GrayBottomData kPinValue], [NSUUID UUID].UUIDString]];
        //: session.outputURL = [NSURL fileURLWithPath:outputPath];
        session.outputURL = [NSURL fileURLWithPath:outputPath];
        //: session.outputFileType = AVFileTypeMPEG4;
        session.outputFileType = AVFileTypeMPEG4;
        //: session.shouldOptimizeForNetworkUse = YES;
        session.shouldOptimizeForNetworkUse = YES;

        //: [session exportAsynchronouslyWithCompletionHandler:^{
        [session exportAsynchronouslyWithCompletionHandler:^{
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: if (session.status == AVAssetExportSessionStatusCompleted) {
                if (session.status == AVAssetExportSessionStatusCompleted) {
                    //: if (completion) completion(outputPath);
                    if (completion) completion(outputPath);
                //: } else {
                } else {
                    //: if (completion) completion(nil);
                    if (completion) completion(nil);
                }
            //: });
            });
        //: }];
        }];
    //: } else {
    } else {
        //: if (completion) completion(nil);
        if (completion) completion(nil);
    }
}


//: #pragma mark - NIMMeidaButton
#pragma mark - NIMMeidaButton
//: - (void)onTapMediaItemPicture:(BusyMediaItem *)item
- (void)placeUprightPicture:(ModelMessage *)item
{
    //: [self.interactor mediaPicturePressed];
    [self.interactor vertical];
}

//: - (void)onTapMediaItemShoot:(BusyMediaItem *)item
- (void)click:(ModelMessage *)item
{
    //: [self.interactor mediaShootPressed];
    [self.interactor titleInvite];
}

//: - (void)onTapMediaItemLocation:(BusyMediaItem *)item
- (void)part:(ModelMessage *)item
{
//    [self.interactor mediaLocationPressed];
    //: [self.view addSubview:self.audioContent];
    [self.view addSubview:self.audioContent];
    //: self.audioContent.actionDelegate = self;
    self.audioContent.actionDelegate = self;
    //: [self.audioContent animationShow];
    [self.audioContent send];

}

//: - (void)onTapTableView:(id)sender
- (void)futurisms:(id)sender
{
//    ButtonPointView.shareMenuView.praiseView.hidden = YES;
//    ButtonPointView.shareMenuView.buttonsBgView.hidden = NO;
    //: [BusyBubbleMenuView.shareMenuView removeFromSuperview];
    [ButtonPointView.line removeFromSuperview];
    //: [self.sessionInputView endEditing:YES];
    [self.sessionInputView endEditing:YES];
    //: self.photopicview.hidden = YES;
    self.photopicview.hidden = YES;
}

//: #pragma mark - 旋转处理 (iOS8 or above)
#pragma mark - 旋转处理 (iOS8 or above)
//: - (void)viewWillTransitionToSize:(CGSize)size
- (void)viewWillTransitionToSize:(CGSize)size
       //: withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
       withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    //: self.lastVisibleIndexPathBeforeRotation = [self.tableView indexPathsForVisibleRows].lastObject;
    self.lastVisibleIndexPathBeforeRotation = [self.tableView indexPathsForVisibleRows].lastObject;
    //: [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    //: if (self.view.window) {
    if (self.view.window) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [coordinator animateAlongsideTransition:^(id <UIViewControllerTransitionCoordinatorContext> context)
        [coordinator animateAlongsideTransition:^(id <UIViewControllerTransitionCoordinatorContext> context)
         {
             //: [[NIMSDK sharedSDK].mediaManager cancelRecord];
             [[NIMSDK sharedSDK].mediaManager cancelRecord];
             //: [wself.interactor cleanCache];
             [wself.interactor duringScreenRecording];
             //: [wself.sessionInputView reset];
             [wself.sessionInputView messageClose];
             //: [wself.tableView reloadData];
             [wself.tableView reloadData];
             //: [wself.tableView scrollToRowAtIndexPath:wself.lastVisibleIndexPathBeforeRotation atScrollPosition:UITableViewScrollPositionBottom animated:NO];
             [wself.tableView scrollToRowAtIndexPath:wself.lastVisibleIndexPathBeforeRotation atScrollPosition:UITableViewScrollPositionBottom animated:NO];
         //: } completion:nil];
         } completion:nil];
    }
}


//: #pragma mark - 标记已读
#pragma mark - 标记已读
//: - (void)markRead
- (void)status
{
    //: [self.interactor markRead:YES];
    [self.interactor keyWithFile:YES];
}


//: #pragma mark - Private
#pragma mark - Private

//: - (void)addListener
- (void)notHigh
{
    //: [[NIMSDK sharedSDK].chatManager addDelegate:self];
    [[NIMSDK sharedSDK].chatManager addDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].chatExtendManager addDelegate:self];
    [[NIMSDK sharedSDK].chatExtendManager addDelegate:self];
}

//: - (void)removeListener
- (void)reload
{
    //: [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].chatExtendManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatExtendManager removeDelegate:self];

}


//: - (id<NIMConversationManager>)conversationManager{
- (id<NIMConversationManager>)existManager{
    //: switch (self.session.sessionType) {
    switch (self.session.sessionType) {
        //: case NIMSessionTypeChatroom:
        case NIMSessionTypeChatroom:
            //: return nil;
            return nil;
            //: break;
            break;
        //: case NIMSessionTypeP2P:
        case NIMSessionTypeP2P:
        //: case NIMSessionTypeTeam:
        case NIMSessionTypeTeam:
        //: case NIMSessionTypeSuperTeam:
        case NIMSessionTypeSuperTeam:
        //: default:
        default:
            //: return [NIMSDK sharedSDK].conversationManager;
            return [NIMSDK sharedSDK].conversationManager;
    }
}


//: - (void)setUpTitleView
- (void)createView
{
    //: BusyKitTitleView *titleView = (BusyKitTitleView *)self.navigationItem.titleView;
    MyNameView *titleView = (MyNameView *)self.navigationItem.titleView;
    //: if (!titleView || ![titleView isKindOfClass:[BusyKitTitleView class]])
    if (!titleView || ![titleView isKindOfClass:[MyNameView class]])
    {
        //: titleView = [[BusyKitTitleView alloc] initWithFrame:CGRectZero];
        titleView = [[MyNameView alloc] initWithFrame:CGRectZero];
        //: self.navigationItem.titleView = titleView;
        self.navigationItem.titleView = titleView;

        //: titleView.titleLabel.text = self.sessionTitle;
        titleView.titleLabel.text = self.nameSession;
        //: titleView.subtitleLabel.text = self.sessionSubTitle;
        titleView.subtitleLabel.text = self.sessionWith;

        //: self.titleLabel = titleView.titleLabel;
        self.titleLabel = titleView.titleLabel;
        //: self.subTitleLabel = titleView.subtitleLabel;
        self.subTitleLabel = titleView.subtitleLabel;
    }

    //: [titleView sizeToFit];
    [titleView sizeToFit];
    //: self.subtitle.text = self.sessionSubTitle;
    self.subtitle.text = self.sessionWith;
}

//: - (void)refreshSessionTitle:(NSString *)title
- (void)value:(NSString *)title
{
    //: self.titleLabel.text = title;
    self.titleLabel.text = title;
//    self.labtitle.text = self.sessionTitle;
    //: [self setUpTitleView];
    [self createView];
}


//: - (void)refreshSessionSubTitle:(NSString *)title
- (void)progress:(NSString *)title
{
    //: self.subTitleLabel.text = title;
    self.subTitleLabel.text = title;
    //: self.subtitle.text = title;
    self.subtitle.text = title;
    //: if([title isEqualToString:@"离线".ntes_localized]){
    if([title isEqualToString:@"离线".untilNtes]){
        //: self.subtitle.textColor = [UIColor colorWithHexString:@"777777"];
        self.subtitle.textColor = [UIColor status:[GrayBottomData main_childCenterText]];
    //: }else{
    }else{
        //: self.subtitle.textColor = [UIColor colorWithHexString:@"#00B01B"];
        self.subtitle.textColor = [UIColor status:[GrayBottomData app_readIdent]];
    }
    //: [self setUpTitleView];
    [self createView];
}

//: - (void)refreshMessages
- (void)appear
{
    //: [self.interactor resetMessages:nil];
    [self.interactor sessionMessages:nil];
}

//: - (NSArray *)menusItems:(NIMMessage *)message {
- (NSArray *)size:(NIMMessage *)message {
    //: return nil;
    return nil;
}

//: - (void)scrollToMessage:(NIMMessage *)message
- (void)centralCity:(NIMMessage *)message
{
    //: NSInteger row = [self.interactor findMessageIndex:message];
    NSInteger row = [self.interactor circle:message];
    //: if (row != -1) {
    if (row != -1) {
        //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
        //: [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
        [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
    }
}

//: - (void)cleanMenuMessage
- (void)sub
{
    //: [self.sessionInputView.replyedContent.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    [self.sessionInputView.replyedContent.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    //: self.messageForMenu = nil;
    self.messageForMenu = nil;
}

//: - (void)hadCommentThisMessage:(NIMMessage *)message
- (void)bar:(NIMMessage *)message
                         //: type:(int64_t)type
                         bargain:(int64_t)type
                    //: compltion:(void(^)(NSMapTable *))completion
                    viewThis:(void(^)(NSMapTable *))completion
{
    //: [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NSArray<NIMQuickComment *> * >* _Nullable result) {
    [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NSArray<NIMQuickComment *> * >* _Nullable result) {
        //: if (completion)
        if (completion)
        {
            //: completion(result);
            completion(result);
        }
    //: }];
    }];
}

//: - (BOOL)shouldShowMenuByMessage:(NIMMessage *)message
- (BOOL)add:(NIMMessage *)message
{
    //: if (message.session.sessionType == NIMSessionTypeChatroom ||
    if (message.session.sessionType == NIMSessionTypeChatroom ||
        //: message.messageType == NIMMessageTypeTip ||
        message.messageType == NIMMessageTypeTip ||
        //: message.messageType == NIMMessageTypeNotification)
        message.messageType == NIMMessageTypeNotification)
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}


//: - (void)showMenuWithMessage:(NIMMessage *)message withView:(UIView *)view {
- (void)along:(NIMMessage *)message oldShow:(UIView *)view {

    //: [[BusyBubbleMenuView shareMenuView] removeFromSuperview];
    [[ButtonPointView line] removeFromSuperview];

    //: NSArray *btns = [self genMediaButtonsWithMessage:message];
    NSArray *btns = [self myStep:message];

    //: if (btns.count > 0) {
    if (btns.count > 0) {

        //: CGRect tempRect = [view convertRect:view.bounds toView:self.view];
        CGRect tempRect = [view convertRect:view.bounds toView:self.view];
        //: CGRect cursorStartRectToWindow = [view convertRect:view.bounds toView:self.view];
        CGRect cursorStartRectToWindow = [view convertRect:view.bounds toView:self.view];

        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                      ;
        //: [[BusyBubbleMenuView shareMenuView] showViewWithButtonModels:btns cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(BusyMediaItem *item) {
        [[ButtonPointView line] info:btns praiseRect:cursorStartRectToWindow streetSmartMode:tempRect title:^(ModelMessage *item) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: [self onTapMediaItem:item];
            [self ended:item];

            //: [BusyBubbleMenuView.shareMenuView removeFromSuperview];
            [ButtonPointView.line removeFromSuperview];
        //: }praiseBlock:^(NSInteger tag) {
        }demonstrate:^(NSInteger tag) {
            //: [self praiseViewdidSelectIndex:tag];
            [self media:tag];
        //: }];
        }];
    }

}
//: - (void)praiseViewdidSelectIndex:(NSInteger)index
- (void)media:(NSInteger)index
{
    //: __block NIMQuickComment *newComment = [NIMCommentMaker commentWithType:index content:@"" ext:@"扩展"];
    __block NIMQuickComment *newComment = [SortMaker text:index inputSignal:@"" change:@"扩展"];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self hadCommentThisMessage:self.messageForMenu type:index
    [self bar:self.messageForMenu bargain:index
                      //: compltion:^(NSMapTable *result)
                      viewThis:^(NSMapTable *result)
     {
        //: NIMQuickComment *oldComment = [BusyKitQuickCommentUtil myCommentFromComments:0 keys:@[@(index)] comments:result];
        NIMQuickComment *oldComment = [TapColorUtil file:0 net:@[@(index)] collectionComments:result];
        //: BOOL contains = oldComment ? YES : NO;
        BOOL contains = oldComment ? YES : NO;
        //: if (!contains)
        if (!contains)
        {
            //: [weakSelf.interactor addQuickComment:newComment toMessage:self.messageForMenu completion:^(NSError *error)
            [weakSelf.interactor bar:newComment dateDoing:self.messageForMenu immobilizeCompletion:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[BusyLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[SendName streetSmart:[GrayBottomData kRedId]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf sub];
            //: }];
            }];
        }
        //: else
        else
        {
            //: [weakSelf.interactor delQuickComment:oldComment
            [weakSelf.interactor insertFilter:oldComment
                                   //: targetMessage:weakSelf.messageForMenu
                                   targetCompletion:weakSelf.messageForMenu
                                      //: completion:^(NSError *error)
                                      to:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[BusyLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[SendName streetSmart:[GrayBottomData kRedId]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf sub];
            //: }];
            }];
        }
    //: }];
    }];
}
//: - (NSArray *)genMediaButtonsWithMessage:(NIMMessage *)message {
- (NSArray *)myStep:(NIMMessage *)message {

    //: NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];

    //: NSArray *items;
    NSArray *items;
    //: if (!self.sessionConfig)
    if (!self.sessionConfig)
    {
        //: items = [[MyUserKit sharedKit].config defaultMenuItemsWithMessage:message];
        items = [[Case pastTop].config ting:message];
    }
    //: else if([self.sessionConfig respondsToSelector:@selector(menuItemsWithMessage:)])
    else if([self.sessionConfig respondsToSelector:@selector(shouldMaxSession:)])
    {
        //: items = [self.sessionConfig menuItemsWithMessage:message];
        items = [self.sessionConfig shouldMaxSession:message];
    }

    //: [items enumerateObjectsUsingBlock:^(BusyMediaItem *item, NSUInteger idx, BOOL *stop) {
    [items enumerateObjectsUsingBlock:^(ModelMessage *item, NSUInteger idx, BOOL *stop) {

        //: BusyBubbleButtonModel *model = [[BusyBubbleButtonModel alloc] init];
        ModelContent *model = [[ModelContent alloc] init];
        //: model.normalImage = item.normalImage;
        model.normalImage = item.normalImage;
        //: model.name = item.title;
        model.name = item.title;
        //: model.item = item;
        model.item = item;

        //: [selectedAllRangeButtons addObject:model];
        [selectedAllRangeButtons addObject:model];

    //: }];
    }];

    //: return selectedAllRangeButtons;
    return selectedAllRangeButtons;
}

//: - (void)onTapAudioBtn:(id)sender
- (void)viewwed:(id)sender
{
    //: self.sessionInputView.toolBar.showsKeyboard = NO;
    self.sessionInputView.toolBar.showsKeyboard = NO;

    //: [self.view addSubview:self.audioContent];
    [self.view addSubview:self.audioContent];
    //: self.audioContent.actionDelegate = self;
    self.audioContent.actionDelegate = self;
    //: [self.audioContent animationShow];
    [self.audioContent send];
}

//: - (void)handleAudioBtn
- (void)findBtn
{
//    [self.sessionInputView refreshStatus:NIMInputStatusText];
    //: self.sessionInputView.toolBar.showsKeyboard = NO;
    self.sessionInputView.toolBar.showsKeyboard = NO;

    //: [self.view addSubview:self.audioContent];
    [self.view addSubview:self.audioContent];
    //: self.audioContent.actionDelegate = self;
    self.audioContent.actionDelegate = self;
    //: [self.audioContent animationShow];
    [self.audioContent send];
}

//: - (UIButton *)btnAudio
- (UIButton *)btnAudio
{
    //: if (!_btnAudio) {
    if (!_btnAudio) {
        //: _btnAudio = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnAudio = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnAudio.frame = CGRectMake(12, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-40, 40, 40);
        _btnAudio.frame = CGRectMake(12, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice statusOrLevel]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-40, 40, 40);
        //: _btnAudio.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        _btnAudio.backgroundColor = [UIColor status:[GrayBottomData dream_jungleValue]];
        //: [_btnAudio setImage:[UIImage imageNamed:@"icon_toolview_voice_normal"] forState:UIControlStateNormal];
        [_btnAudio setImage:[UIImage imageNamed:[GrayBottomData userHostageMessage]] forState:UIControlStateNormal];
        //: _btnAudio.layer.cornerRadius = 20;
        _btnAudio.layer.cornerRadius = 20;
        //: [_btnAudio addTarget:self action:@selector(handleAudioBtn) forControlEvents:UIControlEventTouchUpInside];
        [_btnAudio addTarget:self action:@selector(findBtn) forControlEvents:UIControlEventTouchUpInside];

    }
    //: return _btnAudio;
    return _btnAudio;
}

//: - (void)handleAlbumBtn
- (void)curTag
{
    //: _photopicview.hidden = YES;
    _photopicview.hidden = YES;
    //: [self.interactor mediaPicturePressed];
    [self.interactor vertical];
}

//: - (void)handleShotBtn
- (void)lyricMore
{
    //: _photopicview.hidden = YES;
    _photopicview.hidden = YES;
    //: [self.interactor mediaShootPressed];
    [self.interactor titleInvite];
}

//: - (PhotoContainerView *)customAlbumView
- (PhotoView *)customAlbumView
{
    //: if(!_customAlbumView){
    if(!_customAlbumView){
        //: _customAlbumView = [[PhotoContainerView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _customAlbumView = [[PhotoView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _customAlbumView.delegate = self;
        _customAlbumView.delegate = self;

                //: UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleParentTap)];
                UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(shuckTitle)];
                //: singleTapclose.delegate = self;
                singleTapclose.delegate = self;
                //: singleTapclose.cancelsTouchesInView = NO; 
                singleTapclose.cancelsTouchesInView = NO; // 允许触摸事件继续传递
                //: [_customAlbumView addGestureRecognizer:singleTapclose];
                [_customAlbumView addGestureRecognizer:singleTapclose];
    }
    //: return _customAlbumView;
    return _customAlbumView;
}
//: - (void)handleParentTap
- (void)shuckTitle
{
    //: [self.customAlbumView animationClose];
    [self.customAlbumView tingShould];
}

// 实现UIGestureRecognizerDelegate方法
//: - (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    // 获取触摸点位置
    //: CGPoint touchPoint = [touch locationInView:self.customAlbumView];
    CGPoint touchPoint = [touch locationInView:self.customAlbumView];

    // 检查触摸点是否在子视图上
    //: for (UIView *subview in self.customAlbumView.subviews) {
    for (UIView *subview in self.customAlbumView.subviews) {
        //: if (CGRectContainsPoint(subview.frame, touchPoint) && subview.userInteractionEnabled) {
        if (CGRectContainsPoint(subview.frame, touchPoint) && subview.userInteractionEnabled) {
            //: return NO; 
            return NO; // 如果触摸点在子视图上，父视图手势不响应
        }
    }

    //: return YES; 
    return YES; // 其他区域父视图手势响应
}

//: - (UIView *)photopicview
- (UIView *)photopicview
{
    //: if (!_photopicview) {
    if (!_photopicview) {
        //: _photopicview = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-240)/2, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-78-60, 240, 78)];
        _photopicview = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-240)/2, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-78-60, 240, 78)];
        //: _photopicview.backgroundColor = [UIColor whiteColor];
        _photopicview.backgroundColor = [UIColor whiteColor];
        //: _photopicview.layer.cornerRadius = 12;
        _photopicview.layer.cornerRadius = 12;
        //: _photopicview.layer.masksToBounds = YES;
        _photopicview.layer.masksToBounds = YES;
        //: _photopicview.hidden = YES;
        _photopicview.hidden = YES;

        //: UIButton *btnAlbum = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnAlbum = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnAlbum.frame = CGRectMake(0, 0, 120, 78);
        btnAlbum.frame = CGRectMake(0, 0, 120, 78);
//        btnAlbum.backgroundColor = ThemeColor;
        //: [btnAlbum setImage:[UIImage imageNamed:@"icon_toolview_album"] forState:UIControlStateNormal];
        [btnAlbum setImage:[UIImage imageNamed:[GrayBottomData k_acquireToId]] forState:UIControlStateNormal];
//        btnAlbum.layer.cornerRadius = 20;
        //: [btnAlbum addTarget:self action:@selector(handleAlbumBtn) forControlEvents:UIControlEventTouchUpInside];
        [btnAlbum addTarget:self action:@selector(curTag) forControlEvents:UIControlEventTouchUpInside];
        //: btnAlbum.titleLabel.font = [UIFont systemFontOfSize:14];
        btnAlbum.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnAlbum setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btnAlbum setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //: [btnAlbum setTitle:[BusyLanguageManager getTextWithKey:@"message_send_album"] forState:UIControlStateNormal];
        [btnAlbum setTitle:[SendName streetSmart:[GrayBottomData showGuaranteeName]] forState:UIControlStateNormal];
        //: [btnAlbum layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
        [btnAlbum reloadSession:(MKButtonEdgeInsetsStyleTop) text:10];
        //: [_photopicview addSubview:btnAlbum];
        [_photopicview addSubview:btnAlbum];

        //: UIButton *btnShot = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnShot = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnShot.frame = CGRectMake(120, 0, 120, 78);
        btnShot.frame = CGRectMake(120, 0, 120, 78);
//        btnShot.backgroundColor = ThemeColor;
        //: [btnShot setImage:[UIImage imageNamed:@"icon_toolview_camera"] forState:UIControlStateNormal];
        [btnShot setImage:[UIImage imageNamed:[GrayBottomData k_builderStr]] forState:UIControlStateNormal];
//        btnShot.layer.cornerRadius = 20;
        //: [btnShot addTarget:self action:@selector(handleShotBtn) forControlEvents:UIControlEventTouchUpInside];
        [btnShot addTarget:self action:@selector(lyricMore) forControlEvents:UIControlEventTouchUpInside];
        //: btnShot.titleLabel.font = [UIFont systemFontOfSize:14];
        btnShot.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnShot setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btnShot setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //: [btnShot setTitle:[BusyLanguageManager getTextWithKey:@"message_send_camera"] forState:UIControlStateNormal];
        [btnShot setTitle:[SendName streetSmart:[GrayBottomData app_distinctiveData]] forState:UIControlStateNormal];
        //: [btnShot layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
        [btnShot reloadSession:(MKButtonEdgeInsetsStyleTop) text:10];
        //: [_photopicview addSubview:btnShot];
        [_photopicview addSubview:btnShot];
    }
    //: return _photopicview;
    return _photopicview;
}

//: - (BusyInputAudioView *)audioContent
- (SaluteView *)audioContent
{
    //: if(!_audioContent){
    if(!_audioContent){
        //: _audioContent = [[BusyInputAudioView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _audioContent = [[SaluteView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _audioContent.hidden = YES;
    }
    //: return _audioContent;
    return _audioContent;
}

//: @end
@end
