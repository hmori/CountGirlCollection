//
//  CGCGirlUnderImageView.m
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import "CGCGirlUnderImageView.h"

@implementation CGCGirlUnderImageView


- (void)setSpeedType:(SpeedType)speedType {
    _speedType = speedType;

    if (speedType == SpeedType_0) {
        self.image = [UIImage imageNamed:@"Numbers-0-filled-icon"];
        self.highlightedImage = [UIImage imageNamed:@"Numbers-1-filled-icon"];
    } else if (speedType == SpeedType_20) {
        self.image = [UIImage imageNamed:@"Numbers-2-filled-icon"];
        self.highlightedImage = [UIImage imageNamed:@"Numbers-3-filled-icon"];
    } else if (speedType == SpeedType_40) {
        self.image = [UIImage imageNamed:@"Numbers-4-filled-icon"];
        self.highlightedImage = [UIImage imageNamed:@"Numbers-5-filled-icon"];
    } else if (speedType == SpeedType_60) {
        self.image = [UIImage imageNamed:@"Numbers-6-filled-icon"];
        self.highlightedImage = [UIImage imageNamed:@"Numbers-7-filled-icon"];
    } else if (speedType == SpeedType_80) {
        self.image = [UIImage imageNamed:@"Numbers-8-filled-icon"];
        self.highlightedImage = [UIImage imageNamed:@"Numbers-9-filled-icon"];
    }
}


@end
