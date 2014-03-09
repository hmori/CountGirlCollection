//
//  CGCSplashViewController.m
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import "CGCSplashViewController.h"

@interface CGCSplashViewController ()

@end

@implementation CGCSplashViewController

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
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)splashTapAction:(UIButton *)sender {
    
    UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"CGCCharacterSelectTableViewController"];
    UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:controller];
    
    [self presentViewController:navigation animated:NO completion:nil];
}

@end
