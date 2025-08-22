
#import <Foundation/Foundation.h>

typedef struct {
    Byte forbidName;
    Byte *sodalist;
    unsigned int showElectronSumerpart;
} StructHmData;

@interface HmData : NSObject

@end

@implementation HmData

+ (Byte *)HmDataToByte:(StructHmData *)data {
    for (int i = 0; i < data->showElectronSumerpart; i++) {
        data->sodalist[i] ^= data->forbidName;
    }
    data->sodalist[data->showElectronSumerpart] = 0;
    return data->sodalist;
}

+ (NSString *)StringFromHmData:(StructHmData *)data {
    return [NSString stringWithUTF8String:(char *)[self HmDataToByte:data]];
}

//: invalid item selector!
+ (NSString *)noti_stadiumTitle {
    /* static */ NSString *noti_stadiumTitle = nil;
    if (!noti_stadiumTitle) {
        StructHmData value = (StructHmData){138, (Byte []){227, 228, 252, 235, 230, 227, 238, 170, 227, 254, 239, 231, 170, 249, 239, 230, 239, 233, 254, 229, 248, 171, 186}, 22};
        noti_stadiumTitle = [self StringFromHmData:&value];
    }
    return noti_stadiumTitle;
}

//: NTESMessageTranslate
+ (NSString *)m_viewNameUrl {
    /* static */ NSString *m_viewNameUrl = nil;
    if (!m_viewNameUrl) {
        StructHmData value = (StructHmData){3, (Byte []){77, 87, 70, 80, 78, 102, 112, 112, 98, 100, 102, 87, 113, 98, 109, 112, 111, 98, 119, 102, 102}, 20};
        m_viewNameUrl = [self StringFromHmData:&value];
    }
    return m_viewNameUrl;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonView.m
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusySessionTextContentView.h"
#import "ButtonView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "CypherScrollView+Case.h"
//: #import "BusyMessageModel.h"
#import "MoreModel.h"
//: #import "BusyGlobalMacro.h"
#import "BusyGlobalMacro.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "BusyTextView.h"
#import "FormatNameView.h"
//: #import "BusySessionConfig.h"
#import "QuantityelligenceInformationCan.h"
//: #import "NTESSessionViewController.h"
#import "TopViewController.h"
//: #import "NSObject+tyl_internalIdentifier.h"
#import "NSObject+IdentifierApp.h"

//: NSString *const NIMTextMessageLabelLinkData = @"NIMTextMessageLabelLinkData";
NSString *const userCellStr = @"NIMTextMessageLabelLinkData";

//: @interface BusySessionTextContentView()<M80AttributedLabelDelegate>
@interface ButtonView()<CleanName>

//: @property (nonatomic, strong) NSString *urlStr;
@property (nonatomic, strong) NSString *urlStr;
//: @property (nonatomic, strong) NSURL *url;
@property (nonatomic, strong) NSURL *url;

//: @end
@end

//: @implementation BusySessionTextContentView
@implementation ButtonView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initColorSession
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initColorSession]) {
        //: _textView = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textView = [[CypherScrollView alloc] initWithFrame:CGRectZero];
        //: _textView.M80delegate = self;
        _textView.M80delegate = self;
        //: _textView.numberOfLines = 0;
        _textView.numberOfLines = 0;
        //: _textView.autoDetectLinks = YES;
        _textView.autoDetectLinks = YES;
        //: _textView.underLineForLink = YES;
        _textView.underLineForLink = YES;
        //: _textView.lineBreakMode = NSLineBreakByWordWrapping;
        _textView.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textView.backgroundColor = [UIColor clearColor];
        _textView.backgroundColor = [UIColor clearColor];
        //: _textView.isShowTextSelection = YES;
        _textView.isShowTextSelection = YES;
        //        _textView.selectable = YES;


        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                      ;
        //: _textView.selectBlock = ^(BusyMediaItem *item) {
        _textView.selectBlock = ^(ModelMessage *item) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: if (self.delegate && [self.delegate respondsToSelector:@selector(onLongTap:)]) {
            if (self.delegate && [self.delegate respondsToSelector:@selector(longLasting:)]) {
                //: NSString *text = [self.textView.text substringWithRange:self.textView.selectedRange];
                NSString *text = [self.textView.text substringWithRange:self.textView.selectedRange];
                //: self.model.message.tyl_internalIdentifier = text;
                self.model.message.IdentifierApp = text;
                //: [self.delegate onLongTap:self.model.message];
                [self.delegate longLasting:self.model.message];
                //: if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(onTapMediaItem:)]) {
                if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(ended:)]) {
                    //: BOOL handled = [self.textView.actionDelegate onTapMediaItem:item];
                    BOOL handled = [self.textView.actionDelegate ended:item];
                    //: if (!handled) {
                    if (!handled) {
                        //: NSAssert(0, @"invalid item selector!");
                        NSAssert(0, [HmData noti_stadiumTitle]);
                    }
                }
            }
        //: };
        };
        //: _textView.praiseSelectBlock = ^(NSInteger tag){
        _textView.praiseSelectBlock = ^(NSInteger tag){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(onTapPraiseItem: withMessage:)]) {
            if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(communication: chromatic:)]) {
                    //: [self.textView.actionDelegate onTapPraiseItem:tag withMessage:self.model.message];
                    [self.textView.actionDelegate communication:tag chromatic:self.model.message];
                }
        //: };
        };

        //: [self addSubview:_textView];
        [self addSubview:_textView];
    }
    //: return self;
    return self;
}

