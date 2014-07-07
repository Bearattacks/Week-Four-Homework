//
//  LoginViewController.h
//  Week Four Homework
//
//  Created by Tim Collins on 7/7/14.
//  Copyright (c) 2014 Tim Collins. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LoginViewControllerProtocol <NSObject>

- (void)cancelPressed;


@end

@interface LoginViewController : UIViewController

@property(nonatomic, readwrite, weak) id<LoginViewControllerProtocol> delegate;
- (IBAction)cancelPress:(id)sender;
@end
