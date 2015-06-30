//
//  CallViewController.h
//  ios-custom-ringtone-calling
//
//  Created by Ali Minty on 6/29/15.
//  Copyright (c) 2015 Ali Minty. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Sinch/Sinch.h>
#import <AVFoundation/AVFoundation.h>

@interface CallViewController : UIViewController <SINCallClientDelegate, SINCallDelegate>

@property (weak, nonatomic) IBOutlet UILabel *ContactLabel;
@property (weak, nonatomic) IBOutlet UIButton *AnswerButton;
@property (weak, nonatomic) IBOutlet UIButton *HangupButton;
@property (nonatomic, readwrite, strong) id<SINCall> call;
@property (strong, nonatomic) NSString *contact;
@property (strong, nonatomic) NSString *urlString;
@property (strong, nonatomic) AVPlayer *player;

- (IBAction)AnswerAction:(id)sender;
- (IBAction)HangupAction:(id)sender;

@end
