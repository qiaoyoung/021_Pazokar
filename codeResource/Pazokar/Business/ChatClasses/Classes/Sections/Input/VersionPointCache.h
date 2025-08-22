// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMInputAtManager.h
// Case
//
//  Created by chris on 2016/12/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NIMInputAtItem : NSObject
@interface EigenvalueOfASquareMatrixMy : NSObject

//: @property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *name;

//: @property (nonatomic,copy) NSString *uid;
@property (nonatomic,copy) NSString *uid;

//: @property (nonatomic,assign) NSRange range;
@property (nonatomic,assign) NSRange range;

//: @end
@end

//: @interface BusyInputAtCache : NSObject
@interface VersionPointCache : NSObject

//: - (NSArray *)allAtUid:(NSString *)sendText;
- (NSArray *)my:(NSString *)sendText;

//: - (void)clean;
- (void)linkClean;

//: - (void)addAtItem:(NIMInputAtItem *)item;
- (void)betweenInsertItem:(EigenvalueOfASquareMatrixMy *)item;

//: - (NIMInputAtItem *)item:(NSString *)name;
- (EigenvalueOfASquareMatrixMy *)readItem:(NSString *)name;

//: - (NIMInputAtItem *)removeName:(NSString *)name;
- (EigenvalueOfASquareMatrixMy *)holder:(NSString *)name;

//: @end
@end
