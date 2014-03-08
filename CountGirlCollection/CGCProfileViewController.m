//
//  CGCProfileViewController.m
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import "CGCProfileViewController.h"

@interface CGCProfileViewController ()

@end

@implementation CGCProfileViewController

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
    LOG_CURRENT_METHOD;
    [super viewDidLoad];
	
    nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, 200, 40)];
    nameLabel.backgroundColor = [UIColor yellowColor];
    nameLabel.text = @"名前：フィット子";
    [self.view addSubview:nameLabel];
    
    statusLabel = [[UILabel alloc] initWithFrame:CGRectMake(nameLabel.frame.origin.x,
                                                            nameLabel.frame.origin.y + nameLabel.frame.size.height,
                                                            300, 40)];
    statusLabel.backgroundColor = [UIColor blueColor];
    statusLabel.text = @"152cm/44kg B78/W55/H83";
    [self.view addSubview:statusLabel];
    
    profileLabel = [[UILabel alloc] initWithFrame:CGRectMake(statusLabel.frame.origin.x,
                                                             statusLabel.frame.origin.y + statusLabel.frame.size.height,
                                                             300, 150)];
    profileLabel.backgroundColor = [UIColor grayColor];
    profileLabel.text = @"特徴：\nちびっ子。\n成績優秀でガードが固く、幼少期から新体操をやっているため体が柔らかい。\n実は売れっ子アイドルで好きな音楽はジャズ。";
//    profileLabel.lineBreakMode = NSLineBreakByTruncatingHead;
    profileLabel.baselineAdjustment = UIBaselineAdjustmentNone;
    [self.view addSubview:profileLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)closeAction:(UIButton *)sender {
    LOG_CURRENT_METHOD;
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
