// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactDefines.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @protocol NTESContactItemCollection <NSObject>
@protocol AppearView <NSObject>
//: @required
@required
//显示的title名
//: - (NSString*)title;
- (NSString*)withTitle;

//返回集合里的成员
//: - (NSArray*)members;
- (NSArray*)list;

//重用id
//: - (NSString*)reuseId;
- (NSString*)flipInput;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)by;

//: @end
@end

//: @protocol NTESContactItem<NSObject>
@protocol DirectionImage<NSObject>
//: @required
@required
//userId和Vcname必有一个有值，根据有值的状态push进不同的页面
//: - (NSString*)vcName;
- (NSString*)vcName;

//userId和Vcname必有一个有值，根据有值的状态push进不同的页面
//: - (NSString*)userId;
- (NSString*)userId;

//返回行高
//: - (CGFloat)uiHeight;
- (CGFloat)team;

//重用id
//: - (NSString*)reuseId;
- (NSString*)information;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)name;

//badge
//: - (NSString *)badge;
- (NSString *)messageEnable;

//显示名
//: - (NSString *)nick;
- (NSString *)beforeDate;

//占位图
//: - (UIImage *)icon;
- (UIImage *)origin;

//头像url
//: - (NSString *)avatarUrl;
- (NSString *)scope;

//accessoryView
//: - (BOOL)showAccessoryView;
- (BOOL)physicalObject;

//: @optional
@optional
//: - (NSString *)selName;
- (NSString *)ofNeed;


//: @end
@end

//: @protocol NTESContactCell <NSObject>
@protocol VersionCell <NSObject>

//: - (void)refreshWithContactItem:(id<NTESContactItem>)item;
- (void)takeHome:(id<DirectionImage>)item;

//: - (void)addDelegate:(id)delegate;
- (void)clear:(id)delegate;

//: @end
@end







//: static const CGFloat NTESContactUtilRowHeight = 57;
static const CGFloat k_valueKey = 57;//util类Cell行高
//: static const CGFloat NTESContactDataRowHeight = 50;
static const CGFloat m_attachContent = 50;//data类Cell行高
//: static const NSInteger NTESContactAvatarLeft = 10;
static const NSInteger k_disableUrl = 10;//没有选择框的时候，头像到左边的距离
//: static const NSInteger NTESContactAvatarAndAccessorySpacing = 10;
static const NSInteger k_infoKey = 10;//头像和选择框之间的距离
