//
//  BSAudioFileHelper.h
//
//  Created by Bogdan Stasiuk on 8/27/15.
//  Copyright (c) 2015 Bogdan Stasiuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreAudio/CoreAudioTypes.h>


@interface BSAudioFileHelper : NSObject

+ (NSString *)nameForOSStatus:(OSStatus)osStatus;
+ (NSString *)nameForAudioFormatID:(AudioFormatID)audioFormatID;

@end
