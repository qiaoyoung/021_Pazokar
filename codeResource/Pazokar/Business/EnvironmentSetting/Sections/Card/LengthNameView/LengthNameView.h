// __DEBUG__
// __CLOSE_PRINT__
//
//  LengthNameView.h
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "BusyCommonTableViewCell.h"
#import "MediaApp.h"

//: typedef NS_ENUM(NSInteger, ColorButtonCellStyle){
typedef NS_ENUM(NSInteger, ColorButtonCellStyle){
    //: ColorButtonCellStyleRed,
    ColorButtonCellStyleRed,
    //: ColorButtonCellStyleBlue,
    ColorButtonCellStyleBlue,
//: };
};

//: @class NTESColorButton;
@class ValuePraiseControl;

//: @interface NTESColorButtonCell : UITableViewCell<BusyCommonTableViewCell>
@interface LengthNameView : UITableViewCell<MediaApp>

//: @property (nonatomic,strong) NTESColorButton *button;
@property (nonatomic,strong) ValuePraiseControl *button;

//: @end
@end



//: @interface NTESColorButton : UIButton
@interface ValuePraiseControl : UIButton

//: @property (nonatomic,assign) ColorButtonCellStyle style;
@property (nonatomic,assign) ColorButtonCellStyle style;

//: @end
@end
