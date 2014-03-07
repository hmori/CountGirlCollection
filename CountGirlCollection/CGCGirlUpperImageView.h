//
//  CGCGirlUpperImageView.h
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    EmotionType_Normal,
    EmotionType_Smile,
    EmotionType_Anger,
    EmotionType_Shy,
    EmotionType_Sad,
} EmotionType;

@interface CGCGirlUpperImageView : UIImageView

@property (nonatomic) EmotionType emotionType;

@end
