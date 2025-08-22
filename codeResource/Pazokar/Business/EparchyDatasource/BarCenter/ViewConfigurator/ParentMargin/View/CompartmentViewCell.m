
#import <Foundation/Foundation.h>

typedef struct {
    Byte commendationProtect;
    Byte *consort;
    unsigned int factorGang;
} StructGangData;

@interface GangData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation GangData

+ (instancetype)sharedInstance {
    static GangData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)GangDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)GangDataToByte:(StructGangData *)data {
    for (int i = 0; i < data->factorGang; i++) {
        data->consort[i] ^= data->commendationProtect;
    }
    data->consort[data->factorGang] = 0;
    return data->consort;
}

- (NSString *)StringFromGangData:(StructGangData *)data {
    return [NSString stringWithUTF8String:(char *)[self GangDataToByte:data]];
}

//: can not init content view
- (NSString *)user_inmateMsg {
    /* static */ NSString *user_inmateMsg = nil;
    if (!user_inmateMsg) {
		NSArray<NSNumber *> *origin = @[@95, @93, @82, @28, @82, @83, @72, @28, @85, @82, @85, @72, @28, @95, @83, @82, @72, @89, @82, @72, @28, @74, @85, @89, @75, @95];
		NSData *data = [GangData GangDataToData:origin];
        StructGangData value = (StructGangData){60, (Byte *)data.bytes, 25};
        user_inmateMsg = [self StringFromGangData:&value];
    }
    return user_inmateMsg;
}

//: fffBusy
- (NSString *)kReliabilityManagerContainerKey {
    /* static */ NSString *kReliabilityManagerContainerKey = nil;
    if (!kReliabilityManagerContainerKey) {
		NSArray<NSNumber *> *origin = @[@13, @13, @13, @13, @13, @13, @37];
		NSData *data = [GangData GangDataToData:origin];
        StructGangData value = (StructGangData){107, (Byte *)data.bytes, 6};
        kReliabilityManagerContainerKey = [self StringFromGangData:&value];
    }
    return kReliabilityManagerContainerKey;
}

//: message_read_no
- (NSString *)mainPhraseData {
    /* static */ NSString *mainPhraseData = nil;
    if (!mainPhraseData) {
		NSArray<NSNumber *> *origin = @[@108, @100, @114, @114, @96, @102, @100, @94, @115, @100, @96, @101, @94, @111, @110, @154];
		NSData *data = [GangData GangDataToData:origin];
        StructGangData value = (StructGangData){1, (Byte *)data.bytes, 15};
        mainPhraseData = [self StringFromGangData:&value];
    }
    return mainPhraseData;
}

//: message_read_yes
- (NSString *)app_cooperationIdent {
    /* static */ NSString *app_cooperationIdent = nil;
    if (!app_cooperationIdent) {
		NSArray<NSNumber *> *origin = @[@15, @7, @17, @17, @3, @5, @7, @61, @16, @7, @3, @6, @61, @27, @7, @17, @101];
		NSData *data = [GangData GangDataToData:origin];
        StructGangData value = (StructGangData){98, (Byte *)data.bytes, 16};
        app_cooperationIdent = [self StringFromGangData:&value];
    }
    return app_cooperationIdent;
}

//: #FF8C37
- (NSString *)app_nameMsg {
    /* static */ NSString *app_nameMsg = nil;
    if (!app_nameMsg) {
		NSArray<NSNumber *> *origin = @[@98, @7, @7, @121, @2, @114, @118, @94];
		NSData *data = [GangData GangDataToData:origin];
        StructGangData value = (StructGangData){65, (Byte *)data.bytes, 7};
        app_nameMsg = [self StringFromGangData:&value];
    }
    return app_nameMsg;
}

//: should offer cell content class name
- (NSString *)app_resentTitle {
    /* static */ NSString *app_resentTitle = nil;
    if (!app_resentTitle) {
		NSArray<NSNumber *> *origin = @[@248, @227, @228, @254, @231, @239, @171, @228, @237, @237, @238, @249, @171, @232, @238, @231, @231, @171, @232, @228, @229, @255, @238, @229, @255, @171, @232, @231, @234, @248, @248, @171, @229, @234, @230, @238, @115];
		NSData *data = [GangData GangDataToData:origin];
        StructGangData value = (StructGangData){139, (Byte *)data.bytes, 36};
        app_resentTitle = [self StringFromGangData:&value];
    }
    return app_resentTitle;
}

//: #1EABF4
- (NSString *)m_proximateFinTitle {
    /* static */ NSString *m_proximateFinTitle = nil;
    if (!m_proximateFinTitle) {
		NSArray<NSNumber *> *origin = @[@26, @8, @124, @120, @123, @127, @13, @225];
		NSData *data = [GangData GangDataToData:origin];
        StructGangData value = (StructGangData){57, (Byte *)data.bytes, 7};
        m_proximateFinTitle = [self StringFromGangData:&value];
    }
    return m_proximateFinTitle;
}

//: #AC45FF
- (NSString *)mainClickKey {
    /* static */ NSString *mainClickKey = nil;
    if (!mainClickKey) {
		NSArray<NSNumber *> *origin = @[@227, @129, @131, @244, @245, @134, @134, @228];
		NSData *data = [GangData GangDataToData:origin];
        StructGangData value = (StructGangData){192, (Byte *)data.bytes, 7};
        mainClickKey = [self StringFromGangData:&value];
    }
    return mainClickKey;
}

//: F0E8FF
- (NSString *)show_aheadData {
    /* static */ NSString *show_aheadData = nil;
    if (!show_aheadData) {
		NSArray<NSNumber *> *origin = @[@142, @248, @141, @240, @142, @142, @221];
		NSData *data = [GangData GangDataToData:origin];
        StructGangData value = (StructGangData){200, (Byte *)data.bytes, 6};
        show_aheadData = [self StringFromGangData:&value];
    }
    return show_aheadData;
}

//: msg_view_4
- (NSString *)showViewMsg {
    /* static */ NSString *showViewMsg = nil;
    if (!showViewMsg) {
		NSArray<NSNumber *> *origin = @[@147, @141, @153, @161, @136, @151, @155, @137, @161, @202, @81];
		NSData *data = [GangData GangDataToData:origin];
        StructGangData value = (StructGangData){254, (Byte *)data.bytes, 10};
        showViewMsg = [self StringFromGangData:&value];
    }
    return showViewMsg;
}

//: %zd人未读
- (NSString *)dream_cellId {
    /* static */ NSString *dream_cellId = nil;
    if (!dream_cellId) {
		NSArray<NSNumber *> *origin = @[@94, @1, @31, @159, @193, @193, @157, @231, @209, @147, @212, @192, @238];
		NSData *data = [GangData GangDataToData:origin];
        StructGangData value = (StructGangData){123, (Byte *)data.bytes, 12};
        dream_cellId = [self StringFromGangData:&value];
    }
    return dream_cellId;
}

//: #EA4883
- (NSString *)showHormoneManipulateTitle {
    /* static */ NSString *showHormoneManipulateTitle = nil;
    if (!showHormoneManipulateTitle) {
		NSArray<NSNumber *> *origin = @[@94, @56, @60, @73, @69, @69, @78, @35];
		NSData *data = [GangData GangDataToData:origin];
        StructGangData value = (StructGangData){125, (Byte *)data.bytes, 7};
        showHormoneManipulateTitle = [self StringFromGangData:&value];
    }
    return showHormoneManipulateTitle;
}

