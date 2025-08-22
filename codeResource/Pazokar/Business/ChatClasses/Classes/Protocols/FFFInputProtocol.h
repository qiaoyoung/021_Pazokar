// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFInputProtocol.h
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>

// __M_A_C_R_O__

//: @class FFFMediaItem;
@class ModelMessage;


//: @protocol NIMInputActionDelegate <NSObject>
@protocol FuturismDelegate <NSObject>

//: @optional
@optional
//: - (BOOL)onTapMediaItem:(FFFMediaItem *)item;
- (BOOL)ended:(ModelMessage *)item;

//: - (void)onTextChanged:(id)sender;
- (void)reads:(id)sender;

//: - (void)onSendText:(NSString *)text
- (void)picture:(NSString *)text
           //: atUsers:(NSArray *)atUsers;
           inputSignal:(NSArray *)atUsers;

//: - (void)onSelectChartlet:(NSString *)chartletId
- (void)chartletWith:(NSString *)chartletId
                 //: catalog:(NSString *)catalogId;
                 select:(NSString *)catalogId;

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers replymessage:(NIMMessage *)replymessage;
- (void)targetLanguage:(NSString *)text outSession:(NSArray *)atUsers image_strong:(NIMMessage *)replymessage;

//: - (void)onSelectEmoticon:(id)emoticon;
- (void)can:(id)emoticon;

//: - (void)onCancelRecording;
- (void)disableStopMan;

//: - (void)onStopRecording;
- (void)optionCan;

//: - (void)onStartRecording;
- (void)tingText;

//: - (void)onTapMoreBtn:(id)sender;
- (void)cutBtn:(id)sender;

//: - (void)onTapEmoticonBtn:(id)sender;
- (void)tabs:(id)sender;

//: - (void)onTapAudioBtn:(id)sender;
- (void)viewwed:(id)sender;

//: - (void)onTapAlbunBtn:(id)sender;
- (void)bies:(id)sender;

//: - (void)onTapCameraBtn:(id)sender;
- (void)totalerchangeBtn:(id)sender;

//: - (void)didReplyCancelled;
- (void)processingTimeCancelled;

//: - (void)onTapPraiseItem:(NSInteger)index withMessage:(NIMMessage *)message;
- (void)communication:(NSInteger)index chromatic:(NIMMessage *)message;

//: - (void)onTapAlbunArray:(NSArray<PHAsset *> *)assets;
- (void)rowArray:(NSArray<PHAsset *> *)assets;

//: @end
@end