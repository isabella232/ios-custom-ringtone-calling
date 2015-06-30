//
//  CallViewController.h
//  ios-custom-ringtone-calling
//
//  Created by Ali Minty on 6/29/15.
//  Copyright (c) 2015 Ali Minty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CallViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *ContactLabel;
@property (weak, nonatomic) IBOutlet UIButton *AnswerButton;
@property (weak, nonatomic) IBOutlet UIButton *HangupButton;

- (IBAction)AnswerAction:(id)sender;
- (IBAction)HangupAction:(id)sender;

@end