//: icon_message_cell_error
- (NSString *)mainBaseballText {
    /* static */ NSString *mainBaseballText = nil;
    if (!mainBaseballText) {
		NSArray<NSNumber *> *origin = @[@14, @4, @8, @9, @56, @10, @2, @20, @20, @6, @0, @2, @56, @4, @2, @11, @11, @56, @2, @21, @21, @8, @21, @82];
		NSData *data = [GangData GangDataToData:origin];
        StructGangData value = (StructGangData){103, (Byte *)data.bytes, 23};
        mainBaseballText = [self StringFromGangData:&value];
    }
    return mainBaseballText;
}

//: icon_accessory_selected
- (NSString *)dreamFainContent {
    /* static */ NSString *dreamFainContent = nil;
    if (!dreamFainContent) {
		NSArray<NSNumber *> *origin = @[@76, @70, @74, @75, @122, @68, @70, @70, @64, @86, @86, @74, @87, @92, @122, @86, @64, @73, @64, @70, @81, @64, @65, @92];
		NSData *data = [GangData GangDataToData:origin];
        StructGangData value = (StructGangData){37, (Byte *)data.bytes, 23};
        dreamFainContent = [self StringFromGangData:&value];
    }
    return dreamFainContent;
}

//: icon_accessory_normal
- (NSString *)show_centerName {
    /* static */ NSString *show_centerName = nil;
    if (!show_centerName) {
		NSArray<NSNumber *> *origin = @[@69, @79, @67, @66, @115, @77, @79, @79, @73, @95, @95, @67, @94, @85, @115, @66, @67, @94, @65, @77, @64, @78];
		NSData *data = [GangData GangDataToData:origin];
        StructGangData value = (StructGangData){44, (Byte *)data.bytes, 21};
        show_centerName = [self StringFromGangData:&value];
    }
    return show_centerName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentViewCell.m
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyMessageCell.h"
#import "CompartmentViewCell.h"
//: #import "BusyMessageModel.h"
#import "MoreModel.h"
//: #import "BusyAvatarImageView.h"
#import "CustomFormatView.h"
//: #import "BusyBadgeView.h"
#import "SharedView.h"
//: #import "BusySessionMessageContentView.h"
#import "TextControl.h"
//: #import "BusyKitUtil.h"
#import "OffMore.h"
//: #import "BusySessionAudioContentView.h"
#import "RowTingView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "BusyKitDependency.h"
#import "BusyKitDependency.h"
//: #import "M80AttributedLabel.h"
#import "CypherScrollView.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "BusySessionUnknowContentView.h"
#import "DateControl.h"
//: #import "BusyKitConfig.h"
#import "ChildSend.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "BusySessionTextContentView.h"
#import "ButtonView.h"

//: @interface BusyMessageCell()<NIMPlayAudioUIDelegate,NIMMessageContentViewDelegate>
@interface CompartmentViewCell()<GlobuleTag,InformationView>
{
    //: UILongPressGestureRecognizer *_longPressGesture;
    UILongPressGestureRecognizer *_longPressGesture;
    //: UIMenuController *_menuController;
    UIMenuController *_menuController;
}

//: @property (nonatomic,strong) BusyMessageModel *model;
@property (nonatomic,strong) MoreModel *model;

//: @property (nonatomic,copy) NSArray *customViews;
@property (nonatomic,copy) NSArray *customViews;

//: @end
@end



//: @implementation BusyMessageCell
@implementation CompartmentViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier]) {
    if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier]) {
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: [self makeComponents];
        [self enable];
        //: [self makeGesture];
        [self path];

    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [self removeGestureRecognizer:_longPressGesture];
    [self removeGestureRecognizer:_longPressGesture];
}

//: - (void)makeComponents
- (void)enable
{
    //: static UIImage *NIMRetryButtonImage;
    static UIImage *NIMRetryButtonImage;
    //: static UIImage *NIMSelectButtonNormalImage;
    static UIImage *NIMSelectButtonNormalImage;
    //: static UIImage *NIMSelectButtonHighImage;
    static UIImage *NIMSelectButtonHighImage;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NIMRetryButtonImage = [UIImage imageNamed:@"icon_message_cell_error"];
        NIMRetryButtonImage = [UIImage imageNamed:[[GangData sharedInstance] mainBaseballText]];
        //: NIMSelectButtonNormalImage = [UIImage imageNamed:@"icon_accessory_normal"];
        NIMSelectButtonNormalImage = [UIImage imageNamed:[[GangData sharedInstance] show_centerName]];
        //: NIMSelectButtonHighImage = [UIImage imageNamed:@"icon_accessory_selected"];
        NIMSelectButtonHighImage = [UIImage imageNamed:[[GangData sharedInstance] dreamFainContent]];
    //: });
    });
    //retyrBtn
    //: _retryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _retryButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_retryButton setImage:NIMRetryButtonImage forState:UIControlStateNormal];
    [_retryButton setImage:NIMRetryButtonImage forState:UIControlStateNormal];
    //: [_retryButton setImage:NIMRetryButtonImage forState:UIControlStateHighlighted];
    [_retryButton setImage:NIMRetryButtonImage forState:UIControlStateHighlighted];
    //: [_retryButton setFrame:CGRectMake(0, 0, 20, 20)];
    [_retryButton setFrame:CGRectMake(0, 0, 20, 20)];
    //: [_retryButton addTarget:self action:@selector(onRetryMessage:) forControlEvents:UIControlEventTouchUpInside];
    [_retryButton addTarget:self action:@selector(packetAlongContainerRead:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.contentView addSubview:_retryButton];
    [self.contentView addSubview:_retryButton];

    //audioPlayedIcon
    //: _audioPlayedIcon = [BusyBadgeView viewWithBadgeTip:@""];
    _audioPlayedIcon = [SharedView location:@""];
//    _audioPlayedIcon.badgeBackgroundColor = RGB_COLOR_String(@"#612CF9");
//    [self.contentView addSubview:_audioPlayedIcon];

    //traningActivityIndicator
    //: _traningActivityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0,0,20,20)];
    _traningActivityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0,0,20,20)];
    //: [self.contentView addSubview:_traningActivityIndicator];
    [self.contentView addSubview:_traningActivityIndicator];

    //headerView
    //: _headImageView = [[BusyAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 36, 36)];
    _headImageView = [[CustomFormatView alloc] initWithFrame:CGRectMake(0, 0, 36, 36)];
    //: [_headImageView addTarget:self action:@selector(onTapAvatar:) forControlEvents:UIControlEventTouchUpInside];
    [_headImageView addTarget:self action:@selector(todayses:) forControlEvents:UIControlEventTouchUpInside];
    //: UILongPressGestureRecognizer *gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPressAvatar:)];
    UILongPressGestureRecognizer *gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(instancing:)];
    //: [_headImageView addGestureRecognizer:gesture];
    [_headImageView addGestureRecognizer:gesture];
    //: [self.contentView addSubview:_headImageView];
    [self.contentView addSubview:_headImageView];

    //nicknamel
    //: _nameLabel = [[UILabel alloc] init];
    _nameLabel = [[UILabel alloc] init];
    //: _nameLabel.backgroundColor = [UIColor clearColor];
    _nameLabel.backgroundColor = [UIColor clearColor];
    //: _nameLabel.opaque = YES;
    _nameLabel.opaque = YES;
    //: _nameLabel.font = [MyUserKit sharedKit].config.nickFont;
    _nameLabel.font = [Case pastTop].config.nickFont;
    //: _nameLabel.textColor = [MyUserKit sharedKit].config.nickColor;
    _nameLabel.textColor = [Case pastTop].config.nickColor;
    //: [_nameLabel setHidden:YES];
    [_nameLabel setHidden:YES];
    //: [self.contentView addSubview:_nameLabel];
    [self.contentView addSubview:_nameLabel];

    //readlabel
    //: _readButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _readButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _readButton.opaque = YES;
    _readButton.opaque = YES;
    //: _readButton.titleLabel.font = [MyUserKit sharedKit].config.receiptFont;
    _readButton.titleLabel.font = [Case pastTop].config.receiptFont;
    //: [_readButton setTitleColor:[MyUserKit sharedKit].config.receiptColor forState:UIControlStateNormal];
    [_readButton setTitleColor:[Case pastTop].config.receiptColor forState:UIControlStateNormal];
    //: [_readButton setTitleColor:[MyUserKit sharedKit].config.receiptColor forState:UIControlStateHighlighted];
    [_readButton setTitleColor:[Case pastTop].config.receiptColor forState:UIControlStateHighlighted];
    //: [_readButton setHidden:YES];
    [_readButton setHidden:YES];
    //: [_readButton addTarget:self action:@selector(onPressReadButton:) forControlEvents:UIControlEventTouchUpInside];
    [_readButton addTarget:self action:@selector(alonged:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.contentView addSubview:_readButton];
    [self.contentView addSubview:_readButton];

    //selectButton
    //: _selectButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _selectButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_selectButton setImage:NIMSelectButtonNormalImage forState:UIControlStateNormal];
    [_selectButton setImage:NIMSelectButtonNormalImage forState:UIControlStateNormal];
    //: [_selectButton setImage:NIMSelectButtonHighImage forState:UIControlStateSelected];
    [_selectButton setImage:NIMSelectButtonHighImage forState:UIControlStateSelected];
    //: [_selectButton sizeToFit];
    [_selectButton sizeToFit];
    //: [self.contentView addSubview:_selectButton];
    [self.contentView addSubview:_selectButton];
    //: _selectButton.hidden = YES;
    _selectButton.hidden = YES;

    //bubblesBackgroundView
    //: _bubblesBackgroundView = [[UIView alloc] init];
    _bubblesBackgroundView = [[UIView alloc] init];
    //: _bubblesBackgroundView.layer.cornerRadius = 8;
    _bubblesBackgroundView.layer.cornerRadius = 8;
    //: _bubblesBackgroundView.layer.masksToBounds = YES;
    _bubblesBackgroundView.layer.masksToBounds = YES;
    //: [self.contentView addSubview:_bubblesBackgroundView];
    [self.contentView addSubview:_bubblesBackgroundView];

    //selectButtonMask
    //: _selectButtonMask = [UIButton buttonWithType:UIButtonTypeCustom];
    _selectButtonMask = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_selectButtonMask setBackgroundColor:[UIColor clearColor]];
    [_selectButtonMask setBackgroundColor:[UIColor clearColor]];
    //: [_selectButtonMask addTarget:self action:@selector(onTapSelectedButton:) forControlEvents:UIControlEventTouchUpInside];
    [_selectButtonMask addTarget:self action:@selector(postWithLanguage:) forControlEvents:UIControlEventTouchUpInside];
    //: [self.contentView addSubview:_selectButtonMask];
    [self.contentView addSubview:_selectButtonMask];
    //: _selectButtonMask.hidden = YES;
    _selectButtonMask.hidden = YES;


}

