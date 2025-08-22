// __DEBUG__
// __CLOSE_PRINT__
//
//  SmartView.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFAvatarImageView;
@class CustomFormatView;
//: @class NTESContactDataMember;
@class TextMember;


//: @protocol NTESUserListCellDelegate <NSObject>
@protocol CompartmentReload <NSObject>

//: - (void)didTouchUserListAvatar:(NSString *)userId;
- (void)matronymicing:(NSString *)userId;

//: @end
@end

//: @interface NTESUserListCell : UITableViewCell
@interface SmartView : UITableViewCell

//: @property (nonatomic,strong) FFFAvatarImageView * avatarImageView;
@property (nonatomic,strong) CustomFormatView * avatarImageView;

//: @property (nonatomic,weak) id<NTESUserListCellDelegate> delegate;
@property (nonatomic,weak) id<CompartmentReload> delegate;

//: - (void)refreshWithMember:(NTESContactDataMember *)member;
- (void)group:(TextMember *)member;

//: @end
@end