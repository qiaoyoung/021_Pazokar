
#import <Foundation/Foundation.h>

@interface InkKillerData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation InkKillerData

+ (instancetype)sharedInstance {
    static InkKillerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)InkKillerDataToData:(NSString *)value {
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

- (Byte *)InkKillerDataToCache:(Byte *)data {
    int complyTextPoem = data[0];
    Byte managerChapter = data[1];
    int dislikeLiterally = data[2];
    for (int i = dislikeLiterally; i < dislikeLiterally + complyTextPoem; i++) {
        int value = data[i] - managerChapter;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[dislikeLiterally + complyTextPoem] = 0;
    return data + dislikeLiterally;
}

- (NSString *)StringFromInkKillerData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self InkKillerDataToCache:data]];
}

//: warm_prompt
- (NSString *)main_killerData {
    /* static */ NSString *main_killerData = nil;
    if (!main_killerData) {
		NSString *origin = @"0b5b0926e83810f4ecd2bccdc8bacbcdcac8cbcf44";
		NSData *data = [InkKillerData InkKillerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_killerData = [self StringFromInkKillerData:value];
    }
    return main_killerData;
}

//: default
- (NSString *)mFullKey {
    /* static */ NSString *mFullKey = nil;
    if (!mFullKey) {
		NSString *origin = @"075d0b17e017f0be763767c1c2c3bed2c9d1d8";
		NSData *data = [InkKillerData InkKillerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mFullKey = [self StringFromInkKillerData:value];
    }
    return mFullKey;
}

//: contact_tag_fragment_cancel
- (NSString *)kSituationData {
    /* static */ NSString *kSituationData = nil;
    if (!kSituationData) {
		NSString *origin = @"1b05084c5ae02e67687473796668796479666c646b77666c726a737964686673686a7141";
		NSData *data = [InkKillerData InkKillerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kSituationData = [self StringFromInkKillerData:value];
    }
    return kSituationData;
}

//: tag_activity_set
- (NSString *)appBeliefPath {
    /* static */ NSString *appBeliefPath = nil;
    if (!appBeliefPath) {
		NSString *origin = @"10150dc7d65503af329254ca3f89767c747678897e8b7e898e74887a89fa";
		NSData *data = [InkKillerData InkKillerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appBeliefPath = [self StringFromInkKillerData:value];
    }
    return appBeliefPath;
}

//: #fffBusy
- (NSString *)noti_guitarData {
    /* static */ NSString *noti_guitarData = nil;
    if (!noti_guitarData) {
		NSString *origin = @"07200343868686868686ae";
		NSData *data = [InkKillerData InkKillerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_guitarData = [self StringFromInkKillerData:value];
    }
    return noti_guitarData;
}

//: setting_privacy
- (NSString *)show_nameFromMsg {
    /* static */ NSString *show_nameFromMsg = nil;
    if (!show_nameFromMsg) {
		NSString *origin = @"0f470973a2cd7ca08cbaacbbbbb0b5aea6b7b9b0bda8aac0d1";
		NSData *data = [InkKillerData InkKillerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_nameFromMsg = [self StringFromInkKillerData:value];
    }
    return show_nameFromMsg;
}

//: message_please_enter_content
- (NSString *)appQuantityUrl {
    /* static */ NSString *appQuantityUrl = nil;
    if (!appQuantityUrl) {
		NSString *origin = @"1c1605f563837b8989777d7b7586827b77897b757b848a7b88757985848a7b848a90";
		NSData *data = [InkKillerData InkKillerDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appQuantityUrl = [self StringFromInkKillerData:value];
    }
    return appQuantityUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  StateView.m
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyInputView.h"
#import "StateView.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "BusyInputMoreContainerView.h"
#import "AppView.h"
//: #import "BusyInputEmoticonContainerView.h"
#import "EastWestDirectionView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "BusyInputEmoticonDefine.h"
#import "BusyInputEmoticonDefine.h"
//: #import "BusyInputEmoticonManager.h"
#import "DeviceManager.h"
//: #import "BusyInputToolBar.h"
#import "ComplimentView.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "BusyGlobalMacro.h"
#import "BusyGlobalMacro.h"
//: #import "BusyContactSelectViewController.h"
#import "BrandViewController.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "BusyKitInfoFetchOption.h"
#import "InfoGreenImage.h"
//: #import "BusyKitKeyboardInfo.h"
#import "AffairWith.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Case.h"
//: #import "BusyReplyContentView.h"
#import "NoticeTagView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "CypherScrollView+Case.h"
//: #import <YYText.h>
#import <YYText.h>
//: #import "BusyTextHighlight.h"
#import "MediaNameContentHighlight.h"
//: #import "PhotoContainerView.h"
#import "PhotoView.h"

//: @interface BusyInputView()<BusyInputToolBarDelegate,NIMInputEmoticonProtocol,NIMContactSelectDelegate,BusyReplyContentViewDelegate,moreCustomPickerViewDelegate>
@interface StateView()<FormatMoreDelegate,LengthPoint,NoticeBar,IndexMy,moreCustomPickerViewDelegate>
{
    //: UIView *_emoticonView;
    UIView *_emoticonView;
}


//: @property (nonatomic, assign) NIMAudioRecordPhase recordPhase;
@property (nonatomic, assign) NIMAudioRecordPhase recordPhase;
//: @property (nonatomic, weak) id<BusySessionConfig> inputConfig;
@property (nonatomic, weak) id<QuantityelligenceInformationCan> inputConfig;
//: @property (nonatomic, weak) id<NIMInputDelegate> inputDelegate;
@property (nonatomic, weak) id<JointBubble> inputDelegate;
//: @property (nonatomic, weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic, weak) id<FuturismDelegate> actionDelegate;

//: @property (nonatomic, assign) CGFloat keyBoardFrameTop; 
@property (nonatomic, assign) CGFloat keyBoardFrameTop; //键盘的frame的top值，屏幕高度 - 键盘高度，由于有旋转的可能，这个值只有当 键盘弹出时才有意义。

//: @property (nonatomic, strong) NSArray *selectedPhoto;
@property (nonatomic, strong) NSArray *selectedPhoto;


//: @end
@end


//: @implementation BusyInputView
@implementation StateView

//: @synthesize emoticonContainer = _emoticonContainer;
@synthesize emoticonContainer = _emoticonContainer;
//: @synthesize moreContainer = _moreContainer;
@synthesize moreContainer = _moreContainer;

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithSumFrame:(CGRect)frame
                       //: config:(id<BusySessionConfig>)config
                       monthSessionConfig:(id<QuantityelligenceInformationCan>)config
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: _recording = NO;
        _recording = NO;
        //: _recordPhase = AudioRecordPhaseEnd;
        _recordPhase = AudioRecordPhaseEnd;
        //: _atCache = [[BusyInputAtCache alloc] init];
        _atCache = [[VersionPointCache alloc] init];
        //: _inputConfig = config;
        _inputConfig = config;
        //: self.backgroundColor = [UIColor colorWithHexString:@"#fffBusy"];
        self.backgroundColor = [UIColor status:[[InkKillerData sharedInstance] noti_guitarData]];
        //: self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: self.layer.shadowOffset = CGSizeMake(0,-4);
        self.layer.shadowOffset = CGSizeMake(0,-4);
        //: self.layer.shadowOpacity = 1;
        self.layer.shadowOpacity = 1;
        //: self.layer.shadowRadius = 16;
        self.layer.shadowRadius = 16;
    }
    //: return self;
    return self;
}

//: - (void)didMoveToWindow
- (void)didMoveToWindow
{
    //: [self setup];
    [self text];
}

//: - (CGSize)sizeThatFits:(CGSize)size
- (CGSize)sizeThatFits:(CGSize)size
{
    //这里不做.语法 get 操作，会提前初始化组件导致卡顿
    //: CGFloat replyedContentHeight = _replyedContent.hidden ? 0 : _replyedContent.nim_height;
    CGFloat replyedContentHeight = _replyedContent.hidden ? 0 : _replyedContent.nim_height;
    //: CGFloat toolBarHeight = _toolBar.nim_height;
    CGFloat toolBarHeight = _toolBar.nim_height;
    //: CGFloat containerHeight = 0;
    CGFloat containerHeight = 0;
    //: switch (self.status)
    switch (self.status)
    {
        //: case NIMInputStatusEmoticon:
        case NIMInputStatusEmoticon:
        {
            //: containerHeight = _emoticonContainer.nim_height;
            containerHeight = _emoticonContainer.nim_height;
            //: break;
            break;
        }
        //: case NIMInputStatusMore:
        case NIMInputStatusMore:
        {
            //: containerHeight = _moreContainer.nim_height;
            containerHeight = _moreContainer.nim_height;
            //: break;
            break;
        }
        //: default:
        default:
        {
            //: UIEdgeInsets safeArea = self.superview.safeAreaInsets;
            UIEdgeInsets safeArea = self.superview.safeAreaInsets;
            //键盘是从最底下弹起的，需要减去安全区域底部的高度
            //: CGFloat keyboardDelta = [BusyKitKeyboardInfo instance].keyboardHeight - safeArea.bottom;
            CGFloat keyboardDelta = [AffairWith liquidEcstasyInstance].keyboardHeight - safeArea.bottom;

            //如果键盘还没有安全区域高，容器的初始值为0；否则则为键盘和安全区域的高度差值，这样可以保证 toolBar 始终在键盘上面
            //: containerHeight = keyboardDelta>0 ? keyboardDelta : 0;
            containerHeight = keyboardDelta>0 ? keyboardDelta : 0;

        }
            //: break;
            break;
    }
    //: CGFloat height = replyedContentHeight + toolBarHeight + containerHeight + (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom);
    CGFloat height = replyedContentHeight + toolBarHeight + containerHeight + (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom);
    //: CGFloat width = self.superview? self.superview.nim_width : self.nim_width;
    CGFloat width = self.superview? self.superview.nim_width : self.nim_width;
    //: return CGSizeMake(width, height);
    return CGSizeMake(width, height);
}


//: - (void)setInputDelegate:(id<NIMInputDelegate>)delegate
- (void)setInputDelegate:(id<JointBubble>)delegate
{
    //: _inputDelegate = delegate;
    _inputDelegate = delegate;
}

//: - (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate
- (void)setGrayDelegate:(id<FuturismDelegate>)actionDelegate
{
    //: _actionDelegate = actionDelegate;
    _actionDelegate = actionDelegate;
}

//: - (void)reset
- (void)messageClose
{
    //: self.nim_width = self.superview.nim_width;
    self.nim_width = self.superview.nim_width;
    //: [self refreshStatus:NIMInputStatusText];
    [self shoot:NIMInputStatusText];
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)refreshStatus:(NIMInputStatus)status
- (void)shoot:(NIMInputStatus)status
{
    //: self.status = status;
    self.status = status;
    //: [self.toolBar update:status];
    [self.toolBar fileAllocationTable:status];
    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.2 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.2 * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: self.moreContainer.hidden = status != NIMInputStatusMore;
        self.moreContainer.hidden = status != NIMInputStatusMore;
        //: self.emoticonContainer.hidden = status != NIMInputStatusEmoticon;
        self.emoticonContainer.hidden = status != NIMInputStatusEmoticon;
    //: });
    });
}

//: - (void)setup
- (void)text
{
    //: if (!_toolBar)
    if (!_toolBar)
    {
        //: _toolBar = [[BusyInputToolBar alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 0)];
        _toolBar = [[ComplimentView alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 0)];
    }
    //: [self addSubview:_toolBar];
    [self addSubview:_toolBar];
    //设置placeholder
//        NSString *placeholder = [Case sharedKit].config.placeholder;
//        [_toolBar setPlaceHolder:placeholder];
    //: [_toolBar setPlaceHolder:[BusyLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [_toolBar setCompartmentHolder:[SendName streetSmart:[[InkKillerData sharedInstance] appQuantityUrl]]];
    //设置input bar 上的按钮
    //: if ([_inputConfig respondsToSelector:@selector(inputBarItemTypes)]) {
    if ([_inputConfig respondsToSelector:@selector(curContainer)]) {
        //: NSArray *types = [_inputConfig inputBarItemTypes];
        NSArray *types = [_inputConfig curContainer];
        //: [_toolBar setInputBarItemTypes:types];
        [_toolBar setInputBarItemTypes:types];
    }

    //: _toolBar.delegate = self;
    _toolBar.delegate = self;
    //: [_toolBar.emoticonBtn addTarget:self action:@selector(onTouchEmoticonBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.emoticonBtn addTarget:self action:@selector(noneDate:) forControlEvents:UIControlEventTouchUpInside];
//    [_toolBar.emoticonBtn2 addTarget:self action:@selector(onTouchEmoticonBtn:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.albunBtn addTarget:self action:@selector(requestAuthorizationForPhotoLibrary) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.albunBtn addTarget:self action:@selector(radiogramMessage) forControlEvents:UIControlEventTouchUpInside];
//    [_toolBar.cameraBtn addTarget:self action:@selector(onTouchCameraBtn:) forControlEvents:UIControlEventTouchUpInside];
    //    [_toolBar.moreMediaBtn addTarget:self action:@selector(onTouchMoreBtn:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.voiceButton addTarget:self action:@selector(onTouchVoiceBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.voiceButton addTarget:self action:@selector(voiceBtn:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.sendButton addTarget:self action:@selector(onTouchSendBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.sendButton addTarget:self action:@selector(kited:) forControlEvents:UIControlEventTouchUpInside];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnDown:) forControlEvents:UIControlEventTouchDown];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnDragInside:) forControlEvents:UIControlEventTouchDragInside];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnDragOutside:) forControlEvents:UIControlEventTouchDragOutside];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnUpInside:) forControlEvents:UIControlEventTouchUpInside];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
    //: _toolBar.nim_size = [_toolBar sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
    _toolBar.nim_size = [_toolBar sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
    //: _toolBar.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    _toolBar.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    //    [_toolBar.recordButton setTitle:@"按住说话".nim_localized forState:UIControlStateNormal];
    //    [_toolBar.recordButton setHidden:YES];

    //设置最大输入字数
    //: NSInteger textInputLength = [MyUserKit sharedKit].config.inputMaxLength;
    NSInteger textInputLength = [Case pastTop].config.inputMaxLength;
    //: self.maxTextLength = textInputLength;
    self.maxTextLength = textInputLength;

    //: [self refreshStatus:NIMInputStatusText];
    [self shoot:NIMInputStatusText];
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)PickerDidSelectAssets:(NSArray<PHAsset *> *)assets
- (void)sizeAssets:(NSArray<PHAsset *> *)assets
{
    //: self.selectedPhoto = assets;
    self.selectedPhoto = assets;
    //: if (self.selectedPhoto.count > 0) {
    if (self.selectedPhoto.count > 0) {
        //: self.toolBar.sendButton.hidden = NO;
        self.toolBar.sendButton.hidden = NO;
//        self.toolBar.emoticonBtn.hidden = YES;
        //: self.toolBar.albunBtn.hidden = YES;
        self.toolBar.albunBtn.hidden = YES;
    //: }else{
    }else{
        //: self.toolBar.sendButton.hidden = YES;
        self.toolBar.sendButton.hidden = YES;
//        self.toolBar.emoticonBtn.hidden = NO;
        //: self.toolBar.albunBtn.hidden = NO;
        self.toolBar.albunBtn.hidden = NO;
    }
}

//: - (void)checkMoreContainer
- (void)sub
{
    //: if (!_moreContainer) {
    if (!_moreContainer) {
        //: _moreContainer = [[BusyInputMoreContainerView alloc] initWithFrame:CGRectZero];
        _moreContainer = [[AppView alloc] initWithFrame:CGRectZero];
        //: _moreContainer.nim_size = [_moreContainer sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        _moreContainer.nim_size = [_moreContainer sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        //: _moreContainer.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _moreContainer.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _moreContainer.hidden = YES;
        _moreContainer.hidden = YES;
        //: _moreContainer.config = _inputConfig;
        _moreContainer.config = _inputConfig;
        //: _moreContainer.actionDelegate = self.actionDelegate;
        _moreContainer.actionDelegate = self.actionDelegate;
        //: _moreContainer.delegate = self;
        _moreContainer.delegate = self;
//        _moreContainer = moreContainer;
    }

    //可能是外部主动设置进来的，统一放在这里添加 subview
    //: if (!_moreContainer.superview)
    if (!_moreContainer.superview)
    {
        //: [self addSubview:_moreContainer];
        [self addSubview:_moreContainer];
    }
}

//: - (void)checkPhotoContainer
- (void)praise
{

}

//: - (void)setMoreContainer:(UIView *)moreContainer
- (void)setMoreContainer:(UIView *)moreContainer
{
//    _moreContainer = moreContainer;
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)checkEmoticonContainer
- (void)watchFrameGlass
{
    //: if (!_emoticonContainer) {
    if (!_emoticonContainer) {
        //: BusyInputEmoticonContainerView *emoticonContainer = [[BusyInputEmoticonContainerView alloc] initWithFrame:CGRectZero];
        EastWestDirectionView *emoticonContainer = [[EastWestDirectionView alloc] initWithFrame:CGRectZero];

        //: emoticonContainer.nim_size = [emoticonContainer sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        emoticonContainer.nim_size = [emoticonContainer sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        //: emoticonContainer.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        emoticonContainer.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: emoticonContainer.delegate = self;
        emoticonContainer.delegate = self;
        //: emoticonContainer.hidden = YES;
        emoticonContainer.hidden = YES;
        //: emoticonContainer.config = _inputConfig;
        emoticonContainer.config = _inputConfig;

        //: _emoticonContainer = emoticonContainer;
        _emoticonContainer = emoticonContainer;
    }

    //可能是外部主动设置进来的，统一放在这里添加 subview
    //: if (!_emoticonContainer.superview)
    if (!_emoticonContainer.superview)
    {
        //: [self addSubview:_emoticonContainer];
        [self addSubview:_emoticonContainer];
    }
}

//: - (void)setEmoticonContainer:(UIView *)emoticonContainer
- (void)setEmoticonContainer:(UIView *)emoticonContainer
{
    //: _emoticonContainer = emoticonContainer;
    _emoticonContainer = emoticonContainer;
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)onTouchSendBtn:(id)sender{
- (void)kited:(id)sender{
    //: [self didPressSend:nil];
    [self someName:nil];
}


//- (void)setRecording:(BOOL)recording
//{
//    if(recording)
//    {
//        self.audioRecordIndicator.center = self.superview.center;
//        [self.superview addSubview:self.audioRecordIndicator];
//        self.recordPhase = AudioRecordPhaseRecording;
//    }
//    else
//    {
//        [self.audioRecordIndicator removeFromSuperview];
//        self.recordPhase = AudioRecordPhaseEnd;
//    }
//    _recording = recording;
//}

//: #pragma mark - 外部接口
#pragma mark - 外部接口
//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder
- (void)setDocket:(NSString*)placeHolder
{
    //: [_toolBar setPlaceHolder:placeHolder];
    [_toolBar setCompartmentHolder:placeHolder];
}

//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder color:(UIColor *)placeholderColor
- (void)event:(NSString*)placeHolder findTitle:(UIColor *)placeholderColor
{
    //: [_toolBar setPlaceHolder:placeHolder color:placeholderColor];
    [_toolBar title:placeHolder voice:placeholderColor];
}

//: - (void)updateAudioRecordTime:(NSTimeInterval)time {
- (void)title:(NSTimeInterval)time {

}

//: - (void)updateVoicePower:(float)power {
- (void)fitPicture:(float)power {

}

//: - (void)refreshReplyedContent:(NIMMessage *)message
- (void)compartmentName:(NIMMessage *)message
{
    //: NSString *text = [NSString stringWithFormat:@"%@", [[MyUserKit sharedKit] replyedContentWithMessage:message]];
    NSString *text = [NSString stringWithFormat:@"%@", [[Case pastTop] nameForward:message]];

    //: BusyKitInfoFetchOption *option = [[BusyKitInfoFetchOption alloc] init];
    InfoGreenImage *option = [[InfoGreenImage alloc] init];
    //: option.message = message;
    option.message = message;
    //: BusyKitInfo *info = [[MyUserKit sharedKit] infoByUser:message.from option:option];
    Info *info = [[Case pastTop] consumer:message.from message:option];
    //: self.replyedContent.fromUser.text = [NSString stringWithFormat:@"%@%@",[BusyLanguageManager getTextWithKey:@"回复"],info.showName];
    self.replyedContent.fromUser.text = [NSString stringWithFormat:@"%@%@",[SendName streetSmart:@"回复"],info.showName];
    //: self.replyedContent.label.text = text;
    self.replyedContent.label.text = text;
//    [self.replyedContent.label nim_setText:text];
    //: self.replyedContent.replymessage = message;
    self.replyedContent.replymessage = message;

    //: if(message.messageType == NIMMessageTypeImage){
    if(message.messageType == NIMMessageTypeImage){

        //: NIMImageObject *imageObject = (NIMImageObject*)message.messageObject;
        NIMImageObject *imageObject = (NIMImageObject*)message.messageObject;
        //: NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];

        //: self.replyedContent.picView.hidden = NO;
        self.replyedContent.picView.hidden = NO;
        //: [self.replyedContent.picView sd_setImageWithURL:[NSURL URLWithString:url]];
        [self.replyedContent.picView sd_setImageWithURL:[NSURL URLWithString:url]];
        //: self.replyedContent.fromUser.left = self.replyedContent.picView.right+10;
        self.replyedContent.fromUser.left = self.replyedContent.picView.right+10;
        //: self.replyedContent.label.left = self.replyedContent.picView.right+10;
        self.replyedContent.label.left = self.replyedContent.picView.right+10;
    //: }else{
    }else{
        //: self.replyedContent.picView.hidden = YES;
        self.replyedContent.picView.hidden = YES;
        //: self.replyedContent.fromUser.left = 15;
        self.replyedContent.fromUser.left = 15;
        //: self.replyedContent.label.left = 15;
        self.replyedContent.label.left = 15;
    }

    //: self.replyedContent.hidden = NO;
    self.replyedContent.hidden = NO;
    //: [self.replyedContent setNeedsLayout];
    [self.replyedContent setNeedsLayout];
}

//: - (void)dismissReplyedContent
- (void)gatefoldName
{
    //: self.replyedContent.label.text = nil;
    self.replyedContent.label.text = nil;
    //: self.replyedContent.hidden = YES;
    self.replyedContent.hidden = YES;
    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: #pragma mark - private methods
#pragma mark - private methods

//: - (void)setFrame:(CGRect)frame
- (void)setFrame:(CGRect)frame
{
    //: CGFloat height = self.frame.size.height;
    CGFloat height = self.frame.size.height;
    //: [super setFrame:frame];
    [super setFrame:frame];
    //: if (frame.size.height != height)
    if (frame.size.height != height)
    {
        //: [self callDidChangeHeight];
        [self show];
    }
}

//: - (void)callDidChangeHeight
- (void)show
{
    //: if (_inputDelegate && [_inputDelegate respondsToSelector:@selector(didChangeInputHeight:)])
    if (_inputDelegate && [_inputDelegate respondsToSelector:@selector(disabled:)])
    {
        //: if (self.status == NIMInputStatusMore || self.status == NIMInputStatusEmoticon || self.status == NIMInputStatusAudio)
        if (self.status == NIMInputStatusMore || self.status == NIMInputStatusEmoticon || self.status == NIMInputStatusAudio)
        {
            //这个时候需要一个动画来模拟键盘
            //: [UIView animateWithDuration:0.25 delay:0 options:7 animations:^{
            [UIView animateWithDuration:0.25 delay:0 options:7 animations:^{
                //: [_inputDelegate didChangeInputHeight:self.nim_height];
                [_inputDelegate disabled:self.nim_height];
            //: } completion:nil];
            } completion:nil];
        }
        //: else
        else
        {
            //: [_inputDelegate didChangeInputHeight:self.nim_height];
            [_inputDelegate disabled:self.nim_height];

        }
    }
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //这里不做.语法 get 操作，会提前初始化组件导致卡顿
    //: if (!_replyedContent.hidden)
    if (!_replyedContent.hidden)
    {
        //: self.toolBar.nim_top = _replyedContent.nim_bottom;
        self.toolBar.nim_top = _replyedContent.nim_bottom;
    }
    //: else
    else
    {
        //: self.toolBar.nim_top = 0.f;
        self.toolBar.nim_top = 0.f;
    }

    //: if (self.status == NIMInputStatusMore) {
    if (self.status == NIMInputStatusMore) {
        //: _moreContainer.nim_top = 0.f;
        _moreContainer.nim_top = 0.f;
        //: self.toolBar.nim_top = self.moreContainer.nim_bottom;
        self.toolBar.nim_top = self.moreContainer.nim_bottom;
        //: _emoticonContainer.nim_top = self.toolBar.nim_bottom;
        _emoticonContainer.nim_top = self.toolBar.nim_bottom;
    //: }else{
    }else{
        //: _moreContainer.nim_top = self.toolBar.nim_bottom;
        _moreContainer.nim_top = self.toolBar.nim_bottom;
        //: _emoticonContainer.nim_top = self.toolBar.nim_bottom;
        _emoticonContainer.nim_top = self.toolBar.nim_bottom;
    }
//    _moreContainer.nim_top     = self.toolBar.nim_bottom;
//    _emoticonContainer.nim_top = self.toolBar.nim_bottom;
}

//: - (BusyReplyContentView *)replyedContent
- (NoticeTagView *)replyedContent
{
    //: if (!_replyedContent)
    if (!_replyedContent)
    {
        //: _replyedContent = [[BusyReplyContentView alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 50)];
        _replyedContent = [[NoticeTagView alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 50)];
        //: _replyedContent.hidden = YES;
        _replyedContent.hidden = YES;
        //: _replyedContent.delegate = self;
        _replyedContent.delegate = self;
        //: [self addSubview:_replyedContent];
        [self addSubview:_replyedContent];
    }
    //: return _replyedContent;
    return _replyedContent;
}

//: - (void)setStatus:(NIMInputStatus)status
- (void)setStatus:(NIMInputStatus)status
{
    //: if (_status != status)
    if (_status != status)
    {
        //: _status = status;
        _status = status;
        //: switch (_status) {
        switch (_status) {
            //: case NIMInputStatusEmoticon:
            case NIMInputStatusEmoticon:
                //: [self checkEmoticonContainer];
                [self watchFrameGlass];
                //: break;
                break;
            //: case NIMInputStatusMore:
            case NIMInputStatusMore:
                //: [self checkMoreContainer];
                [self sub];
            //: default:
            default:
                //: break;
                break;
        }
    }
}


//: #pragma mark - button actions
#pragma mark - button actions
//: - (void)onTouchAlbunBtn:(id)sender {
- (void)palpateChange:(id)sender {

    //: if ([self.actionDelegate respondsToSelector:@selector(onTapAlbunBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(bies:)]) {
        //: [self.actionDelegate onTapAlbunBtn:sender];
        [self.actionDelegate bies:sender];
    }
}
//: - (void)onTouchCameraBtn {
- (void)cellPin {

    //: if ([self.actionDelegate respondsToSelector:@selector(onTapCameraBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(totalerchangeBtn:)]) {
        //: [self.actionDelegate onTapCameraBtn:nil];
        [self.actionDelegate totalerchangeBtn:nil];
    }

}

//: - (void)onTouchVoiceBtn:(id)sender {
- (void)voiceBtn:(id)sender {

    //: if ([self.actionDelegate respondsToSelector:@selector(onTapAudioBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(viewwed:)]) {
        //: [self.actionDelegate onTapAudioBtn:sender];
        [self.actionDelegate viewwed:sender];
    }
}

//: - (IBAction)onTouchRecordBtnDown:(id)sender {
- (IBAction)changed:(id)sender {
    //: self.recordPhase = AudioRecordPhaseStart;
    self.recordPhase = AudioRecordPhaseStart;
}
//: - (IBAction)onTouchRecordBtnUpInside:(id)sender {
- (IBAction)mied:(id)sender {
    // finish Recording
    //: self.recordPhase = AudioRecordPhaseEnd;
    self.recordPhase = AudioRecordPhaseEnd;
}
//: - (IBAction)onTouchRecordBtnUpOutside:(id)sender {
- (IBAction)tutorials:(id)sender {
    // cancel Recording
    //: self.recordPhase = AudioRecordPhaseEnd;
    self.recordPhase = AudioRecordPhaseEnd;
}

//: - (IBAction)onTouchRecordBtnDragInside:(id)sender {
- (IBAction)starting:(id)sender {
    // "手指上滑，取消发送"
    //: self.recordPhase = AudioRecordPhaseRecording;
    self.recordPhase = AudioRecordPhaseRecording;
}
//: - (IBAction)onTouchRecordBtnDragOutside:(id)sender {
- (IBAction)exhibitName:(id)sender {
    // "松开手指，取消发送"
    //: self.recordPhase = AudioRecordPhaseCancelling;
    self.recordPhase = AudioRecordPhaseCancelling;
}


//: - (void)onTouchEmoticonBtn:(id)sender
- (void)noneDate:(id)sender
{
    //: if (self.status != NIMInputStatusEmoticon) {
    if (self.status != NIMInputStatusEmoticon) {
        //: if ([self.actionDelegate respondsToSelector:@selector(onTapEmoticonBtn:)]) {
        if ([self.actionDelegate respondsToSelector:@selector(tabs:)]) {
            //: [self.actionDelegate onTapEmoticonBtn:sender];
            [self.actionDelegate tabs:sender];
        }
        //: [self checkEmoticonContainer];
        [self watchFrameGlass];
        //: [self bringSubviewToFront:self.emoticonContainer];
        [self bringSubviewToFront:self.emoticonContainer];
        //: [self.emoticonContainer setHidden:NO];
        [self.emoticonContainer setHidden:NO];
        //: [self.moreContainer setHidden:YES];
        [self.moreContainer setHidden:YES];
        //: [self refreshStatus:NIMInputStatusEmoticon];
        [self shoot:NIMInputStatusEmoticon];
        //: [self sizeToFit];
        [self sizeToFit];

        //: if (self.toolBar.showsKeyboard)
        if (self.toolBar.showsKeyboard)
        {
            //: self.toolBar.showsKeyboard = NO;
            self.toolBar.showsKeyboard = NO;
        }

    }
    //: else
    else
    {
        //: [self refreshStatus:NIMInputStatusText];
        [self shoot:NIMInputStatusText];
        //: self.toolBar.showsKeyboard = YES;
        self.toolBar.showsKeyboard = YES;
    }
}

//: - (void)onTouchMoreBtn {
- (void)black {
    //: if (self.status != NIMInputStatusMore)
    if (self.status != NIMInputStatusMore)
    {
//        if ([self.actionDelegate respondsToSelector:@selector(onTapMoreBtn:)]) {
//            [self.actionDelegate onTapMoreBtn:sender];
//        }
        //: [self checkMoreContainer];
        [self sub];
        //: [self bringSubviewToFront:self.moreContainer];
        [self bringSubviewToFront:self.moreContainer];
        //: [self.moreContainer.albumPickerView reloadMediaData];
        [self.moreContainer.albumPickerView insertPath];
        //: [self.moreContainer.albumPickerView.selectedAssets removeAllObjects];
        [self.moreContainer.albumPickerView.selectedAssets removeAllObjects];
        //: [self.moreContainer.albumPickerView.collectionView reloadData];
        [self.moreContainer.albumPickerView.collectionView reloadData];
        //: [self.moreContainer setHidden:NO];
        [self.moreContainer setHidden:NO];
        //: [self.emoticonContainer setHidden:YES];
        [self.emoticonContainer setHidden:YES];
        //: [self refreshStatus:NIMInputStatusMore];
        [self shoot:NIMInputStatusMore];
        //: [self sizeToFit];
        [self sizeToFit];

        //: if (self.toolBar.showsKeyboard)
        if (self.toolBar.showsKeyboard)
        {
            //: self.toolBar.showsKeyboard = NO;
            self.toolBar.showsKeyboard = NO;
        }
    }
    //: else
    else
    {
        //: [self refreshStatus:NIMInputStatusText];
        [self shoot:NIMInputStatusText];
        //: self.toolBar.showsKeyboard = YES;
        self.toolBar.showsKeyboard = YES;
    }
}

/**
 *  请求相册
 */
//: - (void)requestAuthorizationForPhotoLibrary
- (void)radiogramMessage
{
    //: if (self.toolBar.showsKeyboard)
    if (self.toolBar.showsKeyboard)
    {
        //: self.toolBar.showsKeyboard = NO;
        self.toolBar.showsKeyboard = NO;
    }

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    //: if (PHAuthorizationStatusNotDetermined == authStatus) {
    if (PHAuthorizationStatusNotDetermined == authStatus) {
        //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            //: if (PHAuthorizationStatusAuthorized == status) {
            if (PHAuthorizationStatusAuthorized == status) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self onTouchCameraBtn];
                    [self cellPin];
                //: });
                });
            }
        //: }];
        }];
        //: return;
        return;
    //: } else if (PHAuthorizationStatusAuthorized == authStatus){
    } else if (PHAuthorizationStatusAuthorized == authStatus){
        //: [self onTouchCameraBtn];
        [self cellPin];
    //: }else{
    }else{
        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[BusyLanguageManager getTextWithKey:@"warm_prompt"] message:[BusyLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[SendName streetSmart:[[InkKillerData sharedInstance] main_killerData]] message:[SendName streetSmart:[[InkKillerData sharedInstance] show_nameFromMsg]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[[InkKillerData sharedInstance] kSituationData]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[BusyLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[[InkKillerData sharedInstance] appBeliefPath]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        //: }])];
        }])];
