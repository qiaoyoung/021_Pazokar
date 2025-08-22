
#import <Foundation/Foundation.h>

NSString *StringFromCompartmentData(Byte *data);


//: 松开刷新...
Byte dream_pateReadStr[] = {94, 15, 50, 8, 141, 123, 148, 252, 24, 207, 240, 23, 238, 178, 23, 186, 233, 24, 200, 226, 96, 96, 96, 187};

//: Pull to refresh...
Byte appInkData[] = {88, 18, 40, 5, 122, 120, 157, 148, 148, 72, 156, 151, 72, 154, 141, 142, 154, 141, 155, 144, 86, 86, 86, 220};

//: contentSize
Byte app_currentlyKey[] = {12, 11, 96, 9, 42, 252, 20, 194, 137, 195, 207, 206, 212, 197, 206, 212, 179, 201, 218, 197, 84};

//: frame
Byte dreamNameViewHaoFormat[] = {1, 5, 10, 11, 103, 70, 245, 80, 85, 23, 103, 112, 124, 107, 119, 111, 152};

//: 下拉加载...
Byte userHmStr[] = {71, 15, 4, 9, 17, 128, 125, 169, 61, 232, 188, 143, 234, 143, 141, 233, 142, 164, 236, 193, 193, 50, 50, 50, 6};

//: SVPullToRefreshView
Byte kWithTightenValue[] = {91, 19, 3, 8, 25, 62, 207, 166, 86, 89, 83, 120, 111, 111, 87, 114, 85, 104, 105, 117, 104, 118, 107, 89, 108, 104, 122, 111};

//: 加载中...
Byte main_labelMsg[] = {37, 12, 22, 7, 222, 103, 79, 251, 160, 182, 254, 211, 211, 250, 206, 195, 68, 68, 68, 114};

//: contentOffset
Byte user_mentorKey[] = {31, 13, 28, 9, 139, 144, 120, 176, 252, 127, 139, 138, 144, 129, 138, 144, 107, 130, 130, 143, 129, 144, 47};

// __DEBUG__
// __CLOSE_PRINT__
//
// UIScrollView+Child.m
//
//  Created by chris on 15/2/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//

// __M_A_C_R_O__
//: #import <QuartzCore/QuartzCore.h>
#import <QuartzCore/QuartzCore.h>
//: #import "UIScrollView+NTESPullToRefresh.h"
#import "UIScrollView+Child.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: static CGFloat const NTESPullToRefreshViewHeight = 60;
static CGFloat const showIconTitle = 60;

//: @interface NTESPullToRefreshArrow : UIView
@interface TitleView : UIView

//: @property (nonatomic, strong) UIColor *arrowColor;
@property (nonatomic, strong) UIColor *arrowColor;

//: @end
@end


//: @interface NTESPullToRefreshView ()
@interface PutUpView ()

//: @property (nonatomic, copy) void (^pullToRefreshActionHandler)(void);
@property (nonatomic, copy) void (^pullToRefreshActionHandler)(void);

//: @property (nonatomic, strong) NTESPullToRefreshArrow *arrow;
@property (nonatomic, strong) TitleView *arrow;
//: @property (nonatomic, strong) UIActivityIndicatorView *activityIndicatorView;
@property (nonatomic, strong) UIActivityIndicatorView *activityIndicatorView;
//: @property (nonatomic, strong, readwrite) UILabel *titleLabel;
@property (nonatomic, strong, readwrite) UILabel *titleLabel;
//: @property (nonatomic, strong, readwrite) UILabel *subtitleLabel;
@property (nonatomic, strong, readwrite) UILabel *subtitleLabel;
//: @property (nonatomic, readwrite) NTESPullToRefreshState state;
@property (nonatomic, readwrite) NTESPullToRefreshState state;
//: @property (nonatomic, readwrite) NTESPullToRefreshPosition position;
@property (nonatomic, readwrite) NTESPullToRefreshPosition position;

//: @property (nonatomic, strong) NSMutableArray *titles;
@property (nonatomic, strong) NSMutableArray *titles;
//: @property (nonatomic, strong) NSMutableArray *subtitles;
@property (nonatomic, strong) NSMutableArray *subtitles;
//: @property (nonatomic, strong) NSMutableArray *viewForState;
@property (nonatomic, strong) NSMutableArray *viewForState;

//: @property (nonatomic, weak) UIScrollView *scrollView;
@property (nonatomic, weak) UIScrollView *scrollView;
//: @property (nonatomic, readwrite) CGFloat originalTopInset;
@property (nonatomic, readwrite) CGFloat originalTopInset;
//: @property (nonatomic, readwrite) CGFloat originalBottomInset;
@property (nonatomic, readwrite) CGFloat originalBottomInset;

//: @property (nonatomic, assign) BOOL wasTriggeredByUser;
@property (nonatomic, assign) BOOL wasTriggeredByUser;
//: @property (nonatomic, assign) BOOL showsPullToRefresh;
@property (nonatomic, assign) BOOL showsPullToRefresh;
//: @property (nonatomic, assign) BOOL showsDateLabel;
@property (nonatomic, assign) BOOL showsDateLabel;
//: @property(nonatomic, assign) BOOL isObserving;
@property(nonatomic, assign) BOOL isObserving;

//: - (void)resetScrollViewContentInset;
- (void)viewInset;
//: - (void)setScrollViewContentInsetForLoading;
- (void)key;
//: - (void)setScrollViewContentInset:(UIEdgeInsets)insets;
- (void)setCanInset:(UIEdgeInsets)insets;
//: - (void)rotateArrow:(float)degrees hide:(BOOL)hide;
- (void)tip:(float)degrees titleSessionDoing:(BOOL)hide;

//: @end
@end



//: #pragma mark - UIScrollView (NTESPullToRefresh)
#pragma mark - UIScrollView (Child)


//: static char UIScrollViewPullToRefreshView;
static char mLocationPath;

//: @implementation UIScrollView (NTESPullToRefresh)
@implementation UIScrollView (Child)

//: @dynamic pullToRefreshView, showsPullToRefresh;
@dynamic pullToRefreshView, showsPullToRefresh;

//: - (void)addPullToRefreshWithActionHandler:(void (^)(void))actionHandler position:(NTESPullToRefreshPosition)position {
- (void)text:(void (^)(void))actionHandler person:(NTESPullToRefreshPosition)position {

    //: if(!self.pullToRefreshView) {
    if(!self.pullToRefreshView) {
        //: CGFloat yOrigin;
        CGFloat yOrigin;
        //: switch (position) {
        switch (position) {
            //: case NTESPullToRefreshPositionTop:
            case NTESPullToRefreshPositionTop:
                //: yOrigin = -NTESPullToRefreshViewHeight;
                yOrigin = -showIconTitle;
                //: break;
                break;
            //: case NTESPullToRefreshPositionBottom:
            case NTESPullToRefreshPositionBottom:
                //: yOrigin = self.contentSize.height;
                yOrigin = self.contentSize.height;
                //: break;
                break;
            //: default:
            default:
                //: return;
                return;
        }
        //: NTESPullToRefreshView *view = [[NTESPullToRefreshView alloc] initWithFrame:CGRectMake(0, yOrigin, self.bounds.size.width, NTESPullToRefreshViewHeight)];
        PutUpView *view = [[PutUpView alloc] initWithFrame:CGRectMake(0, yOrigin, self.bounds.size.width, showIconTitle)];
        //: view.pullToRefreshActionHandler = actionHandler;
        view.pullToRefreshActionHandler = actionHandler;
        //: view.scrollView = self;
        view.scrollView = self;
        //: [self addSubview:view];
        [self addSubview:view];

        //: view.originalTopInset = self.contentInset.top;
        view.originalTopInset = self.contentInset.top;
        //: view.originalBottomInset = self.contentInset.bottom;
        view.originalBottomInset = self.contentInset.bottom;
        //: view.position = position;
        view.position = position;
        //: self.pullToRefreshView = view;
        self.pullToRefreshView = view;
        //: self.showsPullToRefresh = YES;
        self.showsPullToRefresh = YES;
    }

}

