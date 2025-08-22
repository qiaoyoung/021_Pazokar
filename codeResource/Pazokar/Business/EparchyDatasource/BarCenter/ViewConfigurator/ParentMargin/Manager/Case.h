// __DEBUG__
// __CLOSE_PRINT__
//
//  Case.h
// Case
//
//  Created by amao on 8/14/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//
//! Project version number for NIMKit.

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "BusyLanguageManager.h"
#import "SendName.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "BusyKitInfo.h"
#import "Info.h"
//: #import "BusyMediaItem.h"            //多媒体面板对象
#import "ModelMessage.h"            //多媒体面板对象
//: #import "BusyMessageModel.h"         //message Wrapper
#import "MoreModel.h"         //message Wrapper
//: #import "BusyKitMessageProvider.h"
#import "ToiletKitImageProviderDevice.h"
//: #import "BusyCellConfig.h"           //message cell配置协议
#import "BusyCellConfig.h"           //message cell配置协议
//: #import "BusyInputProtocol.h"        //输入框回调
#import "BusyInputProtocol.h"        //输入框回调
//: #import "BusyKitDataProvider.h"      //APP内容提供器
#import "AccountingDataRead.h"      //APP内容提供器
//: #import "BusyMessageCellProtocol.h"  //message cell事件回调
#import "BusyMessageCellProtocol.h"  //message cell事件回调
//: #import "BusySessionConfig.h"        //会话页面配置
#import "QuantityelligenceInformationCan.h"        //会话页面配置
//: #import "BusyKitEvent.h"             //点击事件封装类
#import "DirectionEvent.h"             //点击事件封装类
//: #import "BusyCellLayoutConfig.h"
#import "ParentMargin.h"
//: #import "BusySessionMessageContentView.h"
#import "TextControl.h"
//: #import "BusyKitConfig.h"
#import "ChildSend.h"
//: #import "BusySessionViewController.h"
#import "DirectionViewController.h"
//: #import "BusySessionListViewController.h"
#import "NoticeViewController.h"
//: #import "BusyKitIndependentModeExtraInfo.h"
#import "ValueFormat.h"
//: #import "BusyChatUIManagerProtocol.h"
#import "BusyChatUIManagerProtocol.h"
//: #import "BusyCollectionViewLeftAlignedLayout.h"
#import "PlayerFlowLayout.h"
//: #import "BusyKitQuickCommentUtil.h"
#import "TapColorUtil.h"

//: extern double NIMKitVersionNumber;
extern double dream_endValue;

//! Project version string for NIMKit.
//: extern const unsigned char NIMKitVersionString[];
extern const unsigned char main_videoData[];

// In this header, you should import all the public headers of your framework using statements like #import <NIMKit/PublicHeader.h>



/**
 *  基础Model
 */




/**
 *  协议
 */
/**
 *  消息cell的视觉模板
 */


/**
 *  UI 配置器
 */


/**
 *  会话页
 */


/**
 *  会话列表页
 */


/*
 *  独立聊天室模式下需注入的信息
 */



/**
 * 聊天常用UI方法
 */


/**
 * 快捷评论
 */



//: @interface MyUserKit : NSObject
@interface Case : NSObject

//: + (instancetype)sharedKit;
+ (instancetype)pastTop;

/**
 *  注册自定义的排版配置，通过注册自定义排版配置来实现自定义消息的定制化排版
 */
//: - (void)registerLayoutConfig:(BusyCellLayoutConfig *)layoutConfig;
- (void)message:(ParentMargin *)layoutConfig;

/**
 *  返回当前的排版配置
 */
//: - (id<BusyCellLayoutConfig>)layoutConfig;
- (id<ParentMargin>)layoutConfig;

/**
 *  UI 配置器
 */
//: @property (nonatomic,strong) BusyKitConfig *config;
@property (nonatomic,strong) ChildSend *config;

/**
 *  内容提供者，由上层开发者注入。如果没有则使用默认 provider
 */
//: @property (nonatomic,strong) id<BusyKitDataProvider> provider;
@property (nonatomic,strong) id<AccountingDataRead> provider;

/**
 *  由于在独立聊天室模式下, IM 部分服务不可用，需要上层注入一些额外信息供组件显示使用。 默认为 nil，上层在独立聊天室模式下注入，注入时需要创建此对象并注入对象相关字段信息。
 *
 *  此字段需要配合默认的 AccountingDataRead ( SaveNameOff ) 使用，如果上层自己定义了 provider ， 则忽略此字段。
 */
//: @property (nonatomic,strong) BusyKitIndependentModeExtraInfo *independentModeExtraInfo;
@property (nonatomic,strong) ValueFormat *independentModeExtraInfo;

/**
 * 聊天模块常用UI方法
 */
//: @property (nonatomic, readonly) id<BusyChatUIManager> chatUIManager;
@property (nonatomic, readonly) id<PraiseUimanager> chatUIManager;

/**
 *  NIMKit表情资源所在的 bundle 名称。
 */
//: @property (nonatomic, copy) NSBundle *emoticonBundle;
@property (nonatomic, copy) NSBundle *emoticonBundle;

/**
 *  NIMKit语言所在Bundle, 启动的时候根据系统语言会选择对应的语言包，后面用户可替换
 */
//: @property (nonatomic, strong) NSBundle * languageBundle;
@property (nonatomic, strong) NSBundle * languageBundle;

/**
 *  NIMKit语言所在Table，默认 language
 */
//: @property (nonatomic, copy) NSString * languageTable;
@property (nonatomic, copy) NSString * languageTable;

/**
 *  NIMKit语言所在Table，默认 获取系统语言
 */
//: @property (nonatomic, copy) NSString * defaultLanguage;
@property (nonatomic, copy) NSString * defaultLanguage;

/**
 *  用户信息变更通知接口
 *
 *  @param userIds 用户 id 集合
 */
//: - (void)notfiyUserInfoChanged:(NSArray *)userIds;
- (void)at:(NSArray *)userIds;

/**
 *  群信息变更通知接口
 *
 *  @param teamIds 群 id 集合
 */
//: - (void)notifyTeamInfoChanged:(NSString *)teamId type:(NIMKitTeamType)type;
- (void)insert:(NSString *)teamId blue:(NIMKitTeamType)type;


/**
 *  群成员变更通知接口
 *
 *  @param teamIds 群id
 */
//: - (void)notifyTeamMemebersChanged:(NSString *)teamId type:(NIMKitTeamType)type;
- (void)link:(NSString *)teamId eventName:(NIMKitTeamType)type;

/**
 *  返回用户信息
 */
//: - (BusyKitInfo *)infoByUser:(NSString *)userId
- (Info *)consumer:(NSString *)userId
                    //: option:(BusyKitInfoFetchOption *)option;
                    message:(InfoGreenImage *)option;

/**
 *  返回群信息
 */
//: - (BusyKitInfo *)infoByTeam:(NSString *)teamId
- (Info *)controlOption:(NSString *)teamId
                    //: option:(BusyKitInfoFetchOption *)option;
                    my:(InfoGreenImage *)option;

/**
 *  返回群信息
 */
//: - (BusyKitInfo *)infoBySuperTeam:(NSString *)teamId
- (Info *)ting:(NSString *)teamId
                         //: option:(BusyKitInfoFetchOption *)option;
                         container:(InfoGreenImage *)option;

/**
 *  @param message 被回复的消息
 *
 *  @return 格式化的内容
 */
//: - (NSString *)replyedContentWithMessage:(NIMMessage *)message;
- (NSString *)nameForward:(NIMMessage *)message;

//: @end
@end