//        [self presentViewController:alertControl animated:YES completion:nil];
        //: UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
        UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
        //: UIViewController *topViewController = rootViewController;
        UIViewController *topViewController = rootViewController;
           //: while (topViewController.presentedViewController) {
           while (topViewController.presentedViewController) {
               //: topViewController = topViewController.presentedViewController;
               topViewController = topViewController.presentedViewController;
           }
           //: [topViewController presentViewController:alertControl animated:YES completion:nil];
           [topViewController presentViewController:alertControl animated:YES completion:nil];
    }
}

//: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //: [self endEditing:YES];
    [self endEditing:YES];
}

//: - (BOOL)endEditing:(BOOL)force
- (BOOL)endEditing:(BOOL)force
{
    //: BOOL endEditing = [super endEditing:force];
    BOOL endEditing = [super endEditing:force];
    //: if (!self.toolBar.showsKeyboard) {
    if (!self.toolBar.showsKeyboard) {
        //: UIViewAnimationCurve curve = UIViewAnimationCurveEaseInOut;
        UIViewAnimationCurve curve = UIViewAnimationCurveEaseInOut;

        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: void(^animations)(void) = ^{
        void(^animations)(void) = ^{
            //: [weakSelf refreshStatus:NIMInputStatusText];
            [weakSelf shoot:NIMInputStatusText];
            //: [weakSelf sizeToFit];
            [weakSelf sizeToFit];
            //: if (weakSelf.inputDelegate && [weakSelf.inputDelegate respondsToSelector:@selector(didChangeInputHeight:)]) {
            if (weakSelf.inputDelegate && [weakSelf.inputDelegate respondsToSelector:@selector(disabled:)]) {
                //: [weakSelf.inputDelegate didChangeInputHeight:weakSelf.nim_height];
                [weakSelf.inputDelegate disabled:weakSelf.nim_height];
            }
        //: };
        };
        //: NSTimeInterval duration = 0.25;
        NSTimeInterval duration = 0.25;
        //: [UIView animateWithDuration:duration delay:0.0f options:(curve << 16 | UIViewAnimationOptionBeginFromCurrentState) animations:animations completion:nil];
        [UIView animateWithDuration:duration delay:0.0f options:(curve << 16 | UIViewAnimationOptionBeginFromCurrentState) animations:animations completion:nil];
    }
    //: return endEditing;
    return endEditing;
}


//: #pragma mark - BusyInputToolBarDelegate
#pragma mark - FormatMoreDelegate

//: - (BOOL)textViewShouldBeginEditing
- (BOOL)outsideInstalment
{
    //: [self refreshStatus:NIMInputStatusText];
    [self shoot:NIMInputStatusText];
    //: return YES;
    return YES;
}

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
- (BOOL)rangeUser:(NSRange)range title:(NSString *)text
{
    //: if ([text isEqualToString:@"\n"])
    if ([text isEqualToString:@"\n"])
    {
        //: [self didPressSend:nil];
        [self someName:nil];
        //: return NO;
        return NO;
    }
    //: if ([text isEqualToString:@""] && range.length == 1 )
    if ([text isEqualToString:@""] && range.length == 1 )
    {
        //非选择删除
        //: return [self onTextDelete];
        return [self name];
    }
    //: if ([self shouldCheckAt])
    if ([self replacing])
    {
        // @ 功能
        //: [self checkAt:text];
        [self presentName:text];
    }
    //: NSString *str = [self.toolBar.contentText stringByAppendingString:text];
    NSString *str = [self.toolBar.contentText stringByAppendingString:text];
    //: if (str.length > self.maxTextLength)
    if (str.length > self.maxTextLength)
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (BOOL)shouldCheckAt
- (BOOL)replacing
{
    //: BOOL disable = NO;
    BOOL disable = NO;
    //: if ([self.inputConfig respondsToSelector:@selector(disableAt)])
    if ([self.inputConfig respondsToSelector:@selector(canCollection)])
    {
        //: disable = [self.inputConfig disableAt];
        disable = [self.inputConfig canCollection];
    }
    //: return !disable;
    return !disable;
}

//: - (void)checkAt:(NSString *)text
- (void)presentName:(NSString *)text
{
    //: if ([text isEqualToString:@"@"]) {
    if ([text isEqualToString:@"@"]) {
        //: switch (self.session.sessionType)
        switch (self.session.sessionType)
        {
            //: case NIMSessionTypeTeam:
            case NIMSessionTypeTeam:
            {
                //: NIMContactTeamMemberSelectConfig *config = [[NIMContactTeamMemberSelectConfig alloc] init];
                ItemConfig *config = [[ItemConfig alloc] init];
                //: config.teamType = NIMKitTeamTypeNomal;
                config.teamType = NIMKitTeamTypeNomal;
                //: config.needMutiSelected = NO;
                config.needMutiSelected = NO;
                //: config.teamId = self.session.sessionId;
                config.teamId = self.session.sessionId;
                //: config.session = self.session;
                config.session = self.session;
                //: config.filterIds = @[[NIMSDK sharedSDK].loginManager.currentAccount];
                config.filterIds = @[[NIMSDK sharedSDK].loginManager.currentAccount];
                //: BusyContactSelectViewController *vc = [[BusyContactSelectViewController alloc] initWithConfig:config];
                BrandViewController *vc = [[BrandViewController alloc] initWithMax:config];
                //: vc.delegate = self;
                vc.delegate = self;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [vc show];
                    [vc totalRelation];
                //: });
                });
            }
                //: break;
                break;
            //: case NIMSessionTypeSuperTeam:
            case NIMSessionTypeSuperTeam:
            {
                //: NIMContactTeamMemberSelectConfig *config = [[NIMContactTeamMemberSelectConfig alloc] init];
                ItemConfig *config = [[ItemConfig alloc] init];
                //: config.teamType = NIMKitTeamTypeSuper;
                config.teamType = NIMKitTeamTypeSuper;
                //: config.needMutiSelected = NO;
                config.needMutiSelected = NO;
                //: config.teamId = self.session.sessionId;
                config.teamId = self.session.sessionId;
                //: config.session = self.session;
                config.session = self.session;
                //: config.filterIds = @[[NIMSDK sharedSDK].loginManager.currentAccount];
                config.filterIds = @[[NIMSDK sharedSDK].loginManager.currentAccount];
                //: BusyContactSelectViewController *vc = [[BusyContactSelectViewController alloc] initWithConfig:config];
                BrandViewController *vc = [[BrandViewController alloc] initWithMax:config];
                //: vc.delegate = self;
                vc.delegate = self;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [vc show];
                    [vc totalRelation];
                //: });
                });
            }
                //: break;
                break;
            //: case NIMSessionTypeP2P:
            case NIMSessionTypeP2P:
                //: break;
                break;
            //: case NIMSessionTypeChatroom:
            case NIMSessionTypeChatroom:
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    }
}


