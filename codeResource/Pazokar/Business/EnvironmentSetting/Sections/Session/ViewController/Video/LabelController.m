
#import <Foundation/Foundation.h>
typedef struct {
    Byte handleTourist;
    Byte *imageCenter;
    unsigned int setOpenText;
    Byte fullMake;
} SolutionData;

NSString *StringFromSolutionData(SolutionData *data);


//: loadedTimeRanges
SolutionData user_nameIdent = (SolutionData){62, (Byte []){82, 81, 95, 90, 91, 90, 106, 87, 83, 91, 108, 95, 80, 89, 91, 77, 73}, 16, 168};

//: playbackBufferFull
SolutionData kViewFainTitle = (SolutionData){137, (Byte []){249, 229, 232, 240, 235, 232, 234, 226, 203, 252, 239, 239, 236, 251, 207, 252, 229, 229, 56}, 18, 190};

//: playbackLikelyToKeepUp
SolutionData show_finStrikeTitleUrl = (SolutionData){185, (Byte []){201, 213, 216, 192, 219, 216, 218, 210, 245, 208, 210, 220, 213, 192, 237, 214, 242, 220, 220, 201, 236, 201, 248}, 22, 202};

//: current player item is nil
SolutionData user_explainUrl = (SolutionData){135, (Byte []){228, 242, 245, 245, 226, 233, 243, 167, 247, 235, 230, 254, 226, 245, 167, 238, 243, 226, 234, 167, 238, 244, 167, 233, 238, 235, 250}, 26, 195};

//: playable
SolutionData mainPepRecentChapterKey = (SolutionData){1, (Byte []){113, 109, 96, 120, 96, 99, 109, 100, 103}, 8, 171};

//: player item cancelled
SolutionData m_nameId = (SolutionData){48, (Byte []){64, 92, 81, 73, 85, 66, 16, 89, 68, 85, 93, 16, 83, 81, 94, 83, 85, 92, 92, 85, 84, 87}, 21, 185};

//: rate
SolutionData noti_shouldText = (SolutionData){91, (Byte []){41, 58, 47, 62, 99}, 4, 188};

//: playbackBufferEmpty
SolutionData mImageMsg = (SolutionData){63, (Byte []){79, 83, 94, 70, 93, 94, 92, 84, 125, 74, 89, 89, 90, 77, 122, 82, 79, 75, 70, 52}, 19, 247};

//: currentItem
SolutionData k_fullPath = (SolutionData){108, (Byte []){15, 25, 30, 30, 9, 2, 24, 37, 24, 9, 1, 222}, 11, 199};

//: status
SolutionData dreamSelectSeedId = (SolutionData){213, (Byte []){166, 161, 180, 161, 160, 166, 155}, 6, 191};

//: error
SolutionData dream_showName = (SolutionData){225, (Byte []){132, 147, 147, 142, 147, 188}, 5, 185};

//: AVMoviePlayer
SolutionData show_withTightenText = (SolutionData){99, (Byte []){34, 53, 46, 12, 21, 10, 6, 51, 15, 2, 26, 6, 17, 161}, 13, 230};

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelController.m
//  NIM
//
//  Created by Genning-Work on 2019/10/25.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESAVMoivePlayerController.h"
#import "LabelController.h"
//: #import "NTESAVPlayerView.h"
#import "MarginReloadView.h"

//: static NSString *kErrorDomain = @"IJKAVMoviePlayer";
static NSString *m_layerFormat = @"IJKAVMoviePlayer";
//: static const NSInteger kEC_CurrentPlayerItemIsNil = 5001;
static const NSInteger noti_fieldFormat = 5001;
//: static const NSInteger kEC_PlayerItemCancelled = 5002;
static const NSInteger kMinId = 5002;

//: static const float kMaxHighWaterMarkMilli = 15 * 1000;
static const float kItemIdent = 15 * 1000;

//: static void *KVO_AVPlayer_rate = &KVO_AVPlayer_rate;
static void *m_frameId = &m_frameId;
//: static void *KVO_AVPlayer_currentItem = &KVO_AVPlayer_currentItem;
static void *showRangeUpData = &showRangeUpData;
//: static void *KVO_AVPlayerItem_state = &KVO_AVPlayerItem_state;
static void *appViewId = &appViewId;
//: static void *KVO_AVPlayerItem_loadedTimeRanges = &KVO_AVPlayerItem_loadedTimeRanges;
static void *user_tapContent = &user_tapContent;
//: static void *KVO_AVPlayerItem_playbackLikelyToKeepUp = &KVO_AVPlayerItem_playbackLikelyToKeepUp;
static void *mMakeRecentStateFormat = &mMakeRecentStateFormat;
//: static void *KVO_AVPlayerItem_playbackBufferFull = &KVO_AVPlayerItem_playbackBufferFull;
static void *show_cellValue = &show_cellValue;
//: static void *KVO_AVPlayerItem_playbackBufferEmpty = &KVO_AVPlayerItem_playbackBufferEmpty;
static void *app_netName = &app_netName;

//: NSString *const NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification =
NSString *const notiKitSizeIdent =
//: @"NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification";
@"NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification";
//: NSString *const NTESAVMoviePlayerPlaybackDidFinishNotification =
NSString *const main_eventViewName =
//: @"NTESAVMoviePlayerPlaybackDidFinishNotification";
@"NTESAVMoviePlayerPlaybackDidFinishNotification";
//: NSString *const NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey =
NSString *const user_linkTitleInviteMsg =
//: @"NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey";
@"NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey";
//: NSString *const NTESAVMoviePlayerPlaybackStateDidChangeNotification =
NSString *const userMultipleData =
//: @"NTESAVMoviePlayerPlaybackStateDidChangeNotification";
@"NTESAVMoviePlayerPlaybackStateDidChangeNotification";
//: NSString *const NTESAVMoviePlayerLoadStateDidChangeNotification =
NSString *const k_makeTopName =
//: @"NTESAVMoviePlayerLoadStateDidChangeNotification";
@"NTESAVMoviePlayerLoadStateDidChangeNotification";

//: inline static BOOL isFloatZero(float value)
inline static BOOL makePathZero(float value)
{
    //: return fabsf(value) <= 0.00001f;
    return fabsf(value) <= 0.00001f;
}

//: static dispatch_once_t _readyToPlayToken;
static dispatch_once_t showCommentActionCurrentTitle;

//: @interface NTESAVMoivePlayerController ()
@interface LabelController ()
{
    //: BOOL _isPrerolling;
    BOOL _isPrerolling;
    //: BOOL _isSeeking;
    BOOL _isSeeking;
    //: BOOL _isError;
    BOOL _isError;
    //: BOOL _isCompleted;
    BOOL _isCompleted;
    //: BOOL _isShutdown;
    BOOL _isShutdown;