//: - (void)makeGesture{
- (void)path{
    //: _longPressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longGesturePress:)];
    _longPressGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(textPress:)];
    //: [self addGestureRecognizer:_longPressGesture];
    [self addGestureRecognizer:_longPressGesture];
}

//: - (void)refreshData:(BusyMessageModel *)data
- (void)pullSession:(MoreModel *)data
{
    //: self.model = data;
    self.model = data;
    //: if ([self checkData])
    if ([self tingData])
    {
        //: [self.model updateLayoutConfig];
        [self.model locationRecord];
        //: [self refresh];
        [self childRestore];
    }
}

//: - (BOOL)checkData{
- (BOOL)tingData{
    //: return [self.model isKindOfClass:[BusyMessageModel class]];
    return [self.model isKindOfClass:[MoreModel class]];
}

//: - (void)refresh
- (void)childRestore
{
    //: self.contentView.hidden = NO;
    self.contentView.hidden = NO;

    // 撤回的消息 发送自定义消息
    //: if (self.model.message.messageType == NIMMessageTypeCustom && self.model.message.messageSubType == 20) {
    if (self.model.message.messageType == NIMMessageTypeCustom && self.model.message.messageSubType == 20) {
        //: self.contentView.hidden = YES;
        self.contentView.hidden = YES;
    }
//    // 撤回的消息 发送自定义消息
//    if (self.model.message.messageType == NIMMessageTypeCustom) {
//        self.contentView.hidden = YES;
//    }

    //: NIMNotificationObject *object = self.model.message.messageObject;
    NIMNotificationObject *object = self.model.message.messageObject;
    //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
    if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
    {
        //: self.contentView.hidden = YES;
        self.contentView.hidden = YES;
    }

//    if(!self.model.shouldShowLeft){
//        self.model.shouldShowAvatar = NO;
//    }else{
//        self.model.shouldShowAvatar = YES;
//    }


    //: [self refreshBubblesBackgroundView];
    [self stockOption];
    //: [self addReplyedContentViewIfNotExist];
    [self videoExist];
    //: [self addContentViewIfNotExist];
    [self befog];
    //: [self addUserCustomViews];
    [self cypher];

//    self.backgroundColor = [Case sharedKit].config.cellBackgroundColor;
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: if ([self needShowSelectButton]) {
    if ([self showMax]) {
        //: _selectButton.selected = self.model.selected;
        _selectButton.selected = self.model.selected;
        //: _selectButtonMask.hidden = NO;
        _selectButtonMask.hidden = NO;
    }
    //: if ([self needShowAvatar])
    if ([self need])
    {
        //: [_headImageView setAvatarByMessage:self.model.message];
        [_headImageView setBeginView:self.model.message];
    }

    //: if([self needShowNickName])
    if([self key])
    {
        //: NSString *nick = [BusyKitUtil showNick:self.model.message.from inMessage:self.model.message];
        NSString *nick = [OffMore target:self.model.message.from exist:self.model.message];
        //: [self.nameLabel setText:nick];
        [self.nameLabel setText:nick];
        //: NSArray *colorList = [[NSArray alloc]initWithObjects:@"#EA4883",@"#FF8C37",@"#1EABF4",@"#AC45FF", nil];
        NSArray *colorList = [[NSArray alloc]initWithObjects:[[GangData sharedInstance] showHormoneManipulateTitle],[[GangData sharedInstance] app_nameMsg],[[GangData sharedInstance] m_proximateFinTitle],[[GangData sharedInstance] mainClickKey], nil];
        //: NSInteger index = self.model.message.from.integerValue%4;
        NSInteger index = self.model.message.from.integerValue%4;
        //: self.nameLabel.textColor = [UIColor colorWithHexString:colorList[index]];
        self.nameLabel.textColor = [UIColor status:colorList[index]];
    }
    //: [_nameLabel setHidden:![self needShowNickName]];
    [_nameLabel setHidden:![self key]];


    //: BOOL isActivityIndicatorHidden = [self activityIndicatorHidden];
    BOOL isActivityIndicatorHidden = [self dragDown];
    //: if (isActivityIndicatorHidden)
    if (isActivityIndicatorHidden)
    {
        //: [_traningActivityIndicator stopAnimating];
        [_traningActivityIndicator stopAnimating];
    }
    //: else
    else
    {
        //: [_traningActivityIndicator startAnimating];
        [_traningActivityIndicator startAnimating];
    }
//    [_traningActivityIndicator setHidden:isActivityIndicatorHidden];
    //: [_traningActivityIndicator setHidden:YES];
    [_traningActivityIndicator setHidden:YES];
    //: [_retryButton setHidden:[self retryButtonHidden]];
    [_retryButton setHidden:[self formatHolder]];
    //: [_audioPlayedIcon setHidden:[self unreadHidden]];
    [_audioPlayedIcon setHidden:[self pointData]];

    //: [self refreshReadButton];
    [self counterval];

    //: if ([_bubbleView isKindOfClass:[BusySessionTextContentView class]]) {
    if ([_bubbleView isKindOfClass:[ButtonView class]]) {
        //: [self disableLongPress:YES];
        [self chancePress:YES];
    //: } else {
    } else {
        //: [self disableLongPress:NO];
        [self chancePress:NO];
    }

    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)refreshBubblesBackgroundView
- (void)stockOption
{
    //: if (self.model.message.messageType == NIMMessageTypeImage || self.model.message.messageType == NIMMessageTypeVideo) {
    if (self.model.message.messageType == NIMMessageTypeImage || self.model.message.messageType == NIMMessageTypeVideo) {
        //: _bubblesBackgroundView.hidden = YES;
        _bubblesBackgroundView.hidden = YES;
    //: }else{
    }else{
        //: _bubblesBackgroundView.hidden = ![[MyUserKit sharedKit].layoutConfig shouldDisplayBubbleBackground:self.model];
        _bubblesBackgroundView.hidden = ![[Case pastTop].layoutConfig text:self.model];
        //: if (self.model.shouldShowLeft){
        if (self.model.shouldShowLeft){
            //: _bubblesBackgroundView.backgroundColor = [UIColor colorWithHexString:@"fffBusy"];
            _bubblesBackgroundView.backgroundColor = [UIColor status:[[GangData sharedInstance] kReliabilityManagerContainerKey]];
        //: }else{
        }else{
//            _bubblesBackgroundView.backgroundColor = [UIColor colorWithRed:227/255.0 green:219/255.0 blue:250/255.0 alpha:1];

            //: _bubblesBackgroundView.backgroundColor = [UIColor colorWithHexString:@"F0E8FF"];
            _bubblesBackgroundView.backgroundColor = [UIColor status:[[GangData sharedInstance] show_aheadData]];
        }
    }
}


//: -(void)refreshReadButton{
-(void)counterval{
    //: BOOL isreade = self.model.message.isRemoteRead;
    BOOL isreade = self.model.message.isRemoteRead;
    //: BOOL showMessageRead = [[NIMUserDefaults standardUserDefaults].showMessageRead boolValue];
    BOOL showMessageRead = [[DataMaxDefaults max].showMessageRead boolValue];
    //: if (self.model.message.isOutgoingMsg && showMessageRead) {
    if (self.model.message.isOutgoingMsg && showMessageRead) {
//        if (self.model.message.isOutgoingMsg) {
        //: [_readButton setHidden:NO];
        [_readButton setHidden:NO];
        //: [_readButton setImage:[UIImage imageNamed:@"message_read_yes"] forState:UIControlStateNormal];
        [_readButton setImage:[UIImage imageNamed:[[GangData sharedInstance] app_cooperationIdent]] forState:UIControlStateNormal];

        //: if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        {
            //: if (isreade == NO) {
            if (isreade == NO) {
                //: [_readButton setImage:[UIImage imageNamed:@"message_read_no"] forState:UIControlStateNormal];
                [_readButton setImage:[UIImage imageNamed:[[GangData sharedInstance] mainPhraseData]] forState:UIControlStateNormal];//@"已读".nim_localized
            }
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
        }
        //: else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        {
            //: [_readButton setTitle:[NSString stringWithFormat:@"%zd%@",self.model.message.teamReceiptInfo.unreadCount,[BusyLanguageManager getTextWithKey:@"msg_view_4"]] forState:UIControlStateNormal];
            [_readButton setTitle:[NSString stringWithFormat:@"%zd%@",self.model.message.teamReceiptInfo.unreadCount,[SendName streetSmart:[[GangData sharedInstance] showViewMsg]]] forState:UIControlStateNormal];//人未读".nim_localized
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
            //: [_readButton layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:3];
            [_readButton reloadSession:(MKButtonEdgeInsetsStyleLeft) text:3];
            //: [_readButton setHidden:YES];
            [_readButton setHidden:YES];
        }
    //: }else{
    }else{
        //: [_readButton setHidden:YES];
        [_readButton setHidden:YES];
    }
}

