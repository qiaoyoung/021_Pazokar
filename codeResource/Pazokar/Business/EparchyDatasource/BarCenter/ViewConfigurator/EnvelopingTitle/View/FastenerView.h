// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardHeaderCell.h
//  NIM
//
//  Created by chris on 15/3/7.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "CutVersionProtocol.h"
#import "CutVersionProtocol.h"

//: @class BusyAvatarImageView;
@class CustomFormatView;
//: @protocol BusyCardHeaderCellDelegate;
@protocol OrientationMargin;



//: @interface BusyCardHeaderCell : UICollectionViewCell
@interface FastenerView : UICollectionViewCell

//: @property (nonatomic,strong) BusyAvatarImageView *imageView;
@property (nonatomic,strong) CustomFormatView *imageView;

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;

//: @property (nonatomic,weak) id<BusyCardHeaderCellDelegate>delegate;
@property (nonatomic,weak) id<OrientationMargin>delegate;

//: @property (nonatomic,readonly) id<BusyKitCardHeaderData> data;
@property (nonatomic,readonly) id<BusyKitCardHeaderData> data;

//: - (void)refreshData:(id<BusyKitCardHeaderData>)data;
- (void)latentPeriod:(id<BusyKitCardHeaderData>)data;

//: @end
@end


//: @protocol BusyCardHeaderCellDelegate <NSObject>
@protocol OrientationMargin <NSObject>

//: - (void)cellDidSelected:(BusyCardHeaderCell*)cell;
- (void)hideMax:(FastenerView*)cell;


//: @optional
@optional
//: - (void)cellShouldBeRemoved:(BusyCardHeaderCell*)cell;
- (void)adheres:(FastenerView*)cell;

//: @end
@end
