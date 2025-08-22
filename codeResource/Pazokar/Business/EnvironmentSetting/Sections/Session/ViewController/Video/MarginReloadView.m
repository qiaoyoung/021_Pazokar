
#import <Foundation/Foundation.h>

NSString *StringFromArcanumData(Byte *data);        


//: AVLayerVideoGravityResizeAspect
Byte user_gateBottomData[] = {90, 31, 81, 12, 235, 116, 212, 162, 139, 27, 230, 244, 240, 5, 251, 16, 40, 20, 33, 5, 24, 19, 20, 30, 246, 33, 16, 37, 24, 35, 40, 1, 20, 34, 24, 41, 20, 240, 34, 31, 20, 18, 35, 60};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MarginReloadView.m
//  NIM
//
//  Created by Genning-Work on 2019/10/25.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESAVPlayerView.h"
#import "MarginReloadView.h"

//: @implementation NTESAVPlayerView
@implementation MarginReloadView
{
    //: NSString* _videoFillMode;
    NSString* _videoFillMode;
}

//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _videoFillMode = @"AVLayerVideoGravityResizeAspect";
        _videoFillMode = StringFromArcanumData(user_gateBottomData);
        // Initialization code
    }
    //: return self;
    return self;
}

//: + (Class)layerClass
+ (Class)layerClass
{
    //: return [AVPlayerLayer class];
    return [AVPlayerLayer class];
}

//: - (AVPlayer*)player
- (AVPlayer*)player
{
    //: return [(AVPlayerLayer*)[self layer] player];
    return [(AVPlayerLayer*)[self layer] player];
}

//: - (void)setPlayer:(AVPlayer*)player
- (void)setPlayer:(AVPlayer*)player
{
    //: if ([self player] != player) {
    if ([self player] != player) {
        //: [(AVPlayerLayer*)[self layer] setPlayer:player];
        [(AVPlayerLayer*)[self layer] setPlayer:player];
        //: [self setVideoFillMode:_videoFillMode];
        [self setFashion:_videoFillMode];
    }
}

/* Specifies how the video is displayed within a player layer’s bounds.
 (AVLayerVideoGravityResizeAspect is default) */
//: - (void)setVideoFillMode:(NSString *)fillMode
- (void)setFashion:(NSString *)fillMode
{
    //: _videoFillMode = fillMode;
    _videoFillMode = fillMode;

    //: AVPlayerLayer *playerLayer = (AVPlayerLayer*)[self layer];
    AVPlayerLayer *playerLayer = (AVPlayerLayer*)[self layer];
    //: playerLayer.videoGravity = fillMode;
    playerLayer.videoGravity = fillMode;
}

//: - (void)setContentMode:(UIViewContentMode)contentMode
- (void)setContentMode:(UIViewContentMode)contentMode
{
    //: [super setContentMode:contentMode];
    [super setContentMode:contentMode];

    //: switch (contentMode) {
    switch (contentMode) {
        //: case UIViewContentModeScaleToFill:
        case UIViewContentModeScaleToFill:
            //: [self setVideoFillMode:AVLayerVideoGravityResize];
            [self setFashion:AVLayerVideoGravityResize];
            //: break;
            break;
        //: case UIViewContentModeCenter:
        case UIViewContentModeCenter:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspect];
            [self setFashion:AVLayerVideoGravityResizeAspect];
            //: break;
            break;
        //: case UIViewContentModeScaleAspectFill:
        case UIViewContentModeScaleAspectFill:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspectFill];
            [self setFashion:AVLayerVideoGravityResizeAspectFill];
            //: break;
            break;
        //: case UIViewContentModeScaleAspectFit:
        case UIViewContentModeScaleAspectFit:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspect];
            [self setFashion:AVLayerVideoGravityResizeAspect];
        //: default:
        default:
            //: break;
            break;
    }
}

//: @end
@end

Byte * ArcanumDataToCache(Byte *data) {
    int protectiveImage = data[0];
    int leadershipIdealRegarding = data[1];
    Byte presently = data[2];
    int mentor = data[3];
    if (!protectiveImage) return data + mentor;
    for (int i = mentor; i < mentor + leadershipIdealRegarding; i++) {
        int value = data[i] + presently;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[mentor + leadershipIdealRegarding] = 0;
    return data + mentor;
}

NSString *StringFromArcanumData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ArcanumDataToCache(data)];
}
