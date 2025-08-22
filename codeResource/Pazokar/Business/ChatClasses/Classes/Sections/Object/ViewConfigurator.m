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
//: #import "BusySessionConfigurator.h"
#import "ViewConfigurator.h"
//: #import "BusySessionMsgDatasource.h"
#import "EparchyDatasource.h"
//: #import "BusySessionInteractorImpl.h"
#import "FasteningBar.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "BusyMessageModel.h"
#import "MoreModel.h"
//: #import "BusyGlobalMacro.h"
#import "BusyGlobalMacro.h"
//: #import "BusySessionInteractorImpl.h"
#import "FasteningBar.h"
//: #import "BusySessionDataSourceImpl.h"
#import "NameCenter.h"
//: #import "BusySessionLayoutImpl.h"
#import "NamePraiseVersion.h"
//: #import "BusySessionTableAdapter.h"
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

//: @interface BusySessionConfigurator()
@interface ViewConfigurator()

//: @property (nonatomic,strong) BusySessionInteractorImpl *interactor;
@property (nonatomic,strong) FasteningBar *interactor;

//: @property (nonatomic,strong) BusySessionTableAdapter *tableAdapter;
@property (nonatomic,strong) PinAdapter *tableAdapter;

//: @end
@end

//: @implementation BusySessionConfigurator
@implementation ViewConfigurator

//: - (void)setup:(BusySessionViewController *)vc
- (void)actionDownTitle:(DirectionViewController *)vc
{
    //: NIMSession *session = vc.session;
    NIMSession *session = vc.session;
    //: id<BusySessionConfig> sessionConfig = vc.sessionConfig;
    id<QuantityelligenceInformationCan> sessionConfig = vc.sessionConfig;
    //: UITableView *tableView = vc.tableView;
    UITableView *tableView = vc.tableView;
    //: BusyInputView *inputView = vc.sessionInputView;
    StateView *inputView = vc.sessionInputView;

    //: BusySessionDataSourceImpl *datasource = [[BusySessionDataSourceImpl alloc] initWithSession:session config:sessionConfig];
    NameCenter *datasource = [[NameCenter alloc] initWithName:session comment:sessionConfig];
    //: BusySessionLayoutImpl *layout = [[BusySessionLayoutImpl alloc] initWithSession:session config:sessionConfig];
    NamePraiseVersion *layout = [[NamePraiseVersion alloc] initWithHideTool:session indexConfig:sessionConfig];
    //: layout.tableView = tableView;
    layout.tableView = tableView;
    //: layout.inputView = inputView;
    layout.inputView = inputView;


    //: _interactor = [[BusySessionInteractorImpl alloc] initWithSession:session config:sessionConfig];
    _interactor = [[FasteningBar alloc] initWithSession:session distance:sessionConfig];
    //: _interactor.delegate = vc;
    _interactor.delegate = vc;
    //: _interactor.dataSource = datasource;
    _interactor.dataSource = datasource;
    //: _interactor.layout = layout;
    _interactor.layout = layout;

    //: [layout setDelegate:_interactor];
    [layout setDelegate:_interactor];

    //: _tableAdapter = [[BusySessionTableAdapter alloc] init];
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
