
#import <Foundation/Foundation.h>

@interface SuicideData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation SuicideData

+ (instancetype)sharedInstance {
    static SuicideData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)SuicideDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)SuicideDataToCache:(Byte *)data {
    int be = data[0];
    Byte cornerFactor = data[1];
    int potentialTeam = data[2];
    for (int i = potentialTeam; i < potentialTeam + be; i++) {
        int value = data[i] - cornerFactor;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[potentialTeam + be] = 0;
    return data + potentialTeam;
}

- (NSString *)StringFromSuicideData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SuicideDataToCache:data]];
}

//: 选择群组
- (NSString *)dream_tightenMyFormat {
    /* static */ NSString *dream_tightenMyFormat = nil;
    if (!dream_tightenMyFormat) {
		NSArray<NSString *> *origin = @[@"12", @"56", @"9", @"200", @"50", @"255", @"75", @"244", @"80", @"33", @"184", @"193", @"30", @"195", @"225", @"31", @"246", @"220", @"31", @"243", @"188", @"141"];
		NSData *data = [SuicideData SuicideDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_tightenMyFormat = [self StringFromSuicideData:value];
    }
    return dream_tightenMyFormat;
}

//: 选择超限
- (NSString *)show_availableId {
    /* static */ NSString *show_availableId = nil;
    if (!show_availableId) {
		NSArray<NSString *> *origin = @[@"12", @"52", @"12", @"208", @"62", @"220", @"122", @"200", @"102", @"72", @"100", @"160", @"29", @"180", @"189", @"26", @"191", @"221", @"28", @"234", @"185", @"29", @"205", @"196", @"147"];
		NSData *data = [SuicideData SuicideDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_availableId = [self StringFromSuicideData:value];
    }
    return show_availableId;
}

//: select_contact
- (NSString *)dream_boarTitle {
    /* static */ NSString *dream_boarTitle = nil;
    if (!dream_boarTitle) {
		NSArray<NSString *> *origin = @[@"14", @"57", @"3", @"172", @"158", @"165", @"158", @"156", @"173", @"152", @"156", @"168", @"167", @"173", @"154", @"156", @"173", @"5"];
		NSData *data = [SuicideData SuicideDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_boarTitle = [self StringFromSuicideData:value];
    }
    return dream_boarTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameConfig.m
// Case
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactSelectConfig.h"
#import "NameConfig.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "UserGroupedData.h"
#import "DiscoverIndex.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "FFFKitInfoFetchOption.h"
#import "InfoGreenImage.h"
//: #import "FFFKitInfo.h"
#import "Info.h"

//: @implementation NIMContactFriendSelectConfig : NSObject
@implementation TitleConfig : NSObject

//: - (BOOL)isMutiSelected{
- (BOOL)mediaInterval{
    //: return self.needMutiSelected;
    return self.needMutiSelected;
}

//: - (NSString *)title{
- (NSString *)modelTitle{
    //: return [FFFLanguageManager getTextWithKey:@"select_contact"];
    return [SendName streetSmart:[[SuicideData sharedInstance] dream_boarTitle]];
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)searchedTag{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)infoLimit{
    //: return @"选择超限".nim_localized;
    return [[SuicideData sharedInstance] show_availableId].maxColor;
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)imageData:(NIMContactDataProviderHandler)handler {
    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    DiscoverIndex *groupedData = [[DiscoverIndex alloc] init];
    //: NSMutableArray *myFriendArray = @[].mutableCopy;
    NSMutableArray *myFriendArray = @[].mutableCopy;
    //: NSMutableArray *data = [NIMSDK sharedSDK].userManager.myFriends.mutableCopy;
    NSMutableArray *data = [NIMSDK sharedSDK].userManager.myFriends.mutableCopy;
    //: NSMutableArray *members = @[].mutableCopy;
    NSMutableArray *members = @[].mutableCopy;

    //: for (NIMUser *user in data) {
    for (NIMUser *user in data) {
        //: [myFriendArray addObject:user.userId];
        [myFriendArray addObject:user.userId];
    }
    //: NSArray *friend_uids = [self filterData:myFriendArray];
    NSArray *friend_uids = [self marginBy:myFriendArray];
    //: for (NSString *uid in friend_uids) {
    for (NSString *uid in friend_uids) {
        //: NIMGroupUser *user = [[NIMGroupUser alloc] initWithUserId:uid];
        PtolemaicSystemReload *user = [[PtolemaicSystemReload alloc] initWithManager:uid];
        //: [members addObject:user];
        [members addObject:user];
    }
    //: groupedData.members = members;
    groupedData.members = members;
    //: if (members) {
    if (members) {
        //: [members removeAllObjects];
        [members removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)marginBy:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(detailOf)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (FFFKitInfo *)getInfoById:(NSString *)selectedId {
- (Info *)tingNeed:(NSString *)selectedId {
    //: FFFKitInfo *info = nil;
    Info *info = nil;
    //: info = [[MyUserKit sharedKit] infoByUser:selectedId option:nil];
    info = [[Case pastTop] consumer:selectedId message:nil];
    //: return info;
    return info;
}

//: @end
@end

//: @implementation NIMContactTeamMemberSelectConfig : NSObject
@implementation ItemConfig : NSObject

//: - (NSInteger)maxSelectedNum{
- (NSInteger)searchedTag{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)title{
- (NSString *)modelTitle{
    //: return [FFFLanguageManager getTextWithKey:@"select_contact"];
    return [SendName streetSmart:[[SuicideData sharedInstance] dream_boarTitle]];
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)infoLimit{
    //: return @"选择超限".nim_localized;
    return [[SuicideData sharedInstance] show_availableId].maxColor;
}

//: - (void)getTeamContactDataWithTeamId:(NSString *)teamID
- (void)successCancel:(NSString *)teamID
                            //: teamType:(NIMKitTeamType)teamType
                            team:(NIMKitTeamType)teamType
                            //: handler:(NIMContactDataProviderHandler)handler {
                            restore:(NIMContactDataProviderHandler)handler {
    //: __weak __typeof(&*self) weakSelf = self;;
    __weak __typeof(&*self) weakSelf = self;;
    //: NSMutableArray <NSString *>*uids = [NSMutableArray array];
    NSMutableArray <NSString *>*uids = [NSMutableArray array];
    //: if (teamType == NIMKitTeamTypeNomal) { 
    if (teamType == NIMKitTeamTypeNomal) { //普通群组
        //: [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamID
        [[NIMSDK sharedSDK].teamManager fetchTeamMembers:teamID
                                              //: completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
                                              completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: if (!error) {
            if (!error) {
                //: for (NIMTeamMember *member in members) {
                for (NIMTeamMember *member in members) {
                    //: if (member.userId) {
                    if (member.userId) {
                        //: [uids addObject:member.userId];
                        [uids addObject:member.userId];
                    }
                }
                //: [weakSelf didProcessTeamId:teamID
                [weakSelf min:teamID
                                      //: uids:uids
                                      assemblage:uids
                                   //: handler:handler];
                                   enable:handler];
            }
        //: }];
        }];
    //: } else if (teamType == NIMKitTeamTypeSuper) { 
    } else if (teamType == NIMKitTeamTypeSuper) { //超大群组
        //: NIMTeamFetchMemberOption *option = [[NIMTeamFetchMemberOption alloc] init];
        NIMTeamFetchMemberOption *option = [[NIMTeamFetchMemberOption alloc] init];
        //: [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamID option:option completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
        [[NIMSDK sharedSDK].superTeamManager fetchTeamMembers:teamID option:option completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
            //: if (!error) {
            if (!error) {
                //: for (NIMTeamMember *member in members) {
                for (NIMTeamMember *member in members) {
                    //: if (member.userId) {
                    if (member.userId) {
                        //: [uids addObject:member.userId];
                        [uids addObject:member.userId];
                    }
                }
                //: [weakSelf didProcessTeamId:teamID
                [weakSelf min:teamID
                                      //: uids:uids
                                      assemblage:uids
                                   //: handler:handler];
                                   enable:handler];
            }
        //: }];
        }];
    //: } else {
    } else {
        //: if (handler) {
        if (handler) {
            //: handler(nil, nil);
            handler(nil, nil);
        }
    }
}

//: - (void)didProcessTeamId:(NSString *)teamId
- (void)min:(NSString *)teamId
                    //: uids:(NSMutableArray *)uids
                    assemblage:(NSMutableArray *)uids
                 //: handler:(NIMContactDataProviderHandler)handler {
                 enable:(NIMContactDataProviderHandler)handler {
    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    DiscoverIndex *groupedData = [[DiscoverIndex alloc] init];
    //: NSMutableArray *membersArr = @[].mutableCopy;
    NSMutableArray *membersArr = @[].mutableCopy;
    //: NSArray *member_uids = [self filterData:uids];
    NSArray *member_uids = [self beyondHandle:uids];
    //: for (NSString *uid in member_uids) {
    for (NSString *uid in member_uids) {
        //: NIMGroupTeamMember *user = [[NIMGroupTeamMember alloc] initWithUserId:uid
        SortMember *user = [[SortMember alloc] initWithPoint:uid
                                                                       //: session:_session];
                                                                       key:_session];
        //: [membersArr addObject:user];
        [membersArr addObject:user];
    }
    //: groupedData.members = membersArr;
    groupedData.members = membersArr;
    //: if (membersArr) {
    if (membersArr) {
        //: [membersArr removeAllObjects];
        [membersArr removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)imageData:(NIMContactDataProviderHandler)handler {
    //: [self getTeamContactDataWithTeamId:_teamId
    [self successCancel:_teamId
                              //: teamType:_teamType
                              team:_teamType
                               //: handler:handler];
                               restore:handler];
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)beyondHandle:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(detailOf)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (FFFKitInfo *)getInfoById:(NSString *)selectedId {
- (Info *)tingNeed:(NSString *)selectedId {
    //: FFFKitInfo *info = nil;
    Info *info = nil;
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    InfoGreenImage *option = [[InfoGreenImage alloc] init];
    //: option.session = _session;
    option.session = _session;
    //: info = [[MyUserKit sharedKit] infoByUser:selectedId option:option];
    info = [[Case pastTop] consumer:selectedId message:option];
    //: return info;
    return info;
}

//: @end
@end

//: @implementation NIMContactTeamSelectConfig : NSObject
@implementation ButtonColorConfig : NSObject

//: - (NSString *)title{
- (NSString *)modelTitle{
    //: return @"选择群组".nim_localized;
    return [[SuicideData sharedInstance] dream_tightenMyFormat].maxColor;
}

//: - (NSInteger)maxSelectedNum{
- (NSInteger)searchedTag{
    //: if (self.needMutiSelected) {
    if (self.needMutiSelected) {
        //: return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
        return self.maxSelectMemberCount? self.maxSelectMemberCount : 9223372036854775807L;
    //: }else{
    }else{
        //: return 1;
        return 1;
    }
}

//: - (NSString *)selectedOverFlowTip{
- (NSString *)infoLimit{
    //: return @"选择超限".nim_localized;
    return [[SuicideData sharedInstance] show_availableId].maxColor;
}

//: - (NSArray *)getTeamIdsWithTeamType:(NIMKitTeamType)teamType {
- (NSArray *)getOf:(NIMKitTeamType)teamType {
    //: NSMutableArray *uids = [NSMutableArray array];
    NSMutableArray *uids = [NSMutableArray array];
    //: NSMutableArray *team_data = nil;
    NSMutableArray *team_data = nil;
    //: if (teamType == NIMKitTeamTypeNomal) {
    if (teamType == NIMKitTeamTypeNomal) {
        //: team_data = [[NIMSDK sharedSDK].teamManager.allMyTeams mutableCopy];
        team_data = [[NIMSDK sharedSDK].teamManager.allMyTeams mutableCopy];
    //: } else if (teamType == NIMKitTeamTypeSuper) {
    } else if (teamType == NIMKitTeamTypeSuper) {
        //: team_data = [[NIMSDK sharedSDK].superTeamManager.allMyTeams mutableCopy];
        team_data = [[NIMSDK sharedSDK].superTeamManager.allMyTeams mutableCopy];
    }

    //: for (NIMTeam *team in team_data) {
    for (NIMTeam *team in team_data) {
        //: if (team.teamId) {
        if (team.teamId) {
            //: [uids addObject:team.teamId];
            [uids addObject:team.teamId];
        }
    }
    //: return [self filterData:uids];
    return [self confirm:uids];
}

//: - (void)getContactData:(NIMContactDataProviderHandler)handler {
- (void)imageData:(NIMContactDataProviderHandler)handler {
    //: NSArray *tids = [self getTeamIdsWithTeamType:_teamType];
    NSArray *tids = [self getOf:_teamType];
    //: if (tids.count == 0) {
    if (tids.count == 0) {
        //: return;
        return;
    }

    //: UserGroupedData *groupedData = [[UserGroupedData alloc] init];
    DiscoverIndex *groupedData = [[DiscoverIndex alloc] init];
    //: NSMutableArray <id <NIMGroupMemberProtocol>>*members = @[].mutableCopy;
    NSMutableArray <id <DatePraise>>*members = @[].mutableCopy;
    //: for (NSString *tid in tids) {
    for (NSString *tid in tids) {
        //: NIMGroupTeam *team = [[NIMGroupTeam alloc] initWithTeamId:tid teamType:_teamType];
        PointCenter *team = [[PointCenter alloc] initWithPin:tid incentiveStockOption:_teamType];
        //: [members addObject:team];
        [members addObject:team];
    }
    //: groupedData.members = members;
    groupedData.members = members;
    //: if (members) {
    if (members) {
        //: [members removeAllObjects];
        [members removeAllObjects];
    }
    //: if (handler) {
    if (handler) {
        //: handler(groupedData.contentDic, groupedData.sectionTitles);
        handler(groupedData.contentDic, groupedData.sectionTitles);
    }
}

//: - (NSArray *)filterData:(NSMutableArray *)data{
- (NSArray *)confirm:(NSMutableArray *)data{
    //: if (data) {
    if (data) {
        //: if ([self respondsToSelector:@selector(filterIds)]) {
        if ([self respondsToSelector:@selector(detailOf)]) {
            //: NSArray *ids = [self filterIds];
            NSArray *ids = [self filterIds];
            //: [data removeObjectsInArray:ids];
            [data removeObjectsInArray:ids];
        }
        //: return data;
        return data;
    }
    //: return nil;
    return nil;
}

//: - (FFFKitInfo *)getInfoById:(NSString *)selectedId {
- (Info *)tingNeed:(NSString *)selectedId {
    //: FFFKitInfo *info = nil;
    Info *info = nil;
    //: if (_teamType == NIMKitTeamTypeNomal) {
    if (_teamType == NIMKitTeamTypeNomal) {
        //: info = [[MyUserKit sharedKit] infoByTeam:selectedId option:nil];
        info = [[Case pastTop] controlOption:selectedId my:nil];
    //: } else if (_teamType == NIMKitTeamTypeSuper) {
    } else if (_teamType == NIMKitTeamTypeSuper) {
        //: info = [[MyUserKit sharedKit] infoBySuperTeam:selectedId option:nil];
        info = [[Case pastTop] ting:selectedId container:nil];
    }
    //: return info;
    return info;
}

//: @end
@end