    //: BOOL _playbackLikelyToKeeyUp;
    BOOL _playbackLikelyToKeeyUp;
    //: BOOL _playbackBufferEmpty;
    BOOL _playbackBufferEmpty;
    //: BOOL _playbackBufferFull;
    BOOL _playbackBufferFull;
    //: BOOL _playingBeforeInterruption;
    BOOL _playingBeforeInterruption;

    //: NSTimeInterval _seekingTime;
    NSTimeInterval _seekingTime;
}
//: @property (nonatomic, strong) NSURL *playUrl;
@property (nonatomic, strong) NSURL *playUrl;
//: @property (nonatomic, strong) AVURLAsset *playAsset;
@property (nonatomic, strong) AVURLAsset *playAsset;
//: @property (nonatomic, strong) AVPlayerItem *playerItem;
@property (nonatomic, strong) AVPlayerItem *playerItem;

//: @property (nonatomic, strong) id timeObserve; 
@property (nonatomic, strong) id timeObserve; //监听播放进度

//: @property (nonatomic, strong) NTESAVPlayerView *view;
@property (nonatomic, strong) MarginReloadView *view;
//: @property (nonatomic, assign) NSInteger bufferingProgress;
@property (nonatomic, assign) NSInteger bufferingProgress;
//: @property (nonatomic, assign) BOOL isPreparedToPlay;
@property (nonatomic, assign) BOOL isPreparedToPlay;
//: @property (nonatomic, assign) NSTimeInterval duration;
@property (nonatomic, assign) NSTimeInterval duration;
//: @property (nonatomic, assign) NSTimeInterval playableDuration;
@property (nonatomic, assign) NSTimeInterval playableDuration;
//: @property (nonatomic, assign) NTESAVMoviePlaybackState playbackState;
@property (nonatomic, assign) NTESAVMoviePlaybackState playbackState;
//: @property (nonatomic, assign) NTESAVMovieLoadState loadState;
@property (nonatomic, assign) NTESAVMovieLoadState loadState;

//: @end
@end

//: @implementation NTESAVMoivePlayerController
@implementation LabelController

//: @synthesize currentPlaybackTime = _currentPlaybackTime;
@synthesize currentPlaybackTime = _currentPlaybackTime;

//: - (void)dealloc {
- (void)dealloc {
    //: [self shutdown];
    [self with];
}

//: - (id)initWithContentURL:(NSURL *)aUrl {
- (id)initWithMode:(NSURL *)aUrl {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _scalingMode = NTESAVMovieScalingModeAspectFit;
        _scalingMode = NTESAVMovieScalingModeAspectFit;
        //: _playUrl = aUrl;
        _playUrl = aUrl;
        //: _view = [[NTESAVPlayerView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _view = [[MarginReloadView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        //: _isPrerolling = NO;
        _isPrerolling = NO;
        //: _isSeeking = NO;
        _isSeeking = NO;
        //: _isError = NO;
        _isError = NO;
        //: _isCompleted = NO;
        _isCompleted = NO;
        //: _bufferingProgress = 0;
        _bufferingProgress = 0;
        //: _playbackLikelyToKeeyUp = NO;
        _playbackLikelyToKeeyUp = NO;
        //: _playbackBufferEmpty = YES;
        _playbackBufferEmpty = YES;
        //: _playbackBufferFull = NO;
        _playbackBufferFull = NO;
        //: _playbackRate = 1.0f;
        _playbackRate = 1.0f;
        //: _playbackVolume = 1.0f;
        _playbackVolume = 1.0f;
        //: _shouldAutoplay = YES;
        _shouldAutoplay = YES;
        //: [self setScreenOn:YES];
        [self setBig:YES];
        //: [self registerApplicationObservers];
        [self show];
    }
    //: return self;
    return self;
}

//: - (void)prepareToPlay {
- (void)viewWith {
    //: AVURLAsset *asset = [AVURLAsset URLAssetWithURL:_playUrl options:nil];
    AVURLAsset *asset = [AVURLAsset URLAssetWithURL:_playUrl options:nil];
    //: NSArray *requestedKeys = @[@"playable"];
    NSArray *requestedKeys = @[StringFromSolutionData(&mainPepRecentChapterKey)];

    //: _playAsset = asset;
    _playAsset = asset;
    //: [asset loadValuesAsynchronouslyForKeys:requestedKeys
    [asset loadValuesAsynchronouslyForKeys:requestedKeys
                         //: completionHandler:^{
                         completionHandler:^{
                             //: dispatch_async( dispatch_get_main_queue(), ^{
                             dispatch_async( dispatch_get_main_queue(), ^{
                                 //: [self didPrepareToPlayAsset:asset withKeys:requestedKeys];
                                 [self vantageOfModel:asset nim:requestedKeys];
                                 //: [self setPlaybackVolume:_playbackVolume];
                                 [self setPlaybackVolume:_playbackVolume];
                             //: });
                             });
                         //: }];
                         }];
}

//: - (void)play {
- (void)sizeName {
    //: if (_isCompleted)
    if (_isCompleted)
    {
        //: _isCompleted = NO;
        _isCompleted = NO;
        //: [_player seekToTime:kCMTimeZero];
        [_player seekToTime:kCMTimeZero];
    }
    //: [_player play];
    [_player play];
}

//: - (void)pause {
- (void)itemName {
    //: _isPrerolling = NO;
    _isPrerolling = NO;
    //: [_player pause];
    [_player pause];
}

//: - (void)stop {
- (void)on {
    //: [_player pause];
    [_player pause];
    //: [self setScreenOn:NO];
    [self setBig:NO];
    //: _isCompleted = YES;
    _isCompleted = YES;
}

//: - (BOOL)isPlaying
- (BOOL)hiddenToSend
{
    //: if (!isFloatZero(_player.rate)) {
    if (!makePathZero(_player.rate)) {
        //: return YES;
        return YES;
    //: } else {
    } else {
        //: if (_isPrerolling) {
        if (_isPrerolling) {
            //: return YES;
            return YES;
        //: } else {
        } else {
            //: return NO;
            return NO;
        }
    }
}

