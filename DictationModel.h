//
//  DictationModel.h
//  CrowdSpeechObjC
//
//  Created by Eduardo de Leon on 11/2/14.
//  Copyright (c) 2014 Eduardo de Leon. All rights reserved.
//

#ifndef CrowdSpeechObjC_DictationModel_h
#define CrowdSpeechObjC_DictationModel_h

@interface Dictation : NSObject

@property NSString *text;
@property NSDate *date;
@property int count;


-(id)initWithText: (NSString*) inputText;
-(void)incrementUsage;

@end

#endif
