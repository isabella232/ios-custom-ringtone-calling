//
//  UserRingtoneViewController.m
//  ios-custom-ringtone-calling
//
//  Created by Ali Minty on 6/29/15.
//  Copyright (c) 2015 Ali Minty. All rights reserved.
//

#import "UserRingtoneViewController.h"

@interface UserRingtoneViewController ()

@end

@implementation UserRingtoneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (id<SINCallClient>)callClient {
    return [[(AppDelegate *)[[UIApplication sharedApplication] delegate] sinch] callClient];
}

- (IBAction)CallAction:(id)sender {
    if (![self.UsernameTextField.text isEqualToString:@""]) {
        CallViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"callScreen"];
        NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:self.RingtoneTextField.text, @"url", nil];
        id<SINCall> call = [self.callClient callUserWithId:self.UsernameTextField.text headers:dict];
        [controller setCall:call];
        [controller setContact:self.UsernameTextField.text];
        [controller setUrlString:self.RingtoneTextField.text];
        
        [self presentViewController:controller animated:YES completion:nil];
    }
}
@end