//: - (void)addPullToRefreshWithActionHandler:(void (^)(void))actionHandler {
- (void)count:(void (^)(void))actionHandler {
    //: [self addPullToRefreshWithActionHandler:actionHandler position:NTESPullToRefreshPositionTop];
    [self text:actionHandler person:NTESPullToRefreshPositionTop];
}

//: - (void)triggerPullToRefresh {
- (void)reload {
    //: self.pullToRefreshView.state = NTESPullToRefreshStateTriggered;
    self.pullToRefreshView.state = NTESPullToRefreshStateTriggered;
    //: [self.pullToRefreshView startAnimating];
    [self.pullToRefreshView ting];
}

//: - (void)setPullToRefreshView:(NTESPullToRefreshView *)pullToRefreshView {
- (void)setPullToRefreshView:(PutUpView *)pullToRefreshView {
    //: [self willChangeValueForKey:@"SVPullToRefreshView"];
    [self willChangeValueForKey:StringFromCompartmentData(kWithTightenValue)];
    //: objc_setAssociatedObject(self, &UIScrollViewPullToRefreshView,
    objc_setAssociatedObject(self, &mLocationPath,
                             //: pullToRefreshView,
                             pullToRefreshView,
                             //: OBJC_ASSOCIATION_ASSIGN);
                             OBJC_ASSOCIATION_ASSIGN);
    //: [self didChangeValueForKey:@"SVPullToRefreshView"];
    [self didChangeValueForKey:StringFromCompartmentData(kWithTightenValue)];
}

//: - (NTESPullToRefreshView *)pullToRefreshView {
- (PutUpView *)pullToRefreshView {
    //: return objc_getAssociatedObject(self, &UIScrollViewPullToRefreshView);
    return objc_getAssociatedObject(self, &mLocationPath);
}

//: - (void)setShowsPullToRefresh:(BOOL)showsPullToRefresh {
- (void)setShowsPullToRefresh:(BOOL)showsPullToRefresh {
    //: self.pullToRefreshView.hidden = !showsPullToRefresh;
    self.pullToRefreshView.hidden = !showsPullToRefresh;

    //: if(!showsPullToRefresh) {
    if(!showsPullToRefresh) {
        //: if (self.pullToRefreshView.isObserving) {
        if (self.pullToRefreshView.isObserving) {
            //: [self removeObserver:self.pullToRefreshView forKeyPath:@"contentOffset"];
            [self removeObserver:self.pullToRefreshView forKeyPath:StringFromCompartmentData(user_mentorKey)];
            //: [self removeObserver:self.pullToRefreshView forKeyPath:@"contentSize"];
            [self removeObserver:self.pullToRefreshView forKeyPath:StringFromCompartmentData(app_currentlyKey)];
            //: [self removeObserver:self.pullToRefreshView forKeyPath:@"frame"];
            [self removeObserver:self.pullToRefreshView forKeyPath:StringFromCompartmentData(dreamNameViewHaoFormat)];
            //: [self.pullToRefreshView resetScrollViewContentInset];
            [self.pullToRefreshView viewInset];
            //: self.pullToRefreshView.isObserving = NO;
            self.pullToRefreshView.isObserving = NO;
        }
    }
    //: else {
    else {
        //: if (!self.pullToRefreshView.isObserving) {
        if (!self.pullToRefreshView.isObserving) {
            //: [self addObserver:self.pullToRefreshView forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew context:nil];
            [self addObserver:self.pullToRefreshView forKeyPath:StringFromCompartmentData(user_mentorKey) options:NSKeyValueObservingOptionNew context:nil];
            //: [self addObserver:self.pullToRefreshView forKeyPath:@"contentSize" options:NSKeyValueObservingOptionNew context:nil];
            [self addObserver:self.pullToRefreshView forKeyPath:StringFromCompartmentData(app_currentlyKey) options:NSKeyValueObservingOptionNew context:nil];
            //: [self addObserver:self.pullToRefreshView forKeyPath:@"frame" options:NSKeyValueObservingOptionNew context:nil];
            [self addObserver:self.pullToRefreshView forKeyPath:StringFromCompartmentData(dreamNameViewHaoFormat) options:NSKeyValueObservingOptionNew context:nil];
            //: self.pullToRefreshView.isObserving = YES;
            self.pullToRefreshView.isObserving = YES;

            //: CGFloat yOrigin = 0;
            CGFloat yOrigin = 0;
            //: switch (self.pullToRefreshView.position) {
            switch (self.pullToRefreshView.position) {
                //: case NTESPullToRefreshPositionTop:
                case NTESPullToRefreshPositionTop:
                    //: yOrigin = -NTESPullToRefreshViewHeight;
                    yOrigin = -showIconTitle;
                    //: break;
                    break;
                //: case NTESPullToRefreshPositionBottom:
                case NTESPullToRefreshPositionBottom:
                    //: yOrigin = self.contentSize.height;
                    yOrigin = self.contentSize.height;
                    //: break;
                    break;
            }

            //: self.pullToRefreshView.frame = CGRectMake(0, yOrigin, self.bounds.size.width, NTESPullToRefreshViewHeight);
            self.pullToRefreshView.frame = CGRectMake(0, yOrigin, self.bounds.size.width, showIconTitle);
        }
    }
}

//: - (BOOL)showsPullToRefresh {
- (BOOL)showsPullToRefresh {
    //: return !self.pullToRefreshView.hidden;
    return !self.pullToRefreshView.hidden;
}

//: @end
@end

//: #pragma mark - NTESPullToRefresh
#pragma mark - Child
//: @implementation NTESPullToRefreshView
@implementation PutUpView

// public properties
//: @synthesize pullToRefreshActionHandler, arrowColor, textColor, activityIndicatorViewColor, activityIndicatorViewStyle;
@synthesize pullToRefreshActionHandler, arrowColor, textColor, activityIndicatorViewColor, activityIndicatorViewStyle;

//: @synthesize state = _state;
@synthesize state = _state;
//: @synthesize scrollView = _scrollView;
@synthesize scrollView = _scrollView;
//: @synthesize showsPullToRefresh = _showsPullToRefresh;
@synthesize showsPullToRefresh = _showsPullToRefresh;
//: @synthesize arrow = _arrow;
@synthesize arrow = _arrow;
//: @synthesize activityIndicatorView = _activityIndicatorView;
@synthesize activityIndicatorView = _activityIndicatorView;

//: @synthesize titleLabel = _titleLabel;
@synthesize titleLabel = _titleLabel;


//: - (id)initWithFrame:(CGRect)frame {
- (id)initWithFrame:(CGRect)frame {
    //: if(self = [super initWithFrame:frame]) {
    if(self = [super initWithFrame:frame]) {

        // default styling values
        //: self.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
        self.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
        //: self.textColor = [UIColor darkGrayColor];
        self.textColor = [UIColor darkGrayColor];
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: self.state = NTESPullToRefreshStateStopped;
        self.state = NTESPullToRefreshStateStopped;
        //: self.showsDateLabel = NO;
        self.showsDateLabel = NO;

        //: self.titles = [NSMutableArray arrayWithObjects:NSLocalizedString(@"下拉加载...",),
        self.titles = [NSMutableArray arrayWithObjects:NSLocalizedString(StringFromCompartmentData(userHmStr),),
                       //: NSLocalizedString(@"松开刷新...",),
                       NSLocalizedString(StringFromCompartmentData(dream_pateReadStr),),
                       //: NSLocalizedString(@"加载中...",),
                       NSLocalizedString(StringFromCompartmentData(main_labelMsg),),
                       //: nil];
                       nil];

        //: self.subtitles = [NSMutableArray arrayWithObjects:@"", @"", @"", @"", nil];
        self.subtitles = [NSMutableArray arrayWithObjects:@"", @"", @"", @"", nil];
        //: self.viewForState = [NSMutableArray arrayWithObjects:@"", @"", @"", @"", nil];
        self.viewForState = [NSMutableArray arrayWithObjects:@"", @"", @"", @"", nil];
        //: self.wasTriggeredByUser = YES;
        self.wasTriggeredByUser = YES;
    }

    //: return self;
    return self;
}

