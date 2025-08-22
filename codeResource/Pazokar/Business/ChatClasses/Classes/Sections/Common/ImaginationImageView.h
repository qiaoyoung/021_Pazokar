// __DEBUG__
// __CLOSE_PRINT__
//
//  ImaginationImageView.h
// Case
//
//  Created by chris on 15/10/15.
//  Copyright © 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "BusyCardDataSourceProtocol.h"
#import "BusyCardDataSourceProtocol.h"

//: @protocol BusyMemberGroupViewDelegate <NSObject>
@protocol TextPlayer <NSObject>
//: @optional
@optional

//: - (void)didSelectMemberId:(NSString *)uid;
- (void)whited:(NSString *)uid;

//: - (void)didSelectRemoveButtonWithMemberId:(NSString *)uid;
- (void)impanelWithClanswoman:(NSString *)uid;

//: - (void)didSelectOperator:(NIMKitCardHeaderOpeator )opera;
- (void)colors:(NIMKitCardHeaderOpeator )opera;

//: @end
@end

//: @interface NIMMemebrGroupData : NSObject
@interface SendChild : NSObject

//: @property (nonatomic,strong) NSString *userId;
@property (nonatomic,strong) NSString *userId;

//: @property (nonatomic,assign) NIMKitCardHeaderOpeator opera;
@property (nonatomic,assign) NIMKitCardHeaderOpeator opera;

//: @property (nonatomic,readonly) BOOL isMyUserId;
@property (nonatomic,readonly) BOOL isMyUserId;

//: @end
@end

//: @interface BusyMemberGroupView : UIView
@interface ImaginationImageView : UIView

//: @property (nonatomic,strong) UICollectionView *collectionView;
@property (nonatomic,strong) UICollectionView *collectionView;

//: @property (nonatomic,readonly) BOOL showAddOperator;
@property (nonatomic,readonly) BOOL showAddOperator;

//: @property (nonatomic,readonly) BOOL showRemoveOperator;
@property (nonatomic,readonly) BOOL showRemoveOperator;

//: @property (nonatomic,assign) BOOL enableRemove;
@property (nonatomic,assign) BOOL enableRemove;

//: @property (nonatomic,weak) id<BusyMemberGroupViewDelegate> delegate;
@property (nonatomic,weak) id<TextPlayer> delegate;

//: - (void)refreshDatas:(NSArray <NIMMemebrGroupData *> *)datas operators:(NIMKitCardHeaderOpeator)operators;
- (void)container:(NSArray <SendChild *> *)datas completeOperators:(NIMKitCardHeaderOpeator)operators;

//: - (void)setTitle:(NSString *)title forOperator:(NIMKitCardHeaderOpeator)opera;
- (void)valueTo:(NSString *)title bar:(NIMKitCardHeaderOpeator)opera;

//: @end
@end