//: - (void)refreshReadButton_2
- (void)button2
{
    //: BOOL hidden = [self readLabelHidden];
    BOOL hidden = [self global];
    //: [_readButton setHidden:hidden];
    [_readButton setHidden:hidden];
    //: if (!hidden)
    if (!hidden)
    {
        //: if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        if (self.model.message.session.sessionType == NIMSessionTypeP2P)
        {
            //: [_readButton setTitle:@"已读" forState:UIControlStateNormal];
            [_readButton setTitle:@"已读" forState:UIControlStateNormal];//@"已读".nim_localized
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
        }
        //: else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        else if(self.model.message.session.sessionType == NIMSessionTypeTeam)
        {
            //: [_readButton setTitle:[NSString stringWithFormat:@"%zd人未读".nim_localized,self.model.message.teamReceiptInfo.unreadCount] forState:UIControlStateNormal];
            [_readButton setTitle:[NSString stringWithFormat:[[GangData sharedInstance] dream_cellId].maxColor,self.model.message.teamReceiptInfo.unreadCount] forState:UIControlStateNormal];
            //: [_readButton sizeToFit];
            [_readButton sizeToFit];
        }
    }
}

//: - (void)addReplyedContentViewIfNotExist
- (void)videoExist
{
//    if ([self.model needShowRepliedContent])
//    {
//        if (!_replyedBubbleView)
//        {
//            id<ParentMargin> layoutConfig = [[Case sharedKit] layoutConfig];
//            NSString *contentStr = [layoutConfig replyContent:self.model];
//            NSAssert([contentStr length] > 0, @"should offer cell content class name");
//            Class clazz = NSClassFromString(contentStr);
//            TextControl *contentView =  [[clazz alloc] initSessionMessageContentView];
//            NSAssert(contentView, @"can not init content view");
//            _replyedBubbleView = contentView;
//            _replyedBubbleView.delegate = self;
//            [self.contentView insertSubview:_replyedBubbleView belowSubview:_selectButtonMask];
//        }
//        [_replyedBubbleView refresh:self.model];
//        [_replyedBubbleView setNeedsLayout];
//    }
//    else if (_replyedBubbleView)
//    {
//        [_replyedBubbleView removeFromSuperview];
//        _replyedBubbleView = nil;
//    }

    //: if ([self.model needShowRepliedContent])
    if ([self.model cryRecent])
    {
        //: if (!_replyedBubbleView)
        if (!_replyedBubbleView)
        {
            //: id<BusyCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
            id<ParentMargin> layoutConfig = [[Case pastTop] layoutConfig];
            //: NSString *contentStr = [layoutConfig replyContent:self.model];
            NSString *contentStr = [layoutConfig language:self.model];
            //: NSAssert([contentStr length] > 0, @"should offer cell content class name");
            NSAssert([contentStr length] > 0, [[GangData sharedInstance] app_resentTitle]);
            //: Class clazz = NSClassFromString(contentStr);
            Class clazz = NSClassFromString(contentStr);
            //: BusySessionMessageContentView *contentView = [[clazz alloc] initSessionMessageContentView];
            TextControl *contentView = [[clazz alloc] initColorSession];
            //: NSAssert(contentView, @"can not init content view");
            NSAssert(contentView, [[GangData sharedInstance] user_inmateMsg]);
            //: _replyedBubbleView = contentView;
            _replyedBubbleView = contentView;

            //: _replyedBubbleView.delegate = self;
            _replyedBubbleView.delegate = self;
            //: [self.contentView insertSubview:_replyedBubbleView belowSubview:_selectButtonMask];
            [self.contentView insertSubview:_replyedBubbleView belowSubview:_selectButtonMask];
        }
        //: [_replyedBubbleView refresh:self.model];
        [_replyedBubbleView messagePress:self.model];
        //: [_replyedBubbleView setNeedsLayout];
        [_replyedBubbleView setNeedsLayout];
    }
    //: else if (_replyedBubbleView)
    else if (_replyedBubbleView)
    {
        //: [_replyedBubbleView removeFromSuperview];
        [_replyedBubbleView removeFromSuperview];
        //: _replyedBubbleView = nil;
        _replyedBubbleView = nil;
    }
}

