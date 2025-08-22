// __DEBUG__
// __CLOSE_PRINT__
//
//  PtolemaicSystemViewController.h
//  NIM
//
//  Created by chris on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamCardOperationViewController.h"
#import "RearViewController.h"

//: @interface FFFAdvancedTeamCardViewController : FFFTeamCardOperationViewController
@interface PtolemaicSystemViewController : RearViewController



//: - (void)enterMemberCard;
- (void)globalAction;//查看群成员
//: - (void)didSelectAddOpeartor;
- (void)addressFrom;//添加新成员

//: - (void)updateTeamName;
- (void)buttonTime;
//: - (void)updateTeamNick;
- (void)restoreKeyGhb;
//: - (void)updateTeamIntro;
- (void)lastTing;
//: - (void)updateTeamAnnouncement;
- (void)cellAnnouncement;
//: - (void)enterMuteList;
- (void)modeHeight;//禁言列表
//: - (void)quitTeam;
- (void)titleSelect;
//: - (void)dismissTeam;
- (void)createButton;
//: @end
@end