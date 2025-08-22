// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionDefaultConfig.m
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyCellLayoutConfig.h"
#import "ParentMargin.h"
//: #import "BusySessionMessageContentView.h"
#import "TextControl.h"
//: #import "BusySessionUnknowContentView.h"
#import "DateControl.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "CypherScrollView+Case.h"
//: #import "BusyKitUtil.h"
#import "OffMore.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "BusyMessageModel.h"
#import "MoreModel.h"
//: #import "BusyBaseSessionContentConfig.h"
#import "BusyBaseSessionContentConfig.h"
//: #import "MyUserKit.h"
#import "Case.h"

//: @interface BusyCellLayoutConfig()
@interface ParentMargin()

//: @end
@end

//: @implementation BusyCellLayoutConfig
@implementation ParentMargin

//: - (CGSize)contentSize:(BusyMessageModel *)model cellWidth:(CGFloat)cellWidth{
- (CGSize)big:(MoreModel *)model meanSolarDay:(CGFloat)cellWidth{
    //: id<CCCSessionContentConfig>config = [[BusySessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<ViewConfig>config = [[CleanSpecialSessionFactory degree] path:model.message];
    //: return [config contentSize:cellWidth message:model.message];
    return [config read:cellWidth quantity:model.message];
}

//: - (NSString *)cellContent:(BusyMessageModel *)model{
- (NSString *)flushCell:(MoreModel *)model{
    //: id<CCCSessionContentConfig>config = [[BusySessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<ViewConfig>config = [[CleanSpecialSessionFactory degree] path:model.message];
    //: NSString *cellContent = [config cellContent:model.message];
    NSString *cellContent = [config picture:model.message];
    //: return cellContent.length ? cellContent : @"BusySessionUnknowContentView";
    return cellContent.length ? cellContent : @"DateControl";
}


//: - (UIEdgeInsets)contentViewInsets:(BusyMessageModel *)model{
- (UIEdgeInsets)skip:(MoreModel *)model{
    //: id<CCCSessionContentConfig>config = [[BusySessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<ViewConfig>config = [[CleanSpecialSessionFactory degree] path:model.message];
    //: return [config contentViewInsets:model.message];
    return [config cut:model.message];
}