//: - (void)willMoveToSuperview:(UIView *)newSuperview {
- (void)willMoveToSuperview:(UIView *)newSuperview {
    //: if (self.superview && newSuperview == nil) {
    if (self.superview && newSuperview == nil) {
        //use self.superview, not self.scrollView. Why self.scrollView == nil here?
        //: UIScrollView *scrollView = (UIScrollView *)self.superview;
        UIScrollView *scrollView = (UIScrollView *)self.superview;
        //: if (scrollView.showsPullToRefresh) {
        if (scrollView.showsPullToRefresh) {
            //: if (self.isObserving) {
            if (self.isObserving) {
                //If enter this branch, it is the moment just before "SVPullToRefreshView's dealloc", so remove observer here
                //: [scrollView removeObserver:self forKeyPath:@"contentOffset"];
                [scrollView removeObserver:self forKeyPath:StringFromCompartmentData(user_mentorKey)];
                //: [scrollView removeObserver:self forKeyPath:@"contentSize"];
                [scrollView removeObserver:self forKeyPath:StringFromCompartmentData(app_currentlyKey)];
                //: [scrollView removeObserver:self forKeyPath:@"frame"];
                [scrollView removeObserver:self forKeyPath:StringFromCompartmentData(dreamNameViewHaoFormat)];
                //: self.isObserving = NO;
                self.isObserving = NO;
            }
        }
    }
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {

    //: for(id otherView in self.viewForState) {
    for(id otherView in self.viewForState) {
        //: if([otherView isKindOfClass:[UIView class]])
        if([otherView isKindOfClass:[UIView class]])
            //: [otherView removeFromSuperview];
            [otherView removeFromSuperview];
    }

    //: id customView = [self.viewForState objectAtIndex:self.state];
    id customView = [self.viewForState objectAtIndex:self.state];
    //: BOOL hasCustomView = [customView isKindOfClass:[UIView class]];
    BOOL hasCustomView = [customView isKindOfClass:[UIView class]];

    //: self.titleLabel.hidden = hasCustomView;
    self.titleLabel.hidden = hasCustomView;
    //: self.subtitleLabel.hidden = hasCustomView;
    self.subtitleLabel.hidden = hasCustomView;
    //: self.arrow.hidden = hasCustomView;
    self.arrow.hidden = hasCustomView;

    //: if(hasCustomView) {
    if(hasCustomView) {
        //: [self addSubview:customView];
        [self addSubview:customView];
        //: CGRect viewBounds = [customView bounds];
        CGRect viewBounds = [customView bounds];
        //: CGPoint origin = CGPointMake(roundf((self.bounds.size.width-viewBounds.size.width)/2), roundf((self.bounds.size.height-viewBounds.size.height)/2));
        CGPoint origin = CGPointMake(roundf((self.bounds.size.width-viewBounds.size.width)/2), roundf((self.bounds.size.height-viewBounds.size.height)/2));
        //: [customView setFrame:CGRectMake(origin.x, origin.y, viewBounds.size.width, viewBounds.size.height)];
        [customView setFrame:CGRectMake(origin.x, origin.y, viewBounds.size.width, viewBounds.size.height)];
    }
    //: else {
    else {
        //: switch (self.state) {
        switch (self.state) {
            //: case NTESPullToRefreshStateAll:
            case NTESPullToRefreshStateAll:
            //: case NTESPullToRefreshStateStopped:
            case NTESPullToRefreshStateStopped:
                //: self.arrow.alpha = 1;
                self.arrow.alpha = 1;
                //: [self.activityIndicatorView stopAnimating];
                [self.activityIndicatorView stopAnimating];
                //: switch (self.position) {
                switch (self.position) {
                    //: case NTESPullToRefreshPositionTop:
                    case NTESPullToRefreshPositionTop:
                        //: [self rotateArrow:0 hide:NO];
                        [self tip:0 titleSessionDoing:NO];
                        //: break;
                        break;
                    //: case NTESPullToRefreshPositionBottom:
                    case NTESPullToRefreshPositionBottom:
                        //: [self rotateArrow:(float)3.14159265358979323846264338327950288 hide:NO];
                        [self tip:(float)3.14159265358979323846264338327950288 titleSessionDoing:NO];
                        //: break;
                        break;
                }
                //: break;
                break;

            //: case NTESPullToRefreshStateTriggered:
            case NTESPullToRefreshStateTriggered:
                //: switch (self.position) {
                switch (self.position) {
                    //: case NTESPullToRefreshPositionTop:
                    case NTESPullToRefreshPositionTop:
                        //: [self rotateArrow:(float)3.14159265358979323846264338327950288 hide:NO];
                        [self tip:(float)3.14159265358979323846264338327950288 titleSessionDoing:NO];
                        //: break;
                        break;
                    //: case NTESPullToRefreshPositionBottom:
                    case NTESPullToRefreshPositionBottom:
                        //: [self rotateArrow:0 hide:NO];
                        [self tip:0 titleSessionDoing:NO];
                        //: break;
                        break;
                }
                //: break;
                break;

            //: case NTESPullToRefreshStateLoading:
            case NTESPullToRefreshStateLoading:
                //: [self.activityIndicatorView startAnimating];
                [self.activityIndicatorView startAnimating];
                //: switch (self.position) {
                switch (self.position) {
                    //: case NTESPullToRefreshPositionTop:
                    case NTESPullToRefreshPositionTop:
                        //: [self rotateArrow:0 hide:YES];
                        [self tip:0 titleSessionDoing:YES];
                        //: break;
                        break;
                    //: case NTESPullToRefreshPositionBottom:
                    case NTESPullToRefreshPositionBottom:
                        //: [self rotateArrow:(float)3.14159265358979323846264338327950288 hide:YES];
                        [self tip:(float)3.14159265358979323846264338327950288 titleSessionDoing:YES];
                        //: break;
                        break;
                }
                //: break;
                break;
        }

        //: CGFloat leftViewWidth = ((self.arrow.bounds.size.width) > (self.activityIndicatorView.bounds.size.width) ? (self.arrow.bounds.size.width) : (self.activityIndicatorView.bounds.size.width));
        CGFloat leftViewWidth = ((self.arrow.bounds.size.width) > (self.activityIndicatorView.bounds.size.width) ? (self.arrow.bounds.size.width) : (self.activityIndicatorView.bounds.size.width));

        //: CGFloat margin = 10;
        CGFloat margin = 10;
        //: CGFloat marginY = 2;
        CGFloat marginY = 2;
        //: CGFloat labelMaxWidth = self.bounds.size.width - margin - leftViewWidth;
        CGFloat labelMaxWidth = self.bounds.size.width - margin - leftViewWidth;

        //: self.titleLabel.text = [self.titles objectAtIndex:self.state];
        self.titleLabel.text = [self.titles objectAtIndex:self.state];

        //: NSString *subtitle = [self.subtitles objectAtIndex:self.state];
        NSString *subtitle = [self.subtitles objectAtIndex:self.state];
        //: self.subtitleLabel.text = subtitle.length > 0 ? subtitle : nil;
        self.subtitleLabel.text = subtitle.length > 0 ? subtitle : nil;


        //: CGSize titleSize = [self.titleLabel.text boundingRectWithSize:CGSizeMake(labelMaxWidth,self.titleLabel.font.lineHeight)
        CGSize titleSize = [self.titleLabel.text boundingRectWithSize:CGSizeMake(labelMaxWidth,self.titleLabel.font.lineHeight)
                                          //: options:(NSStringDrawingUsesFontLeading|NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin)
                                          options:(NSStringDrawingUsesFontLeading|NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin)
                                       //: attributes:@{NSFontAttributeName: self.titleLabel.font}
                                       attributes:@{NSFontAttributeName: self.titleLabel.font}
                                          //: context:NULL].size;
                                          context:NULL].size;

        //: CGSize subtitleSize = [self.subtitleLabel.text boundingRectWithSize:CGSizeMake(labelMaxWidth,self.subtitleLabel.font.lineHeight)
        CGSize subtitleSize = [self.subtitleLabel.text boundingRectWithSize:CGSizeMake(labelMaxWidth,self.subtitleLabel.font.lineHeight)
                                                              //: options:(NSStringDrawingUsesFontLeading|NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin)
                                                              options:(NSStringDrawingUsesFontLeading|NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin)
                                                           //: attributes:@{NSFontAttributeName: self.subtitleLabel.font}
                                                           attributes:@{NSFontAttributeName: self.subtitleLabel.font}
                                                              //: context:NULL].size;
                                                              context:NULL].size;

        //: CGFloat maxLabelWidth = ((titleSize.width) > (subtitleSize.width) ? (titleSize.width) : (subtitleSize.width));
        CGFloat maxLabelWidth = ((titleSize.width) > (subtitleSize.width) ? (titleSize.width) : (subtitleSize.width));

        //: CGFloat totalMaxWidth;
        CGFloat totalMaxWidth;
        //: if (maxLabelWidth) {
        if (maxLabelWidth) {
            //: totalMaxWidth = leftViewWidth + margin + maxLabelWidth;
            totalMaxWidth = leftViewWidth + margin + maxLabelWidth;
        //: } else {
        } else {
            //: totalMaxWidth = leftViewWidth + maxLabelWidth;
            totalMaxWidth = leftViewWidth + maxLabelWidth;
        }

        //: CGFloat labelX = (self.bounds.size.width / 2) - (totalMaxWidth / 2) + leftViewWidth + margin;
        CGFloat labelX = (self.bounds.size.width / 2) - (totalMaxWidth / 2) + leftViewWidth + margin;

        //: if(subtitleSize.height > 0){
        if(subtitleSize.height > 0){
            //: CGFloat totalHeight = titleSize.height + subtitleSize.height + marginY;
            CGFloat totalHeight = titleSize.height + subtitleSize.height + marginY;
            //: CGFloat minY = (self.bounds.size.height / 2) - (totalHeight / 2);
            CGFloat minY = (self.bounds.size.height / 2) - (totalHeight / 2);

            //: CGFloat titleY = minY;
            CGFloat titleY = minY;
            //: self.titleLabel.frame = CGRectIntegral(CGRectMake(labelX, titleY, titleSize.width, titleSize.height));
            self.titleLabel.frame = CGRectIntegral(CGRectMake(labelX, titleY, titleSize.width, titleSize.height));
            //: self.subtitleLabel.frame = CGRectIntegral(CGRectMake(labelX, titleY + titleSize.height + marginY, subtitleSize.width, subtitleSize.height));
            self.subtitleLabel.frame = CGRectIntegral(CGRectMake(labelX, titleY + titleSize.height + marginY, subtitleSize.width, subtitleSize.height));
        //: }else{
        }else{
            //: CGFloat totalHeight = titleSize.height;
            CGFloat totalHeight = titleSize.height;
            //: CGFloat minY = (self.bounds.size.height / 2) - (totalHeight / 2);
            CGFloat minY = (self.bounds.size.height / 2) - (totalHeight / 2);

            //: CGFloat titleY = minY;
            CGFloat titleY = minY;
            //: self.titleLabel.frame = CGRectIntegral(CGRectMake(labelX, titleY, titleSize.width, titleSize.height));
            self.titleLabel.frame = CGRectIntegral(CGRectMake(labelX, titleY, titleSize.width, titleSize.height));
            //: self.subtitleLabel.frame = CGRectIntegral(CGRectMake(labelX, titleY + titleSize.height + marginY, subtitleSize.width, subtitleSize.height));
            self.subtitleLabel.frame = CGRectIntegral(CGRectMake(labelX, titleY + titleSize.height + marginY, subtitleSize.width, subtitleSize.height));
        }

        //: CGFloat arrowX = (self.bounds.size.width / 2) - (totalMaxWidth / 2) + (leftViewWidth - self.arrow.bounds.size.width) / 2;
        CGFloat arrowX = (self.bounds.size.width / 2) - (totalMaxWidth / 2) + (leftViewWidth - self.arrow.bounds.size.width) / 2;
        //: self.arrow.frame = CGRectMake(arrowX,
        self.arrow.frame = CGRectMake(arrowX,
                                      //: (self.bounds.size.height / 2) - (self.arrow.bounds.size.height / 2),
                                      (self.bounds.size.height / 2) - (self.arrow.bounds.size.height / 2),
                                      //: self.arrow.bounds.size.width,
                                      self.arrow.bounds.size.width,
                                      //: self.arrow.bounds.size.height);
                                      self.arrow.bounds.size.height);
        //: self.activityIndicatorView.center = self.arrow.center;
        self.activityIndicatorView.center = self.arrow.center;
    }
}

//: #pragma mark - Scroll View
#pragma mark - Scroll View

//: - (void)resetScrollViewContentInset {
- (void)viewInset {
    //: UIEdgeInsets currentInsets = self.scrollView.contentInset;
    UIEdgeInsets currentInsets = self.scrollView.contentInset;
    //: switch (self.position) {
    switch (self.position) {
        //: case NTESPullToRefreshPositionTop:
        case NTESPullToRefreshPositionTop:
            //: currentInsets.top = self.originalTopInset;
            currentInsets.top = self.originalTopInset;
            //: break;
            break;
        //: case NTESPullToRefreshPositionBottom:
        case NTESPullToRefreshPositionBottom:
            //: currentInsets.bottom = self.originalBottomInset;
            currentInsets.bottom = self.originalBottomInset;
            //: currentInsets.top = self.originalTopInset;
            currentInsets.top = self.originalTopInset;
            //: break;
            break;
    }
    //: [self setScrollViewContentInset:currentInsets];
    [self setCanInset:currentInsets];
}

//: - (void)setScrollViewContentInsetForLoading {
- (void)key {
    //: CGFloat offset = ((self.scrollView.contentOffset.y * -1) > (0) ? (self.scrollView.contentOffset.y * -1) : (0));
    CGFloat offset = ((self.scrollView.contentOffset.y * -1) > (0) ? (self.scrollView.contentOffset.y * -1) : (0));
    //: UIEdgeInsets currentInsets = self.scrollView.contentInset;
    UIEdgeInsets currentInsets = self.scrollView.contentInset;
    //: switch (self.position) {
    switch (self.position) {
        //: case NTESPullToRefreshPositionTop:
        case NTESPullToRefreshPositionTop:
            //: currentInsets.top = ((offset) < (self.originalTopInset + self.bounds.size.height) ? (offset) : (self.originalTopInset + self.bounds.size.height));
            currentInsets.top = ((offset) < (self.originalTopInset + self.bounds.size.height) ? (offset) : (self.originalTopInset + self.bounds.size.height));
            //: break;
            break;
        //: case NTESPullToRefreshPositionBottom:
        case NTESPullToRefreshPositionBottom:
            //: currentInsets.bottom = ((offset) < (self.originalBottomInset + self.bounds.size.height) ? (offset) : (self.originalBottomInset + self.bounds.size.height));
            currentInsets.bottom = ((offset) < (self.originalBottomInset + self.bounds.size.height) ? (offset) : (self.originalBottomInset + self.bounds.size.height));
            //: break;
            break;
    }
    //: [self setScrollViewContentInset:currentInsets];
    [self setCanInset:currentInsets];
}

//: - (void)setScrollViewContentInset:(UIEdgeInsets)contentInset {
- (void)setCanInset:(UIEdgeInsets)contentInset {
    //: [UIView animateWithDuration:0.3
    [UIView animateWithDuration:0.3
                          //: delay:0
                          delay:0
                        //: options:UIViewAnimationOptionAllowUserInteraction|UIViewAnimationOptionBeginFromCurrentState
                        options:UIViewAnimationOptionAllowUserInteraction|UIViewAnimationOptionBeginFromCurrentState
                     //: animations:^{
                     animations:^{
                         //: self.scrollView.contentInset = contentInset;
                         self.scrollView.contentInset = contentInset;
                     }
                     //: completion:NULL];
                     completion:NULL];
}

//: #pragma mark - Observing
#pragma mark - Observing

//: - (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    //: if([keyPath isEqualToString:@"contentOffset"])
    if([keyPath isEqualToString:StringFromCompartmentData(user_mentorKey)])
        //: [self scrollViewDidScroll:[[change valueForKey:NSKeyValueChangeNewKey] CGPointValue]];
        [self change:[[change valueForKey:NSKeyValueChangeNewKey] CGPointValue]];
    //: else if([keyPath isEqualToString:@"contentSize"]) {
    else if([keyPath isEqualToString:StringFromCompartmentData(app_currentlyKey)]) {
        //: [self layoutSubviews];
        [self layoutSubviews];

        //: CGFloat yOrigin;
        CGFloat yOrigin;
        //: switch (self.position) {
        switch (self.position) {
            //: case NTESPullToRefreshPositionTop:
            case NTESPullToRefreshPositionTop:
                //: yOrigin = -NTESPullToRefreshViewHeight;
                yOrigin = -showIconTitle;
                //: break;
                break;
            //: case NTESPullToRefreshPositionBottom:
            case NTESPullToRefreshPositionBottom:
                //: yOrigin = ((self.scrollView.contentSize.height) > (self.scrollView.bounds.size.height) ? (self.scrollView.contentSize.height) : (self.scrollView.bounds.size.height));
                yOrigin = ((self.scrollView.contentSize.height) > (self.scrollView.bounds.size.height) ? (self.scrollView.contentSize.height) : (self.scrollView.bounds.size.height));
                //: break;
                break;
        }
        //: self.frame = CGRectMake(0, yOrigin, self.bounds.size.width, NTESPullToRefreshViewHeight);
        self.frame = CGRectMake(0, yOrigin, self.bounds.size.width, showIconTitle);
    }
    //: else if([keyPath isEqualToString:@"frame"])
    else if([keyPath isEqualToString:StringFromCompartmentData(dreamNameViewHaoFormat)])
        //: [self layoutSubviews];
        [self layoutSubviews];

}

