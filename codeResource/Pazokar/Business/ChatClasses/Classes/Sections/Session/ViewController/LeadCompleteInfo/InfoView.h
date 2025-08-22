// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoView.h
//  sohunews
//
//  Created by tianyulong on 2020/4/20.
//  Copyright © 2020 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "UUMarqueeView.h"
#import "ImpView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef enum : NSUInteger {
typedef enum : NSUInteger {
    //: CompletingUserInfoType_headicon = 1,
    CompletingUserInfoType_headicon = 1,
//: } CompletingUserInfoType;
} CompletingUserInfoType;

//: @interface SNLeadCompleteInfo : UIView
@interface InfoView : UIView

//: @property (nonatomic, strong) UUMarqueeView *leftwardMarqueeView;
@property (nonatomic, strong) ImpView *leftwardMarqueeView;

//: @property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *title;
//: @property (nonatomic, copy) NSString *actionTitle;
@property (nonatomic, copy) NSString *actionTitle;
//: @property (nonatomic, assign) CompletingUserInfoType completeType;
@property (nonatomic, assign) CompletingUserInfoType completeType;

//: @property (nonatomic, copy) void (^completion)(void);
@property (nonatomic, copy) void (^completion)(void);
//: @property (nonatomic, copy) void (^cancleCompletion)(void);
@property (nonatomic, copy) void (^cancleCompletion)(void);

/// 引导用户完善资料，显示提示框
//: + (instancetype)showTipViewForCompletingUserInfolWithDelay:(float)delay
+ (instancetype)titleMonth:(float)delay
                                                 //: superView:(UIView *)superView
                                                 ditheredColour_strong:(UIView *)superView
                                    //: CompletingUserInfoType:(CompletingUserInfoType)type
                                    keyBlock:(CompletingUserInfoType)type
                                               //: withMessage:(NSString *)msg
                                               time:(NSString *)msg
                                                 //: trueBlock:(void (^)(void))trueBlock
                                                 beggarMyNeighbourPolicy:(void (^)(void))trueBlock
                                               //: cancleBlock:(void (^)(void))callback;
                                               value:(void (^)(void))callback;

//: - (void)p_updateInTransaction:(void (^)(SNLeadCompleteInfo *tipView))transactionBlock;
- (void)app:(void (^)(InfoView *tipView))transactionBlock;

//: - (void)p_showOnView:(UIView *)superView;
- (void)paradigm:(UIView *)superView;

//: - (void)p_dismiss;
- (void)recording;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END