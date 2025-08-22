// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellProtocol.h
// Case
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFCellConfig.h"
#import "FFFCellConfig.h"

// __M_A_C_R_O__

//: @class FFFMessageModel;
@class MoreModel;
//: @class NIMMessage;
@class NIMMessage;
//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class FFFKitEvent;
@class DirectionEvent;
//: @class FFFTextView;
@class FormatNameView;

//: @protocol FFFMessageCellDelegate <NSObject>
@protocol SharedDelegate <NSObject>

//: @optional
@optional

//: #pragma mark - cell 样式更改
#pragma mark - cell 样式更改

//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)messageWeltanschauungMore:(UITableView *)tableView framePostPath:(UITableViewCell *)cell along:(NSIndexPath *)indexPath;

//: - (BOOL)disableAudioPlayedStatusIcon:(NIMMessage *)message;
- (BOOL)streetwiseRemote:(NIMMessage *)message;

//: #pragma mark - 点击事件
#pragma mark - 点击事件
//: - (BOOL)onTapCell:(FFFKitEvent *)event;
- (BOOL)replyEnable:(DirectionEvent *)event;

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)checked:(NIMMessage *)message
                 //: inView:(UIView *)view;
                 input:(UIView *)view;

// 新长按代理方法
//: - (BOOL)onLongPressCell:(NIMMessage *)message;
- (BOOL)changeCell:(NIMMessage *)message;
//: - (BOOL)onLongPressCell:(NIMMessage *)message complete:(void(^)(id data))complete;
- (BOOL)colour:(NIMMessage *)message text:(void(^)(id data))complete;

//: - (BOOL)onTapAvatar:(NIMMessage *)message;
- (BOOL)todayses:(NIMMessage *)message;

//: - (BOOL)onLongPressAvatar:(NIMMessage *)message;
- (BOOL)instancing:(NIMMessage *)message;

//: - (BOOL)onPressReadLabel:(NIMMessage *)message;
- (BOOL)keying:(NIMMessage *)message;

//: - (void)onRetryMessage:(NIMMessage *)message;
- (void)packetAlongContainerRead:(NIMMessage *)message;

//: - (void)onSelectedMessage:(BOOL)selected message:(NIMMessage *)message;
- (void)along:(BOOL)selected quick:(NIMMessage *)message;

//: - (void)onClickReplyButton:(NIMMessage *)message;
- (void)inputName:(NIMMessage *)message;

//: - (void)onClickEmoticon:(NIMMessage *)message
- (void)extraData:(NIMMessage *)message
                //: comment:(NIMQuickComment *)comment
                ironed:(NIMQuickComment *)comment
               //: selected:(BOOL)isSelected;
               moveAlongMentionDisplayElite:(BOOL)isSelected;

//: @end
@end