//: - (void)scrollViewDidScroll:(CGPoint)contentOffset {
- (void)change:(CGPoint)contentOffset {
    //: if(self.state != NTESPullToRefreshStateLoading) {
    if(self.state != NTESPullToRefreshStateLoading) {
        //: CGFloat scrollOffsetThreshold = 0;
        CGFloat scrollOffsetThreshold = 0;
        //: switch (self.position) {
        switch (self.position) {
            //: case NTESPullToRefreshPositionTop:
            case NTESPullToRefreshPositionTop:
                //: scrollOffsetThreshold = self.frame.origin.y - self.originalTopInset;
                scrollOffsetThreshold = self.frame.origin.y - self.originalTopInset;
                //: break;
                break;
            //: case NTESPullToRefreshPositionBottom:
            case NTESPullToRefreshPositionBottom:
                //: scrollOffsetThreshold = ((self.scrollView.contentSize.height - self.scrollView.bounds.size.height) > (0.0f) ? (self.scrollView.contentSize.height - self.scrollView.bounds.size.height) : (0.0f)) + self.bounds.size.height + self.originalBottomInset;
                scrollOffsetThreshold = ((self.scrollView.contentSize.height - self.scrollView.bounds.size.height) > (0.0f) ? (self.scrollView.contentSize.height - self.scrollView.bounds.size.height) : (0.0f)) + self.bounds.size.height + self.originalBottomInset;
                //: break;
                break;
        }

        //: if(!self.scrollView.isDragging && self.state == NTESPullToRefreshStateTriggered)
        if(!self.scrollView.isDragging && self.state == NTESPullToRefreshStateTriggered)
            //: self.state = NTESPullToRefreshStateLoading;
            self.state = NTESPullToRefreshStateLoading;
        //: else if(contentOffset.y < scrollOffsetThreshold && self.scrollView.isDragging && self.state == NTESPullToRefreshStateStopped && self.position == NTESPullToRefreshPositionTop)
        else if(contentOffset.y < scrollOffsetThreshold && self.scrollView.isDragging && self.state == NTESPullToRefreshStateStopped && self.position == NTESPullToRefreshPositionTop)
            //: self.state = NTESPullToRefreshStateTriggered;
            self.state = NTESPullToRefreshStateTriggered;
        //: else if(contentOffset.y >= scrollOffsetThreshold && self.state != NTESPullToRefreshStateStopped && self.position == NTESPullToRefreshPositionTop)
        else if(contentOffset.y >= scrollOffsetThreshold && self.state != NTESPullToRefreshStateStopped && self.position == NTESPullToRefreshPositionTop)
            //: self.state = NTESPullToRefreshStateStopped;
            self.state = NTESPullToRefreshStateStopped;
        //: else if(contentOffset.y > scrollOffsetThreshold && self.scrollView.isDragging && self.state == NTESPullToRefreshStateStopped && self.position == NTESPullToRefreshPositionBottom)
        else if(contentOffset.y > scrollOffsetThreshold && self.scrollView.isDragging && self.state == NTESPullToRefreshStateStopped && self.position == NTESPullToRefreshPositionBottom)
            //: self.state = NTESPullToRefreshStateTriggered;
            self.state = NTESPullToRefreshStateTriggered;
        //: else if(contentOffset.y <= scrollOffsetThreshold && self.state != NTESPullToRefreshStateStopped && self.position == NTESPullToRefreshPositionBottom)
        else if(contentOffset.y <= scrollOffsetThreshold && self.state != NTESPullToRefreshStateStopped && self.position == NTESPullToRefreshPositionBottom)
            //: self.state = NTESPullToRefreshStateStopped;
            self.state = NTESPullToRefreshStateStopped;
    //: } else {
    } else {
        //: CGFloat offset;
        CGFloat offset;
        //: UIEdgeInsets contentInset;
        UIEdgeInsets contentInset;
        //: switch (self.position) {
        switch (self.position) {
            //: case NTESPullToRefreshPositionTop:
            case NTESPullToRefreshPositionTop:
                //: offset = ((self.scrollView.contentOffset.y * -1) > (0.0f) ? (self.scrollView.contentOffset.y * -1) : (0.0f));
                offset = ((self.scrollView.contentOffset.y * -1) > (0.0f) ? (self.scrollView.contentOffset.y * -1) : (0.0f));
                //: offset = ((offset) < (self.originalTopInset + self.bounds.size.height) ? (offset) : (self.originalTopInset + self.bounds.size.height));
                offset = ((offset) < (self.originalTopInset + self.bounds.size.height) ? (offset) : (self.originalTopInset + self.bounds.size.height));
                //: contentInset = self.scrollView.contentInset;
                contentInset = self.scrollView.contentInset;
                //: self.scrollView.contentInset = UIEdgeInsetsMake(offset, contentInset.left, contentInset.bottom, contentInset.right);
                self.scrollView.contentInset = UIEdgeInsetsMake(offset, contentInset.left, contentInset.bottom, contentInset.right);
                //: break;
                break;
            //: case NTESPullToRefreshPositionBottom:
            case NTESPullToRefreshPositionBottom:
                //: if (self.scrollView.contentSize.height >= self.scrollView.bounds.size.height) {
                if (self.scrollView.contentSize.height >= self.scrollView.bounds.size.height) {
                    //: offset = ((self.scrollView.contentSize.height - self.scrollView.bounds.size.height + self.bounds.size.height) > (0.0f) ? (self.scrollView.contentSize.height - self.scrollView.bounds.size.height + self.bounds.size.height) : (0.0f));
                    offset = ((self.scrollView.contentSize.height - self.scrollView.bounds.size.height + self.bounds.size.height) > (0.0f) ? (self.scrollView.contentSize.height - self.scrollView.bounds.size.height + self.bounds.size.height) : (0.0f));
                    //: offset = ((offset) < (self.originalBottomInset + self.bounds.size.height) ? (offset) : (self.originalBottomInset + self.bounds.size.height));
                    offset = ((offset) < (self.originalBottomInset + self.bounds.size.height) ? (offset) : (self.originalBottomInset + self.bounds.size.height));
                    //: contentInset = self.scrollView.contentInset;
                    contentInset = self.scrollView.contentInset;
                    //: self.scrollView.contentInset = UIEdgeInsetsMake(contentInset.top, contentInset.left, offset, contentInset.right);
                    self.scrollView.contentInset = UIEdgeInsetsMake(contentInset.top, contentInset.left, offset, contentInset.right);
                //: } else if (self.wasTriggeredByUser) {
                } else if (self.wasTriggeredByUser) {
                    //: offset = ((self.bounds.size.height) < (self.originalBottomInset + self.bounds.size.height) ? (self.bounds.size.height) : (self.originalBottomInset + self.bounds.size.height));
                    offset = ((self.bounds.size.height) < (self.originalBottomInset + self.bounds.size.height) ? (self.bounds.size.height) : (self.originalBottomInset + self.bounds.size.height));
                    //: contentInset = self.scrollView.contentInset;
                    contentInset = self.scrollView.contentInset;
                    //: self.scrollView.contentInset = UIEdgeInsetsMake(-offset, contentInset.left, contentInset.bottom, contentInset.right);
                    self.scrollView.contentInset = UIEdgeInsetsMake(-offset, contentInset.left, contentInset.bottom, contentInset.right);
                }
                //: break;
                break;
        }
    }
}

