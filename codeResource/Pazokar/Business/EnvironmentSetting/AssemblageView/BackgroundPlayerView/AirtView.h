// __DEBUG__
// __CLOSE_PRINT__
//
//  AirtView.h
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/10/10.
//  Copyright © 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol HMDataPickerDelegate ;
@protocol ColorEnableDelegate ;

//: @interface HMDataPicker : UIView{
@interface AirtView : UIView{

}

//: - (id)initWithDelegate:(id<HMDataPickerDelegate>)delegate dataDict:(NSDictionary *)dataDict selectedDict:(NSDictionary *)selectedDict jsonNode:(NSString *)jsonNode;
- (id)initWithKeyOrigin:(id<ColorEnableDelegate>)delegate node:(NSDictionary *)dataDict tool:(NSDictionary *)selectedDict session:(NSString *)jsonNode;

//: - (void)show;
- (void)length;

//: @end
@end


//: @protocol HMDataPickerDelegate <NSObject>
@protocol ColorEnableDelegate <NSObject>

//: - (void)dataPicker:(HMDataPicker *)dataPicker selectedDict:(NSDictionary *)selectedDict;
- (void)show:(AirtView *)dataPicker dataCommentMagnitude:(NSDictionary *)selectedDict;

//: @end
@end