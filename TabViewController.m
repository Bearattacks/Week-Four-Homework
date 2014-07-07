//
//  TabViewController.m
//  Week Four Homework
//
//  Created by Tim Collins on 7/7/14.
//  Copyright (c) 2014 Tim Collins. All rights reserved.
//

#import "TabViewController.h"
#import "HomeViewController.h"
#import "SearchViewController.h"
#import "composeViewController.h"
#import "AccountViewController.h"
#import "ActivityViewController.h"
#import "LoginViewController.h"

@interface TabViewController () <LoginViewControllerProtocol>

@property (strong, nonatomic) HomeViewController *homeViewController;
@property (strong, nonatomic) SearchViewController *searchViewController;
@property (strong, nonatomic) ComposeViewController *composeViewController;
@property (strong, nonatomic) AccountViewController *accountViewController;
@property (strong, nonatomic) ActivityViewController *activityViewController;
@property (strong, nonatomic) LoginViewController *loginViewController;


@property (weak, nonatomic) IBOutlet UIButton *homeIcon;
@property (weak, nonatomic) IBOutlet UIButton *searchIcon;
@property (weak, nonatomic) IBOutlet UIButton *profileIcon;
@property (weak, nonatomic) IBOutlet UIButton *activityIcon;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIImageView *toolTip;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;


- (IBAction)onHomeTap:(id)sender;
- (IBAction)onSearchTap:(id)sender;
- (IBAction)onComposeTap:(id)sender;
- (IBAction)onProfileTap:(id)sender;
- (IBAction)onTrendingTap:(id)sender;
- (IBAction)onLoginPress:(id)sender;

-(void)animateToolTip;

@end

@implementation TabViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.homeViewController = [[HomeViewController alloc] init];
        self.searchViewController = [[SearchViewController alloc] init];
        self.composeViewController = [[ComposeViewController alloc] init];
        self.accountViewController = [[AccountViewController  alloc] init];
        self.activityViewController = [[ActivityViewController alloc] init];
        self.loginViewController = [[LoginViewController alloc] init];
        self.loginViewController.delegate = self;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.contentView addSubview:self.homeViewController.view];

    [self.homeIcon setSelected:YES];

}

- (void)viewDidAppear:(BOOL)animated
{
    [self animateToolTip];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onHomeTap:(id)sender {
    [self.contentView addSubview:self.homeViewController.view];
    [self.homeIcon setSelected:YES];
    [self.searchIcon setSelected:NO];
    [self.profileIcon setSelected:NO];
    [self.activityIcon setSelected:NO];
    self.toolTip.alpha = 1;
    self.loginButton.alpha = 1;

    
}
- (IBAction)onSearchTap:(id)sender {
    [self.contentView addSubview:self.searchViewController.view];
    
    [self.homeIcon setSelected:NO];
    [self.searchIcon setSelected:YES];
    [self.profileIcon setSelected:NO];
    [self.activityIcon setSelected:NO];
    self.toolTip.alpha = 0;
    self.loginButton.alpha = 0;
}

- (IBAction)onComposeTap:(id)sender {
    [self.contentView addSubview:self.composeViewController.view];
    [self.homeIcon setSelected:NO];
    [self.searchIcon setSelected:NO];
    [self.profileIcon setSelected:NO];
    [self.activityIcon setSelected:NO];
    self.toolTip.alpha = 0;
    self.loginButton.alpha = 0;
}

- (IBAction)onProfileTap:(id)sender {
    [self.contentView addSubview:self.accountViewController.view];
    
    [self.homeIcon setSelected:NO];
    [self.searchIcon setSelected:NO];
    [self.profileIcon setSelected:YES];
    [self.activityIcon setSelected:NO];
    self.toolTip.alpha = 1;
    self.loginButton.alpha = 0;

}

- (IBAction)onTrendingTap:(id)sender {
    [self.contentView addSubview:self.activityViewController.view];
    
    [self.homeIcon setSelected:NO];
    [self.searchIcon setSelected:NO];
    [self.profileIcon setSelected:NO];
    [self.activityIcon setSelected:YES];
    self.toolTip.alpha = 1;
    self.loginButton.alpha = 0;

}

- (IBAction)onLoginPress:(id)sender {
    [self.view addSubview:self.loginViewController.view];

}

- (void)animateToolTip {
    [UIView animateWithDuration:0.8 delay:0 options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionRepeat animations:^{
        [UIView setAnimationRepeatAutoreverses:YES];
        self.toolTip.center = CGPointMake(self.toolTip.center.x, 462);
    } completion:nil];
}

-(void)cancelPressed {
    [self.loginViewController.view removeFromSuperview];
    [self animateToolTip];
}

@end
