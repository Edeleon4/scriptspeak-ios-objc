//
//  ViewController.m
//  CrowdSpeechObjC
//
//  Created by Eduardo de Leon on 11/2/14.
//  Copyright (c) 2014 Eduardo de Leon. All rights reserved.
//

#import "ViewController.h"
#import "DictationModel.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;
@property (strong, nonatomic)  AVSpeechSynthesizer *synthesizer;


@end

@implementation ViewController
- (IBAction)playButtonClicked:(id)sender {
    Dictation *dictation = [[Dictation alloc]initWithText : _inputTextField.text];
    [self play:dictation];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.synthesizer = [[AVSpeechSynthesizer alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)play:(Dictation*) dictation{
    AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:dictation.text];
    utterance.rate = AVSpeechUtteranceDefaultSpeechRate;
    [self.synthesizer speakUtterance:utterance];
    [dictation incrementUsage];
}

@end
