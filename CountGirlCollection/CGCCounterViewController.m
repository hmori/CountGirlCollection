//
//  CGCCounterViewController.m
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import "CGCCounterViewController.h"
#import "CGCCounterImageView.h"

@interface CGCCounterViewController ()
@property (weak, nonatomic) IBOutlet CGCCounterImageView *counterImageView2;
@property (weak, nonatomic) IBOutlet CGCCounterImageView *counterImageView1;
@property (weak, nonatomic) IBOutlet CGCCounterImageView *counterImageView0;
@end

@implementation CGCCounterViewController {
    NSInteger _counter;
    NSInteger _emotionLevel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)menuAction:(UIButton *)sender {
    LOG_CURRENT_METHOD;
}

- (IBAction)clearAction:(UIButton *)sender {
    LOG_CURRENT_METHOD;
    [self clearCount];
}

- (IBAction)profileAction:(UIButton *)sender {
    LOG_CURRENT_METHOD;
}

- (IBAction)touchBustAction:(UIButton *)sender {
    LOG_CURRENT_METHOD;
    [self countup];
}

- (IBAction)touchOtherAction:(UIButton *)sender {
    LOG_CURRENT_METHOD;
    [self countup];
}

- (IBAction)debugEmotionUp:(UIButton *)sender {
    LOG_CURRENT_METHOD;
    if (_emotionLevel == 4) {
        return;
    }
    _emotionLevel++;
}

- (IBAction)debugEmotionDown:(UIButton *)sender {
    LOG_CURRENT_METHOD;
    if (_emotionLevel == 0) {
        return;
    }
    _emotionLevel--;
}


#pragma mark - 
- (void)countup {
    LOG_CURRENT_METHOD;
    _counter++;
    [self refreshCounter];
}

- (void)clearCount {
    _counter = 0;
    [self refreshCounter];
}

- (void)refreshCounter {
    NSInteger number2 = (_counter / 100);
    NSInteger number1 = ((_counter - (number2 * 100)) / 10);
    NSInteger number0 = _counter - (number2 * 100) - (number1 * 10);
    
    [_counterImageView2 setNumber:number2];
    [_counterImageView1 setNumber:number1];
    [_counterImageView0 setNumber:number0];
}




@end