//: - (void)textViewDidChange
- (void)beDouble
{
    //: if (self.actionDelegate && [self.actionDelegate respondsToSelector:@selector(onTextChanged:)])
    if (self.actionDelegate && [self.actionDelegate respondsToSelector:@selector(reads:)])
    {
        //: [self.actionDelegate onTextChanged:self];
        [self.actionDelegate reads:self];
    }
}


//: - (void)toolBarDidChangeHeight:(CGFloat)height
- (void)disabling:(CGFloat)height
{
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)addAtItems:(NSArray *)selectedContacts
- (void)maxItems:(NSArray *)selectedContacts
{
    //: NSMutableString *str = [[NSMutableString alloc] initWithString:@"@"];
    NSMutableString *str = [[NSMutableString alloc] initWithString:@"@"];
    //: [self addContacts:selectedContacts prefix:str];
    [self pressMessage:selectedContacts begin:str];
}

//: #pragma mark - NIMContactSelectDelegate
#pragma mark - NoticeBar
//: - (void)didFinishedSelect:(NSArray *)selectedContacts
- (void)fillInSearch:(NSArray *)selectedContacts
{
    //: NSMutableString *str = [[NSMutableString alloc] initWithString:@""];
    NSMutableString *str = [[NSMutableString alloc] initWithString:@""];
    //: [self addContacts:selectedContacts prefix:str];
    [self pressMessage:selectedContacts begin:str];
}

