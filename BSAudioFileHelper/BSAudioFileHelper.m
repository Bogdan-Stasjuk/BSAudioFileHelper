//
//  BSAudioFileHelper.m
//
//  Created by Bogdan Stasiuk on 8/27/15.
//  Copyright (c) 2015 Bogdan Stasiuk. All rights reserved.
//

#import "BSAudioFileHelper.h"

#import <AudioToolbox/AudioFile.h>

#import "BSMacros.h"


@implementation BSAudioFileHelper

+ (NSError *)errorForOSStatus:(OSStatus)osStatus {
    NSString *userInfo = BSEmptyString;
    switch (osStatus) {
        case kAudioFileUnspecifiedError:
            userInfo = @"kAudioFileUnspecifiedError";
            
        case kAudioFileUnsupportedFileTypeError: // 1954115647
            userInfo = @"kAudioFileUnsupportedFileTypeError";
            
        case kAudioFileUnsupportedDataFormatError:
            userInfo = @"kAudioFileUnsupportedDataFormatError";
            
        case kAudioFileUnsupportedPropertyError:
            userInfo = @"kAudioFileUnsupportedPropertyError";
            
        case kAudioFileBadPropertySizeError:
            userInfo = @"kAudioFileBadPropertySizeError";
            
        case kAudioFilePermissionsError:
            userInfo = @"kAudioFilePermissionsError";
            
        case kAudioFileNotOptimizedError:
            userInfo = @"kAudioFileNotOptimizedError";
            
        case kAudioFileInvalidChunkError:
            userInfo = @"kAudioFileInvalidChunkError";
            
        case kAudioFileDoesNotAllow64BitDataSizeError:
            userInfo = @"kAudioFileDoesNotAllow64BitDataSizeError";
            
        case kAudioFileInvalidPacketOffsetError:
            userInfo = @"kAudioFileInvalidPacketOffsetError";
            
        case kAudioFileInvalidFileError: // 1685348671
            userInfo = @"kAudioFileInvalidFileError";
            
        case kAudioFileOperationNotSupportedError:
            userInfo = @"kAudioFileOperationNotSupportedError";
            
        case kAudioFileNotOpenError:
            userInfo = @"kAudioFileNotOpenError";
            
        case kAudioFileEndOfFileError:
            userInfo = @"kAudioFileEndOfFileError";
            
        case kAudioFilePositionError:
            userInfo = @"kAudioFilePositionError";
            
        case kAudioFileFileNotFoundError:
            userInfo = @"kAudioFileFileNotFoundError";
            
        default:
            userInfo = @"unknown error";
    }
    
    return [NSError errorWithDomain:@"com.stasiuk.bogdan.audiofilehelper" code:osStatus userInfo:@{
                                                                                                   @"AudioFileError": userInfo,
                                                                                                   }];
}

+ (NSString *)nameForAudioFormatID:(AudioFormatID)audioFormatID {
    switch (audioFormatID) {
        case kAudioFormatLinearPCM:
            return @"kAudioFormatLinearPCM";
        case kAudioFormatAC3:
            return @"kAudioFormatAC3";
        case kAudioFormat60958AC3:
            return @"kAudioFormat60958AC3";
        case kAudioFormatAppleIMA4:
            return @"kAudioFormatAppleIMA4";
        case kAudioFormatMPEG4AAC:
            return @"kAudioFormatMPEG4AAC";
        case kAudioFormatMPEG4CELP:
            return @"kAudioFormatMPEG4CELP";
        case kAudioFormatMPEG4HVXC:
            return @"kAudioFormatMPEG4HVXC";
        case kAudioFormatMPEG4TwinVQ:
            return @"kAudioFormatMPEG4TwinVQ";
        case kAudioFormatMACE3:
            return @"kAudioFormatMACE3";
        case kAudioFormatMACE6:
            return @"kAudioFormatMACE6";
        case kAudioFormatULaw:
            return @"kAudioFormatULaw";
        case kAudioFormatALaw:
            return @"kAudioFormatALaw";
        case kAudioFormatQDesign:
            return @"kAudioFormatQDesign";
        case kAudioFormatQDesign2:
            return @"kAudioFormatQDesign2";
        case kAudioFormatQUALCOMM:
            return @"kAudioFormatQUALCOMM";
        case kAudioFormatMPEGLayer1:
            return @"kAudioFormatMPEGLayer1";
        case kAudioFormatMPEGLayer2:
            return @"kAudioFormatMPEGLayer2";
        case kAudioFormatMPEGLayer3:
            return @"kAudioFormatMPEGLayer3";
        case kAudioFormatTimeCode:
            return @"kAudioFormatTimeCode";
        case kAudioFormatMIDIStream:
            return @"kAudioFormatMIDIStream";
        case kAudioFormatParameterValueStream:
            return @"kAudioFormatParameterValueStream";
        case kAudioFormatAppleLossless:
            return @"kAudioFormatAppleLossless";
        case kAudioFormatMPEG4AAC_HE:
            return @"kAudioFormatMPEG4AAC_HE";
        case kAudioFormatMPEG4AAC_LD:
            return @"kAudioFormatMPEG4AAC_LD";
        case kAudioFormatMPEG4AAC_ELD:
            return @"kAudioFormatMPEG4AAC_ELD";
        case kAudioFormatMPEG4AAC_ELD_SBR:
            return @"kAudioFormatMPEG4AAC_ELD_SBR";
        case kAudioFormatMPEG4AAC_ELD_V2:
            return @"kAudioFormatMPEG4AAC_ELD_V2";
        case kAudioFormatMPEG4AAC_HE_V2:
            return @"kAudioFormatMPEG4AAC_HE_V2";
        case kAudioFormatMPEG4AAC_Spatial:
            return @"kAudioFormatMPEG4AAC_Spatial";
        case kAudioFormatAMR:
            return @"kAudioFormatAMR";
        case kAudioFormatAMR_WB:
            return @"kAudioFormatAMR_WB";
        case kAudioFormatAudible:
            return @"kAudioFormatAudible";
        case kAudioFormatiLBC:
            return @"kAudioFormatiLBC";
        case kAudioFormatDVIIntelIMA:
            return @"kAudioFormatDVIIntelIMA";
        case kAudioFormatMicrosoftGSM:
            return @"kAudioFormatMicrosoftGSM";
        case kAudioFormatAES3:
            return @"kAudioFormatAES3";

        default:
            BSLog(@"There is no AudioFormatID with integer value %i", audioFormatID);
            return nil;
    }
}

@end