//: - (void)shutdown {
- (void)with {
    //: _isShutdown = YES;
    _isShutdown = YES;
    //: [self stop];
    [self on];

    //: if (_playerItem != nil) {
    if (_playerItem != nil) {
        //: [_playerItem cancelPendingSeeks];
        [_playerItem cancelPendingSeeks];
    }
    //: if (self.timeObserve) {
    if (self.timeObserve) {
        //: [self.player removeTimeObserver:self.timeObserve];
        [self.player removeTimeObserver:self.timeObserve];
        //: self.timeObserve = nil;
        self.timeObserve = nil;
    }

    //: [self removeItemKeyValueObservers];
    [self numericalQuantity];
    //: [self removePlayerKeyValueObservers];
    [self cap];
    //: [self unregisterApplicationObservers];
    [self data];

    //: [_view setPlayer:nil];
    [_view setPlayer:nil];
}

//: - (void)setCurrentPlaybackTime:(NSTimeInterval)aCurrentPlaybackTime
- (void)setCurrentPlaybackTime:(NSTimeInterval)aCurrentPlaybackTime
{
    //: if (!_player)
    if (!_player)
        //: return;
        return;

    //: _seekingTime = aCurrentPlaybackTime;
    _seekingTime = aCurrentPlaybackTime;
    //: _isSeeking = YES;
    _isSeeking = YES;
    //: _bufferingProgress = 0;
    _bufferingProgress = 0;
    //: [self didPlaybackStateChange];
    [self selectedBirth];
    //: [self didLoadStateChange];
    [self makeFull];
    //: if (_isPrerolling) {
    if (_isPrerolling) {
        //: [_player pause];
        [_player pause];
    }

    //: [_player seekToTime:CMTimeMakeWithSeconds(aCurrentPlaybackTime, 1000000000ull)
    [_player seekToTime:CMTimeMakeWithSeconds(aCurrentPlaybackTime, 1000000000ull)
      //: completionHandler:^(BOOL finished) {
      completionHandler:^(BOOL finished) {
          //: dispatch_async(dispatch_get_main_queue(), ^{
          dispatch_async(dispatch_get_main_queue(), ^{
              //: _isSeeking = NO;
              _isSeeking = NO;
              //: if (_isPrerolling) {
              if (_isPrerolling) {
                  //: [_player play];
                  [_player play];
              }
              //: [self didPlaybackStateChange];
              [self selectedBirth];
              //: [self didLoadStateChange];
              [self makeFull];
          //: });
          });
      //: }];
      }];
}

//: - (NSTimeInterval)currentPlaybackTime
- (NSTimeInterval)currentPlaybackTime
{
    //: if (!_player)
    if (!_player)
        //: return 0.0f;
        return 0.0f;

    //: if (_isSeeking)
    if (_isSeeking)
        //: return _seekingTime;
        return _seekingTime;

    //: return CMTimeGetSeconds([_player currentTime]);
    return CMTimeGetSeconds([_player currentTime]);
}

//: - (NTESAVMoviePlaybackState)playbackState
- (NTESAVMoviePlaybackState)playbackState
{
    //: if (!_player)
    if (!_player)
        //: return NTESAVMoviePlaybackStateStopped;
        return NTESAVMoviePlaybackStateStopped;

    //: NTESAVMoviePlaybackState mpState = NTESAVMoviePlaybackStateStopped;
    NTESAVMoviePlaybackState mpState = NTESAVMoviePlaybackStateStopped;
    //: if (_isCompleted) {
    if (_isCompleted) {
        //: mpState = NTESAVMoviePlaybackStateStopped;
        mpState = NTESAVMoviePlaybackStateStopped;
    //: } else if (_isSeeking) {
    } else if (_isSeeking) {
        //: mpState = NTESAVPMoviePlaybackStateSeekingForward;
        mpState = NTESAVPMoviePlaybackStateSeekingForward;
    //: } else if ([self isPlaying]) {
    } else if ([self hiddenToSend]) {
        //: mpState = NTESAVMoviePlaybackStatePlaying;
        mpState = NTESAVMoviePlaybackStatePlaying;
    //: } else {
    } else {
        //: mpState = NTESAVMoviePlaybackStatePaused;
        mpState = NTESAVMoviePlaybackStatePaused;
    }
    //: return mpState;
    return mpState;
}

//: - (NTESAVMovieLoadState)loadState
- (NTESAVMovieLoadState)loadState
{
    //: if (_player == nil)
    if (_player == nil)
        //: return NTESAVMovieLoadStateUnknown;
        return NTESAVMovieLoadStateUnknown;

    //: if (_isSeeking)
    if (_isSeeking)
        //: return NTESAVMovieLoadStateStalled;
        return NTESAVMovieLoadStateStalled;

    //: AVPlayerItem *playerItem = [_player currentItem];
    AVPlayerItem *playerItem = [_player currentItem];
    //: if (playerItem == nil)
    if (playerItem == nil)
        //: return NTESAVMovieLoadStateUnknown;
        return NTESAVMovieLoadStateUnknown;

    //: if (_player != nil && !isFloatZero(_player.rate)) {
    if (_player != nil && !makePathZero(_player.rate)) {
        //: return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
        return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
    //: } else if ([playerItem isPlaybackBufferFull]) {
    } else if ([playerItem isPlaybackBufferFull]) {
        //: return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
        return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
    //: } else if ([playerItem isPlaybackLikelyToKeepUp]) {
    } else if ([playerItem isPlaybackLikelyToKeepUp]) {
        //: return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
        return NTESAVMovieLoadStatePlayable | NTESAVMovieLoadStatePlaythroughOK;
    //: } else if ([playerItem isPlaybackBufferEmpty]) {
    } else if ([playerItem isPlaybackBufferEmpty]) {
        //: return NTESAVMovieLoadStateStalled;
        return NTESAVMovieLoadStateStalled;
    //: } else {
    } else {
        //: return NTESAVMovieLoadStateUnknown;
        return NTESAVMovieLoadStateUnknown;
    }
}

//: -(void)setPlaybackRate:(float)playbackRate
-(void)setPlaybackRate:(float)playbackRate
{
    //: _playbackRate = playbackRate;
    _playbackRate = playbackRate;
    //: if (_player != nil && !isFloatZero(_player.rate)) {
    if (_player != nil && !makePathZero(_player.rate)) {
        //: _player.rate = _playbackRate;
        _player.rate = _playbackRate;
    }
}

//: -(void)setPlaybackVolume:(float)playbackVolume
-(void)setPlaybackVolume:(float)playbackVolume
{
    //: _playbackVolume = playbackVolume;
    _playbackVolume = playbackVolume;
    //: if (_player != nil && _player.volume != playbackVolume) {
    if (_player != nil && _player.volume != playbackVolume) {
        //: _player.volume = playbackVolume;
        _player.volume = playbackVolume;
    }
    //: BOOL muted = fabs(playbackVolume) < 1e-6;
    BOOL muted = fabs(playbackVolume) < 1e-6;
    //: if (_player != nil && _player.muted != muted) {
    if (_player != nil && _player.muted != muted) {
        //: _player.muted = muted;
        _player.muted = muted;
    }
}

