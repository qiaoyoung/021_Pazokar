
#import <Foundation/Foundation.h>

@interface FormationData : NSObject

@end

@implementation FormationData

+ (NSData *)FormationDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)FormationDataToCache:(Byte *)data {
    int ahOof = data[0];
    Byte manipulateWeep = data[1];
    int idealRemove = data[2];
    for (int i = idealRemove; i < idealRemove + ahOof; i++) {
        int value = data[i] + manipulateWeep;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[idealRemove + ahOof] = 0;
    return data + idealRemove;
}

+ (NSString *)StringFromFormationData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FormationDataToCache:data]];
}

//: reply
+ (NSString *)main_disappointedMsg {
    /* static */ NSString *main_disappointedMsg = nil;
    if (!main_disappointedMsg) {
		NSString *origin = @"05010aa7ddc592ea696471646f6b783a";
		NSData *data = [FormationData FormationDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_disappointedMsg = [self StringFromFormationData:value];
    }
    return main_disappointedMsg;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  MoreModel.m
// Case
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyMessageModel.h"
#import "MoreModel.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "BusyKitQuickCommentUtil.h"
#import "TapColorUtil.h"

//: @interface BusyMessageModel()
@interface MoreModel()

//: @property (nonatomic,strong) NSMutableDictionary *contentSizeInfo;
@property (nonatomic,strong) NSMutableDictionary *contentSizeInfo;
//: @property (nonatomic,strong) NSMutableDictionary *replyContentSizeInfo;
@property (nonatomic,strong) NSMutableDictionary *replyContentSizeInfo;

//: @end
@end

//: @implementation BusyMessageModel
@implementation MoreModel

//: @synthesize contentViewInsets = _contentViewInsets;
@synthesize contentViewInsets = _contentViewInsets;
//: @synthesize bubbleViewInsets = _bubbleViewInsets;
@synthesize bubbleViewInsets = _bubbleViewInsets;
//: @synthesize replyContentViewInsets = _replyContentViewInsets;
@synthesize replyContentViewInsets = _replyContentViewInsets;
//: @synthesize replyBubbleViewInsets = _replyBubbleViewInsets;
@synthesize replyBubbleViewInsets = _replyBubbleViewInsets;
//: @synthesize shouldShowAvatar = _shouldShowAvatar;
@synthesize shouldShowAvatar = _shouldShowAvatar;
//: @synthesize shouldShowNickName = _shouldShowNickName;
@synthesize shouldShowNickName = _shouldShowNickName;
//: @synthesize shouldShowLeft = _shouldShowLeft;
@synthesize shouldShowLeft = _shouldShowLeft;
//: @synthesize avatarMargin = _avatarMargin;
@synthesize avatarMargin = _avatarMargin;
//: @synthesize nickNameMargin = _nickNameMargin;
@synthesize nickNameMargin = _nickNameMargin;
//: @synthesize avatarSize = _avatarSize;
@synthesize avatarSize = _avatarSize;
//: @synthesize repliedMessage = _repliedMessage;
@synthesize repliedMessage = _repliedMessage;
//: @synthesize parentMessage = _parentMessage;
@synthesize parentMessage = _parentMessage;

//: - (instancetype)initWithMessage:(NIMMessage*)message
- (instancetype)initWithLabel:(NIMMessage*)message
{
    //: if (self = [self init])
    if (self = [self init])
    {
        //: _message = message;
        _message = message;
        //: _messageTime = message.timestamp;
        _messageTime = message.timestamp;
        //: _contentSizeInfo = [[NSMutableDictionary alloc] init];
        _contentSizeInfo = [[NSMutableDictionary alloc] init];
        //: _replyContentSizeInfo = [NSMutableDictionary dictionary];
        _replyContentSizeInfo = [NSMutableDictionary dictionary];
        //: _enableRepliedContent = YES;
        _enableRepliedContent = YES;
        //: _enableQuickComments = YES;
        _enableQuickComments = YES;
        //: _shouldShowPinContent = YES;
        _shouldShowPinContent = YES;
        //: _enableSubMessages = YES;
        _enableSubMessages = YES;
    }
    //: return self;
    return self;
}

//: - (void)cleanCache
- (void)question
{
    //: [_contentSizeInfo removeAllObjects];
    [_contentSizeInfo removeAllObjects];
    //: _contentViewInsets = UIEdgeInsetsZero;
    _contentViewInsets = UIEdgeInsetsZero;
    //: _bubbleViewInsets = UIEdgeInsetsZero;
    _bubbleViewInsets = UIEdgeInsetsZero;
    //: _replyContentViewInsets = UIEdgeInsetsZero;
    _replyContentViewInsets = UIEdgeInsetsZero;
    //: _replyBubbleViewInsets = UIEdgeInsetsZero;
    _replyBubbleViewInsets = UIEdgeInsetsZero;
}

//: - (NSString*)description{
- (NSString*)description{
    //: return self.message.text;
    return self.message.text;
}

//: - (BOOL)isEqual:(id)object
- (BOOL)isEqual:(id)object
{
    //: if (![object isKindOfClass:[BusyMessageModel class]])
    if (![object isKindOfClass:[MoreModel class]])
    {
        //: return NO;
        return NO;
    }
    //: else
    else
    {
        //: BusyMessageModel *model = object;
        MoreModel *model = object;
        //: return [self.message isEqual:model.message];
        return [self.message isEqual:model.message];
    }
}

//: - (CGSize)contentSize:(CGFloat)width
- (CGSize)searched:(CGFloat)width
{
    //: CGSize size = [self.contentSizeInfo[@(width)] CGSizeValue];
    CGSize size = [self.contentSizeInfo[@(width)] CGSizeValue];
    //: if (__CGSizeEqualToSize(size, CGSizeZero))
    if (__CGSizeEqualToSize(size, CGSizeZero))
    {
        //: [self updateLayoutConfig];
        [self locationRecord];
        //: id<BusyCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<ParentMargin> layoutConfig = [[Case pastTop] layoutConfig];
        //: size = [layoutConfig contentSize:self cellWidth:width];
        size = [layoutConfig big:self meanSolarDay:width];
        //: [self.contentSizeInfo setObject:[NSValue valueWithCGSize:size] forKey:@(width)];
        [self.contentSizeInfo setObject:[NSValue valueWithCGSize:size] forKey:@(width)];
    }
    //: return size;
    return size;
}


//: - (UIEdgeInsets)contentViewInsets{
- (UIEdgeInsets)contentViewInsets{
    //: if (UIEdgeInsetsEqualToEdgeInsets(_contentViewInsets, UIEdgeInsetsZero))
    if (UIEdgeInsetsEqualToEdgeInsets(_contentViewInsets, UIEdgeInsetsZero))
    {
        //: id<BusyCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<ParentMargin> layoutConfig = [[Case pastTop] layoutConfig];
        //: _contentViewInsets = [layoutConfig contentViewInsets:self];
        _contentViewInsets = [layoutConfig skip:self];
    }
    //: return _contentViewInsets;
    return _contentViewInsets;
}

//: - (UIEdgeInsets)bubbleViewInsets{
- (UIEdgeInsets)bubbleViewInsets{
    //: if (UIEdgeInsetsEqualToEdgeInsets(_bubbleViewInsets, UIEdgeInsetsZero))
    if (UIEdgeInsetsEqualToEdgeInsets(_bubbleViewInsets, UIEdgeInsetsZero))
    {
        //: id<BusyCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<ParentMargin> layoutConfig = [[Case pastTop] layoutConfig];
        //: _bubbleViewInsets = [layoutConfig cellInsets:self];
        _bubbleViewInsets = [layoutConfig keeping:self];
    }
    //: return _bubbleViewInsets;
    return _bubbleViewInsets;
}

//: - (CGSize)replyContentSize:(CGFloat)width
- (CGSize)send:(CGFloat)width
{
    //: id<BusyCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<ParentMargin> layoutConfig = [[Case pastTop] layoutConfig];
    //: CGSize size = [layoutConfig replyContentSize:self cellWidth:width];
    CGSize size = [layoutConfig asTitle:self show:width];
    //: return size;
    return size;
}

//: - (UIEdgeInsets)replyContentViewInsets{
- (UIEdgeInsets)replyContentViewInsets{
    //: if (UIEdgeInsetsEqualToEdgeInsets(_replyContentViewInsets, UIEdgeInsetsZero))
    if (UIEdgeInsetsEqualToEdgeInsets(_replyContentViewInsets, UIEdgeInsetsZero))
    {
        //: id<BusyCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<ParentMargin> layoutConfig = [[Case pastTop] layoutConfig];
        //: _replyContentViewInsets = [layoutConfig replyContentViewInsets:self];
        _replyContentViewInsets = [layoutConfig sinceLocationInsets:self];
    }
    //: return _replyContentViewInsets;
    return _replyContentViewInsets;
}

//: - (UIEdgeInsets)replyBubbleViewInsets{
- (UIEdgeInsets)replyBubbleViewInsets{
    //: if (UIEdgeInsetsEqualToEdgeInsets(_replyBubbleViewInsets, UIEdgeInsetsZero))
    if (UIEdgeInsetsEqualToEdgeInsets(_replyBubbleViewInsets, UIEdgeInsetsZero))
    {
        //: id<BusyCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
        id<ParentMargin> layoutConfig = [[Case pastTop] layoutConfig];
        //: _replyBubbleViewInsets = [layoutConfig replyCellInsets:self];
        _replyBubbleViewInsets = [layoutConfig clean:self];
    }
    //: return _replyBubbleViewInsets;
    return _replyBubbleViewInsets;
}


//: - (void)updateLayoutConfig
- (void)locationRecord
{
    //: id<BusyCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<ParentMargin> layoutConfig = [[Case pastTop] layoutConfig];

    //: _shouldShowAvatar = [layoutConfig shouldShowAvatar:self];
    _shouldShowAvatar = [layoutConfig team:self];
    //: _shouldShowNickName = _focreShowNickName ? YES : [layoutConfig shouldShowNickName:self];
    _shouldShowNickName = _focreShowNickName ? YES : [layoutConfig should:self];
    //: _shouldShowLeft = _focreShowLeft ? YES : [layoutConfig shouldShowLeft:self];
    _shouldShowLeft = _focreShowLeft ? YES : [layoutConfig model:self];
    //: _avatarMargin = [layoutConfig avatarMargin:self];
    _avatarMargin = [layoutConfig green:self];
    //: _nickNameMargin = [layoutConfig nickNameMargin:self];
    _nickNameMargin = [layoutConfig writerSTitle:self];
    //: _avatarSize = [layoutConfig avatarSize:self];
    _avatarSize = [layoutConfig session:self];
}


//: - (BOOL)shouldShowReadLabel
- (BOOL)shouldShowReadLabel
{
    //: if (self.message.session.sessionType == NIMSessionTypeP2P)
    if (self.message.session.sessionType == NIMSessionTypeP2P)
    {
        //: return _shouldShowReadLabel && self.message.isRemoteRead;
        return _shouldShowReadLabel && self.message.isRemoteRead;
    }
    //: else if (self.message.session.sessionType == NIMSessionTypeSuperTeam) { 
    else if (self.message.session.sessionType == NIMSessionTypeSuperTeam) { //超大群这个功能还没做
        //: return NO;
        return NO;
    }
    //: else
    else
    {
        //: return _shouldShowReadLabel;
        return _shouldShowReadLabel;
    }

}

//: - (BOOL)needShowReplyCountContent
- (BOOL)needShowReplyCountContent
{
    //: return self.enableSubMessages;
    return self.enableSubMessages;
}

//: - (BOOL)needShowRepliedContent
- (BOOL)cryRecent
{
//    BOOL should = self.message.messageType == NIMMessageTypeTip;
//    return !should && self.enableRepliedContent &&
//    self.message.repliedMessageId.length > 0;

    //: return [self.message.remoteExt.allKeys containsObject:@"reply"];
    return [self.message.remoteExt.allKeys containsObject:[FormationData main_disappointedMsg]];
}

//: - (BOOL)needShowEmoticonsView
- (BOOL)emoticons
{
    //: return self.enableQuickComments && !__CGSizeEqualToSize(CGSizeZero, self.emoticonsContainerSize);
    return self.enableQuickComments && !__CGSizeEqualToSize(CGSizeZero, self.emoticonsContainerSize);
}

//: - (void)quickComments:(NIMMessage *)message
- (void)deviceCompletion:(NIMMessage *)message
           //: completion:(void(^)(NSMapTable *))completion
           text:(void(^)(NSMapTable *))completion
{
    //: [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message
    [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message
                                                      //: completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NIMQuickComment *> * _Nullable result)
                                                      completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NIMQuickComment *> * _Nullable result)
    {
        //: if (completion)
        if (completion)
        {
            //: if (result.count > 0)
            if (result.count > 0)
            {
                //: _emoticonsContainerSize = [BusyKitQuickCommentUtil containerSizeWithComments:result];
                _emoticonsContainerSize = [TapColorUtil bioLab:result];
            }
            //: completion(result);
            completion(result);
        }
    //: }];
    }];
}

//: @end
@end
