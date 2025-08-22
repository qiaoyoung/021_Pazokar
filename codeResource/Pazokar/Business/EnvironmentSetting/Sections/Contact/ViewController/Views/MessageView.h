// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageView.h
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ZMONScanToolBar : UIView
@interface MessageView : UIView

//: - (void)addQRCodeTarget:(id)aTarget action:(SEL)aAction;
- (void)success:(id)aTarget arrayValue:(SEL)aAction;
//: - (void)addAlbumTarget:(id)aTarget action:(SEL)aAction;
- (void)pointOfReferenceAction:(id)aTarget elect:(SEL)aAction;

//: - (void)showTorch;
- (void)show;
//: - (void)dismissTorch;
- (void)dateName;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END