//: - (void)setScalingMode: (NTESAVMovieScalingMode) aScalingMode
- (void)setScalingMode: (NTESAVMovieScalingMode) aScalingMode
{
    //: NTESAVMovieScalingMode newScalingMode = aScalingMode;
    NTESAVMovieScalingMode newScalingMode = aScalingMode;
    //: switch (aScalingMode) {
    switch (aScalingMode) {
        //: case NTESAVMovieScalingModeNone:
        case NTESAVMovieScalingModeNone:
            //: [_view setContentMode:UIViewContentModeCenter];
            [_view setContentMode:UIViewContentModeCenter];
            //: break;
            break;
        //: case NTESAVMovieScalingModeAspectFit:
        case NTESAVMovieScalingModeAspectFit:
            //: [_view setContentMode:UIViewContentModeScaleAspectFit];
            [_view setContentMode:UIViewContentModeScaleAspectFit];
            //: break;
            break;
        //: case NTESAVMovieScalingModeAspectFill:
        case NTESAVMovieScalingModeAspectFill:
            //: [_view setContentMode:UIViewContentModeScaleAspectFill];
            [_view setContentMode:UIViewContentModeScaleAspectFill];
            //: break;
            break;
        //: case NTESAVMovieScalingModeFill:
        case NTESAVMovieScalingModeFill:
            //: [_view setContentMode:UIViewContentModeScaleToFill];
            [_view setContentMode:UIViewContentModeScaleToFill];
            //: break;
            break;
        //: default:
        default:
            //: newScalingMode = _scalingMode;
            newScalingMode = _scalingMode;
    }
    //: _scalingMode = newScalingMode;
    _scalingMode = newScalingMode;
}

//: #pragma mark - Private
#pragma mark - Private
//: - (void)setScreenOn: (BOOL)on
- (void)setBig: (BOOL)on
{
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [UIApplication sharedApplication].idleTimerDisabled = YES;
        [UIApplication sharedApplication].idleTimerDisabled = YES;
    //: });
    });
}

//: - (void)didPrepareToPlayAsset:(AVURLAsset *)asset withKeys:(NSArray *)requestedKeys
- (void)vantageOfModel:(AVURLAsset *)asset nim:(NSArray *)requestedKeys
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: for (NSString *thisKey in requestedKeys)
    for (NSString *thisKey in requestedKeys)
    {
        //: NSError *error = nil;
        NSError *error = nil;
        //: AVKeyValueStatus keyStatus = [asset statusOfValueForKey:thisKey error:&error];
        AVKeyValueStatus keyStatus = [asset statusOfValueForKey:thisKey error:&error];
        //: if (keyStatus == AVKeyValueStatusFailed)
        if (keyStatus == AVKeyValueStatusFailed)
        {
            //: [self assetFailedToPrepareForPlayback:error];
            [self infoDigitizer:error];
            //: return;
            return;
        //: } else if (keyStatus == AVKeyValueStatusCancelled) {
        } else if (keyStatus == AVKeyValueStatusCancelled) {
            // TODO [AVAsset cancelLoading]
            //: error = [self createErrorWithCode:kEC_PlayerItemCancelled
            error = [self nameDateReason:kMinId
                                  //: description:@"player item cancelled"
                                  independent:StringFromSolutionData(&m_nameId)
                                       //: reason:nil];
                                       tillCreate_strong:nil];
            //: [self assetFailedToPrepareForPlayback:error];
            [self infoDigitizer:error];
            //: return;
            return;
        }
    }

    //: if (!asset.playable)
    if (!asset.playable)
    {
        //: NSError *assetCannotBePlayedError = [NSError errorWithDomain:@"AVMoviePlayer"
        NSError *assetCannotBePlayedError = [NSError errorWithDomain:StringFromSolutionData(&show_withTightenText)
                                                                //: code:0
                                                                code:0
                                                            //: userInfo:nil];
                                                            userInfo:nil];

        //: [self assetFailedToPrepareForPlayback:assetCannotBePlayedError];
        [self infoDigitizer:assetCannotBePlayedError];
        //: return;
        return;
    }

    //player item
    //: [self setupPlayerItem:asset];
    [self selected:asset];

    //player
    //: [self setupPlayer];
    [self close];

    //: _isCompleted = NO;
    _isCompleted = NO;

    //: if (_player.currentItem != _playerItem){
    if (_player.currentItem != _playerItem){
        //: [_player replaceCurrentItemWithPlayerItem:_playerItem];
        [_player replaceCurrentItemWithPlayerItem:_playerItem];
    }
}

//: - (void)setupPlayerItem:(AVURLAsset *)asset {
- (void)selected:(AVURLAsset *)asset {
    //: [self unregisterPlayerItemNoticationObservers];
    [self maxObservers];
    //: [self removeItemKeyValueObservers];
    [self numericalQuantity];
    //: _playerItem = [AVPlayerItem playerItemWithAsset:asset];
    _playerItem = [AVPlayerItem playerItemWithAsset:asset];
    //: [self addItemKeyValueObservers];
    [self letObservers];
    //: [self registerPlayerItemNoticationObservers];
    [self background];
}

//: - (void)setupPlayer {
- (void)close {
    //: if (!_player) {
    if (!_player) {
        //: _player = [AVPlayer playerWithPlayerItem:_playerItem];
        _player = [AVPlayer playerWithPlayerItem:_playerItem];
        //: [self addPlayerKeyValueObservers];
        [self playChange];

        //监听播放进度
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: self.timeObserve = [weakSelf.player addPeriodicTimeObserverForInterval:CMTimeMake(1, 1) queue:dispatch_get_main_queue() usingBlock:^(CMTime time) {
        self.timeObserve = [weakSelf.player addPeriodicTimeObserverForInterval:CMTimeMake(1, 1) queue:dispatch_get_main_queue() usingBlock:^(CMTime time) {
            //: CGFloat current = CMTimeGetSeconds(time);
            CGFloat current = CMTimeGetSeconds(time);
            //: CGFloat total = CMTimeGetSeconds(weakSelf.playerItem.duration);
            CGFloat total = CMTimeGetSeconds(weakSelf.playerItem.duration);
            //: _duration = current;
            _duration = current;

            //: if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(videoPlayertotalTime:)]) {
            if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(niming:)]) {
                //: [weakSelf.delegate videoPlayertotalTime:total];
                [weakSelf.delegate niming:total];
            }

            //: if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(videoPlayercurrentTime:)]) {
            if (weakSelf.delegate && [weakSelf.delegate respondsToSelector:@selector(times:)]) {
                //: [weakSelf.delegate videoPlayercurrentTime:current];
                [weakSelf.delegate times:current];
            }
    //
    ////        /***** 这里是比较蛋疼的，当拖动滑块到没有缓冲的地方并且没有开始播放时，也会走到这里 *************/
    ////        if (weakSelf.isCanToGetLocalTime) {
    ////            weakSelf.localTime = [weakSelf getLocalTime];
    ////        }
    //        NSInteger timeNow = [weakSelf getLocalTime];
    //        if (timeNow - weakSelf.localTime > 1.5) {
    //            [weakSelf delegateDidEndBuffer];
    //            weakSelf.isCanToGetLocalTime = YES;
    //        }
        //: }];
        }];
    }
}