//: - (UIEdgeInsets)cellInsets:(BusyMessageModel *)model
- (UIEdgeInsets)keeping:(MoreModel *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"BusySessionNotificationContentView"]) {
    if ([[self flushCell:model] isEqualToString:@"MediaCustomControl"]) {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }
    //: CGFloat cellTopToBubbleTop = 3;
    CGFloat cellTopToBubbleTop = 3;
    //: CGFloat otherNickNameHeight = 20;
    CGFloat otherNickNameHeight = 20;
    //: CGFloat bubbleLeftToCellLeft = 13;
    CGFloat bubbleLeftToCellLeft = 13;
    //: CGFloat otherBubbleOriginX = [self shouldShowAvatar:model] ? [self avatarSize:model].width + bubbleLeftToCellLeft : 0;
    CGFloat otherBubbleOriginX = [self team:model] ? [self session:model].width + bubbleLeftToCellLeft : 0;
    //: CGFloat cellBubbleButtomToCellButtom = 13;
    CGFloat cellBubbleButtomToCellButtom = 13;
    //: if ([self shouldShowNickName:model])
    if ([self should:model])
    {
        //要显示名字
        //: return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }
    //: else
    else
    {
        //: return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }

}

//: - (UIEdgeInsets)replyContentViewInsets:(BusyMessageModel *)model{
- (UIEdgeInsets)sinceLocationInsets:(MoreModel *)model{
    //: id<CCCSessionContentConfig>config = [[BusySessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<ViewConfig>config = [[CleanSpecialSessionFactory degree] to:model.repliedMessage];
    //: return [config contentViewInsets:model.repliedMessage];
    return [config cut:model.repliedMessage];
}


//: - (UIEdgeInsets)replyCellInsets:(BusyMessageModel *)model
- (UIEdgeInsets)clean:(MoreModel *)model
{
    //: if ([[self cellContent:model] isEqualToString:@"BusySessionNotificationContentView"]) {
    if ([[self flushCell:model] isEqualToString:@"MediaCustomControl"]) {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }
    //: CGFloat cellTopToBubbleTop = 3;
    CGFloat cellTopToBubbleTop = 3;
    //: CGFloat otherNickNameHeight = 20;
    CGFloat otherNickNameHeight = 20;
    //: CGFloat bubbleLeftToCellLeft = 13;
    CGFloat bubbleLeftToCellLeft = 13;
    //: CGFloat otherBubbleOriginX = [self shouldShowAvatar:model] ? [self avatarSize:model].width + bubbleLeftToCellLeft : 0;
    CGFloat otherBubbleOriginX = [self team:model] ? [self session:model].width + bubbleLeftToCellLeft : 0;
    //: CGFloat cellBubbleButtomToCellButtom = 1;
    CGFloat cellBubbleButtomToCellButtom = 1;
    //: if ([self shouldShowNickName:model])
    if ([self should:model])
    {
        //要显示名字
        //: return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop + otherNickNameHeight ,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }
    //: else
    else
    {
        //: return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
        return UIEdgeInsetsMake(cellTopToBubbleTop,otherBubbleOriginX,cellBubbleButtomToCellButtom, 0);
    }

}

//: - (CGSize)replyContentSize:(BusyMessageModel *)model cellWidth:(CGFloat)cellWidth {
- (CGSize)asTitle:(MoreModel *)model show:(CGFloat)cellWidth {
    //: id<CCCSessionContentConfig>config = [[BusySessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<ViewConfig>config = [[CleanSpecialSessionFactory degree] to:model.repliedMessage];
    //: return [config contentSize:cellWidth message:model.repliedMessage];
    return [config read:cellWidth quantity:model.repliedMessage];
}

//: - (NSString *)replyContent:(BusyMessageModel *)model {
- (NSString *)language:(MoreModel *)model {
    //: id<CCCSessionContentConfig>config = [[BusySessionContentConfigFactory sharedFacotry] replyConfigBy:model.repliedMessage];
    id<ViewConfig>config = [[CleanSpecialSessionFactory degree] to:model.repliedMessage];
    //: NSString *cellContent = [config cellContent:model.repliedMessage];
    NSString *cellContent = [config picture:model.repliedMessage];
    //: return cellContent.length ? cellContent : @"BusySessionUnknowContentView";
    return cellContent.length ? cellContent : @"DateControl";
}

//: - (BOOL)shouldShowAvatar:(BusyMessageModel *)model
- (BOOL)team:(MoreModel *)model
{
    //: return [[MyUserKit sharedKit].config setting:model.message].showAvatar;
    return [[Case pastTop].config tool:model.message].showAvatar;
}


//: - (BOOL)shouldShowNickName:(BusyMessageModel *)model{
- (BOOL)should:(MoreModel *)model{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (message.messageType == NIMMessageTypeNotification)
    if (message.messageType == NIMMessageTypeNotification)
    {
        //: NIMNotificationType type = [(NIMNotificationObject *)message.messageObject notificationType];
        NIMNotificationType type = [(NIMNotificationObject *)message.messageObject notificationType];
        //: if (type == NIMNotificationTypeTeam || type == NIMNotificationTypeSuperTeam) {
        if (type == NIMNotificationTypeTeam || type == NIMNotificationTypeSuperTeam) {
            //: return NO;
            return NO;
        }
    }
    //: if (message.messageType == NIMMessageTypeTip) {
    if (message.messageType == NIMMessageTypeTip) {
        //: return NO;
        return NO;
    }

    //: BOOL isTeamMessage = (message.session.sessionType == NIMSessionTypeTeam
    BOOL isTeamMessage = (message.session.sessionType == NIMSessionTypeTeam
                          //: || message.session.sessionType == NIMSessionTypeSuperTeam);
                          || message.session.sessionType == NIMSessionTypeSuperTeam);
    //: return (!message.isOutgoingMsg && isTeamMessage);
    return (!message.isOutgoingMsg && isTeamMessage);
}


//: - (BOOL)shouldShowLeft:(BusyMessageModel *)model
- (BOOL)model:(MoreModel *)model
{
    //: return !model.message.isOutgoingMsg;
    return !model.message.isOutgoingMsg;
}

//: - (CGPoint)avatarMargin:(BusyMessageModel *)model
- (CGPoint)green:(MoreModel *)model
{
    //: return CGPointMake(8.f, 0.f);
    return CGPointMake(8.f, 0.f);
}

//: - (CGSize)avatarSize:(BusyMessageModel *)model
- (CGSize)session:(MoreModel *)model
{
    //: return CGSizeMake(36, 36);
    return CGSizeMake(36, 36);
}

//: - (CGPoint)nickNameMargin:(BusyMessageModel *)model
- (CGPoint)writerSTitle:(MoreModel *)model
{
    //: return [self shouldShowAvatar:model] ? CGPointMake([self avatarSize:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
    return [self team:model] ? CGPointMake([self session:model].width + 15.f, -3.f) : CGPointMake(10.f, -3.f);
}


//: - (NSArray *)customViews:(BusyMessageModel *)model
- (NSArray *)subViews:(MoreModel *)model
{
    //: return nil;
    return nil;
}

//: - (BOOL)disableRetryButton:(BusyMessageModel *)model
- (BOOL)tiddlerHide:(MoreModel *)model
{

    //: if (model.message.session.sessionType == NIMSessionTypeTeam)
    if (model.message.session.sessionType == NIMSessionTypeTeam)
    {
        //: id<BusyCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<ParentMargin> layoutConfig = [[Case pastTop] layoutConfig];
        //: BOOL left = [layoutConfig shouldShowLeft:model];
        BOOL left = [layoutConfig model:model];
        //: if (!left) {
        if (!left) {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:model.message.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:model.message.session.sessionId];
            //: if (member.isMuted) {
            if (member.isMuted) {
                //: return YES;
                return YES;
            }
        }
    }
    //: else if (model.message.session.sessionType == NIMSessionTypeSuperTeam)
    else if (model.message.session.sessionType == NIMSessionTypeSuperTeam)
    {
        //: id<BusyCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<ParentMargin> layoutConfig = [[Case pastTop] layoutConfig];
        //: BOOL left = [layoutConfig shouldShowLeft:model];
        BOOL left = [layoutConfig model:model];
        //: if (!left) {
        if (!left) {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userID inTeam:model.message.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:userID inTeam:model.message.session.sessionId];
            //: if (member.isMuted) {
            if (member.isMuted) {
                //: return YES;
                return YES;
            }
        }
    }

    //: if (!model.message.isReceivedMsg)
    if (!model.message.isReceivedMsg)
    {
        //: return model.message.deliveryState != NIMMessageDeliveryStateFailed;
        return model.message.deliveryState != NIMMessageDeliveryStateFailed;
    }
    //: else
    else
    {
//        return model.message.attachmentDownloadState != NIMMessageAttachmentDownloadStateFailed;
        //: return YES;
        return YES;
    }
}

//: - (BOOL)shouldDisplayBubbleBackground:(BusyMessageModel *)model
- (BOOL)text:(MoreModel *)model
{
    //: id<CCCSessionContentConfig> config = [[BusySessionContentConfigFactory sharedFacotry] configBy:model.message];
    id<ViewConfig> config = [[CleanSpecialSessionFactory degree] path:model.message];
    //: if ([config respondsToSelector:@selector(enableBackgroundBubbleView:)])
    if ([config respondsToSelector:@selector(quantityVideo:)])
    {
        //: return [config enableBackgroundBubbleView:model.message];
        return [config quantityVideo:model.message];
    }
    //: return YES;
    return YES;
}

//: @end
@end
