
#import <Foundation/Foundation.h>

@interface PenalData : NSObject

@end

@implementation PenalData

+ (Byte *)PenalDataToCache:(Byte *)data {
    int eating = data[0];
    Byte banking = data[1];
    int warmCentral = data[2];
    for (int i = warmCentral; i < warmCentral + eating; i++) {
        int value = data[i] - banking;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[warmCentral + eating] = 0;
    return data + warmCentral;
}

+ (NSString *)StringFromPenalData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PenalDataToCache:data]];
}

//: player_play
+ (NSString *)show_beamTechnicalMsg {
    /* static */ NSString *show_beamTechnicalMsg = nil;
    if (!show_beamTechnicalMsg) {
        Byte value[] = {11, 49, 3, 161, 157, 146, 170, 150, 163, 144, 161, 157, 146, 170, 42};
        show_beamTechnicalMsg = [self StringFromPenalData:value];
    }
    return show_beamTechnicalMsg;
}

//: status
+ (NSString *)dream_stadiumLineId {
    /* static */ NSString *dream_stadiumLineId = nil;
    if (!dream_stadiumLineId) {
        Byte value[] = {6, 65, 12, 108, 158, 198, 252, 102, 242, 233, 92, 58, 180, 181, 162, 181, 182, 180, 128};
        dream_stadiumLineId = [self StringFromPenalData:value];
    }
    return dream_stadiumLineId;
}

//: player_push
+ (NSString *)k_removeStr {
    /* static */ NSString *k_removeStr = nil;
    if (!k_removeStr) {
        Byte value[] = {11, 41, 5, 23, 46, 153, 149, 138, 162, 142, 155, 136, 153, 158, 156, 145, 168};
        k_removeStr = [self StringFromPenalData:value];
    }
    return k_removeStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexSessionContentView.m
// Case
//
//  Created by chris on 15/4/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//#import "WMPlayerModel.h"
//#import "WMPlayer.h"

// __M_A_C_R_O__
//: #import "BusySessionVideoContentView.h"
#import "IndexSessionContentView.h"
//: #import "BusyMessageModel.h"
#import "MoreModel.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "BusyLoadProgressView.h"
#import "BuildView.h"
//: #import "NTESAVMoivePlayerController.h"
#import "LabelController.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>

//: static void *KVO_AVPlayerItem_state = &KVO_AVPlayerItem_state;
static void *appViewId = &appViewId;

//: @interface BusySessionVideoContentView()
@interface IndexSessionContentView()

//: @property (nonatomic,strong,readwrite) UIImageView * imageView;
@property (nonatomic,strong,readwrite) UIImageView * imageView;

//: @property (nonatomic,strong) UIButton *playBtn;
@property (nonatomic,strong) UIButton *playBtn;

//: @property (nonatomic,strong) BusyLoadProgressView * progressView;
@property (nonatomic,strong) BuildView * progressView;

//: @property (nonatomic, strong) NSURL *fileURL;
@property (nonatomic, strong) NSURL *fileURL;
//: @property (nonatomic, strong) AVPlayerItem *playerItem;
@property (nonatomic, strong) AVPlayerItem *playerItem;
//: @property (nonatomic, strong) AVPlayer *player;
@property (nonatomic, strong) AVPlayer *player;
//: @property (nonatomic, strong) AVPlayerLayer *playerLayer;
@property (nonatomic, strong) AVPlayerLayer *playerLayer;

//: @property (nonatomic,strong) NTESAVMoivePlayerController *avPlayer;
@property (nonatomic,strong) LabelController *avPlayer;
//: @property (nonatomic, strong) UCZProgressView *progress;
@property (nonatomic, strong) UCZProgressView *progress;
//: @property (nonatomic, strong) UIActivityIndicatorView *activity;
@property (nonatomic, strong) UIActivityIndicatorView *activity;
//: @end
@end

//: @implementation BusySessionVideoContentView
@implementation IndexSessionContentView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initColorSession{
    //: self = [super initSessionMessageContentView];
    self = [super initColorSession];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;

        //: _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: _imageView.backgroundColor = [UIColor clearColor];
        _imageView.backgroundColor = [UIColor clearColor];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];

//        _activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleMedium];
//        _activity.color = [UIColor grayColor];
//        [self addSubview:_activity];


        //: _playBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _playBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_playBtn setImage:[UIImage imageNamed:@"player_play"] forState:UIControlStateNormal];
        [_playBtn setImage:[UIImage imageNamed:[PenalData show_beamTechnicalMsg]] forState:UIControlStateNormal];
        //: [_playBtn setImage:[UIImage imageNamed:@"player_push"] forState:UIControlStateSelected];
        [_playBtn setImage:[UIImage imageNamed:[PenalData k_removeStr]] forState:UIControlStateSelected];
        //: [_playBtn addTarget:self action:@selector(onTap:) forControlEvents:UIControlEventTouchUpInside];
        [_playBtn addTarget:self action:@selector(rangeCan:) forControlEvents:UIControlEventTouchUpInside];
        //: [_playBtn sizeToFit];
        [_playBtn sizeToFit];
//        [_playBtn setUserInteractionEnabled:NO];
        //: [self addSubview:_playBtn];
        [self addSubview:_playBtn];

        //: _progressView = [[BusyLoadProgressView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        _progressView = [[BuildView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        //: _progressView.maxProgress = 1.0;
        _progressView.maxProgress = 1.0;
        //: [self addSubview:_progressView];
        [self addSubview:_progressView];

//
    }
    //: return self;
    return self;
}