//: - (void)assetFailedToPrepareForPlayback:(NSError *)error
- (void)infoDigitizer:(NSError *)error
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: [self onError:error];
    [self magnitude:error];
}

//: - (void)didPlaybackStateChange
- (void)selectedBirth
{
    //: if (_playbackState != self.playbackState) {
    if (_playbackState != self.playbackState) {
        //: _playbackState = self.playbackState;
        _playbackState = self.playbackState;
        //: [[NSNotificationCenter defaultCenter]
        [[NSNotificationCenter defaultCenter]
         //: postNotificationName:NTESAVMoviePlayerPlaybackStateDidChangeNotification
         postNotificationName:userMultipleData
         //: object:self];
         object:self];
    }
}

//: - (void)didLoadStateChange
- (void)makeFull
{
    //: [[NSNotificationCenter defaultCenter]
    [[NSNotificationCenter defaultCenter]
     //: postNotificationName:NTESAVMoviePlayerLoadStateDidChangeNotification
     postNotificationName:k_makeTopName
     //: object:self];
     object:self];
}

//: - (void)fetchLoadStateFromItem:(AVPlayerItem*)playerItem
- (void)workFlow:(AVPlayerItem*)playerItem
{
    //: if (playerItem == nil)
    if (playerItem == nil)
        //: return;
        return;

    //: _playbackLikelyToKeeyUp = playerItem.isPlaybackLikelyToKeepUp;
    _playbackLikelyToKeeyUp = playerItem.isPlaybackLikelyToKeepUp;
    //: _playbackBufferEmpty = playerItem.isPlaybackBufferEmpty;
    _playbackBufferEmpty = playerItem.isPlaybackBufferEmpty;
    //: _playbackBufferFull = playerItem.isPlaybackBufferFull;
    _playbackBufferFull = playerItem.isPlaybackBufferFull;
}

//: - (void)didPlayableDurationUpdate
- (void)playableMax
{
    //: NSTimeInterval currentPlaybackTime = self.currentPlaybackTime;
    NSTimeInterval currentPlaybackTime = self.currentPlaybackTime;
    //: int playableDurationMilli = (int)(self.playableDuration * 1000);
    int playableDurationMilli = (int)(self.playableDuration * 1000);
    //: int currentPlaybackTimeMilli = (int)(currentPlaybackTime * 1000);
    int currentPlaybackTimeMilli = (int)(currentPlaybackTime * 1000);

    //: int bufferedDurationMilli = playableDurationMilli - currentPlaybackTimeMilli;
    int bufferedDurationMilli = playableDurationMilli - currentPlaybackTimeMilli;
    //: if (bufferedDurationMilli > 0) {
    if (bufferedDurationMilli > 0) {
        //: self.bufferingProgress = bufferedDurationMilli * 100 / kMaxHighWaterMarkMilli;
        self.bufferingProgress = bufferedDurationMilli * 100 / kItemIdent;

        //: if (self.bufferingProgress > 100) {
        if (self.bufferingProgress > 100) {
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: if (self.bufferingProgress > 100) {
                if (self.bufferingProgress > 100) {
                    //: if ([self isPlaying]) {
                    if ([self hiddenToSend]) {
                        //: _player.rate = _playbackRate;
                        _player.rate = _playbackRate;
                    }
                }
            //: });
            });
        }
    }
}

//拖动
//: - (void)seekToTimePlay:(float)toTime{
- (void)playByOf:(float)toTime{

    //: if (self.player) {
    if (self.player) {
//        [self.player pause];

        //: __weak typeof(self) weak_self = self;
        __weak typeof(self) weak_self = self;
        //: [self.player seekToTime:CMTimeMake(toTime, 1) completionHandler:^(BOOL finished) {
        [self.player seekToTime:CMTimeMake(toTime, 1) completionHandler:^(BOOL finished) {
            //: __strong typeof(weak_self) strong_self = weak_self;
            __strong typeof(weak_self) strong_self = weak_self;
            //: if (!strong_self) return;
            if (!strong_self) return;
//            [strong_self play];
        //: }];
        }];
    }
}

//: - (void)playerItemFailedToPlayToEndTime:(NSNotification *)notification
- (void)frommed:(NSNotification *)notification
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: [self onError:[notification.userInfo objectForKey:@"error"]];
    [self magnitude:[notification.userInfo objectForKey:StringFromSolutionData(&dream_showName)]];
}

//: - (void)playerItemDidReachEnd:(NSNotification *)notification
- (void)inputTouch:(NSNotification *)notification
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: _isCompleted = YES;
    _isCompleted = YES;

    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self didPlaybackStateChange];
        [self selectedBirth];
        //: [self didLoadStateChange];
        [self makeFull];
        //: [self setScreenOn:NO];
        [self setBig:NO];

        //: [[NSNotificationCenter defaultCenter]
        [[NSNotificationCenter defaultCenter]
         //: postNotificationName:NTESAVMoviePlayerPlaybackDidFinishNotification
         postNotificationName:main_eventViewName
         //: object:self
         object:self
         //: userInfo:@{
         userInfo:@{
                    //: NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey: @(NTESAVMovieFinishReasonPlaybackEnded)
                    user_linkTitleInviteMsg: @(NTESAVMovieFinishReasonPlaybackEnded)
                    //: }];
                    }];
    //: });
    });
}


//: #pragma mark app state changed
#pragma mark app state changed

