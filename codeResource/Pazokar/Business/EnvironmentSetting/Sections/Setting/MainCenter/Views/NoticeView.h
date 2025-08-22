// __DEBUG__
// __CLOSE_PRINT__
//
//  NoticeView.h
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: typedef void(^SpeiceSexBackBlock) (NSInteger selectedGender);
typedef void(^SpeiceSexBackBlock) (NSInteger selectedGender);

//: @interface NSSetSexView : UIView
@interface NoticeView : UIView

//: @property (nonatomic, copy) SpeiceSexBackBlock speiceBackBlock;
@property (nonatomic, copy) SpeiceSexBackBlock speiceBackBlock;

//: - (void)reloadWithGender:(NSInteger)gender;
- (void)add:(NSInteger)gender;

//: - (void)animationShow;
- (void)animationTotalBringHome;
//: - (void)animationClose;
- (void)tingShould;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END