// __DEBUG__
// __CLOSE_PRINT__
//
// MyUserKitCommentUtil.h
// Case
//
//  Created by He on 2020/4/14.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class M80AttributedLabel;
@class CypherScrollView;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: extern const CGFloat NIMKitCommentUtilCellPadding;
extern const CGFloat mTapValue;

//: extern const CGFloat NIMKitCommentUtilCellContentPadding;
extern const CGFloat main_nowMessage;

//: extern NSString * const NIMKitQuickCommentFormat;
extern NSString * const kPanPath;


//: @interface BusyKitQuickCommentUtil : NSObject
@interface TapColorUtil : NSObject

//: + (UIFont *)commentFont;
+ (UIFont *)keyPicture;

//: + (NSString *)commentContent:(NIMQuickComment *)comment;
+ (NSString *)aerospace:(NIMQuickComment *)comment;

//: + (NSString *)commentsContent:(NSArray<NIMQuickComment *> *)comments;
+ (NSString *)tinkle:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)itemSizeWithComment:(NIMQuickComment *)comment;
+ (CGSize)incidental:(NIMQuickComment *)comment;

//: + (CGSize)itemSizeWithComments:(NSArray<NIMQuickComment *> *)comments;
+ (CGSize)enable:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)containerSizeWithComments:(NSMapTable *)comments;
+ (CGSize)bioLab:(NSMapTable *)comments;

//: + (NIMQuickComment * _Nullable)myCommentFromComments:(NSInteger )keyIndex
+ (NIMQuickComment * _Nullable)file:(NSInteger )keyIndex
                                      //: keys:(NSArray *)keys
                                      net:(NSArray *)keys
                                  //: comments:(NSMapTable *)map;
                                  collectionComments:(NSMapTable *)map;

//: + (M80AttributedLabel *)newCommentLabel;
+ (CypherScrollView *)sizeGreen;

//: + (NSArray *)sortedKeys:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
+ (NSArray *)beCircle:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