//: - (void)registerApplicationObservers
- (void)show
{
    //: NSNotificationCenter *notificationManager = [NSNotificationCenter defaultCenter];
    NSNotificationCenter *notificationManager = [NSNotificationCenter defaultCenter];
    //: [notificationManager addObserver:self
    [notificationManager addObserver:self
                             //: selector:@selector(audioSessionInterrupt:)
                             selector:@selector(domains:)
                                 //: name:AVAudioSessionInterruptionNotification
                                 name:AVAudioSessionInterruptionNotification
                               //: object:nil];
                               object:nil];

    //: [notificationManager addObserver:self
    [notificationManager addObserver:self
                             //: selector:@selector(applicationDidBecomeActive)
                             selector:@selector(selectedText)
                                 //: name:UIApplicationDidBecomeActiveNotification
                                 name:UIApplicationDidBecomeActiveNotification
                               //: object:nil];
                               object:nil];

    //: [notificationManager addObserver:self
    [notificationManager addObserver:self
                             //: selector:@selector(applicationDidEnterBackground)
                             selector:@selector(viewReplacement)
                                 //: name:UIApplicationDidEnterBackgroundNotification
                                 name:UIApplicationDidEnterBackgroundNotification
                               //: object:nil];
                               object:nil];
}

//: - (void)unregisterApplicationObservers
- (void)data
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)registerPlayerItemNoticationObservers {
- (void)background {
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(playerItemDidReachEnd:)
                                             selector:@selector(inputTouch:)
                                                 //: name:AVPlayerItemDidPlayToEndTimeNotification
                                                 name:AVPlayerItemDidPlayToEndTimeNotification
                                               //: object:_playerItem];
                                               object:_playerItem];

    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(playerItemFailedToPlayToEndTime:)
                                             selector:@selector(frommed:)
                                                 //: name:AVPlayerItemFailedToPlayToEndTimeNotification
                                                 name:AVPlayerItemFailedToPlayToEndTimeNotification
                                               //: object:_playerItem];
                                               object:_playerItem];
}

//: - (void)unregisterPlayerItemNoticationObservers {
- (void)maxObservers {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    //: name:nil
                                                    name:nil
                                                  //: object:_playerItem];
                                                  object:_playerItem];
}

//: - (void)audioSessionInterrupt:(NSNotification *)notification
- (void)domains:(NSNotification *)notification
{
    //: int reason = [[[notification userInfo] valueForKey:AVAudioSessionInterruptionTypeKey] intValue];
    int reason = [[[notification userInfo] valueForKey:AVAudioSessionInterruptionTypeKey] intValue];
    //: switch (reason) {
    switch (reason) {
        //: case AVAudioSessionInterruptionTypeBegan: {
        case AVAudioSessionInterruptionTypeBegan: {
            //: switch (self.playbackState) {
            switch (self.playbackState) {
                //: case NTESAVMoviePlaybackStatePaused:
                case NTESAVMoviePlaybackStatePaused:
                //: case NTESAVMoviePlaybackStateStopped:
                case NTESAVMoviePlaybackStateStopped:
                    //: _playingBeforeInterruption = NO;
                    _playingBeforeInterruption = NO;
                    //: break;
                    break;
                //: default:
                default:
                    //: _playingBeforeInterruption = YES;
                    _playingBeforeInterruption = YES;
                    //: break;
                    break;
            }
            //: [self pause];
            [self itemName];
            //: break;
            break;
        }
        //: case AVAudioSessionInterruptionTypeEnded: {
        case AVAudioSessionInterruptionTypeEnded: {
            //: if (_playingBeforeInterruption) {
            if (_playingBeforeInterruption) {
                //: [self play];
                [self sizeName];
            }
            //: break;
            break;
        }
    }
}

//: - (void)applicationDidBecomeActive
- (void)selectedText
{
    //: [_view setPlayer:_player];
    [_view setPlayer:_player];
}

//: - (void)applicationDidEnterBackground
- (void)viewReplacement
{
    //: [_view setPlayer:nil];
    [_view setPlayer:nil];
    //: if (([[[UIDevice currentDevice] systemVersion] compare:@"9.0" options:NSNumericSearch] != NSOrderedAscending)) {
    if (([[[UIDevice currentDevice] systemVersion] compare:@"9.0" options:NSNumericSearch] != NSOrderedAscending)) {
        //: if ([self isPlaying]) {
        if ([self hiddenToSend]) {
            //: dispatch_after(dispatch_time((0ull), (int64_t)(2 * 1000000000ull)), dispatch_get_main_queue(), ^{
            dispatch_after(dispatch_time((0ull), (int64_t)(2 * 1000000000ull)), dispatch_get_main_queue(), ^{
                //: [self play];
                [self sizeName];
            //: });
            });
        }
    }
}

//: #pragma mark KVO
#pragma mark KVO

//: - (void)addPlayerKeyValueObservers {
- (void)playChange {
    //: [_player addObserver:self
    [_player addObserver:self
                  //: forKeyPath:@"currentItem"
                  forKeyPath:StringFromSolutionData(&k_fullPath)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayer_currentItem];
                     context:showRangeUpData];


    //: [_player addObserver:self
    [_player addObserver:self
              //: forKeyPath:@"rate"
              forKeyPath:StringFromSolutionData(&noti_shouldText)
                 //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                 options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                 //: context:KVO_AVPlayer_rate];
                 context:m_frameId];
}

//: - (void)removePlayerKeyValueObservers {
- (void)cap {
    //: [_player removeObserver:self forKeyPath:@"currentItem" context:KVO_AVPlayer_currentItem];
    [_player removeObserver:self forKeyPath:StringFromSolutionData(&k_fullPath) context:showRangeUpData];
    //: [_player removeObserver:self forKeyPath:@"rate" context:KVO_AVPlayer_rate];
    [_player removeObserver:self forKeyPath:StringFromSolutionData(&noti_shouldText) context:m_frameId];
}

//: - (void)addItemKeyValueObservers {
- (void)letObservers {
    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"status"
                  forKeyPath:StringFromSolutionData(&dreamSelectSeedId)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_state];
                     context:appViewId];

    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"loadedTimeRanges"
                  forKeyPath:StringFromSolutionData(&user_nameIdent)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_loadedTimeRanges];
                     context:user_tapContent];


    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"playbackLikelyToKeepUp"
                  forKeyPath:StringFromSolutionData(&show_finStrikeTitleUrl)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_playbackLikelyToKeepUp];
                     context:mMakeRecentStateFormat];

    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"playbackBufferEmpty"
                  forKeyPath:StringFromSolutionData(&mImageMsg)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_playbackBufferEmpty];
                     context:app_netName];

    //: [_playerItem addObserver:self
    [_playerItem addObserver:self
                  //: forKeyPath:@"playbackBufferFull"
                  forKeyPath:StringFromSolutionData(&kViewFainTitle)
                     //: options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew
                     //: context:KVO_AVPlayerItem_playbackBufferFull];
                     context:show_cellValue];
}