//: - (void)addContacts:(NSArray *)selectedContacts prefix:(NSMutableString *)str
- (void)pressMessage:(NSArray *)selectedContacts begin:(NSMutableString *)str
{
    //: BusyKitInfoFetchOption *option = [[BusyKitInfoFetchOption alloc] init];
    InfoGreenImage *option = [[InfoGreenImage alloc] init];
    //: option.session = self.session;
    option.session = self.session;
    //: option.forbidaAlias = YES;
    option.forbidaAlias = YES;
    //: for (NSString *uid in selectedContacts) {
    for (NSString *uid in selectedContacts) {
        //: NSString *nick = [[MyUserKit sharedKit].provider infoByUser:uid option:option].showName;
        NSString *nick = [[Case pastTop].provider consumer:uid message:option].showName;
        //: [str appendString:nick];
        [str appendString:nick];
        //: [str appendString:@"\u2004"];
        [str appendString:@"\u2004"];
        //: if (![selectedContacts.lastObject isEqualToString:uid]) {
        if (![selectedContacts.lastObject isEqualToString:uid]) {
            //: [str appendString:@"@"];
            [str appendString:@"@"];
        }
        //: NIMInputAtItem *item = [[NIMInputAtItem alloc] init];
        EigenvalueOfASquareMatrixMy *item = [[EigenvalueOfASquareMatrixMy alloc] init];
        //: item.uid = uid;
        item.uid = uid;
        //: item.name = nick;
        item.name = nick;
        //: [self.atCache addAtItem:item];
        [self.atCache betweenInsertItem:item];
    }
    //: [self.toolBar insertText:str];
    [self.toolBar background:str];
}

