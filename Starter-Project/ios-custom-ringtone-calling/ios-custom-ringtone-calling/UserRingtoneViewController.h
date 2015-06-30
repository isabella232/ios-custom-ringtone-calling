//
//  UserRingtoneViewController.h
//  ios-custom-ringtone-calling
//
//  Created by Ali Minty on 6/29/15.
//  Copyright (c) 2015 Ali Minty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserRingtoneViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *UsernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *RingtoneTextField;
@property (weak, nonatomic) IBOutlet UIButton *CallButton;

- (IBAction)CallAction:(id)sender;


@end
