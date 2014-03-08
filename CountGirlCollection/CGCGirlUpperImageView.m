//
//  CGCGirlUpperImageView.m
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import "CGCGirlUpperImageView.h"
#import "CGCImageManager.h"

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
        self.image = [[CGCImageManager sharedManager] imageOfIndex:_charactorIndex forKey:@"kGirlUpper_EmotionType_Normal"];
        self.highlightedImage = [[CGCImageManager sharedManager] imageOfIndex:_charactorIndex forKey:@"kGirlUpper_EmotionType_Normal_B"];
    } else if (emotionType == EmotionType_Smile) {
        self.image = [[CGCImageManager sharedManager] imageOfIndex:_charactorIndex forKey:@"kGirlUpper_EmotionType_Smile"];
        self.highlightedImage = [[CGCImageManager sharedManager] imageOfIndex:_charactorIndex forKey:@"kGirlUpper_EmotionType_Smile_B"];
    } else if (emotionType == EmotionType_Anger) {
        self.image = [[CGCImageManager sharedManager] imageOfIndex:_charactorIndex forKey:@"kGirlUpper_EmotionType_Anger"];
        self.highlightedImage = [[CGCImageManager sharedManager] imageOfIndex:_charactorIndex forKey:@"kGirlUpper_EmotionType_Anger_B"];
    } else if (emotionType == EmotionType_Affection) {
        self.image = [[CGCImageManager sharedManager] imageOfIndex:_charactorIndex forKey:@"kGirlUpper_EmotionType_Affection"];
        self.highlightedImage = [[CGCImageManager sharedManager] imageOfIndex:_charactorIndex forKey:@"kGirlUpper_EmotionType_Affection_B"];
    } else if (emotionType == EmotionType_Shy) {
        self.image = [[CGCImageManager sharedManager] imageOfIndex:_charactorIndex forKey:@"kGirlUpper_EmotionType_Shy"];
        self.highlightedImage = [[CGCImageManager sharedManager] imageOfIndex:_charactorIndex forKey:@"kGirlUpper_EmotionType_Shy_B"];
    }
}



@end
