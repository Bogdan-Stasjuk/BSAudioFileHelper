# BSAudioFileHelper
Helper methods for work with audio files.


##Methods
```objc
+ (NSString *)nameForOSStatus:(OSStatus)osStatus;
+ (NSString *)nameForAVPlayerStatus:(AVPlayerStatus)status;
+ (NSString *)nameForAudioFormatID:(AudioFormatID)audioFormatID;
```


##Project uses next pods:

```objc
pod 'BSMacros'
```


Compatibility
=========

This class has been tested back to iOS 7.0.


Installation
========

__CocoaPods__: `pod 'BSAudioFileHelper'`<br />
__Manual__: Copy the __BSAudioFileHelper__ folder in your project<br />

Import header in your project. .pch is a good place ;)

    #import "BSAudioFileHelper.h"

License
=====

This code is released under the MIT License. See the LICENSE file for
details.