//: - (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    //: if ([keyPath isEqualToString:@"status"]) {
    if ([keyPath isEqualToString:[PenalData dream_stadiumLineId]]) {
        //: AVPlayerItem * item = (AVPlayerItem *)object;
        AVPlayerItem * item = (AVPlayerItem *)object;
        //: if (item.status == AVPlayerItemStatusReadyToPlay) {
        if (item.status == AVPlayerItemStatusReadyToPlay) {
            //: _progressView.hidden = YES;
            _progressView.hidden = YES;
//            self.progress.hidden = YES;

//             [self.player replaceCurrentItemWithPlayerItem:item];
             //: [self.player play];
             [self.player play];
        //: }else if (item.status == AVPlayerItemStatusFailed){
        }else if (item.status == AVPlayerItemStatusFailed){
             //: NSLog(@"failed");
//            _progressView.hidden = NO;

//            [self.player replaceCurrentItemWithPlayerItem:item];
//            [self.player play];
        }
   }
}

//: - (void)refresh:(BusyMessageModel *)data{
- (void)messagePress:(MoreModel *)data{
    //: [super refresh:data];
    [super messagePress:data];
    //: NIMVideoObject * videoObject = (NIMVideoObject*)self.model.message.messageObject;
    NIMVideoObject * videoObject = (NIMVideoObject*)self.model.message.messageObject;
    //: UIImage * image = [UIImage imageWithContentsOfFile:videoObject.coverPath];
    UIImage * image = [UIImage imageWithContentsOfFile:videoObject.coverPath];
    //: if (image) {
    if (image) {
         //: self.imageView.image = image;
         self.imageView.image = image;
     //: } else {
     } else {
         //: if (videoObject.url.length > 0)
         if (videoObject.url.length > 0)
         {
             //: NSString *videoUrl = videoObject.coverUrl;
             NSString *videoUrl = videoObject.coverUrl;
             //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:[videoUrl stringByReplacingOccurrencesOfString:@" " withString:@""]]];
             [self.imageView sd_setImageWithURL:[NSURL URLWithString:[videoUrl stringByReplacingOccurrencesOfString:@" " withString:@""]]];
         }
     }

    //: [_playerItem removeObserver:self forKeyPath:@"status" context:KVO_AVPlayerItem_state];
    [_playerItem removeObserver:self forKeyPath:[PenalData dream_stadiumLineId] context:appViewId];
    //: NSURL *fileURL = [NSURL URLWithString:videoObject.url];
    NSURL *fileURL = [NSURL URLWithString:videoObject.url];
    //: AVAsset *asset = [AVURLAsset URLAssetWithURL:fileURL options:nil];
    AVAsset *asset = [AVURLAsset URLAssetWithURL:fileURL options:nil];
    //: _playerItem = [AVPlayerItem playerItemWithAsset:asset];
    _playerItem = [AVPlayerItem playerItemWithAsset:asset];
    //: [_playerItem addObserver:self forKeyPath:@"status" options:NSKeyValueObservingOptionNew context:KVO_AVPlayerItem_state];
    [_playerItem addObserver:self forKeyPath:[PenalData dream_stadiumLineId] options:NSKeyValueObservingOptionNew context:appViewId];

    //player
    //: [self setupPlayer];
    [self button];

    //: [self.imageView.layer addSublayer:self.playerLayer];
    [self.imageView.layer addSublayer:self.playerLayer];
//    self.playerLayer.frame = self.imageView.bounds;

//    [self.player replaceCurrentItemWithPlayerItem:_playerItem];
//    [self.player play];

    //: NSLog(@"加载状态- %ld",(long)self.model.message.attachmentDownloadState);
    //: BOOL isSending = (self.model.message.deliveryState == NIMMessageDeliveryStateDelivering);
    BOOL isSending = (self.model.message.deliveryState == NIMMessageDeliveryStateDelivering);
    //: BOOL isDowning = (self.model.message.attachmentDownloadState == NIMMessageAttachmentDownloadStateDownloading);
    BOOL isDowning = (self.model.message.attachmentDownloadState == NIMMessageAttachmentDownloadStateDownloading);

    //: _progressView.hidden = !(isSending || isDowning);
    _progressView.hidden = !(isSending || isDowning);

//    _progressView.hidden         = YES;
    //: if (!_progressView.hidden) {
    if (!_progressView.hidden) {
        //: [_progressView setProgress:[[[NIMSDK sharedSDK] chatManager] messageTransportProgress:self.model.message]];
        [_progressView setOf:[[[NIMSDK sharedSDK] chatManager] messageTransportProgress:self.model.message]];
    }
}

