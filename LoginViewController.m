//
//  LoginViewController.m
//  Week Four Homework
//
//  Created by Tim Collins on 7/7/14.
//  Copyright (c) 2014 Tim Collins. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
- (IBAction)cancelPress:(id)sender;

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelPress:(id)sender {
    [self.delegate cancelPressed];
}
@end
