//
//  BSAudioFileHelper.h
//
//  Created by Bogdan Stasiuk on 8/27/15.
//  Copyright (c) 2015 Bogdan Stasiuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVPlayer.h>
#import <CoreAudio/CoreAudioTypes.h>


@interface BSAudioFileHelper : NSObject

+ (NSString *)nameForOSStatus:(OSStatus)osStatus;
+ (NSString *)nameForAVPlayerStatus:(AVPlayerStatus)status;
+ (NSString *)nameForAudioFormatID:(AudioFormatID)audioFormatID;

@end