//: -(void)gotoUrl
-(void)withLabel
{
    //: if ([[UIApplication sharedApplication] canOpenURL:self.url]) {
    if ([[UIApplication sharedApplication] canOpenURL:self.url]) {
        //: [[UIApplication sharedApplication] openURL:self.url options:@{} completionHandler:^(BOOL success) {
        [[UIApplication sharedApplication] openURL:self.url options:@{} completionHandler:^(BOOL success) {
        //: }];
        }];
    }
}

//: - (BOOL)checkUrlWithString:(NSString *)str
- (BOOL)textEdgeCan:(NSString *)str
{
    //: __block BOOL isUrl = NO;
    __block BOOL isUrl = NO;
    //: NSError *error = nil;
    NSError *error = nil;
    //: NSDataDetector *detector = [NSDataDetector
    NSDataDetector *detector = [NSDataDetector
                                //: dataDetectorWithTypes:NSTextCheckingTypeLink
                                dataDetectorWithTypes:NSTextCheckingTypeLink
                                //: error:&error];
                                error:&error];

    //: [detector enumerateMatchesInString:str
    [detector enumerateMatchesInString:str
                               //: options:0
                               options:0
                                 //: range:NSMakeRange(0, str.length)
                                 range:NSMakeRange(0, str.length)
                            //: usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
                            usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {

        //: if (result.resultType == NSTextCheckingTypeLink) {
        if (result.resultType == NSTextCheckingTypeLink) {
            //: isUrl = YES;
            isUrl = YES;
            //: self.url = result.URL;
            self.url = result.URL;
        }
    //: }];
    }];

    //: return isUrl;
    return isUrl;
}