//: #pragma mark - InputEmoticonProtocol
#pragma mark - InputEmoticonProtocol
//: - (void)selectedEmoticon:(NSString*)emoticonID catalog:(NSString*)emotCatalogID description:(NSString *)description{
- (void)ting:(NSString*)emoticonID userText:(NSString*)emotCatalogID frame:(NSString *)description{
    //: if (!emotCatalogID) { 
    if (!emotCatalogID) { //删除键
        //: [self doButtonDeleteText];
        [self infoObject];
    //: }else{
    }else{
        //: if ([emotCatalogID isEqualToString:@"default"]) {
        if ([emotCatalogID isEqualToString:[[InkKillerData sharedInstance] mFullKey]]) {
            //: [self.toolBar insertAttributedText:description withEmoji:YES];
            [self.toolBar quantityAttributed:description message:YES];
        //: }else{
        }else{
            //发送贴图消息
            //: if ([self.actionDelegate respondsToSelector:@selector(onSelectChartlet:catalog:)]) {
            if ([self.actionDelegate respondsToSelector:@selector(chartletWith:select:)]) {
                //: [self.actionDelegate onSelectChartlet:emoticonID catalog:emotCatalogID];
                [self.actionDelegate chartletWith:emoticonID select:emotCatalogID];
            }
        }
    }
}

