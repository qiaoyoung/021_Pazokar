// __DEBUG__
// __CLOSE_PRINT__
//
//  View.h
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESOpenRedPackageSheet : UIView
@interface View : UIView

//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary;
-(instancetype)initWithInput:(CGRect)frame totaleract:(NSDictionary *)dictionary;

//: - (void)show;
- (void)value;

//: - (void)dismissPicker;
- (void)endPicker;

//: @end
@end

//: @protocol NTESOpenRedPackageSheetDelegate <NSObject>
@protocol DoingUpRowDelegate <NSObject>

//: -(void)myWalletDelegate;
-(void)walletColor;

//: -(void)redpackageDetailWith:(NSString *)redpackageID;
-(void)inscriptionForStreetSmart:(NSString *)redpackageID;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END