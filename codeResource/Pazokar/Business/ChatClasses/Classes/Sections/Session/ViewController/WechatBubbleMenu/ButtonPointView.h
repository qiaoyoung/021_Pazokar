// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonPointView.h
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/4/1.
//  Copyright © 2022 Jack Young. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface BusyBubbleMenuView : UIView
@interface ButtonPointView : UIView

//: + (instancetype)shareMenuView;
+ (instancetype)line;// 单例模式

//type：类型  selectionTextRectInWindow：选中文本在window坐标系中的frame
//cursorStartRect:start的光标位置
//block是选择功能按钮的title
//: - (void)showViewWithButtonModels:(NSArray *)array
- (void)info:(NSArray *)array
                 //: cursorStartRect:(CGRect)cursorStartRect selectionTextRectInWindow:(CGRect)rect selectBlock:(void(^)(BusyMediaItem *item))block
                 praiseRect:(CGRect)cursorStartRect streetSmartMode:(CGRect)rect title:(void(^)(ModelMessage *item))block
                     //: praiseBlock:(void(^)(NSInteger tag))praiseblock;
                     demonstrate:(void(^)(NSInteger tag))praiseblock;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
