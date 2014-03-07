//
//  CGCCounterViewController.m
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import "CGCCounterViewController.h"
#import "CGCCounterImageView.h"
#import "CGCGirlUpperImageView.h"
#import "CGCGirlMiddleImageView.h"
#import "CGCGirlUnderImageView.h"


@interface CGCCounterViewController ()
@property (weak, nonatomic) IBOutlet CGCCounterImageView *counterImageView2;
@property (weak, nonatomic) IBOutlet CGCCounterImageView *counterImageView1;
@property (weak, nonatomic) IBOutlet CGCCounterImageView *counterImageView0;
@property (strong, nonatomic) IBOutlet CGCGirlUpperImageView *girlUpperImageView;
@property (weak, nonatomic) IBOutlet CGCGirlMiddleImageView *girlMiddleImageView;
@property (weak, nonatomic) IBOutlet CGCGirlUnderImageView *girlUnderImageView;

@property (weak, nonatomic) IBOutlet UIImageView *bgEmotionBarImageView;
@property (weak, nonatomic) IBOutlet UIImageView *emotionBarImageView;
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
    [self refreshEmotion];
}

- (IBAction)debugEmotionDown:(UIButton *)sender {
    LOG_CURRENT_METHOD;
    if (_emotionLevel == 0) {
        return;
    }
    _emotionLevel--;
    [self refreshEmotion];
}


- (void)refreshEmotion {
    LOG(@"_emotionLevel=%ld", (long)_emotionLevel);
    
    CGRect bgRect = _bgEmotionBarImageView.frame;
    _emotionBarImageView.frame = (CGRect){
        bgRect.origin.x,
        bgRect.origin.y + (bgRect.size.height) - (bgRect.size.height / 4) * (_emotionLevel),
        bgRect.size.width,
        (bgRect.size.height / 4) * _emotionLevel};
    
    if (_emotionLevel == 0) {
        [_girlUpperImageView setEmotionType:EmotionType_Normal];
    } else if (_emotionLevel == 1) {
        [_girlUpperImageView setEmotionType:EmotionType_Sad];
    } else if (_emotionLevel == 2) {
        [_girlUpperImageView setEmotionType:EmotionType_Anger];
    } else if (_emotionLevel == 3) {
        [_girlUpperImageView setEmotionType:EmotionType_Smile];
    } else if (_emotionLevel == 4) {
        [_girlUpperImageView setEmotionType:EmotionType_Shy];
    }
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