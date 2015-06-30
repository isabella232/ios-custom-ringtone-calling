//
//  AppDelegate.h
//  ios-custom-ringtone-calling
//
//  Created by Ali Minty on 6/29/15.
//  Copyright (c) 2015 Ali Minty. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Sinch/Sinch.h>
#import <SinchService/SinchService.h>
#import "CallViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) id<SINService> sinch;


@end