//: - (void)selectedGifEmoticon:(NSString*)gif
- (void)enable:(NSString*)gif
{
    //: [self.toolBar setPlaceHolder:[BusyLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [self.toolBar setCompartmentHolder:[SendName streetSmart:[[InkKillerData sharedInstance] appQuantityUrl]]];
    //发送贴图消息
    //: if ([self.actionDelegate respondsToSelector:@selector(onSelectChartlet:catalog:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(chartletWith:select:)]) {
        //: [self.actionDelegate onSelectChartlet:gif catalog:gif];
        [self.actionDelegate chartletWith:gif select:gif];
    }


}

//: - (void)didPressDelete:(id)sender
- (void)controlled:(id)sender
{
    //: self.toolBar.sendButton.hidden = YES;
    self.toolBar.sendButton.hidden = YES;
//    self.toolBar.emoticonBtn2.hidden = YES;
    //: [self.toolBar setPlaceHolder:[BusyLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [self.toolBar setCompartmentHolder:[SendName streetSmart:[[InkKillerData sharedInstance] appQuantityUrl]]];
    //: [self doButtonDeleteText];
    [self infoObject];

}

//: - (BOOL)isTextValid:(NSString *)text {
- (BOOL)send:(NSString *)text {
    //: NSString *trimmedText = [text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *trimmedText = [text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: if ([trimmedText length] == 0) {
    if ([trimmedText length] == 0) {
        //: return NO;
        return NO;
    }

    // 检查是否只包含空白字符
    //: NSCharacterSet *invalidChars = [[NSCharacterSet whitespaceAndNewlineCharacterSet] invertedSet];
    NSCharacterSet *invalidChars = [[NSCharacterSet whitespaceAndNewlineCharacterSet] invertedSet];
    //: NSRange range = [text rangeOfCharacterFromSet:invalidChars];
    NSRange range = [text rangeOfCharacterFromSet:invalidChars];
    //: return range.location != NSNotFound;
    return range.location != NSNotFound;
}

