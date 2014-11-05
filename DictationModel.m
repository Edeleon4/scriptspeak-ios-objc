//
//  DictationModel.m
//  CrowdSpeechObjC
//
//  Created by Eduardo de Leon on 11/2/14.
//  Copyright (c) 2014 Eduardo de Leon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DictationModel.h"


@implementation Dictation

@synthesize text;
@synthesize date;
@synthesize count;

- (id)init
{
    self = [super init];
    if (self) {
        self.text = @"";
        self.date = [[NSDate alloc] init];
        self.count = 0;
    }
    return self;
}
- (id)initWithText: (NSString*) inputText
{
    self = [super init];
    if (self) {
        self.text = inputText;
        self.date = [[NSDate alloc] init];
        self.count = 0;
        
    }
    return self;
}

- (void)incrementUsage {
    count++;
}
@end