//: - (void)addContentViewIfNotExist
- (void)befog
{
    //: if (_bubbleView == nil)
    if (_bubbleView == nil)
    {
        //: id<BusyCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<ParentMargin> layoutConfig = [[Case pastTop] layoutConfig];
        //: NSString *contentStr = [layoutConfig cellContent:self.model];
        NSString *contentStr = [layoutConfig flushCell:self.model];
        //: NSAssert([contentStr length] > 0, @"should offer cell content class name");
        NSAssert([contentStr length] > 0, [[GangData sharedInstance] app_resentTitle]);
        //: Class clazz = NSClassFromString(contentStr);
        Class clazz = NSClassFromString(contentStr);
        //: BusySessionMessageContentView *contentView = [[clazz alloc] initSessionMessageContentView];
        TextControl *contentView = [[clazz alloc] initColorSession];
        //: NSAssert(contentView, @"can not init content view");
        NSAssert(contentView, [[GangData sharedInstance] user_inmateMsg]);
        //: _bubbleView = contentView;
        _bubbleView = contentView;
        //: _bubbleView.delegate = self;
        _bubbleView.delegate = self;
        //: NIMMessageType messageType = self.model.message.messageType;
        NIMMessageType messageType = self.model.message.messageType;
        //: if (messageType == NIMMessageTypeAudio) {
        if (messageType == NIMMessageTypeAudio) {
            //: ((BusySessionAudioContentView *)_bubbleView).audioUIDelegate = self;
            ((RowTingView *)_bubbleView).audioUIDelegate = self;
        }
        //: [self.contentView insertSubview:_bubbleView belowSubview:_selectButtonMask];
        [self.contentView insertSubview:_bubbleView belowSubview:_selectButtonMask];
    }

    //: [_bubbleView refresh:self.model];
    [_bubbleView messagePress:self.model];
    //: [_bubbleView setNeedsLayout];
    [_bubbleView setNeedsLayout];
}

//: - (void)addUserCustomViews
- (void)cypher
{
    //: for (UIView *view in self.customViews) {
    for (UIView *view in self.customViews) {
        //: [view removeFromSuperview];
        [view removeFromSuperview];
    }
    //: id<BusyCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<ParentMargin> layoutConfig = [[Case pastTop] layoutConfig];
    //: self.customViews = [layoutConfig customViews:self.model];
    self.customViews = [layoutConfig subViews:self.model];

    //: for (UIView *view in self.customViews) {
    for (UIView *view in self.customViews) {
        //: [self.contentView addSubview:view];
        [self.contentView addSubview:view];
    }
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [self layoutSelectButton];
    [self fastener];
    //: [self layoutAvatar];
    [self windowCircle];
    //: [self layoutNameLabel];
    [self punctuate];
    //: [self layoutReplyBubbleView];
    [self show];
    //: [self layoutBubbleView];
    [self sessionView];
    //: [self fixReplyBubbleAndBubbleLeft];
    [self tap];
    //: [self layoutBubblesBackgroundView];
    [self sendMessage];
    //: [self layoutRetryButton];
    [self clean];
    //: [self layoutAudioPlayedIcon];
    [self pin];
    //: [self layoutActivityIndicator];
    [self average];
    //: [self layoutReadButton];
    [self past];
}

//: - (void)layoutSelectButton {
- (void)fastener {
    //: BOOL needShow = [self needShowSelectButton];
    BOOL needShow = [self showMax];
    //: if (needShow) {
    if (needShow) {
        //: _selectButton.hidden = self.model.disableSelected;
        _selectButton.hidden = self.model.disableSelected;
        //: _selectButtonMask.hidden = NO;
        _selectButtonMask.hidden = NO;
        //: _selectButtonMask.userInteractionEnabled = !self.model.disableSelected;
        _selectButtonMask.userInteractionEnabled = !self.model.disableSelected;
        //: _selectButton.frame = [self selectButtonRect];
        _selectButton.frame = [self writtenAccount];
        //: _selectButtonMask.frame = self.contentView.bounds;
        _selectButtonMask.frame = self.contentView.bounds;
    //: } else {
    } else {
        //: _selectButton.hidden = YES;
        _selectButton.hidden = YES;
        //: _selectButtonMask.hidden = YES;
        _selectButtonMask.hidden = YES;
    }
}

//: - (void)layoutAvatar
- (void)windowCircle
{
    //: BOOL needShow = [self needShowAvatar];
    BOOL needShow = [self need];
    //: _headImageView.hidden = !needShow;
    _headImageView.hidden = !needShow;
    //: if (needShow) {
    if (needShow) {
        //: _headImageView.frame = [self avatarViewRect];
        _headImageView.frame = [self scaleTo];
    }
}

//: - (void)layoutNameLabel
- (void)punctuate
{
    //: if ([self needShowNickName]) {
    if ([self key]) {
        //: CGFloat otherBubbleOriginX = ![self needShowSelectButton] ? self.cellPaddingToNick.x : _selectButton.nim_right + self.cellPaddingToNick.x;
        CGFloat otherBubbleOriginX = ![self showMax] ? self.stand.x : _selectButton.nim_right + self.stand.x;
        //: CGFloat otherBubbleOriginy = self.cellPaddingToNick.y;
        CGFloat otherBubbleOriginy = self.stand.y;
        //: CGFloat otherNickNameWidth = 200.f;
        CGFloat otherNickNameWidth = 200.f;
        //: CGFloat otherNickNameHeight = 20.f;
        CGFloat otherNickNameHeight = 20.f;
        //: CGFloat cellPaddingToProtrait = self.cellPaddingToAvatar.x;
        CGFloat cellPaddingToProtrait = self.compartment.x;
        //: CGFloat avatarWidth = self.headImageView.nim_width;
        CGFloat avatarWidth = self.headImageView.nim_width;
        //: CGFloat myBubbleOriginX = self.nim_width - cellPaddingToProtrait - avatarWidth - self.cellPaddingToNick.x;
        CGFloat myBubbleOriginX = self.nim_width - cellPaddingToProtrait - avatarWidth - self.stand.x;
        //: _nameLabel.frame = self.model.shouldShowLeft ? CGRectMake(otherBubbleOriginX,otherBubbleOriginy,
        _nameLabel.frame = self.model.shouldShowLeft ? CGRectMake(otherBubbleOriginX,otherBubbleOriginy,
                                                                  //: otherNickNameWidth, otherNickNameHeight) : CGRectMake(myBubbleOriginX,otherBubbleOriginy, otherNickNameWidth,otherNickNameHeight) ;
                                                                  otherNickNameWidth, otherNickNameHeight) : CGRectMake(myBubbleOriginX,otherBubbleOriginy, otherNickNameWidth,otherNickNameHeight) ;
    }
}

