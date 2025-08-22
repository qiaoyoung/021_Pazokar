// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionLayout.h
// Case
//
//  Created by chris on 2016/11/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionConfigurator.h"
#import "ViewConfigurator.h"
//: #import "FFFSessionPrivateProtocol.h"
#import "FFFSessionPrivateProtocol.h"

//: @interface FFFSessionLayoutImpl : NSObject<NIMSessionLayout>
@interface NamePraiseVersion : NSObject<ChildContent>

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;

//: @property (nonatomic,strong) FFFInputView *inputView;
@property (nonatomic,strong) StateView *inputView;

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithHideTool:(NIMSession *)session
                         //: config:(id<FFFSessionConfig>)sessionConfig;
                         indexConfig:(id<QuantityelligenceInformationCan>)sessionConfig;

//: @end
@end