//: #pragma mark - Getters
#pragma mark - Getters

//: - (NTESPullToRefreshArrow *)arrow {
- (TitleView *)arrow {
    //: if(!_arrow) {
    if(!_arrow) {
        //: _arrow = [[NTESPullToRefreshArrow alloc]initWithFrame:CGRectMake(0, self.bounds.size.height-54, 22, 48)];
        _arrow = [[TitleView alloc]initWithFrame:CGRectMake(0, self.bounds.size.height-54, 22, 48)];
        //: _arrow.backgroundColor = [UIColor clearColor];
        _arrow.backgroundColor = [UIColor clearColor];
        //: [self addSubview:_arrow];
        [self addSubview:_arrow];
    }
    //: return _arrow;
    return _arrow;
}

//: - (UIActivityIndicatorView *)activityIndicatorView {
- (UIActivityIndicatorView *)activityIndicatorView {
    //: if(!_activityIndicatorView) {
    if(!_activityIndicatorView) {
        //: _activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
        _activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
        //: _activityIndicatorView.hidesWhenStopped = YES;
        _activityIndicatorView.hidesWhenStopped = YES;
        //: [self addSubview:_activityIndicatorView];
        [self addSubview:_activityIndicatorView];
    }
    //: return _activityIndicatorView;
    return _activityIndicatorView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if(!_titleLabel) {
    if(!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 210, 20)];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 210, 20)];
        //: _titleLabel.text = NSLocalizedString(@"Pull to refresh...",);
        _titleLabel.text = NSLocalizedString(StringFromCompartmentData(appInkData),);
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        _titleLabel.font = [UIFont boldSystemFontOfSize:14];
        //: _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.backgroundColor = [UIColor clearColor];
        //: _titleLabel.textColor = textColor;
        _titleLabel.textColor = textColor;
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)subtitleLabel {
- (UILabel *)subtitleLabel {
    //: if(!_subtitleLabel) {
    if(!_subtitleLabel) {
        //: _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 210, 20)];
        _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 210, 20)];
        //: _subtitleLabel.font = [UIFont systemFontOfSize:12];
        _subtitleLabel.font = [UIFont systemFontOfSize:12];
        //: _subtitleLabel.backgroundColor = [UIColor clearColor];
        _subtitleLabel.backgroundColor = [UIColor clearColor];
        //: _subtitleLabel.textColor = textColor;
        _subtitleLabel.textColor = textColor;
        //: [self addSubview:_subtitleLabel];
        [self addSubview:_subtitleLabel];
    }
    //: return _subtitleLabel;
    return _subtitleLabel;
}

