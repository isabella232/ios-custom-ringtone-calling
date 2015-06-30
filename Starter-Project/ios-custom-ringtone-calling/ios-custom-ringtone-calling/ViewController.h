//
//  ViewController.h
//  ios-custom-ringtone-calling
//
//  Created by Ali Minty on 6/29/15.
//  Copyright (c) 2015 Ali Minty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *UsernameTextField;
@property (weak, nonatomic) IBOutlet UIButton *LoginButton;

- (IBAction)LoginAction:(id)sender;


@end

