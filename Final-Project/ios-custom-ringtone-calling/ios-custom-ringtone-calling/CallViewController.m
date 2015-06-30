//
//  CallViewController.m
//  ios-custom-ringtone-calling
//
//  Created by Ali Minty on 6/29/15.
//  Copyright (c) 2015 Ali Minty. All rights reserved.
//

#import "CallViewController.h"

@interface CallViewController ()

@end

@implementation CallViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    if ([self.call direction] == SINCallDirectionIncoming) {
        self.AnswerButton.hidden = NO;
        self.ContactLabel.text = [NSString stringWithFormat:@"Call from %@", self.contact];
        // test url: http://media.soundcloud.com/stream/jXWxkkXElkk9.mp3
        NSString *urlString = [[_call headers] objectForKey:@"url"];
        NSURL *url = [NSURL URLWithString:urlString];
        self.player = [[AVPlayer alloc]initWithURL:url];
        [self.player play];
        
    } else {
        self.AnswerButton.hidden = YES;
        NSString *contactName = [self.call remoteUserId];
        self.ContactLabel.text = [NSString stringWithFormat:@"Calling %@...", contactName];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setCall:(id<SINCall>)call {
    _call = call;
    _call.delegate = self;
}

- (IBAction)AnswerAction:(id)sender {
    [self.call answer];
    self.AnswerButton.hidden = YES;
}

- (IBAction)HangupAction:(id)sender {
    [self.call hangup];
}

- (void)callDidEstablish:(id<SINCall>)call {
    self.ContactLabel.text = [call remoteUserId];
    [self.player pause];
}

- (void)callDidEnd:(id<SINCall>)call {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