//: - (void)removeItemKeyValueObservers {
- (void)numericalQuantity {
    //: [_playerItem removeObserver:self forKeyPath:@"status" context:KVO_AVPlayerItem_state];
    [_playerItem removeObserver:self forKeyPath:StringFromSolutionData(&dreamSelectSeedId) context:appViewId];
    //: [_playerItem removeObserver:self forKeyPath:@"loadedTimeRanges" context:KVO_AVPlayerItem_loadedTimeRanges];
    [_playerItem removeObserver:self forKeyPath:StringFromSolutionData(&user_nameIdent) context:user_tapContent];
    //: [_playerItem removeObserver:self forKeyPath:@"playbackLikelyToKeepUp" context:KVO_AVPlayerItem_playbackLikelyToKeepUp];
    [_playerItem removeObserver:self forKeyPath:StringFromSolutionData(&show_finStrikeTitleUrl) context:mMakeRecentStateFormat];
    //: [_playerItem removeObserver:self forKeyPath:@"playbackBufferEmpty" context:KVO_AVPlayerItem_playbackBufferEmpty];
    [_playerItem removeObserver:self forKeyPath:StringFromSolutionData(&mImageMsg) context:app_netName];
    //: [_playerItem removeObserver:self forKeyPath:@"playbackBufferFull" context:KVO_AVPlayerItem_playbackBufferFull];
    [_playerItem removeObserver:self forKeyPath:StringFromSolutionData(&kViewFainTitle) context:show_cellValue];
}

//: - (void)observeValueForKeyPath:(NSString*)path
- (void)observeValueForKeyPath:(NSString*)path
                      //: ofObject:(id)object
                      ofObject:(id)object
                        //: change:(NSDictionary*)change
                        change:(NSDictionary*)change
                       //: context:(void*)context
                       context:(void*)context
{
    //: if (_isShutdown)
    if (_isShutdown)
        //: return;
        return;

    //: if (context == KVO_AVPlayerItem_state)
    if (context == appViewId)
    {
        /* AVPlayerItem "status" property value observer. */
        //: AVPlayerItemStatus status = [[change objectForKey:NSKeyValueChangeNewKey] integerValue];
        AVPlayerItemStatus status = [[change objectForKey:NSKeyValueChangeNewKey] integerValue];
        //: switch (status)
        switch (status)
        {
            //: case AVPlayerItemStatusUnknown:
            case AVPlayerItemStatusUnknown:
            {
                /* Indicates that the status of the player is not yet known because
                 it has not tried to load new media resources for playback */
            }
                //: break;
                break;

            //: case AVPlayerItemStatusReadyToPlay:
            case AVPlayerItemStatusReadyToPlay:
            {
                /* Once the AVPlayerItem becomes ready to play, i.e.
                 [playerItem status] == AVPlayerItemStatusReadyToPlay,
                 its duration can be fetched from the item. */
                //: _dispatch_once(&_readyToPlayToken, ^{
                _dispatch_once(&showCommentActionCurrentTitle, ^{
                    //: [_view setPlayer:_player];
                    [_view setPlayer:_player];

                    //: self.isPreparedToPlay = YES;
                    self.isPreparedToPlay = YES;
                    //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
                    AVPlayerItem *playerItem = (AVPlayerItem *)object;
                    //: NSTimeInterval duration = CMTimeGetSeconds(playerItem.duration);
                    NSTimeInterval duration = CMTimeGetSeconds(playerItem.duration);
                    //: if (duration <= 0)
                    if (duration <= 0)
                        //: self.duration = 0.0f;
                        self.duration = 0.0f;
                    //: else
                    else
                        //: self.duration = duration;
                        self.duration = duration;

                    //: [[NSNotificationCenter defaultCenter]
                    [[NSNotificationCenter defaultCenter]
                     //: postNotificationName:NTESAVMediaPlaybackIsPreparedToPlayDidChangeNotification
                     postNotificationName:notiKitSizeIdent
                     //: object:self];
                     object:self];

                    //: if (_shouldAutoplay)
                    if (_shouldAutoplay)
                        //: [_player play];
                        [_player play];
                //: });
                });
            }
                //: break;
                break;

            //: case AVPlayerItemStatusFailed:
            case AVPlayerItemStatusFailed:
            {
                //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
                AVPlayerItem *playerItem = (AVPlayerItem *)object;
                //: [self assetFailedToPrepareForPlayback:playerItem.error];
                [self infoDigitizer:playerItem.error];
            }
                //: break;
                break;
        }

        //: [self didPlaybackStateChange];
        [self selectedBirth];
    }
    //: else if (context == KVO_AVPlayerItem_loadedTimeRanges)
    else if (context == user_tapContent)
    {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: if (_player != nil && playerItem.status == AVPlayerItemStatusReadyToPlay) {
        if (_player != nil && playerItem.status == AVPlayerItemStatusReadyToPlay) {
            //: NSArray *timeRangeArray = playerItem.loadedTimeRanges;
            NSArray *timeRangeArray = playerItem.loadedTimeRanges;
            //: CMTime currentTime = [_player currentTime];
            CMTime currentTime = [_player currentTime];

            //: BOOL foundRange = NO;
            BOOL foundRange = NO;
            //: CMTimeRange aTimeRange = {0};
            CMTimeRange aTimeRange = {0};

            //: if (timeRangeArray.count) {
            if (timeRangeArray.count) {
                //: aTimeRange = [[timeRangeArray objectAtIndex:0] CMTimeRangeValue];
                aTimeRange = [[timeRangeArray objectAtIndex:0] CMTimeRangeValue];
                //: if(CMTimeRangeContainsTime(aTimeRange, currentTime)) {
                if(CMTimeRangeContainsTime(aTimeRange, currentTime)) {
                    //: foundRange = YES;
                    foundRange = YES;
                }
            }

            //: if (foundRange) {
            if (foundRange) {
                //: CMTime maxTime = CMTimeRangeGetEnd(aTimeRange);
                CMTime maxTime = CMTimeRangeGetEnd(aTimeRange);
                //: NSTimeInterval playableDuration = CMTimeGetSeconds(maxTime);
                NSTimeInterval playableDuration = CMTimeGetSeconds(maxTime);
                //: if (playableDuration > 0) {
                if (playableDuration > 0) {
                    //: self.playableDuration = playableDuration;
                    self.playableDuration = playableDuration;
                    //: [self didPlayableDurationUpdate];
                    [self playableMax];
                }
            }
        }
        //: else
        else
        {
            //: self.playableDuration = 0;
            self.playableDuration = 0;
        }
    }
    //: else if (context == KVO_AVPlayerItem_playbackLikelyToKeepUp) {
    else if (context == mMakeRecentStateFormat) {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: NSLog(@"KVO_AVPlayerItem_playbackLikelyToKeepUp: %@\n", playerItem.isPlaybackLikelyToKeepUp ? @"YES" : @"NO");
        //: [self fetchLoadStateFromItem:playerItem];
        [self workFlow:playerItem];
    }
    //: else if (context == KVO_AVPlayerItem_playbackBufferEmpty) {
    else if (context == app_netName) {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: BOOL isPlaybackBufferEmpty = playerItem.isPlaybackBufferEmpty;
        BOOL isPlaybackBufferEmpty = playerItem.isPlaybackBufferEmpty;
        //: NSLog(@"KVO_AVPlayerItem_playbackBufferEmpty: %@\n", isPlaybackBufferEmpty ? @"YES" : @"NO");
        //: if (isPlaybackBufferEmpty)
        if (isPlaybackBufferEmpty)
            //: _isPrerolling = YES;
            _isPrerolling = YES;
        //: [self fetchLoadStateFromItem:playerItem];
        [self workFlow:playerItem];
        //: [self didLoadStateChange];
        [self makeFull];
    }
    //: else if (context == KVO_AVPlayerItem_playbackBufferFull) {
    else if (context == show_cellValue) {
        //: AVPlayerItem *playerItem = (AVPlayerItem *)object;
        AVPlayerItem *playerItem = (AVPlayerItem *)object;
        //: NSLog(@"KVO_AVPlayerItem_playbackBufferFull: %@\n", playerItem.isPlaybackBufferFull ? @"YES" : @"NO");
        //: [self fetchLoadStateFromItem:playerItem];
        [self workFlow:playerItem];
        //: [self didLoadStateChange];
        [self makeFull];
    }
    //: else if (context == KVO_AVPlayer_rate)
    else if (context == m_frameId)
    {
        //: if (_player != nil && !isFloatZero(_player.rate))
        if (_player != nil && !makePathZero(_player.rate))
            //: _isPrerolling = NO;
            _isPrerolling = NO;
        /* AVPlayer "rate" property value observer. */
        //: [self didPlaybackStateChange];
        [self selectedBirth];
        //: [self didLoadStateChange];
        [self makeFull];
    }
    //: else if (context == KVO_AVPlayer_currentItem)
    else if (context == showRangeUpData)
    {
        //: _isPrerolling = NO;
        _isPrerolling = NO;
        /* AVPlayer "currentItem" property observer.
         Called when the AVPlayer replaceCurrentItemWithPlayerItem:
         replacement will/did occur. */
        //: AVPlayerItem *newPlayerItem = [change objectForKey:NSKeyValueChangeNewKey];
        AVPlayerItem *newPlayerItem = [change objectForKey:NSKeyValueChangeNewKey];

        /* Is the new player item null? */
        //: if (newPlayerItem == (id)[NSNull null])
        if (newPlayerItem == (id)[NSNull null])
        {
            //: NSError *error = [self createErrorWithCode:kEC_CurrentPlayerItemIsNil
            NSError *error = [self nameDateReason:noti_fieldFormat
                                           //: description:@"current player item is nil"
                                           independent:StringFromSolutionData(&user_explainUrl)
                                                //: reason:nil];
                                                tillCreate_strong:nil];
            //: [self assetFailedToPrepareForPlayback:error];
            [self infoDigitizer:error];
        }
        //: else /|* Replacement of player currentItem has occurred *|/
        else /* Replacement of player currentItem has occurred */
        {
            //: [_view setPlayer:_player];
            [_view setPlayer:_player];

            //: [self didPlaybackStateChange];
            [self selectedBirth];
            //: [self didLoadStateChange];
            [self makeFull];
        }
    }
    //: else
    else
    {
        //: [super observeValueForKeyPath:path ofObject:object change:change context:context];
        [super observeValueForKeyPath:path ofObject:object change:change context:context];
    }
}


//: #pragma mark - Error
#pragma mark - Error
//: - (void)onError:(NSError *)error
- (void)magnitude:(NSError *)error
{
    //: _isError = YES;
    _isError = YES;

    //: __block NSError *blockError = error;
    __block NSError *blockError = error;

    //: NSLog(@"AVPlayer: onError\n");
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [self didPlaybackStateChange];
        [self selectedBirth];
        //: [self didLoadStateChange];
        [self makeFull];
        //: [self setScreenOn:NO];
        [self setBig:NO];

        //: if (blockError == nil) {
        if (blockError == nil) {
            //: blockError = [[NSError alloc] init];
            blockError = [[NSError alloc] init];
        }

        //: [[NSNotificationCenter defaultCenter]
        [[NSNotificationCenter defaultCenter]
         //: postNotificationName:NTESAVMoviePlayerPlaybackDidFinishNotification
         postNotificationName:main_eventViewName
         //: object:self
         object:self
         //: userInfo:@{
         userInfo:@{
                    //: NTESAVMoviePlayerPlaybackDidFinishReasonUserInfoKey: @(NTESAVMovieFinishReasonPlaybackError),
                    user_linkTitleInviteMsg: @(NTESAVMovieFinishReasonPlaybackError),
                    //: @"error": blockError
                    StringFromSolutionData(&dream_showName): blockError
                    //: }];
                    }];
    //: });
    });
}

