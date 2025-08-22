// __DEBUG__
// __CLOSE_PRINT__
//
//  SortView.h
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
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


//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol NIMMemberCardCellDelegate <NSObject>
@protocol PlayerDelegate <NSObject>

//: - (void)cellShouldBeMute:(NSString *)uid mute:(BOOL)mute;
- (void)language:(NSString *)uid trademark:(BOOL)mute;
//: - (void)cellShouldBeRemoved:(NSString *)uid;
- (void)adheres:(NSString *)uid;

//: @end
@end


//: @interface BusyGroupMemberTableViewCell : UITableViewCell
@interface SortView : UITableViewCell


//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *subtitleLabel;
@property (nonatomic,strong) UILabel *subtitleLabel;

//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;
//: @property (nonatomic,strong) UIButton *muteBtn;
@property (nonatomic,strong) UIButton *muteBtn;


//: @property (nonatomic,strong) NSString *userId;
@property (nonatomic,strong) NSString *userId;

//: - (void)reloadWithUserId:(NSString *)UserId;
- (void)device:(NSString *)UserId;

//: + (instancetype)cellWithTableView:(UITableView *)tableView;
+ (instancetype)voice:(UITableView *)tableView;

//: @property (nonatomic,weak) id<NIMMemberCardCellDelegate>delegate;
@property (nonatomic,weak) id<PlayerDelegate>delegate;

//: @end
@end





//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
