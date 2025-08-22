
#import <Foundation/Foundation.h>

@interface RealistData : NSObject

+ (instancetype)sharedInstance;

//: UnsupportedCell
@property (nonatomic, copy) NSString *user_liableText;

//: Unsupported model type: %@
@property (nonatomic, copy) NSString *mainYaMessage;

//: NTESMessageTranslate
@property (nonatomic, copy) NSString *kManipulateIdent;

//: defaultCellID
@property (nonatomic, copy) NSString *mainAggressiveName;

//: not support model
@property (nonatomic, copy) NSString *appSolelyName;

//: Unsupported Model
@property (nonatomic, copy) NSString *user_sharpFormat;

@end

@implementation RealistData

+ (instancetype)sharedInstance {
    static RealistData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)RealistDataToData:(NSString *)value {
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

- (Byte *)RealistDataToCache:(Byte *)data {
    int external = data[0];
    Byte grasp = data[1];
    int potentialShow = data[2];
    for (int i = potentialShow; i < potentialShow + external; i++) {
        int value = data[i] - grasp;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[potentialShow + external] = 0;
    return data + potentialShow;
}

- (NSString *)StringFromRealistData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RealistDataToCache:data]];
}

//: defaultCellID
- (NSString *)mainAggressiveName {
    if (!_mainAggressiveName) {
		NSString *origin = @"0D4D03B1B2B3AEC2B9C190B2B9B99691B6";
		NSData *data = [RealistData RealistDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainAggressiveName = [self StringFromRealistData:value];
    }
    return _mainAggressiveName;
}

//: NTESMessageTranslate
- (NSString *)kManipulateIdent {
    if (!_kManipulateIdent) {
		NSString *origin = @"143104A77F8576847E96A4A492989685A3929FA49D92A596A3";
		NSData *data = [RealistData RealistDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kManipulateIdent = [self StringFromRealistData:value];
    }
    return _kManipulateIdent;
}

//: Unsupported Model
- (NSString *)user_sharpFormat {
    if (!_user_sharpFormat) {
		NSString *origin = @"11330B12D851293F13078C88A1A6A8A3A3A2A5A798975380A297989FEC";
		NSData *data = [RealistData RealistDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_sharpFormat = [self StringFromRealistData:value];
    }
    return _user_sharpFormat;
}

//: Unsupported model type: %@
- (NSString *)mainYaMessage {
    if (!_mainYaMessage) {
		NSString *origin = @"1A2309F1F1C30120B6789196989393929597888743909287888F43979C93885D43486370";
		NSData *data = [RealistData RealistDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainYaMessage = [self StringFromRealistData:value];
    }
    return _mainYaMessage;
}

//: not support model
- (NSString *)appSolelyName {
    if (!_appSolelyName) {
		NSString *origin = @"110B0D38844310E941AC727A13797A7F2B7E807B7B7A7D7F2B787A6F707771";
		NSData *data = [RealistData RealistDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appSolelyName = [self StringFromRealistData:value];
    }
    return _appSolelyName;
}

//: UnsupportedCell
- (NSString *)user_liableText {
    if (!_user_liableText) {
		NSString *origin = @"0F1605FF9C6B84898B868685888A7B7A597B8282AA";
		NSData *data = [RealistData RealistDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_liableText = [self StringFromRealistData:value];
    }
    return _user_liableText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableDelegate.m
// Case
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionTableAdapter.h"
#import "PinAdapter.h"
//: #import "FFFMessageModel.h"
#import "MoreModel.h"
//: #import "FFFMessageCellFactory.h"
#import "MessageFactory.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "M80AttributedLabel.h"
#import "CypherScrollView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "CypherScrollView+Case.h"

//: @interface FFFSessionTableAdapter()
@interface PinAdapter()

//: @property (nonatomic,strong) FFFMessageCellFactory *cellFactory;
@property (nonatomic,strong) MessageFactory *cellFactory;

//: @end
@end

//: @implementation FFFSessionTableAdapter
@implementation PinAdapter

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _cellFactory = [[FFFMessageCellFactory alloc] init];
        _cellFactory = [[MessageFactory alloc] init];
    }
    //: return self;
    return self;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return 1;
    return 1;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //: return [self.interactor items].count;
    return [self.interactor view].count;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: UITableViewCell *cell = nil;
    UITableViewCell *cell = nil;
    //: id model = [[self.interactor items] objectAtIndex:indexPath.row];
    id model = [[self.interactor view] objectAtIndex:indexPath.row];
    //: if ([model isKindOfClass:[FFFMessageModel class]]) {
    if ([model isKindOfClass:[MoreModel class]]) {
        //: cell = [self.cellFactory cellInTable:tableView
        cell = [self.cellFactory progressRange:tableView
                                   //: forMessageMode:model];
                                   message:model];
        //: [(FFFMessageCell *)cell setDelegate:self.delegate];
        [(CompartmentViewCell *)cell setDelegate:self.delegate];
        //: [self.interactor willDisplayMessageModel:model];
        [self.interactor child:model];
        //: [(FFFMessageCell *)cell refreshData:model];
        [(CompartmentViewCell *)cell pullSession:model];
    }
    //: else if ([model isKindOfClass:[FFFTimestampModel class]])
    else if ([model isKindOfClass:[AppRow class]])
    {
        //: cell = [self.cellFactory cellInTable:tableView
        cell = [self.cellFactory toAGreaterExtent:tableView
                                     //: forTimeModel:model];
                                     tinkle:model];
    }
    //: else
    else
    {
        // Release 模式下兜底处理
        //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UnsupportedCell"];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[RealistData sharedInstance].user_liableText];
        //: cell.textLabel.text = @"Unsupported Model";
        cell.textLabel.text = [RealistData sharedInstance].user_sharpFormat;

        //: NSAssert(0, @"Unsupported model type: %@", [model class]);
        NSAssert(0, [RealistData sharedInstance].mainYaMessage, [model class]);

    }
    // 最终检查，确保不会返回 nil
    //: if (!cell) {
    if (!cell) {
        //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"defaultCellID"];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[RealistData sharedInstance].mainAggressiveName];
    }

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: if ([self.delegate respondsToSelector:@selector(tableView:willDisplayCell:forRowAtIndexPath:)])
    if ([self.delegate respondsToSelector:@selector(messageWeltanschauungMore:framePostPath:along:)])
    {
        //: [self.delegate tableView:tableView willDisplayCell:cell forRowAtIndexPath:indexPath];
        [self.delegate messageWeltanschauungMore:tableView framePostPath:cell along:indexPath];
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: CGFloat cellHeight = 0;
    CGFloat cellHeight = 0;
    //: id modelInArray = [[self.interactor items] objectAtIndex:indexPath.row];
    id modelInArray = [[self.interactor view] objectAtIndex:indexPath.row];
    //: if ([modelInArray isKindOfClass:[FFFMessageModel class]])
    if ([modelInArray isKindOfClass:[MoreModel class]])
    {
        //: FFFMessageModel *model = (FFFMessageModel *)modelInArray;
        MoreModel *model = (MoreModel *)modelInArray;

        // 撤回的消息 发送自定义消息
        //: if (model.message.messageType == NIMMessageTypeCustom && model.message.messageSubType == 20) {
        if (model.message.messageType == NIMMessageTypeCustom && model.message.messageSubType == 20) {
            //: return 0.f;
            return 0.f;
        }
//        if (model.message.messageType == NIMMessageTypeCustom) {
//            return 0.f;
//        }

        //: NIMNotificationObject *object = model.message.messageObject;
        NIMNotificationObject *object = model.message.messageObject;
        //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        {
            //: return 0.f;
            return 0.f;
        }

        //: CGSize size = [model contentSize:tableView.nim_width];
        CGSize size = [model searched:tableView.nim_width];
        //: CGFloat avatarMarginY = [model avatarMargin].y;
        CGFloat avatarMarginY = [model avatarMargin].y;

        //: UIEdgeInsets contentViewInsets = model.contentViewInsets;
        UIEdgeInsets contentViewInsets = model.contentViewInsets;
        //: UIEdgeInsets bubbleViewInsets = model.bubbleViewInsets;
        UIEdgeInsets bubbleViewInsets = model.bubbleViewInsets;
        //: cellHeight = size.height + contentViewInsets.top + contentViewInsets.bottom + bubbleViewInsets.top + bubbleViewInsets.bottom;
        cellHeight = size.height + contentViewInsets.top + contentViewInsets.bottom + bubbleViewInsets.top + bubbleViewInsets.bottom;

        //: if ([model needShowRepliedContent]){
        if ([model cryRecent]){
            //: CGSize replySize = [model replyContentSize:tableView.width];
            CGSize replySize = [model send:tableView.width];
            //: UIEdgeInsets replyContentViewInsets = model.replyContentViewInsets;
            UIEdgeInsets replyContentViewInsets = model.replyContentViewInsets;
            //: UIEdgeInsets replyBubbleViewInsets = model.replyBubbleViewInsets;
            UIEdgeInsets replyBubbleViewInsets = model.replyBubbleViewInsets;
            //: cellHeight += replySize.height+20 +
            cellHeight += replySize.height+20 +
                            //: replyContentViewInsets.top +
                            replyContentViewInsets.top +
                            //: replyContentViewInsets.bottom +
                            replyContentViewInsets.bottom +
                            //: replyBubbleViewInsets.top +
                            replyBubbleViewInsets.top +
                            //: replyBubbleViewInsets.bottom;
                            replyBubbleViewInsets.bottom;
        }

        //: if([model.message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
        if([model.message.localExt.allKeys containsObject:[RealistData sharedInstance].kManipulateIdent])
        {
            //: NSString *aString = [model.message.localExt objectForKey:@"NTESMessageTranslate"];
            NSString *aString = [model.message.localExt objectForKey:[RealistData sharedInstance].kManipulateIdent];

            //: M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
            CypherScrollView *labtran = [[CypherScrollView alloc]initWithFrame:CGRectZero];
            //: [labtran nim_setText:aString];
            [labtran nameCover:aString];
            //: labtran.font = [UIFont systemFontOfSize:13];
            labtran.font = [UIFont systemFontOfSize:13];

            //: CGFloat msgBubbleMaxWidth = (tableView.nim_width - 130);
            CGFloat msgBubbleMaxWidth = (tableView.nim_width - 130);
            //: CGFloat bubbleLeftToContent = 14;
            CGFloat bubbleLeftToContent = 14;
            //: CGFloat contentRightToBubble = 14;
            CGFloat contentRightToBubble = 14;
            //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

            //: CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];

            //: cellHeight += replySize.height+10;
            cellHeight += replySize.height+10;

        }




        //: if ([model needShowEmoticonsView])
        if ([model emoticons])
        {
            //: cellHeight += model.emoticonsContainerSize.height;
            cellHeight += model.emoticonsContainerSize.height;
        }

        //: if (model.shouldShowPinContent && model.pinUserName.length) {
        if (model.shouldShowPinContent && model.pinUserName.length) {
            //: cellHeight += 22;
            cellHeight += 22;
        }

        //: if ([model needShowReplyCountContent] && model.childMessagesCount > 0)
        if ([model info] && model.childMessagesCount > 0)
        {
            //: cellHeight += 25;
            cellHeight += 25;
        }


        //: cellHeight = cellHeight > (model.avatarSize.height + avatarMarginY) ? cellHeight : model.avatarSize.height + avatarMarginY;
        cellHeight = cellHeight > (model.avatarSize.height + avatarMarginY) ? cellHeight : model.avatarSize.height + avatarMarginY;


    }
    //: else if ([modelInArray isKindOfClass:[FFFTimestampModel class]])
    else if ([modelInArray isKindOfClass:[AppRow class]])
    {
        //: cellHeight = [(FFFTimestampModel *)modelInArray height];
        cellHeight = [(AppRow *)modelInArray height];
    }
    //: else
    else
    {
        //: NSAssert(0, @"not support model");
        NSAssert(0, [RealistData sharedInstance].appSolelyName);
    }
    //: return cellHeight;
    return cellHeight;
}

//: - (void)scrollViewDidScroll:(UIScrollView *)scrollView {
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    //: CGFloat currentOffsetY = scrollView.contentOffset.y;
    CGFloat currentOffsetY = scrollView.contentOffset.y;
    //: if (currentOffsetY + scrollView.frame.size.height > scrollView.contentSize.height && scrollView.frame.size.height <= scrollView.contentSize.height && scrollView.isDragging) {
    if (currentOffsetY + scrollView.frame.size.height > scrollView.contentSize.height && scrollView.frame.size.height <= scrollView.contentSize.height && scrollView.isDragging) {

        //: [self.interactor pullUp];
        [self.interactor manage];
    }
}

//: @end
@end