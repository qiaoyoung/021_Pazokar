// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewConfigurator.m
// Case
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionConfigurator.h"
#import "ViewConfigurator.h"
//: #import "FFFSessionMsgDatasource.h"
#import "EparchyDatasource.h"
//: #import "FFFSessionInteractorImpl.h"
#import "FasteningBar.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFMessageModel.h"
#import "MoreModel.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFSessionInteractorImpl.h"
#import "FasteningBar.h"
//: #import "FFFSessionDataSourceImpl.h"
#import "NameCenter.h"
//: #import "FFFSessionLayoutImpl.h"
#import "NamePraiseVersion.h"
//: #import "FFFSessionTableAdapter.h"
#import "PinAdapter.h"

/*
                                            DirectionViewController 类关系图
 
 
             .........................................................................
             .                                                                       .
             .                                                                       .
             .                                                                       .                  | ---> [NIMSessionDatasource]
             .                                                                       .
             .                                                       | ---> [TagRed] -->  |
             .
             .                                                                                          | ---> [ChildContent]
             .
             ↓
  [DirectionViewController]-------> [ViewConfigurator] -----> |
             |
             |
             |
             |
             ↓                                                       | ---> [PinAdapter]
       [UITableView]                                                              .
            ↑                                                                     .
            .                                                                     .
            .                                                                     .
            .......................................................................
 */

//: @interface FFFSessionConfigurator()
@interface ViewConfigurator()

//: @property (nonatomic,strong) FFFSessionInteractorImpl *interactor;
@property (nonatomic,strong) FasteningBar *interactor;

//: @property (nonatomic,strong) FFFSessionTableAdapter *tableAdapter;
@property (nonatomic,strong) PinAdapter *tableAdapter;

//: @end
@end

//: @implementation FFFSessionConfigurator
@implementation ViewConfigurator

//: - (void)setup:(FFFSessionViewController *)vc
- (void)actionDownTitle:(DirectionViewController *)vc
{
    //: NIMSession *session = vc.session;
    NIMSession *session = vc.session;
    //: id<FFFSessionConfig> sessionConfig = vc.sessionConfig;
    id<QuantityelligenceInformationCan> sessionConfig = vc.secret;
    //: UITableView *tableView = vc.tableView;
    UITableView *tableView = vc.tableView;
    //: FFFInputView *inputView = vc.sessionInputView;
    StateView *inputView = vc.sessionInputView;

    //: FFFSessionDataSourceImpl *datasource = [[FFFSessionDataSourceImpl alloc] initWithSession:session config:sessionConfig];
    NameCenter *datasource = [[NameCenter alloc] initWithName:session comment:sessionConfig];
    //: FFFSessionLayoutImpl *layout = [[FFFSessionLayoutImpl alloc] initWithSession:session config:sessionConfig];
    NamePraiseVersion *layout = [[NamePraiseVersion alloc] initWithHideTool:session indexConfig:sessionConfig];
    //: layout.tableView = tableView;
    layout.tableView = tableView;
    //: layout.inputView = inputView;
    layout.inputView = inputView;


    //: _interactor = [[FFFSessionInteractorImpl alloc] initWithSession:session config:sessionConfig];
    _interactor = [[FasteningBar alloc] initWithSession:session distance:sessionConfig];
    //: _interactor.delegate = vc;
    _interactor.delegate = vc;
    //: _interactor.dataSource = datasource;
    _interactor.dataSource = datasource;
    //: _interactor.layout = layout;
    _interactor.layout = layout;

    //: [layout setDelegate:_interactor];
    [layout setRestore:_interactor];

    //: _tableAdapter = [[FFFSessionTableAdapter alloc] init];
    _tableAdapter = [[PinAdapter alloc] init];
    //: _tableAdapter.interactor = _interactor;
    _tableAdapter.interactor = _interactor;
    //: _tableAdapter.delegate = vc;
    _tableAdapter.delegate = vc;
    //: vc.tableView.delegate = _tableAdapter;
    vc.tableView.delegate = _tableAdapter;
    //: vc.tableView.dataSource = _tableAdapter;
    vc.tableView.dataSource = _tableAdapter;


    //: [vc setInteractor:_interactor];
    [vc setInteractor:_interactor];
}


//: @end
@end