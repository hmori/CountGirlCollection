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
#import "CGCProfileViewController.h"
#import "CGCImageManager.h"

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
    NSInteger _speedLevel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LOG(@"charactorIndex=%lu", (unsigned long)_charactorIndex);
    self.navigationController.navigationBar.hidden = YES;
    
    _girlUpperImageView.image = [[CGCImageManager sharedManager] imageOfIndex:_charactorIndex
                                                                       forKey:@"kGirlUpper_EmotionType_Normal"];
    _girlUpperImageView.highlightedImage = [[CGCImageManager sharedManager] imageOfIndex:_charactorIndex
                                                                                  forKey:@"kGirlUpper_EmotionType_Normal_B"];
    _counterImageView0.image = [UIImage imageNamed:@"img_counter_0"];
    _counterImageView1.image = [UIImage imageNamed:@"img_counter_0"];
    _counterImageView2.image = [UIImage imageNamed:@"img_counter_0"];
}

- (IBAction)menuAction:(UIButton *)sender {
    LOG_CURRENT_METHOD;
    
    self.navigationController.navigationBar.hidden = NO;
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)clearAction:(UIButton *)sender {
    LOG_CURRENT_METHOD;
    [self clearCount];
}

- (IBAction)profileAction:(UIButton *)sender {
    LOG_CURRENT_METHOD;
    
    UIStoryboard *counterStoryboard = [UIStoryboard storyboardWithName:@"iphone_profile" bundle:nil];
    CGCCounterViewController *counterViewController = [counterStoryboard instantiateViewControllerWithIdentifier:@"CGCProfileViewController"];

    [self presentViewController:counterViewController animated:YES completion:nil];
}

- (IBAction)touchBustAction:(UIButton *)sender {
    LOG_CURRENT_METHOD;
    [_girlMiddleImageView setAnimated:YES];
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

- (IBAction)debugSpeedUp:(UIButton *)sender {
    LOG_CURRENT_METHOD;
    if (_speedLevel < 9) {
        _speedLevel++;
    }
    [self refreshSpeed];
}

- (IBAction)debugSpeedDown:(UIButton *)sender {
    LOG_CURRENT_METHOD;
    if (_speedLevel == 0) {
        return;
    }
    _speedLevel--;
    [self refreshSpeed];
}

- (void)refreshSpeed {
    LOG_CURRENT_METHOD;
    
    [_girlUnderImageView setSpeedLevel:_speedLevel];
//    if (_speedLevel == 0) {
//        [_girlUnderImageView setSpeedType:SpeedType_0];
//    } else if (_speedLevel == 1) {
//        [_girlUnderImageView setSpeedType:SpeedType_20];
//    } else if (_speedLevel == 2) {
//        [_girlUnderImageView setSpeedType:SpeedType_40];
//    } else if (_speedLevel == 3) {
//        [_girlUnderImageView setSpeedType:SpeedType_60];
//    } else if (_speedLevel == 4) {
//        [_girlUnderImageView setSpeedType:SpeedType_80];
//    }
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
        [_girlUpperImageView setEmotionType:EmotionType_Affection];
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
