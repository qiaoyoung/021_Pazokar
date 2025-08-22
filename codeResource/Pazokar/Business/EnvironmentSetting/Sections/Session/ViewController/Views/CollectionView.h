// __DEBUG__
// __CLOSE_PRINT__
//
//  CollectionView.h
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

//: typedef void(^PayPasswordBlock)(NSString *payPassword);
typedef void(^PayPasswordBlock)(NSString *payPassword);

//: @interface NTESRedPackagePaySheet : UIView
@interface CollectionView : UIView

//: @property (nonatomic ,copy) PayPasswordBlock block;
@property (nonatomic ,copy) PayPasswordBlock block;

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary;
-(instancetype)initWithTeam:(CGRect)frame showDictionary:(NSDictionary *)dictionary;

//: - (void)show;
- (void)sizeSend;

//: - (void)dismissPicker;
- (void)endPicker;

//: -(void)finshInputPassword:(PayPasswordBlock)block;
-(void)picture:(PayPasswordBlock)block;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END