//: - (void)layoutReplyBubbleView
- (void)show
{
    //: if (!_replyedBubbleView)
    if (!_replyedBubbleView)
    {
        //: return;
        return;
    }

    //: CGSize size = [self.model replyContentSize:self.nim_width];
    CGSize size = [self.model send:self.nim_width];
    //: UIEdgeInsets insets = self.model.replyContentViewInsets;
    UIEdgeInsets insets = self.model.replyContentViewInsets;
    //: size.width = size.width;
    size.width = size.width;
    //: size.height = size.height + insets.top + insets.bottom + 12;
    size.height = size.height + insets.top + insets.bottom + 12;
    //: _replyedBubbleView.nim_size = size;
    _replyedBubbleView.nim_size = size;

    //: UIEdgeInsets contentInsets = self.model.replyBubbleViewInsets;
    UIEdgeInsets contentInsets = self.model.replyBubbleViewInsets;
    //: CGFloat left = 0;
    CGFloat left = 0;
    //: CGFloat protraitRightToBubble = 15.f;
    CGFloat protraitRightToBubble = 15.f;
    //: if (!self.model.shouldShowLeft)
    if (!self.model.shouldShowLeft)
    {
        //: CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        //: left = right - CGRectGetWidth(self.replyedBubbleView.bounds);
        left = right - CGRectGetWidth(self.replyedBubbleView.bounds);
    //: } else {
    } else {
        //: if (![self needShowSelectButton]) {
        if (![self showMax]) {
            //: left = contentInsets.left;
            left = contentInsets.left;
        //: } else {
        } else {
            //: left = contentInsets.left + _selectButton.nim_right + protraitRightToBubble;
            left = contentInsets.left + _selectButton.nim_right + protraitRightToBubble;
        }
    }

    //: _replyedBubbleView.nim_left = left+5;
    _replyedBubbleView.nim_left = left+5;
    //: _replyedBubbleView.nim_top = contentInsets.top;
    _replyedBubbleView.nim_top = contentInsets.top;
}

//: - (void)layoutBubbleView
- (void)sessionView
{
    //: CGSize size = [self.model contentSize:self.nim_width];
    CGSize size = [self.model searched:self.nim_width];
    //: UIEdgeInsets insets = self.model.contentViewInsets;
    UIEdgeInsets insets = self.model.contentViewInsets;
    //: size.width = size.width + insets.left + insets.right;
    size.width = size.width + insets.left + insets.right;
    //: size.height = size.height + insets.top + insets.bottom;
    size.height = size.height + insets.top + insets.bottom;
    //: _bubbleView.nim_size = size;
    _bubbleView.nim_size = size;

    //: UIEdgeInsets contentInsets = self.model.bubbleViewInsets;
    UIEdgeInsets contentInsets = self.model.bubbleViewInsets;
    //: CGFloat left = 0;
    CGFloat left = 0;
    //: CGFloat protraitRightToBubble = 15.f;
    CGFloat protraitRightToBubble = 15.f;
    //: if (!self.model.shouldShowLeft)
    if (!self.model.shouldShowLeft)
    {
        //: CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        //: left = right - CGRectGetWidth(self.bubbleView.bounds);
        left = right - CGRectGetWidth(self.bubbleView.bounds);
    //: } else {
    } else {
        //: if (![self needShowSelectButton]) {
        if (![self showMax]) {
            //: left = contentInsets.left;
            left = contentInsets.left;
        //: } else {
        } else {
            //: left = contentInsets.left + _selectButton.nim_right + protraitRightToBubble;
            left = contentInsets.left + _selectButton.nim_right + protraitRightToBubble;
        }
    }

    //: _bubbleView.nim_left = left;
    _bubbleView.nim_left = left;
    //: if (_replyedBubbleView)
    if (_replyedBubbleView)
    {
        //: _bubbleView.nim_top = self.replyedBubbleView.nim_bottom - contentInsets.top;
        _bubbleView.nim_top = self.replyedBubbleView.nim_bottom - contentInsets.top;
    }
    //: else
    else
    {
        //: _bubbleView.nim_top = contentInsets.top;
        _bubbleView.nim_top = contentInsets.top;
    }

}

//: - (void)fixReplyBubbleAndBubbleLeft
- (void)tap
{
    //: if (!self.replyedBubbleView)
    if (!self.replyedBubbleView)
    {
        //: return;
        return;
    }

    //: CGFloat left = 0;
    CGFloat left = 0;
    //: if (!self.model.shouldShowLeft)
    if (!self.model.shouldShowLeft)
    {

        //: left = self.replyedBubbleView.nim_left < self.bubbleView.nim_left ? self.replyedBubbleView.nim_left : self.bubbleView.nim_left;
        left = self.replyedBubbleView.nim_left < self.bubbleView.nim_left ? self.replyedBubbleView.nim_left : self.bubbleView.nim_left;
    }
    //: else
    else
    {
        //: left = self.replyedBubbleView.nim_left > self.bubbleView.nim_left ? self.replyedBubbleView.nim_left : self.bubbleView.nim_left;
        left = self.replyedBubbleView.nim_left > self.bubbleView.nim_left ? self.replyedBubbleView.nim_left : self.bubbleView.nim_left;
    }

    //: self.replyedBubbleView.nim_left = left+5;
    self.replyedBubbleView.nim_left = left+5;
    //: self.bubbleView.nim_left = left;
    self.bubbleView.nim_left = left;
    //: self.bubblesBackgroundView.left = left;
    self.bubblesBackgroundView.left = left;
}

//: - (void)layoutBubblesBackgroundView
- (void)sendMessage
{
    //: CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    //: CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    //: self.bubblesBackgroundView.nim_size = CGSizeMake(width+10, height+10);
    self.bubblesBackgroundView.nim_size = CGSizeMake(width+10, height+10);
//    self.bubblesBackgroundView.nim_left = self.bubbleView.nim_left;
//    self.replyedBubbleView.left = self.bubblesBackgroundView.left;
    //: if (self.replyedBubbleView)
    if (self.replyedBubbleView)
    {
        //: self.bubblesBackgroundView.nim_top = self.replyedBubbleView.nim_top-5;
        self.bubblesBackgroundView.nim_top = self.replyedBubbleView.nim_top-5;
    }
    //: else
    else
    {
        //: self.bubblesBackgroundView.nim_top = self.bubbleView.nim_top;
        self.bubblesBackgroundView.nim_top = self.bubbleView.nim_top;
    }
}


//: - (void)layoutActivityIndicator
- (void)average
{
    //: if (_traningActivityIndicator.isAnimating) {
    if (_traningActivityIndicator.isAnimating) {
        //: CGFloat centerX = 0;
        CGFloat centerX = 0;
        //: if (!self.model.shouldShowLeft)
        if (!self.model.shouldShowLeft)
        {
            //: centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self retryButtonBubblePadding] - CGRectGetWidth(_traningActivityIndicator.bounds)/2;;
            centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self menuPadding] - CGRectGetWidth(_traningActivityIndicator.bounds)/2;;
        }
        //: else
        else
        {
            //: centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self retryButtonBubblePadding] + CGRectGetWidth(_traningActivityIndicator.bounds)/2;
            centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self menuPadding] + CGRectGetWidth(_traningActivityIndicator.bounds)/2;
        }
        //: self.traningActivityIndicator.center = CGPointMake(centerX,
        self.traningActivityIndicator.center = CGPointMake(centerX,
                                                           //: _bubblesBackgroundView.center.y);
                                                           _bubblesBackgroundView.center.y);
    }
}