//: - (void)refresh:(BusyMessageModel *)data
- (void)messagePress:(MoreModel *)data
{
    //: if (self.model == data) {
    if (self.model == data) {
        //: return;
        return;
    }

    //: [super refresh:data];
    [super messagePress:data];

    //: NSString *text = self.model.message.text;
    NSString *text = self.model.message.text;
    //: BusyKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    GreenSetting *setting = [[Case pastTop].config tool:data.message];
    //: self.textView.textColor = setting.textColor;
    self.textView.textColor = setting.textColor;
    //: self.textView.font = setting.font;
    self.textView.font = setting.font;
    //: [self.textView nim_setText:text];
    [self.textView nameCover:text];

    //: if ([self.delegate respondsToSelector:@selector(onLongTap:complete:)]) {
    if ([self.delegate respondsToSelector:@selector(cutGreenColor:infoThread:)]) {
        //: BOOL shouldShowMenuByMessage = [self.delegate onLongTap:data.message complete:^(id data) {
        BOOL shouldShowMenuByMessage = [self.delegate cutGreenColor:data.message infoThread:^(id data) {
            //: if ([data isKindOfClass:[NTESSessionViewController class]]) {
            if ([data isKindOfClass:[TopViewController class]]) {
                //: NTESSessionViewController *vc = (NTESSessionViewController *)data;
                TopViewController *vc = (TopViewController *)data;
                //: self.textView.actionDelegate = vc;
                self.textView.actionDelegate = vc;
                //: self.textView.config = vc.sessionConfig;
                self.textView.config = vc.sessionConfig;
            }
        //: }];
        }];

        //: self.textView.isShowTextSelection = shouldShowMenuByMessage;
        self.textView.isShowTextSelection = shouldShowMenuByMessage;
        //: if (shouldShowMenuByMessage) {
        if (shouldShowMenuByMessage) {
            //: [self.textView genMediaButtonsWithMessage:data.message];
            [self.textView sessionComment:data.message];
        }
    }

    //: if(self.model.message.text.length>0
    if(self.model.message.text.length>0
       //: ){
       ){
        //: BOOL isValid = [self checkUrlWithString:self.model.message.text];
        BOOL isValid = [self textEdgeCan:self.model.message.text];
        //: if(isValid){
        if(isValid){
            //: _textView.userInteractionEnabled = YES;
            _textView.userInteractionEnabled = YES;
            //: UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(gotoUrl)];
            UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(withLabel)];
            //: [_textView addGestureRecognizer:singleTap];
            [_textView addGestureRecognizer:singleTap];
        }
    //: }else{
    }else{
        //: NSLog(@"xiaoxiID:%@",self.model.message.messageId);
    }
}




//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model searched:tableViewWidth];
    //    CGSize contentsize         = [self contentSize:tableViewWidth message:self.model.message];
    //: CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.textView.frame = labelFrame;
    self.textView.frame = labelFrame;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)phoneMessage:(CGFloat)cellWidth tabMessage:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
    //: if ([message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
    if ([message.localExt.allKeys containsObject:[HmData m_viewNameUrl]])
    {
        //: text = [NSString stringWithFormat:@"%@\n%@",text,[message.localExt objectForKey:@"NTESMessageTranslate"]];
        text = [NSString stringWithFormat:@"%@\n%@",text,[message.localExt objectForKey:[HmData m_viewNameUrl]]];
    }
    //: self.textView.font = [[MyUserKit sharedKit].config setting:message].font;
    self.textView.font = [[Case pastTop].config tool:message].font;
    //: [self.textView nim_setText:text];
    [self.textView nameCover:text];
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 14;
    CGFloat bubbleLeftToContent = 14;
    //: CGFloat contentRightToBubble = 14;
    CGFloat contentRightToBubble = 14;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

    //: return [self.textView sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    return [self.textView sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
}

//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - CleanName
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)by:(CypherScrollView *)label
             //: clickedOnLink:(id)linkData{
             offClickedAttributedLabelThink:(id)linkData{
    //: BusyKitEvent *event = [[BusyKitEvent alloc] init];
    DirectionEvent *event = [[DirectionEvent alloc] init];
    //: event.eventName = BusyKitEventNameTapLabelLink;
    event.eventName = user_commentFormat;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: event.data = linkData;
    event.data = linkData;
    //: [self.delegate onCatchEvent:event];
    [self.delegate memberEvent:event];
}

//: @end
@end
