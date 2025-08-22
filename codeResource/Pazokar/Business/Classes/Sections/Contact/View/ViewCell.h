// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewCell.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "NTESContactDefines.h"
#import "NTESContactDefines.h"

//: @protocol NTESContactUtilCellDelegate <NSObject>
@protocol GreenClean <NSObject>

//: - (void)onPressUtilImage:(NSString *)content;
- (void)pressImage:(NSString *)content;

//: @end
@end

//: @interface NTESContactUtilCell : UITableViewCell
@interface ViewCell : UITableViewCell

//: @property (nonatomic,weak) id<NTESContactUtilCellDelegate> delegate;
@property (nonatomic,weak) id<GreenClean> delegate;

//: - (void)refreshWithContactItem:(id<NTESContactItem>)item;
- (void)add:(id<DirectionImage>)item;

//: @end
@end