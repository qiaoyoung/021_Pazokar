// __DEBUG__
// __CLOSE_PRINT__
//
//  FormatVersion.h
//  NIM
//
//  Created by Xuhui on 15/3/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @protocol NTESGroupMemberProtocol <NSObject>
@protocol GroupCan <NSObject>

//: - (NSString *)groupTitle;
- (NSString *)texter;
//: - (NSString *)memberId;
- (NSString *)conference;
//: - (id)sortKey;
- (id)sort;

//: @end
@end

//: @interface NTESGroupedDataCollection : NSObject
@interface FormatVersion : NSObject

//: @property (nonatomic, strong) NSArray *members;
@property (nonatomic, strong) NSArray *members;
//: @property (nonatomic, copy) NSComparator groupTitleComparator;
@property (nonatomic, copy) NSComparator groupTitleComparator;
//: @property (nonatomic, copy) NSComparator groupMemberComparator;
@property (nonatomic, copy) NSComparator groupMemberComparator;
//: @property (nonatomic, readonly) NSArray *sortedGroupTitles;
@property (nonatomic, readonly) NSArray *sortedGroupTitles;

//: - (void)addGroupMember:(id<NTESGroupMemberProtocol>)member;
- (void)media:(id<GroupCan>)member;

//: - (void)removeGroupMember:(id<NTESGroupMemberProtocol>)member;
- (void)subgroupBy:(id<GroupCan>)member;

//: - (void)addGroupAboveWithTitle:(NSString *)title members:(NSArray *)members;
- (void)view:(NSString *)title message:(NSArray *)members;

//: - (NSString *)titleOfGroup:(NSInteger)groupIndex;
- (NSString *)body:(NSInteger)groupIndex;

//: - (NSArray *)membersOfGroup:(NSInteger)groupIndex;
- (NSArray *)varna:(NSInteger)groupIndex;

//: - (id<NTESGroupMemberProtocol>)memberOfIndex:(NSIndexPath *)indexPath;
- (id<GroupCan>)sessionMoreIndex:(NSIndexPath *)indexPath;

//: - (id<NTESGroupMemberProtocol>)memberOfId:(NSString *)uid;
- (id<GroupCan>)enable:(NSString *)uid;

//: - (NSInteger)groupCount;
- (NSInteger)imageView;

//: - (NSInteger)memberCountOfGroup:(NSInteger)groupIndex;
- (NSInteger)withClear:(NSInteger)groupIndex;

//: @end
@end