//: - (void)layoutRetryButton
- (void)clean
{
    //: if (!_retryButton.isHidden) {
    if (!_retryButton.isHidden) {
        //: CGFloat centerX = 0;
        CGFloat centerX = 0;
        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self retryButtonBubblePadding] +CGRectGetWidth(_retryButton.bounds)/2;
            centerX = CGRectGetMaxX(_bubblesBackgroundView.frame) + [self menuPadding] +CGRectGetWidth(_retryButton.bounds)/2;
        }
        //: else
        else
        {
            //: centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self retryButtonBubblePadding] - CGRectGetWidth(_retryButton.bounds)/2;
            centerX = CGRectGetMinX(_bubblesBackgroundView.frame) - [self menuPadding] - CGRectGetWidth(_retryButton.bounds)/2;
        }

        //: _retryButton.center = CGPointMake(centerX, _bubblesBackgroundView.center.y);
        _retryButton.center = CGPointMake(centerX, _bubblesBackgroundView.center.y);
    }
}

//: - (void)layoutAudioPlayedIcon{
- (void)pin{
    //: if (!_audioPlayedIcon.hidden) {
    if (!_audioPlayedIcon.hidden) {
        //: CGFloat padding = [self audioPlayedIconBubblePadding];
        CGFloat padding = [self read];
        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: _audioPlayedIcon.nim_left = _bubblesBackgroundView.nim_right + padding;
            _audioPlayedIcon.nim_left = _bubblesBackgroundView.nim_right + padding;
        }
        //: else
        else
        {
            //: _audioPlayedIcon.nim_right = _bubblesBackgroundView.nim_left - padding;
            _audioPlayedIcon.nim_right = _bubblesBackgroundView.nim_left - padding;
        }
//        _audioPlayedIcon.nim_top = _bubblesBackgroundView.nim_top;
        //: _audioPlayedIcon.nim_centerY = _bubblesBackgroundView.nim_centerY;
        _audioPlayedIcon.nim_centerY = _bubblesBackgroundView.nim_centerY;
    }
}

//: - (void)layoutReadButton{
- (void)past{

    //: if (!_readButton.isHidden) {
    if (!_readButton.isHidden) {

        //: CGFloat left = _bubblesBackgroundView.nim_left;
        CGFloat left = _bubblesBackgroundView.nim_left;
        //: CGFloat bottom = _bubblesBackgroundView.nim_bottom;
        CGFloat bottom = _bubblesBackgroundView.nim_bottom;

        //: _readButton.nim_left = left - CGRectGetWidth(_readButton.bounds) - [self readButtonBubblePadding];
        _readButton.nim_left = left - CGRectGetWidth(_readButton.bounds) - [self addSessionPadding];
//        _readButton.nim_bottom = bottom;
        //: _readButton.nim_centerY = _bubblesBackgroundView.nim_centerY;
        _readButton.nim_centerY = _bubblesBackgroundView.nim_centerY;

    }
}

//: #pragma mark - NIMMessageContentViewDelegate
#pragma mark - InformationView
//: - (void)onCatchEvent:(BusyKitEvent *)event{
- (void)memberEvent:(DirectionEvent *)event{
    //: if ([self.delegate respondsToSelector:@selector(onTapCell:)]) {
    if ([self.delegate respondsToSelector:@selector(replyEnable:)]) {
        //: [self.delegate onTapCell:event];
        [self.delegate replyEnable:event];
    }
}

//: - (void)disableLongPress:(BOOL)disable {
- (void)chancePress:(BOOL)disable {
    //: _longPressGesture.enabled = !disable;
    _longPressGesture.enabled = !disable;
}

//: - (BOOL)onLongTap:(NIMMessage *)message complete:(void(^)(id data))complete; {
- (BOOL)cutGreenColor:(NIMMessage *)message infoThread:(void(^)(id data))complete; {
    //: if ([self.delegate respondsToSelector:@selector(onLongPressCell:complete:)]) {
    if ([self.delegate respondsToSelector:@selector(colour:text:)]) {
        //: return [self.delegate onLongPressCell:message complete:complete];
        return [self.delegate colour:message text:complete];
    }
    //: return NO;
    return NO;
}

//: - (BOOL)onLongTap:(NIMMessage *)message; {
- (BOOL)longLasting:(NIMMessage *)message; {
    //: if ([self.delegate respondsToSelector:@selector(onLongPressCell:)]) {
    if ([self.delegate respondsToSelector:@selector(changeCell:)]) {
        //: return [self.delegate onLongPressCell:message];
        return [self.delegate changeCell:message];
    }
    //: return NO;
    return NO;
}



//: #pragma mark - Action
#pragma mark - Action
//: - (void)onRetryMessage:(id)sender
- (void)packetAlongContainerRead:(id)sender
{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(onRetryMessage:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(packetAlongContainerRead:)]) {
        //: [self.delegate onRetryMessage:self.model.message];
        [self.delegate packetAlongContainerRead:self.model.message];
    }
}

//: - (void)longGesturePress:(UIGestureRecognizer *)gestureRecognizer
- (void)textPress:(UIGestureRecognizer *)gestureRecognizer
{
    //: if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
    if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
        //: gestureRecognizer.state == UIGestureRecognizerStateBegan) {
        gestureRecognizer.state == UIGestureRecognizerStateBegan) {
        //: if (self.delegate && [self.delegate respondsToSelector:@selector(onLongPressCell:inView:)]) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(checked:input:)]) {
            //: [self.delegate onLongPressCell:self.model.message
            [self.delegate checked:self.model.message
                                       //: inView:_bubbleView];
                                       input:_bubbleView];
        }
    }
}

//: #pragma mark - NIMPlayAudioUIDelegate
#pragma mark - GlobuleTag
//: - (void)startPlayingAudioUI
- (void)changeShape
{
    //: [self refreshData:self.model];
    [self pullSession:self.model];
}

//: - (void)retryDownloadMsg
- (void)nett
{
    //: [self onRetryMessage:nil];
    [self packetAlongContainerRead:nil];
}

//: #pragma mark - Private
#pragma mark - Private

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state
- (UIImage *)loadChat:(UIControlState)state
{

    //: BusyKitSetting *setting = [[MyUserKit sharedKit].config setting:self.model.message];
    GreenSetting *setting = [[Case pastTop].config tool:self.model.message];
    //: if (state == UIControlStateNormal)
    if (state == UIControlStateNormal)
    {
        //: return setting.normalBackgroundImage;
        return setting.normalBackgroundImage;
    }
    //: else
    else
    {
        //: return setting.highLightBackgroundImage;
        return setting.highLightBackgroundImage;
    }
}

//: - (CGRect)selectButtonRect {
- (CGRect)writtenAccount {
    //: CGSize size = _selectButton.nim_size;
    CGSize size = _selectButton.nim_size;
    //: CGRect avatarRect = [self avatarViewRect];
    CGRect avatarRect = [self scaleTo];
    //: CGFloat y = (avatarRect.size.height - size.height)/2 + avatarRect.origin.y;
    CGFloat y = (avatarRect.size.height - size.height)/2 + avatarRect.origin.y;
    //: CGFloat x = [self selectButtonPadding];
    CGFloat x = [self quickWith];
    //: return CGRectMake(x, y, size.width, size.height);
    return CGRectMake(x, y, size.width, size.height);
}

