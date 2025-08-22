// __DEBUG__
// __CLOSE_PRINT__
//
//  StateView.h
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFInputProtocol.h"
#import "FFFInputProtocol.h"
//: #import "FFFSessionConfig.h"
#import "QuantityelligenceInformationCan.h"
//: #import "FFFInputToolBar.h"
#import "ComplimentView.h"
//: #import "FFFInputAtCache.h"
#import "VersionPointCache.h"

//: @class FFFInputMoreContainerView;
@class AppView;
//: @class FFFInputEmoticonContainerView;
@class EastWestDirectionView;
//: @class FFFReplyContentView;
@class NoticeTagView;



//: typedef NS_ENUM(NSInteger, NIMAudioRecordPhase) {
typedef NS_ENUM(NSInteger, NIMAudioRecordPhase) {
    //: AudioRecordPhaseStart,
    AudioRecordPhaseStart,
    //: AudioRecordPhaseRecording,
    AudioRecordPhaseRecording,
    //: AudioRecordPhaseCancelling,
    AudioRecordPhaseCancelling,
    //: AudioRecordPhaseEnd
    AudioRecordPhaseEnd
//: };
};



//: @protocol NIMInputDelegate <NSObject>
@protocol JointBubble <NSObject>

//: @optional
@optional

//: - (void)didChangeInputHeight:(CGFloat)inputHeight;
- (void)disabled:(CGFloat)inputHeight;

//: @end
@end

//: @interface FFFInputView : UIView
@interface StateView : UIView

//: @property (nonatomic, strong) NIMSession *session;
@property (nonatomic, strong) NIMSession *session;

//: @property (nonatomic, assign) NSInteger maxTextLength;
@property (nonatomic, assign) NSInteger maxTextLength;

//: @property (assign, nonatomic, getter=isRecording) BOOL recording;
@property (assign, nonatomic, getter=isRecording) BOOL recording;

//: @property (strong, nonatomic) FFFInputToolBar *toolBar;
@property (strong, nonatomic) ComplimentView *toolBar;
//: @property (strong, nonatomic) FFFInputMoreContainerView *moreContainer;
@property (strong, nonatomic) AppView *moreContainer;
//: @property (strong, nonatomic) UIView *emoticonContainer;
@property (strong, nonatomic) UIView *emoticonContainer;

//: @property (nonatomic, strong) FFFReplyContentView *replyedContent;
@property (nonatomic, strong) NoticeTagView *replyedContent;

//: @property (nonatomic, assign) NIMInputStatus status;
@property (nonatomic, assign) NIMInputStatus status;
//: @property (nonatomic, strong) FFFInputAtCache *atCache;
@property (nonatomic, strong) VersionPointCache *atCache;

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithSumFrame:(CGRect)frame
                       //: config:(id<FFFSessionConfig>)config;
                       monthSessionConfig:(id<QuantityelligenceInformationCan>)config;

//: - (void)reset;
- (void)messageClose;

//: - (void)refreshStatus:(NIMInputStatus)status;
- (void)shoot:(NIMInputStatus)status;

//: - (void)setInputDelegate:(id<NIMInputDelegate>)delegate;
- (void)setInputDelegate:(id<JointBubble>)delegate;

//外部设置
//: - (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate;
- (void)setGrayDelegate:(id<FuturismDelegate>)actionDelegate;

//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder;
- (void)setDocket:(NSString*)placeHolder;
//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder color:(UIColor *)placeholderColor;
- (void)event:(NSString*)placeHolder findTitle:(UIColor *)placeholderColor;

//: - (void)updateAudioRecordTime:(NSTimeInterval)time;
- (void)title:(NSTimeInterval)time;
//: - (void)updateVoicePower:(float)power;
- (void)fitPicture:(float)power;
//: - (void)addAtItems:(NSArray *)contacts;
- (void)maxItems:(NSArray *)contacts;

//: - (void)refreshReplyedContent:(NIMMessage *)message;
- (void)compartmentName:(NIMMessage *)message;
//: - (void)dismissReplyedContent;
- (void)gatefoldName;

//: @end
@end