//: - (void)onTap:(UIButton *)sender
- (void)rangeCan:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;

    //: if (sender.selected) {
    if (sender.selected) {
        //: [self.player play];
        [self.player play];
    //: }else{
    }else{
        //: [self.player pause];
        [self.player pause];
    }
}


//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)setupPlayer {
- (void)button {
    //: if (!_player) {
    if (!_player) {
        //: _player = [AVPlayer playerWithPlayerItem:_playerItem];
        _player = [AVPlayer playerWithPlayerItem:_playerItem];
        //: _player.actionAtItemEnd = AVPlayerActionAtItemEndNone;
        _player.actionAtItemEnd = AVPlayerActionAtItemEndNone;
    }
}

//: - (AVPlayerLayer *)playerLayer
- (AVPlayerLayer *)playerLayer
{
    //: if(!_playerLayer){
    if(!_playerLayer){
        //: _playerLayer = [AVPlayerLayer playerLayerWithPlayer:self.player];
        _playerLayer = [AVPlayerLayer playerLayerWithPlayer:self.player];
        //: _playerLayer.videoGravity = AVLayerVideoGravityResizeAspect;
        _playerLayer.videoGravity = AVLayerVideoGravityResizeAspect;
        //: _playerLayer.frame = self.imageView.bounds;
        _playerLayer.frame = self.imageView.bounds;
        //: [self.imageView.layer addSublayer:_playerLayer];
        [self.imageView.layer addSublayer:_playerLayer];
    }
    //: return _playerLayer;
    return _playerLayer;
}

//: - (void)startPlay{
- (void)max{
    //: self.avPlayer.view.frame = self.imageView.bounds;
    self.avPlayer.view.frame = self.imageView.bounds;
    //: self.avPlayer.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.avPlayer.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

    //: [self.avPlayer prepareToPlay];
    [self.avPlayer viewWith];
    //: [self.imageView addSubview:self.avPlayer.view];
    [self.imageView addSubview:self.avPlayer.view];

}

//: - (NTESAVMoivePlayerController *)avPlayer {
- (LabelController *)avPlayer {
    //: if (!_avPlayer) {
    if (!_avPlayer) {
        //: _avPlayer = [[NTESAVMoivePlayerController alloc] initWithContentURL:self.fileURL];
        _avPlayer = [[LabelController alloc] initWithMode:self.fileURL];
        //: _avPlayer.scalingMode = NTESAVMovieScalingModeAspectFill;
        _avPlayer.scalingMode = NTESAVMovieScalingModeAspectFill;
    }
    //: return _avPlayer;
    return _avPlayer;
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;

    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model searched:tableViewWidth];

    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;
    //: _progressView.frame = imageViewFrame;
    _progressView.frame = imageViewFrame;