//: - (void)didPressSend:(id)sender
- (void)someName:(id)sender
{

    //: if ([self.actionDelegate respondsToSelector:@selector(onSendText:atUsers:)] && [self.toolBar.contentText length] > 0 && [self isTextValid:self.toolBar.contentText]) {
    if ([self.actionDelegate respondsToSelector:@selector(picture:inputSignal:)] && [self.toolBar.contentText length] > 0 && [self send:self.toolBar.contentText]) {
//        NSString *sendText = self.toolBar.contentText;
//        [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText]];
//        [self.atCache clean];
//        self.toolBar.contentText = @"";
//        [self.toolBar layoutIfNeeded];

        //: NSMutableAttributedString *attM = [[NSMutableAttributedString alloc] initWithAttributedString:self.toolBar.inputTextView.attributedText];
        NSMutableAttributedString *attM = [[NSMutableAttributedString alloc] initWithAttributedString:self.toolBar.inputTextView.attributedText];
        //: NSString *sendText = [[self transformEmojiImageToEmojiDes:attM].string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSString *sendText = [[self max:attM].string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

        //: if(self.replyedContent.replymessage){
        if(self.replyedContent.replymessage){
            //: [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText] replymessage:self.replyedContent.replymessage];
            [self.actionDelegate targetLanguage:sendText outSession:[self.atCache my:sendText] image_strong:self.replyedContent.replymessage];
        //: }else{
        }else{
            //: [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText]];
            [self.actionDelegate picture:sendText inputSignal:[self.atCache my:sendText]];
        }
//        [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText]];

        //: [self.atCache clean];
        [self.atCache linkClean];
        //: self.toolBar.contentText = @"";
        self.toolBar.contentText = @"";
//        self.toolBar.sendButton.hidden = YES;
//        self.toolBar.emoticonBtn2.hidden = YES;
        //: [self.toolBar setPlaceHolder:[BusyLanguageManager getTextWithKey:@"message_please_enter_content"]];
        [self.toolBar setCompartmentHolder:[SendName streetSmart:[[InkKillerData sharedInstance] appQuantityUrl]]];
        //: [self.toolBar layoutIfNeeded];
        [self.toolBar layoutIfNeeded];

//        [self endEditing:YES];

    //: }else{
    }else{
        //: [self refreshStatus:NIMInputStatusText];
        [self shoot:NIMInputStatusText];
        //: [self sizeToFit];
        [self sizeToFit];

//        _moreContainer.albumPickerView.selectedAssets = nil;

            //: if ([self.actionDelegate respondsToSelector:@selector(onTapAlbunArray:)]) {
            if ([self.actionDelegate respondsToSelector:@selector(rowArray:)]) {
                //: [self.actionDelegate onTapAlbunArray:self.selectedPhoto];
                [self.actionDelegate rowArray:self.selectedPhoto];
            }
    }
}

/// 把富文本里的表情图片转换成文字 '[哈哈]'
/// @param attrM 富文本
//: - (NSMutableAttributedString *)transformEmojiImageToEmojiDes:(NSMutableAttributedString *)attrM {
- (NSMutableAttributedString *)max:(NSMutableAttributedString *)attrM {
    //: [attrM enumerateAttribute:YYTextHighlightAttributeName inRange:NSMakeRange(0, attrM.length) options:NSAttributedStringEnumerationReverse usingBlock:^(id _Nullable value, NSRange range, BOOL * _Nonnull stop) {
    [attrM enumerateAttribute:YYTextHighlightAttributeName inRange:NSMakeRange(0, attrM.length) options:NSAttributedStringEnumerationReverse usingBlock:^(id _Nullable value, NSRange range, BOOL * _Nonnull stop) {
        //: if (value && [value isKindOfClass:[BusyTextHighlight class]]) {
        if (value && [value isKindOfClass:[MediaNameContentHighlight class]]) {
            //: BusyTextHighlight *textHighlight = value;
            MediaNameContentHighlight *textHighlight = value;
            //: if (textHighlight.type == BusyTextHighlightTypeEmoji) {
            if (textHighlight.type == BusyTextHighlightTypeEmoji) {
                //: [attrM replaceCharactersInRange:range withString:textHighlight.text];
                [attrM replaceCharactersInRange:range withString:textHighlight.text];
            }
        }
    //: }];
    }];
    //: return attrM;
    return attrM;
}



//: - (BOOL)onTextDelete
- (BOOL)name
{
    //: NSRange range = [self delRangeForEmoticon];
    NSRange range = [self select];
    //: if (range.length == 1)
    if (range.length == 1)
    {
        //删的不是表情，可能是@
        //: NIMInputAtItem *item = [self delRangeForAt];
        EigenvalueOfASquareMatrixMy *item = [self length];
        //: if (item) {
        if (item) {
            //: range = item.range;
            range = item.range;
        }
    }
    //: if (range.length == 1) {
    if (range.length == 1) {
        //自动删除
        //: return YES;
        return YES;
    }
    //: [self.toolBar deleteText:range];
    [self.toolBar supernumerary:range];
    //: return NO;
    return NO;
}

//: - (BOOL)doButtonDeleteText
- (BOOL)infoObject
{
    //: NSRange range = [self delRangeForLastComponent];
    NSRange range = [self part];
    //: if (range.length == 1)
    if (range.length == 1)
    {
        //删的不是表情，可能是@
        //: NIMInputAtItem *item = [self delRangeForAt];
        EigenvalueOfASquareMatrixMy *item = [self length];
        //: if (item) {
        if (item) {
            //: range = item.range;
            range = item.range;
        }
    }

    //: [self.toolBar deleteText:range];
    [self.toolBar supernumerary:range];
    //: return NO;
    return NO;
}


