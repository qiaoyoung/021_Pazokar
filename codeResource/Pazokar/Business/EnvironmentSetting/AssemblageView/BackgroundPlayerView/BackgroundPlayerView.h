// __DEBUG__
// __CLOSE_PRINT__
//
//  AttendanceDatePickerView.h
//  ProjectK
//
//  Created by beartech on 14-1-3.
//  Copyright (c) 2014年 Beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: Class object_getClass(id object);
Class object_getClass(id object);

//: @protocol HMDatePickerViewDelegate;
@protocol GreenText;

//: @interface HMDatePickerView : UIView{
@interface BackgroundPlayerView : UIView{
    //: UIDatePicker *datePicker;
    UIDatePicker *datePicker;
    //: UIButton *_blackBackgroundButton;
    UIButton *_blackBackgroundButton;

    //: Class delegateClass;
    Class delegateClass;
    //: __unsafe_unretained id<HMDatePickerViewDelegate> _delegate;
    __unsafe_unretained id<GreenText> _delegate;
}

//: @property (nonatomic,assign) id<HMDatePickerViewDelegate> delegate;
@property (nonatomic,assign) id<GreenText> delegate;
//: @property (nonatomic,retain) UIDatePicker *datePicker;
@property (nonatomic,retain) UIDatePicker *datePicker;
//: @property (nonatomic,retain) UIButton *blackBackgroundButton;
@property (nonatomic,retain) UIButton *blackBackgroundButton;
//: @property (nonatomic, strong) UILabel *titleL;
@property (nonatomic, strong) UILabel *titleL;
//: @property (nonatomic ,strong) NSString *titleString;
@property (nonatomic ,strong) NSString *titleString;

//: + (void)showInView:(UIView*)view delegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate*)showDate;
+ (void)member:(UIView*)view everyNameInput:(id<GreenText>)delegate content:(NSDate*)minDate green:(NSDate*)maxDate show:(NSDate*)showDate;

//: + (id)showWithDelegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate*)showDate;
+ (id)maturity:(id<GreenText>)delegate value_strong:(NSDate*)minDate fork:(NSDate*)maxDate can:(NSDate*)showDate;

//: - (void)setDate:(NSDate*)date;
- (void)setSide:(NSDate*)date;

//: - (void)show;
- (void)bar;

//: - (void)changeDelegate:(id<HMDatePickerViewDelegate>)delegate;
- (void)yearLogBubble:(id<GreenText>)delegate;

//: @end
@end


//: @protocol HMDatePickerViewDelegate <NSObject>
@protocol GreenText <NSObject>
//: @optional
@optional

//: - (void)dismissDataPickerView;
- (void)dismissAccumulationSessionView;
//: - (void)datePick:(HMDatePickerView *)pickView doneWithDate:(NSDate *)date;
- (void)color:(BackgroundPlayerView *)pickView enable:(NSDate *)date;

//: @end
@end