//: - (NSError*)createErrorWithCode: (NSInteger)code
- (NSError*)nameDateReason: (NSInteger)code
                    //: description: (NSString*)description
                    independent: (NSString*)description
                         //: reason: (NSString*)reason
                         tillCreate_strong: (NSString*)reason
{
    //: NSMutableDictionary *errorDict = [NSMutableDictionary dictionary];
    NSMutableDictionary *errorDict = [NSMutableDictionary dictionary];
    //: errorDict[NSLocalizedDescriptionKey] = description;
    errorDict[NSLocalizedDescriptionKey] = description;
    //: errorDict[NSLocalizedFailureReasonErrorKey] = reason;
    errorDict[NSLocalizedFailureReasonErrorKey] = reason;
    //: NSError *error = [NSError errorWithDomain:kErrorDomain
    NSError *error = [NSError errorWithDomain:m_layerFormat
                                         //: code:code
                                         code:code
                                     //: userInfo:errorDict];
                                     userInfo:errorDict];
    //: return error;
    return error;
}

//: @end
@end

Byte *SolutionDataToByte(SolutionData *data) {
    if (data->fullMake < 104) return data->imageCenter;
    for (int i = 0; i < data->setOpenText; i++) {
        data->imageCenter[i] ^= data->handleTourist;
    }
    data->imageCenter[data->setOpenText] = 0;
    data->fullMake = 21;
    return data->imageCenter;
}

NSString *StringFromSolutionData(SolutionData *data) {
    return [NSString stringWithUTF8String:(char *)SolutionDataToByte(data)];
}