//: - (UILabel *)dateLabel {
- (UILabel *)qualify {
    //: return self.showsDateLabel ? self.subtitleLabel : nil;
    return self.showsDateLabel ? self.subtitleLabel : nil;
}

//: - (UIColor *)arrowColor {
- (UIColor *)arrowColor {
    //: return self.arrow.arrowColor; 
    return self.arrow.arrowColor; // pass through
}

//: - (UIColor *)textColor {
- (UIColor *)textColor {
    //: return self.titleLabel.textColor;
    return self.titleLabel.textColor;
}

//: - (UIColor *)activityIndicatorViewColor {
- (UIColor *)activityIndicatorViewColor {
    //: return self.activityIndicatorView.color;
    return self.activityIndicatorView.color;
}

//: - (UIActivityIndicatorViewStyle)activityIndicatorViewStyle {
- (UIActivityIndicatorViewStyle)activityIndicatorViewStyle {
    //: return self.activityIndicatorView.activityIndicatorViewStyle;
    return self.activityIndicatorView.activityIndicatorViewStyle;
}

//: #pragma mark - Setters
#pragma mark - Setters

//: - (void)setArrowColor:(UIColor *)newArrowColor {
- (void)setArrowColor:(UIColor *)newArrowColor {
    //: self.arrow.arrowColor = newArrowColor; 
    self.arrow.arrowColor = newArrowColor; // pass through
    //: [self.arrow setNeedsDisplay];
    [self.arrow setNeedsDisplay];
}

