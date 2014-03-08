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
	
    UIImage *image = [UIImage imageNamed:@"profile.png"];
    
    UIImageView *characterImageView =[[UIImageView alloc] initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 568)];
    characterImageView.image = image;
    [self.view addSubview:characterImageView];
    
    NSLog(@"%@", characterImageView.image);
    
//    nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, characterImageView.frame.size.width,
//                                                          self.view.frame.size.width, 20)];
//    nameLabel.backgroundColor = [UIColor yellowColor];
//    nameLabel.text = @"名前：フィット子";
//    [self.view addSubview:nameLabel];
//    
////    statusLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,
////                                                            nameLabel.frame.origin.y + nameLabel.frame.size.height,
////                                                            self.view.frame.size.width, 30)];
////    statusLabel.backgroundColor = [UIColor blueColor];
////    statusLabel.text = @"152cm/44kg B78/W55/H83";
////    [self.view addSubview:statusLabel];
//    
//    profileLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,
//                                                             nameLabel.frame.origin.y + nameLabel.frame.size.height,
//                                                             self.view.frame.size.width, 130)];
//    profileLabel.backgroundColor = [UIColor grayColor];
//    profileLabel.text = @"152cm/44kg B78/W55/H83\nちびっ子。\n成績優秀でガードが固く、幼少期から新体操をやっているため体が柔らかい。\n実は売れっ子アイドルで\n好きな音楽はジャズ。";
//    profileLabel.numberOfLines = 6;
////    profileLabel.lineBreakMode = NSLineBreakByTruncatingHead;
//    profileLabel.baselineAdjustment = UIBaselineAdjustmentNone;
//    [self.view addSubview:profileLabel];
//    
//    speechLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,
//                                                            profileLabel.frame.origin.y + profileLabel.frame.size.height,
//                                                            self.view.frame.size.width, 100)];
//    speechLabel.backgroundColor = [UIColor purpleColor];
//    speechLabel.text = @"「ちっちゃいからって馬鹿にしてるでしょ！」\n「みーんなのアイドルだけど、あなたとだけぴったりしたいの！」";
//    speechLabel.numberOfLines = 4;
//    [self.view addSubview:speechLabel];
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
