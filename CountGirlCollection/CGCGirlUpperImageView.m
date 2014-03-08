//
//  CGCGirlUpperImageView.m
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import "CGCGirlUpperImageView.h"


@implementation CGCGirlUpperImageView {
    NSTimer *_timer;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        _timer = [NSTimer scheduledTimerWithTimeInterval:3.0f
                                                  target:self
                                                selector:@selector(blink:)
                                                userInfo:nil
                                                 repeats:YES];
    }
    return self;
}

- (void)blink:(id)sender {
    LOG_CURRENT_METHOD;
    self.highlighted = YES;
    
    [self performSelector:@selector(unblink:) withObject:nil afterDelay:0.2f];
}

- (void)unblink:(id)sender {
    self.highlighted = NO;
}

#pragma mark - 

- (void)setEmotionType:(EmotionType)emotionType {
    _emotionType = emotionType;
    
    if (emotionType == EmotionType_Normal) {
        self.image = [UIImage imageNamed:@"Numbers-0-filled-icon"];
        self.highlightedImage = [UIImage imageNamed:@"Numbers-1-filled-icon"];
    } else if (emotionType == EmotionType_Smile) {
        self.image = [UIImage imageNamed:@"Numbers-2-filled-icon"];
        self.highlightedImage = [UIImage imageNamed:@"Numbers-3-filled-icon"];
    } else if (emotionType == EmotionType_Anger) {
        self.image = [UIImage imageNamed:@"Numbers-4-filled-icon"];
        self.highlightedImage = [UIImage imageNamed:@"Numbers-5-filled-icon"];
    } else if (emotionType == EmotionType_Affection) {
        self.image = [UIImage imageNamed:@"Numbers-6-filled-icon"];
        self.highlightedImage = [UIImage imageNamed:@"Numbers-7-filled-icon"];
    } else if (emotionType == EmotionType_Shy) {
        self.image = [UIImage imageNamed:@"Numbers-8-filled-icon"];
        self.highlightedImage = [UIImage imageNamed:@"Numbers-9-filled-icon"];
    }
}



@end
