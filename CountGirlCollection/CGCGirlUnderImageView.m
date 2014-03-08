//
//  CGCGirlUnderImageView.m
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import "CGCGirlUnderImageView.h"
#import "CGCImageManager.h"

@implementation CGCGirlUnderImageView

- (void)setSpeedLevel:(NSInteger)speedLevel {
    _speedLevel = speedLevel;
    
    NSString *keyName = [NSString stringWithFormat:@"kGirlUnder_%ld", (long)speedLevel];
    self.image = [[CGCImageManager sharedManager] imageOfIndex:_charactorIndex forKey:keyName];
}


//- (void)setSpeedType:(SpeedType)speedType {
//    _speedType = speedType;
//
//    if (speedType == SpeedType_0) {
//        self.image = [[CGCImageManager sharedManager] imageOfIndex:_charactorIndex forKey:@"kGirlUpper_EmotionType_Normal"];
//        self.highlightedImage = [[CGCImageManager sharedManager] imageOfIndex:_charactorIndex forKey:@"kGirlUpper_EmotionType_Normal_B"];
//    } else if (speedType == SpeedType_20) {
//        self.image = [UIImage imageNamed:@"Numbers-2-filled-icon"];
//        self.highlightedImage = [UIImage imageNamed:@"Numbers-3-filled-icon"];
//    } else if (speedType == SpeedType_40) {
//        self.image = [UIImage imageNamed:@"Numbers-4-filled-icon"];
//        self.highlightedImage = [UIImage imageNamed:@"Numbers-5-filled-icon"];
//    } else if (speedType == SpeedType_60) {
//        self.image = [UIImage imageNamed:@"Numbers-6-filled-icon"];
//        self.highlightedImage = [UIImage imageNamed:@"Numbers-7-filled-icon"];
//    } else if (speedType == SpeedType_80) {
//        self.image = [UIImage imageNamed:@"Numbers-8-filled-icon"];
//        self.highlightedImage = [UIImage imageNamed:@"Numbers-9-filled-icon"];
//    }
//}


@end
