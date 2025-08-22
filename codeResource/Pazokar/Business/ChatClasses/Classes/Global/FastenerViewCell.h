// __DEBUG__
// __CLOSE_PRINT__
//
//  FastenerViewCell.h
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSInteger, BusyKitColorButtonCellStyle){
typedef NS_ENUM(NSInteger, BusyKitColorButtonCellStyle){
    //: BusyKitColorButtonCellStyleRed,
    BusyKitColorButtonCellStyleRed,
    //: BusyKitColorButtonCellStyleBlue,
    BusyKitColorButtonCellStyleBlue,
//: };
};

//: @class NIMKitColorButton;
@class ButtonControl;

//: @interface BusyKitColorButtonCell : UITableViewCell
@interface FastenerViewCell : UITableViewCell

//: @property (nonatomic,strong) NIMKitColorButton *button;
@property (nonatomic,strong) ButtonControl *button;

//: @end
@end



//: @interface NIMKitColorButton : UIButton
@interface ButtonControl : UIButton

//: @property (nonatomic,assign) BusyKitColorButtonCellStyle style;
@property (nonatomic,assign) BusyKitColorButtonCellStyle style;

//: @end
@end