//: - (void)setTitle:(NSString *)title forState:(NTESPullToRefreshState)state {
- (void)refer:(NSString *)title receive:(NTESPullToRefreshState)state {
    //: if(!title)
    if(!title)
        //: title = @"";
        title = @"";

    //: if(state == NTESPullToRefreshStateAll)
    if(state == NTESPullToRefreshStateAll)
        //: [self.titles replaceObjectsInRange:NSMakeRange(0, 3) withObjectsFromArray:@[title, title, title]];
        [self.titles replaceObjectsInRange:NSMakeRange(0, 3) withObjectsFromArray:@[title, title, title]];
    //: else
    else
        //: [self.titles replaceObjectAtIndex:state withObject:title];
        [self.titles replaceObjectAtIndex:state withObject:title];

    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)setSubtitle:(NSString *)subtitle forState:(NTESPullToRefreshState)state {
- (void)infoValue:(NSString *)subtitle buttonItem:(NTESPullToRefreshState)state {
    //: if(!subtitle)
    if(!subtitle)
        //: subtitle = @"";
        subtitle = @"";

    //: if(state == NTESPullToRefreshStateAll)
    if(state == NTESPullToRefreshStateAll)
        //: [self.subtitles replaceObjectsInRange:NSMakeRange(0, 3) withObjectsFromArray:@[subtitle, subtitle, subtitle]];
        [self.subtitles replaceObjectsInRange:NSMakeRange(0, 3) withObjectsFromArray:@[subtitle, subtitle, subtitle]];
    //: else
    else
        //: [self.subtitles replaceObjectAtIndex:state withObject:subtitle];
        [self.subtitles replaceObjectAtIndex:state withObject:subtitle];

    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)setCustomView:(UIView *)view forState:(NTESPullToRefreshState)state {
- (void)unwantedVideo:(UIView *)view off:(NTESPullToRefreshState)state {
    //: id viewPlaceholder = view;
    id viewPlaceholder = view;

    //: if(!viewPlaceholder)
    if(!viewPlaceholder)
        //: viewPlaceholder = @"";
        viewPlaceholder = @"";

    //: if(state == NTESPullToRefreshStateAll)
    if(state == NTESPullToRefreshStateAll)
        //: [self.viewForState replaceObjectsInRange:NSMakeRange(0, 3) withObjectsFromArray:@[viewPlaceholder, viewPlaceholder, viewPlaceholder]];
        [self.viewForState replaceObjectsInRange:NSMakeRange(0, 3) withObjectsFromArray:@[viewPlaceholder, viewPlaceholder, viewPlaceholder]];
    //: else
    else
        //: [self.viewForState replaceObjectAtIndex:state withObject:viewPlaceholder];
        [self.viewForState replaceObjectAtIndex:state withObject:viewPlaceholder];

    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)setTextColor:(UIColor *)newTextColor {
- (void)setTextColor:(UIColor *)newTextColor {
    //: textColor = newTextColor;
    textColor = newTextColor;
    //: self.titleLabel.textColor = newTextColor;
    self.titleLabel.textColor = newTextColor;
    //: self.subtitleLabel.textColor = newTextColor;
    self.subtitleLabel.textColor = newTextColor;
}

//: - (void)setActivityIndicatorViewColor:(UIColor *)color {
- (void)setActivityIndicatorViewColor:(UIColor *)color {
    //: self.activityIndicatorView.color = color;
    self.activityIndicatorView.color = color;
}

//: - (void)setActivityIndicatorViewStyle:(UIActivityIndicatorViewStyle)viewStyle {
- (void)setActivityIndicatorViewStyle:(UIActivityIndicatorViewStyle)viewStyle {
    //: self.activityIndicatorView.activityIndicatorViewStyle = viewStyle;
    self.activityIndicatorView.activityIndicatorViewStyle = viewStyle;
}



//: #pragma mark -
#pragma mark -

//: - (void)startAnimating{
- (void)ting{
    //: switch (self.position) {
    switch (self.position) {
        //: case NTESPullToRefreshPositionTop:
        case NTESPullToRefreshPositionTop:

            //: if((fabs(self.scrollView.contentOffset.y) < 1.19209290e-7F)) {
            if((fabs(self.scrollView.contentOffset.y) < 1.19209290e-7F)) {
                //: [self.scrollView setContentOffset:CGPointMake(self.scrollView.contentOffset.x, -self.frame.size.height) animated:YES];
                [self.scrollView setContentOffset:CGPointMake(self.scrollView.contentOffset.x, -self.frame.size.height) animated:YES];
                //: self.wasTriggeredByUser = NO;
                self.wasTriggeredByUser = NO;
            }
            //: else
            else
                //: self.wasTriggeredByUser = YES;
                self.wasTriggeredByUser = YES;

            //: break;
            break;
        //: case NTESPullToRefreshPositionBottom:
        case NTESPullToRefreshPositionBottom:

            //: if(((fabs(self.scrollView.contentOffset.y) < 1.19209290e-7F) && self.scrollView.contentSize.height < self.scrollView.bounds.size.height)
            if(((fabs(self.scrollView.contentOffset.y) < 1.19209290e-7F) && self.scrollView.contentSize.height < self.scrollView.bounds.size.height)
               //: || (fabs((self.scrollView.contentOffset.y) - (self.scrollView.contentSize.height - self.scrollView.bounds.size.height)) < 1.19209290e-7F)) {
               || (fabs((self.scrollView.contentOffset.y) - (self.scrollView.contentSize.height - self.scrollView.bounds.size.height)) < 1.19209290e-7F)) {
                //: [self.scrollView setContentOffset:(CGPoint){.y = ((self.scrollView.contentSize.height - self.scrollView.bounds.size.height) > (0.0f) ? (self.scrollView.contentSize.height - self.scrollView.bounds.size.height) : (0.0f)) + self.frame.size.height} animated:YES];
                [self.scrollView setContentOffset:(CGPoint){.y = ((self.scrollView.contentSize.height - self.scrollView.bounds.size.height) > (0.0f) ? (self.scrollView.contentSize.height - self.scrollView.bounds.size.height) : (0.0f)) + self.frame.size.height} animated:YES];
                //: self.wasTriggeredByUser = NO;
                self.wasTriggeredByUser = NO;
            }
            //: else
            else
                //: self.wasTriggeredByUser = YES;
                self.wasTriggeredByUser = YES;

            //: break;
            break;
    }

    //: self.state = NTESPullToRefreshStateLoading;
    self.state = NTESPullToRefreshStateLoading;
}

//: - (void)stopAnimating {
- (void)messageBackground {
    //: self.state = NTESPullToRefreshStateStopped;
    self.state = NTESPullToRefreshStateStopped;

    //: switch (self.position) {
    switch (self.position) {
        //: case NTESPullToRefreshPositionTop:
        case NTESPullToRefreshPositionTop:
            //: if(!self.wasTriggeredByUser)
            if(!self.wasTriggeredByUser)
                //: [self.scrollView setContentOffset:CGPointMake(self.scrollView.contentOffset.x, -self.originalTopInset) animated:YES];
                [self.scrollView setContentOffset:CGPointMake(self.scrollView.contentOffset.x, -self.originalTopInset) animated:YES];
            //: break;
            break;
        //: case NTESPullToRefreshPositionBottom:
        case NTESPullToRefreshPositionBottom:
            //: if(!self.wasTriggeredByUser)
            if(!self.wasTriggeredByUser)
                //: [self.scrollView setContentOffset:CGPointMake(self.scrollView.contentOffset.x, self.scrollView.contentSize.height - self.scrollView.bounds.size.height + self.originalBottomInset) animated:YES];
                [self.scrollView setContentOffset:CGPointMake(self.scrollView.contentOffset.x, self.scrollView.contentSize.height - self.scrollView.bounds.size.height + self.originalBottomInset) animated:YES];
            //: break;
            break;
    }
}

//: - (void)setState:(NTESPullToRefreshState)newState {
- (void)setState:(NTESPullToRefreshState)newState {

    //: if(_state == newState)
    if(_state == newState)
        //: return;
        return;

    //: NTESPullToRefreshState previousState = _state;
    NTESPullToRefreshState previousState = _state;
    //: _state = newState;
    _state = newState;

    //: [self setNeedsLayout];
    [self setNeedsLayout];
    //: [self layoutIfNeeded];
    [self layoutIfNeeded];

    //: switch (newState) {
    switch (newState) {
        //: case NTESPullToRefreshStateAll:
        case NTESPullToRefreshStateAll:
        //: case NTESPullToRefreshStateStopped:
        case NTESPullToRefreshStateStopped:
            //: [self resetScrollViewContentInset];
            [self viewInset];
            //: break;
            break;

        //: case NTESPullToRefreshStateTriggered:
        case NTESPullToRefreshStateTriggered:
            //: break;
            break;

        //: case NTESPullToRefreshStateLoading:
        case NTESPullToRefreshStateLoading:
            //: [self setScrollViewContentInsetForLoading];
            [self key];

            //: if(previousState == NTESPullToRefreshStateTriggered && pullToRefreshActionHandler)
            if(previousState == NTESPullToRefreshStateTriggered && pullToRefreshActionHandler)
                //: pullToRefreshActionHandler();
                pullToRefreshActionHandler();

            //: break;
            break;
    }
}

//: - (void)rotateArrow:(float)degrees hide:(BOOL)hide {
- (void)tip:(float)degrees titleSessionDoing:(BOOL)hide {
    //: [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
    [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
        //: self.arrow.layer.transform = CATransform3DMakeRotation(degrees, 0, 0, 1);
        self.arrow.layer.transform = CATransform3DMakeRotation(degrees, 0, 0, 1);
        //: self.arrow.layer.opacity = !hide;
        self.arrow.layer.opacity = !hide;
        //[self.arrow setNeedsDisplay];//ios 4
    //: } completion:NULL];
    } completion:NULL];
}

//: @end
@end


//: #pragma mark - NTESPullToRefreshArrow
#pragma mark - TitleView

//: @implementation NTESPullToRefreshArrow
@implementation TitleView
//: @synthesize arrowColor;
@synthesize arrowColor;

//: - (UIColor *)arrowColor {
- (UIColor *)arrowColor {
    //: if (arrowColor) return arrowColor;
    if (arrowColor) return arrowColor;
    //: return [UIColor grayColor]; 
    return [UIColor grayColor]; // default Color
}

//: - (void)drawRect:(CGRect)rect {
- (void)drawRect:(CGRect)rect {
    //: CGContextRef c = UIGraphicsGetCurrentContext();
    CGContextRef c = UIGraphicsGetCurrentContext();

    // the rects above the arrow
    //: CGContextAddRect(c, CGRectMake(5, 0, 12, 4)); 
    CGContextAddRect(c, CGRectMake(5, 0, 12, 4)); // to-do: use dynamic points
    //: CGContextAddRect(c, CGRectMake(5, 6, 12, 4)); 
    CGContextAddRect(c, CGRectMake(5, 6, 12, 4)); // currently fixed size: 22 x 48pt
    //: CGContextAddRect(c, CGRectMake(5, 12, 12, 4));
    CGContextAddRect(c, CGRectMake(5, 12, 12, 4));
    //: CGContextAddRect(c, CGRectMake(5, 18, 12, 4));
    CGContextAddRect(c, CGRectMake(5, 18, 12, 4));
    //: CGContextAddRect(c, CGRectMake(5, 24, 12, 4));
    CGContextAddRect(c, CGRectMake(5, 24, 12, 4));
    //: CGContextAddRect(c, CGRectMake(5, 30, 12, 4));
    CGContextAddRect(c, CGRectMake(5, 30, 12, 4));

    // the arrow
    //: CGContextMoveToPoint(c, 0, 34);
    CGContextMoveToPoint(c, 0, 34);
    //: CGContextAddLineToPoint(c, 11, 48);
    CGContextAddLineToPoint(c, 11, 48);
    //: CGContextAddLineToPoint(c, 22, 34);
    CGContextAddLineToPoint(c, 22, 34);
    //: CGContextAddLineToPoint(c, 0, 34);
    CGContextAddLineToPoint(c, 0, 34);
    //: CGContextClosePath(c);
    CGContextClosePath(c);

    //: CGContextSaveGState(c);
    CGContextSaveGState(c);
    //: CGContextClip(c);
    CGContextClip(c);

    // Gradient Declaration
    //: CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    //: CGFloat alphaGradientLocations[] = {0, 0.8f};
    CGFloat alphaGradientLocations[] = {0, 0.8f};

    //: CGGradientRef alphaGradient = nil;
    CGGradientRef alphaGradient = nil;
    //: if([[[UIDevice currentDevice] systemVersion]floatValue] >= 5){
    if([[[UIDevice currentDevice] systemVersion]floatValue] >= 5){
        //: NSArray* alphaGradientColors = [NSArray arrayWithObjects:
        NSArray* alphaGradientColors = [NSArray arrayWithObjects:
                                        //: (id)[self.arrowColor colorWithAlphaComponent:0].CGColor,
                                        (id)[self.arrowColor colorWithAlphaComponent:0].CGColor,
                                        //: (id)[self.arrowColor colorWithAlphaComponent:1].CGColor,
                                        (id)[self.arrowColor colorWithAlphaComponent:1].CGColor,
                                        //: nil];
                                        nil];
        //: alphaGradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)alphaGradientColors, alphaGradientLocations);
        alphaGradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)alphaGradientColors, alphaGradientLocations);
    //: }else{
    }else{
        //: const CGFloat * components = CGColorGetComponents([self.arrowColor CGColor]);
        const CGFloat * components = CGColorGetComponents([self.arrowColor CGColor]);
        //: size_t numComponents = CGColorGetNumberOfComponents([self.arrowColor CGColor]);
        size_t numComponents = CGColorGetNumberOfComponents([self.arrowColor CGColor]);
        //: CGFloat colors[8];
        CGFloat colors[8];
        //: switch(numComponents){
        switch(numComponents){
            //: case 2:{
            case 2:{
                //: colors[0] = colors[4] = components[0];
                colors[0] = colors[4] = components[0];
                //: colors[1] = colors[5] = components[0];
                colors[1] = colors[5] = components[0];
                //: colors[2] = colors[6] = components[0];
                colors[2] = colors[6] = components[0];
                //: break;
                break;
            }
            //: case 4:{
            case 4:{
                //: colors[0] = colors[4] = components[0];
                colors[0] = colors[4] = components[0];
                //: colors[1] = colors[5] = components[1];
                colors[1] = colors[5] = components[1];
                //: colors[2] = colors[6] = components[2];
                colors[2] = colors[6] = components[2];
                //: break;
                break;
            }
        }
        //: colors[3] = 0;
        colors[3] = 0;
        //: colors[7] = 1;
        colors[7] = 1;
        //: alphaGradient = CGGradientCreateWithColorComponents(colorSpace,colors,alphaGradientLocations,2);
        alphaGradient = CGGradientCreateWithColorComponents(colorSpace,colors,alphaGradientLocations,2);
    }


    //: CGContextDrawLinearGradient(c, alphaGradient, CGPointZero, CGPointMake(0, rect.size.height), 0);
    CGContextDrawLinearGradient(c, alphaGradient, CGPointZero, CGPointMake(0, rect.size.height), 0);

    //: CGContextRestoreGState(c);
    CGContextRestoreGState(c);

    //: CGGradientRelease(alphaGradient);
    CGGradientRelease(alphaGradient);
    //: CGColorSpaceRelease(colorSpace);
    CGColorSpaceRelease(colorSpace);
}
//: @end
@end

Byte * CompartmentDataToCache(Byte *data) {
    int prevention = data[0];
    int solidity = data[1];
    Byte shoppingMall = data[2];
    int mentorMessage = data[3];
    if (!prevention) return data + mentorMessage;
    for (int i = mentorMessage; i < mentorMessage + solidity; i++) {
        int value = data[i] - shoppingMall;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[mentorMessage + solidity] = 0;
    return data + mentorMessage;
}

NSString *StringFromCompartmentData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CompartmentDataToCache(data)];
}