//
////    self.progress.frame = CGRectMake(contentInsets.left+5, contentInsets.top+5, contentsize.width-10, contentsize.height-10);
//        self.progress.nim_centerX = self.nim_width  * .5f;
//        self.progress.nim_centerY = self.nim_height * .5f;

    //: self.playerLayer.frame = self.imageView.bounds;
    self.playerLayer.frame = self.imageView.bounds;


    //: CALayer *maskLayer = [CALayer layer];
    CALayer *maskLayer = [CALayer layer];
    //: maskLayer.cornerRadius = 13.0;
    maskLayer.cornerRadius = 13.0;
    //: maskLayer.masksToBounds = YES;
    maskLayer.masksToBounds = YES;
    //: maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    maskLayer.backgroundColor = [UIColor blackColor].CGColor;
    //: maskLayer.frame = self.imageView.bounds;
    maskLayer.frame = self.imageView.bounds;
    //: self.imageView.layer.mask = maskLayer;
    self.imageView.layer.mask = maskLayer;

    //: self.playBtn.nim_centerX = self.nim_width * .5f;
    self.playBtn.nim_centerX = self.nim_width * .5f;
    //: self.playBtn.nim_centerY = self.nim_height * .5f;
    self.playBtn.nim_centerY = self.nim_height * .5f;
}

//: - (void)onTouchUpInside:(id)sender
- (void)objects:(id)sender
{
    //: BusyKitEvent *event = [[BusyKitEvent alloc] init];
    DirectionEvent *event = [[DirectionEvent alloc] init];
    //: event.eventName = BusyKitEventNameTapContent;
    event.eventName = notiMessageId;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate memberEvent:event];
}

//: - (void)updateProgress:(float)progress
- (void)length:(float)progress
{
    //: if (progress > 1.0) {
    if (progress > 1.0) {
        //: progress = 1.0;
        progress = 1.0;
    }
    //: self.progressView.progress = progress;
    self.progressView.of = progress;
}


//: - (UIImage *)thumbnailImageForVideo:(NSURL *)videoURL atTime:(NSTimeInterval)time
- (UIImage *)image:(NSURL *)videoURL asUnwished:(NSTimeInterval)time
{

    //: AVURLAsset *asset = [[AVURLAsset alloc] initWithURL:videoURL options:nil];
    AVURLAsset *asset = [[AVURLAsset alloc] initWithURL:videoURL options:nil];
    //: if (!asset)
    if (!asset)
    {
        //: return nil;
        return nil;
    }

    //: AVAssetImageGenerator *generator =[[AVAssetImageGenerator alloc] initWithAsset:asset];
    AVAssetImageGenerator *generator =[[AVAssetImageGenerator alloc] initWithAsset:asset];
    //: generator.appliesPreferredTrackTransform = YES;
    generator.appliesPreferredTrackTransform = YES;
    //: generator.apertureMode = AVAssetImageGeneratorApertureModeEncodedPixels;
    generator.apertureMode = AVAssetImageGeneratorApertureModeEncodedPixels;

    //: CGImageRef thumbnailImageRef = NULL;
    CGImageRef thumbnailImageRef = NULL;
    //: CFTimeInterval thumbnailImageTime = time;
    CFTimeInterval thumbnailImageTime = time;
    //: NSError *thumbnailImageGenerationError = nil;
    NSError *thumbnailImageGenerationError = nil;
    //: thumbnailImageRef = [generator copyCGImageAtTime:CMTimeMake(thumbnailImageTime, 60)
    thumbnailImageRef = [generator copyCGImageAtTime:CMTimeMake(thumbnailImageTime, 60)
                                          //: actualTime:NULL
                                          actualTime:NULL
                                               //: error:&thumbnailImageGenerationError];
                                               error:&thumbnailImageGenerationError];

    //: UIImage *thumbnailImage = thumbnailImageRef ? [[UIImage alloc] initWithCGImage:thumbnailImageRef] : nil;
    UIImage *thumbnailImage = thumbnailImageRef ? [[UIImage alloc] initWithCGImage:thumbnailImageRef] : nil;
    //: thumbnailImage = [thumbnailImage nim_cropedImageWithSize:CGSizeMake(600, 600)];
    thumbnailImage = [thumbnailImage mentalRepresentationMessage:CGSizeMake(600, 600)];

    //: CGImageRelease(thumbnailImageRef);
    CGImageRelease(thumbnailImageRef);
    //: return thumbnailImage;
    return thumbnailImage;
}

//: @end
@end