//: - (NSRange)delRangeForEmoticon
- (NSRange)select
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange selectedRange = [self.toolBar selectedRange];
    NSRange selectedRange = [self.toolBar messageRange];
    //: BOOL isEmoji = NO;
    BOOL isEmoji = NO;
    //: if (selectedRange.location >= 2) {
    if (selectedRange.location >= 2) {
        //: NSString *subStr = [text substringWithRange:NSMakeRange(selectedRange.location - 2, 2)];
        NSString *subStr = [text substringWithRange:NSMakeRange(selectedRange.location - 2, 2)];
        //: isEmoji = [subStr nim_containsEmoji];
        isEmoji = [subStr containsEmoji];
    }

    //: NSRange range = NSMakeRange(selectedRange.location - 1, 1);
    NSRange range = NSMakeRange(selectedRange.location - 1, 1);
    //: if (isEmoji) {
    if (isEmoji) {
        //: range = NSMakeRange(selectedRange.location-2, 2);
        range = NSMakeRange(selectedRange.location-2, 2);
    //: } else {
    } else {
        //: NSRange subRange = [self rangeForPrefix:@"[" suffix:@"]"];
        NSRange subRange = [self tapPrefix:@"[" object:@"]"];
        //: if (subRange.length > 1)
        if (subRange.length > 1)
        {
            //: NSString *name = [text substringWithRange:subRange];
            NSString *name = [text substringWithRange:subRange];
            //: NIMInputEmoticon *icon = [[BusyInputEmoticonManager sharedManager] emoticonByTag:name];
            CityCenterWith *icon = [[DeviceManager history] viewText:name];
            //: range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
            range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
        }
    }

    //: return range;
    return range;
}

//: - (NSRange)delRangeForLastComponent
- (NSRange)part
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange selectedRange = [self.toolBar selectedRange];
    NSRange selectedRange = [self.toolBar messageRange];
    //: if (selectedRange.location == 0)
    if (selectedRange.location == 0)
    {
        //: return NSMakeRange(0, 0) ;
        return NSMakeRange(0, 0) ;
    }

    //: NSRange range;
    NSRange range;
    //: NSRange subRange = [self rangeForPrefix:@"[" suffix:@"]"];
    NSRange subRange = [self tapPrefix:@"[" object:@"]"];

    //: if (text.length > 0 &&
    if (text.length > 0 &&
        //: [[text substringFromIndex:text.length - 1] isEqualToString:@"]"] &&
        [[text substringFromIndex:text.length - 1] isEqualToString:@"]"] &&
        //: subRange.length > 1)
        subRange.length > 1)
    {
        //: NSString *name = [text substringWithRange:subRange];
        NSString *name = [text substringWithRange:subRange];
        //: NIMInputEmoticon *icon = [[BusyInputEmoticonManager sharedManager] emoticonByTag:name];
        CityCenterWith *icon = [[DeviceManager history] viewText:name];
        //: range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
        range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
    }
    //: else
    else
    {
        //: range = [text nim_rangeOfLastUnicode];
        range = [text cameraUnicode];
    }

    //: return range;
    return range;
}


//: - (NIMInputAtItem *)delRangeForAt
- (EigenvalueOfASquareMatrixMy *)length
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange range = [self rangeForPrefix:@"@" suffix:@"\u2004"];
    NSRange range = [self tapPrefix:@"@" object:@"\u2004"];
    //: NSRange selectedRange = [self.toolBar selectedRange];
    NSRange selectedRange = [self.toolBar messageRange];
    //: NIMInputAtItem *item = nil;
    EigenvalueOfASquareMatrixMy *item = nil;
    //: if (range.length > 1)
    if (range.length > 1)
    {
        //: NSString *name = [text substringWithRange:range];
        NSString *name = [text substringWithRange:range];
        //: NSString *set = [@"@" stringByAppendingString:@"\u2004"];
        NSString *set = [@"@" stringByAppendingString:@"\u2004"];
        //: name = [name stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:set]];
        name = [name stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:set]];
        //: item = [self.atCache item:name];
        item = [self.atCache readItem:name];
        //: range = item? range : NSMakeRange(selectedRange.location - 1, 1);
        range = item? range : NSMakeRange(selectedRange.location - 1, 1);
    }
    //: item.range = range;
    item.range = range;
    //: return item;
    return item;
}


//: - (NSRange)rangeForPrefix:(NSString *)prefix suffix:(NSString *)suffix
- (NSRange)tapPrefix:(NSString *)prefix object:(NSString *)suffix
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange range = [self.toolBar selectedRange];
    NSRange range = [self.toolBar messageRange];
    //: NSString *selectedText = range.length ? [text substringWithRange:range] : text;
    NSString *selectedText = range.length ? [text substringWithRange:range] : text;
    //: NSInteger endLocation = range.location;
    NSInteger endLocation = range.location;
    //: if (endLocation <= 0)
    if (endLocation <= 0)
    {
        //: return NSMakeRange(NSNotFound, 0);
        return NSMakeRange(NSNotFound, 0);
    }
    //: NSInteger index = -1;
    NSInteger index = -1;
    //: if ([selectedText hasSuffix:suffix]) {
    if ([selectedText hasSuffix:suffix]) {
        //往前搜最多20个字符，一般来讲是够了...
        //: NSInteger p = 20;
        NSInteger p = 20;
        //: for (NSInteger i = endLocation; i >= endLocation - p && i-1 >= 0 ; i--)
        for (NSInteger i = endLocation; i >= endLocation - p && i-1 >= 0 ; i--)
        {
            //: NSRange subRange = NSMakeRange(i - 1, 1);
            NSRange subRange = NSMakeRange(i - 1, 1);
            //: NSString *subString = [text substringWithRange:subRange];
            NSString *subString = [text substringWithRange:subRange];
            //: if ([subString compare:prefix] == NSOrderedSame)
            if ([subString compare:prefix] == NSOrderedSame)
            {
                //: index = i - 1;
                index = i - 1;
                //: break;
                break;
            }
        }
    }
    //: return index == -1? NSMakeRange(endLocation - 1, 1) : NSMakeRange(index, endLocation - index);
    return index == -1? NSMakeRange(endLocation - 1, 1) : NSMakeRange(index, endLocation - index);
}

//: #pragma mark - BusyReplyContentViewDelegate
#pragma mark - IndexMy

//: - (void)onClearReplyContent:(id)sender
- (void)squashed:(id)sender
{
    //: [self setNeedsLayout];
    [self setNeedsLayout];
    //: self.toolBar.inputTextView.text = nil;
    self.toolBar.inputTextView.text = nil;
    //: self.toolBar.inputTextView.attributedText = nil;
    self.toolBar.inputTextView.attributedText = nil;

    //: NSString *placeholder = [MyUserKit sharedKit].config.placeholder;
    NSString *placeholder = [Case pastTop].config.placeholder;
    //: [_toolBar setPlaceHolder:placeholder];
    [_toolBar setCompartmentHolder:placeholder];

    //: if ([self.actionDelegate respondsToSelector:@selector(didReplyCancelled)])
    if ([self.actionDelegate respondsToSelector:@selector(processingTimeCancelled)])
    {
        //: [self.actionDelegate didReplyCancelled];
        [self.actionDelegate processingTimeCancelled];
    }
}

//: @end
@end