//: - (CGRect)avatarViewRect
- (CGRect)scaleTo
{
    //: CGFloat cellWidth = self.bounds.size.width;
    CGFloat cellWidth = self.bounds.size.width;
    //: CGFloat protraitImageWidth = [self avatarSize].width;
    CGFloat protraitImageWidth = [self sessionTing].width;
    //: CGFloat protraitImageHeight = [self avatarSize].height;
    CGFloat protraitImageHeight = [self sessionTing].height;
    //: CGFloat selfProtraitOriginX = 0;
    CGFloat selfProtraitOriginX = 0;

    //: if (self.model.shouldShowLeft) {
    if (self.model.shouldShowLeft) {
        //: if (![self needShowSelectButton]) {
        if (![self showMax]) {
            //: selfProtraitOriginX = self.cellPaddingToAvatar.x;
            selfProtraitOriginX = self.compartment.x;
        //: } else {
        } else {
            //: selfProtraitOriginX = self.cellPaddingToAvatar.x + _selectButton.nim_right;
            selfProtraitOriginX = self.compartment.x + _selectButton.nim_right;
        }
    //: } else {
    } else {
        //: selfProtraitOriginX = cellWidth - self.cellPaddingToAvatar.x - protraitImageWidth;
        selfProtraitOriginX = cellWidth - self.compartment.x - protraitImageWidth;
    }
    //: return CGRectMake(selfProtraitOriginX, self.cellPaddingToAvatar.y,protraitImageWidth,protraitImageHeight);
    return CGRectMake(selfProtraitOriginX, self.compartment.y,protraitImageWidth,protraitImageHeight);
}

//: - (BOOL)needShowSelectButton {
- (BOOL)showMax {
    //: return self.model.shouldShowSelect;
    return self.model.shouldShowSelect;
}

//: - (BOOL)needShowAvatar
- (BOOL)need
{
    //: return self.model.shouldShowAvatar;
    return self.model.shouldShowAvatar;
}

//: - (BOOL)needShowNickName
- (BOOL)key
{
    //: return self.model.shouldShowNickName;
    return self.model.shouldShowNickName;
}


//: - (BOOL)retryButtonHidden
- (BOOL)formatHolder
{
    //: id<BusyCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<ParentMargin> layoutConfig = [[Case pastTop] layoutConfig];
    //: BOOL disable = NO;
    BOOL disable = NO;
    //: if ([layoutConfig respondsToSelector:@selector(disableRetryButton:)])
    if ([layoutConfig respondsToSelector:@selector(tiddlerHide:)])
    {
        //: disable = [layoutConfig disableRetryButton:self.model];
        disable = [layoutConfig tiddlerHide:self.model];
    }
    //: return disable;
    return disable;
}

//: - (CGFloat)retryButtonBubblePadding {
- (CGFloat)menuPadding {
    //: BOOL isFromMe = !self.model.shouldShowLeft;
    BOOL isFromMe = !self.model.shouldShowLeft;
    //: if (self.model.message.messageType == NIMMessageTypeAudio) {
    if (self.model.message.messageType == NIMMessageTypeAudio) {
        //: return isFromMe ? 15 : 13;
        return isFromMe ? 15 : 13;
    }
    //: return isFromMe ? 8 : 10;
    return isFromMe ? 8 : 10;
}

//: - (BOOL)activityIndicatorHidden
- (BOOL)dragDown
{
    //: if (!self.model.message.isReceivedMsg)
    if (!self.model.message.isReceivedMsg)
    {
        //: return self.model.message.deliveryState != NIMMessageDeliveryStateDelivering;
        return self.model.message.deliveryState != NIMMessageDeliveryStateDelivering;
    }
    //: else
    else
    {
        //: return self.model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateDownloading;
        return self.model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateDownloading;
    }
}


//: - (BOOL)unreadHidden {
- (BOOL)pointData {
    //: if (self.model.message.messageType == NIMMessageTypeAudio)
    if (self.model.message.messageType == NIMMessageTypeAudio)
    //: { 
    { //音频
        //: BOOL disable = NO;
        BOOL disable = NO;
        //: if ([self.delegate respondsToSelector:@selector(disableAudioPlayedStatusIcon:)]) {
        if ([self.delegate respondsToSelector:@selector(streetwiseRemote:)]) {
            //: disable = [self.delegate disableAudioPlayedStatusIcon:self.model.message];
            disable = [self.delegate streetwiseRemote:self.model.message];
        }

        //BOOL hideIcon = self.model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateDownloaded || disable;

        //: return (disable || self.model.message.isOutgoingMsg || [self.model.message isPlayed]);
        return (disable || self.model.message.isOutgoingMsg || [self.model.message isPlayed]);
    }
    //: return YES;
    return YES;
}

//: - (BOOL)readLabelHidden
- (BOOL)global
{
    //: if (self.model.shouldShowReadLabel &&
    if (self.model.shouldShowReadLabel &&
        //: [self activityIndicatorHidden] &&
        [self dragDown] &&
        //: [self retryButtonHidden] &&
        [self formatHolder] &&
        //: [self unreadHidden] &&
        [self pointData] &&
        //: [[NIMUserDefaults standardUserDefaults].showMessageRead boolValue])
        [[DataMaxDefaults max].showMessageRead boolValue])
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}


//: - (CGFloat)audioPlayedIconBubblePadding{
- (CGFloat)read{
    //: return 10.0;
    return 10.0;
}

//: - (CGFloat)readButtonBubblePadding{
- (CGFloat)addSessionPadding{
    //: return 2.0;
    return 2.0;
}

//: - (CGFloat)selectButtonPadding{
- (CGFloat)quickWith{
    //: return 8.0;
    return 8.0;
}

//: - (CGPoint)cellPaddingToAvatar
- (CGPoint)compartment
{
    //: return self.model.avatarMargin;
    return self.model.avatarMargin;
}

//: - (CGPoint)cellPaddingToNick
- (CGPoint)stand
{
    //: return self.model.nickNameMargin;
    return self.model.nickNameMargin;
}

//: - (CGSize)avatarSize {
- (CGSize)sessionTing {
    //: return self.model.avatarSize;
    return self.model.avatarSize;
}

//: - (void)onTapAvatar:(id)sender{
- (void)todayses:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onTapAvatar:)])
    if ([self.delegate respondsToSelector:@selector(todayses:)])
    {
        //: [self.delegate onTapAvatar:self.model.message];
        [self.delegate todayses:self.model.message];
    }
}

//: - (void)onLongPressAvatar:(UIGestureRecognizer *)gestureRecognizer
- (void)instancing:(UIGestureRecognizer *)gestureRecognizer
{
    //: if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
    if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]] &&
        //: gestureRecognizer.state == UIGestureRecognizerStateBegan)
        gestureRecognizer.state == UIGestureRecognizerStateBegan)
    {
        //: if ([self.delegate respondsToSelector:@selector(onLongPressAvatar:)])
        if ([self.delegate respondsToSelector:@selector(instancing:)])
        {
            //: [self.delegate onLongPressAvatar:self.model.message];
            [self.delegate instancing:self.model.message];
        }
    }
}

//: - (void)onPressReadButton:(id)sender
- (void)alonged:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onPressReadLabel:)])
    if ([self.delegate respondsToSelector:@selector(keying:)])
    {
        //: [self.delegate onPressReadLabel:self.model.message];
        [self.delegate keying:self.model.message];
    }
}

//: - (void)onTapSelectedButton:(id)sender
- (void)postWithLanguage:(id)sender
{
    //: _selectButton.selected = !_selectButton.selected;
    _selectButton.selected = !_selectButton.selected;
    //: self.model.selected = _selectButton.selected;
    self.model.selected = _selectButton.selected;
    //: if ([self.delegate respondsToSelector:@selector(onSelectedMessage:message:)]) {
    if ([self.delegate respondsToSelector:@selector(along:quick:)]) {
        //: [self.delegate onSelectedMessage:self.model.selected message:self.model.message];
        [self.delegate along:self.model.selected quick:self.model.message];
    }
}


//: @end
@end
