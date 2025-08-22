// __DEBUG__
// __CLOSE_PRINT__
//
//  FormatNameView.h
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/3/31.
//  Copyright © 2022 Jack Young. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface BusyTextView : UITextView
@interface FormatNameView : UITextView

//: @property (nonatomic, copy)void (^selectBlock)(BusyMediaItem *item);
@property (nonatomic, copy)void (^selectBlock)(ModelMessage *item);

//: @property (nonatomic, copy)void (^praiseSelectBlock)(NSInteger tag);
@property (nonatomic, copy)void (^praiseSelectBlock)(NSInteger tag);

//: @property (nonatomic, copy) NSArray *selectedAllRangeButtons;
@property (nonatomic, copy) NSArray *selectedAllRangeButtons;
//: @property (nonatomic, copy) NSArray *selectedPartRangeButtons;
@property (nonatomic, copy) NSArray *selectedPartRangeButtons;

//: @property (nonatomic,weak) id<BusySessionConfig> config;
@property (nonatomic,weak) id<QuantityelligenceInformationCan> config;
//: @property (nonatomic,weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic,weak) id<FuturismDelegate> actionDelegate;


//取消文本选中效果
//: - (void)hideTextSelection;
- (void)anyHideShould;

//: - (void)genMediaButtonsWithMessage:(NIMMessage *)message;
- (void)sessionComment:(NIMMessage *)message;

// 群公告复制
//: - (void)new_genMediaButton;
- (void)team;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
