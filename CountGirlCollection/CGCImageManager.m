//
//  CGCImageManager.m
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import "CGCImageManager.h"

@implementation CGCImageManager {
    NSMutableArray *_images;
}

// v Singleton
+ (CGCImageManager *)sharedManager {
    static CGCImageManager *sharedSingleton;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedSingleton = [[CGCImageManager alloc] initSharedInstance];
    });
    return sharedSingleton;
}

- (id)initSharedInstance {
    self = [super init];
    if (self) {
        
        _images = [NSMutableArray array];
        
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_normal"] forKey:@"kGirlUpper_EmotionType_Normal"];
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_normal_b"] forKey:@"kGirlUpper_EmotionType_Normal_B"];
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_smile"] forKey:@"kGirlUpper_EmotionType_Smile"];
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_smile"] forKey:@"kGirlUpper_EmotionType_Smile_B"];
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_anger"] forKey:@"kGirlUpper_EmotionType_Anger"];
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_anger_b"] forKey:@"kGirlUpper_EmotionType_Anger_B"];
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_shy"] forKey:@"kGirlUpper_EmotionType_Shy"];
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_shy"] forKey:@"kGirlUpper_EmotionType_Shy_B"];
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_shy"] forKey:@"kGirlUpper_EmotionType_Affection"];
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_shy"] forKey:@"kGirlUpper_EmotionType_Affection_B"];
        
        [dic setObject:[UIImage imageNamed:@"img_girl_middle_bg"] forKey:@"kGirlMiddle"];

        [dic setObject:[UIImage imageNamed:@"img_girl_bust_0"] forKey:@"kGirlBust_0"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_1"] forKey:@"kGirlBust_1"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_2"] forKey:@"kGirlBust_2"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_3"] forKey:@"kGirlBust_3"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_4"] forKey:@"kGirlBust_4"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_5"] forKey:@"kGirlBust_5"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_6"] forKey:@"kGirlBust_6"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_7"] forKey:@"kGirlBust_7"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_8"] forKey:@"kGirlBust_8"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_9"] forKey:@"kGirlBust_9"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_10"] forKey:@"kGirlBust_10"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_11"] forKey:@"kGirlBust_11"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_12"] forKey:@"kGirlBust_12"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_13"] forKey:@"kGirlBust_13"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_14"] forKey:@"kGirlBust_14"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_15"] forKey:@"kGirlBust_15"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_16"] forKey:@"kGirlBust_16"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_17"] forKey:@"kGirlBust_17"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_18"] forKey:@"kGirlBust_18"];
        [dic setObject:[UIImage imageNamed:@"img_girl_bust_19"] forKey:@"kGirlBust_19"];

        [dic setObject:[UIImage imageNamed:@"img_girl_under_0"] forKey:@"kGirlUnder_0"];
        [dic setObject:[UIImage imageNamed:@"img_girl_under_1"] forKey:@"kGirlUnder_1"];
        [dic setObject:[UIImage imageNamed:@"img_girl_under_2"] forKey:@"kGirlUnder_2"];
        [dic setObject:[UIImage imageNamed:@"img_girl_under_3"] forKey:@"kGirlUnder_3"];
        [dic setObject:[UIImage imageNamed:@"img_girl_under_4"] forKey:@"kGirlUnder_4"];
        [dic setObject:[UIImage imageNamed:@"img_girl_under_5"] forKey:@"kGirlUnder_5"];
        [dic setObject:[UIImage imageNamed:@"img_girl_under_6"] forKey:@"kGirlUnder_6"];
        [dic setObject:[UIImage imageNamed:@"img_girl_under_7"] forKey:@"kGirlUnder_7"];
        [dic setObject:[UIImage imageNamed:@"img_girl_under_8"] forKey:@"kGirlUnder_8"];
        [dic setObject:[UIImage imageNamed:@"img_girl_under_9"] forKey:@"kGirlUnder_9"];
        
        [_images addObject:dic];
        
        
    }
    return self;
}

- (UIImage *)imageOfIndex:(NSUInteger)index forKey:(NSString *)key {
    return [[_images objectAtIndex:index] objectForKey:key];
}

@end
