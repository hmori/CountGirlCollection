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
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_smile_b"] forKey:@"kGirlUpper_EmotionType_Smile_B"];
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_anger"] forKey:@"kGirlUpper_EmotionType_Anger"];
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_anger_b"] forKey:@"kGirlUpper_EmotionType_Anger_B"];
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_shy"] forKey:@"kGirlUpper_EmotionType_Shy"];
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_shy_b"] forKey:@"kGirlUpper_EmotionType_Shy_B"];
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_affection"] forKey:@"kGirlUpper_EmotionType_Affection"];
        [dic setObject:[UIImage imageNamed:@"img_girl_upper_affection_b"] forKey:@"kGirlUpper_EmotionType_Affection_B"];
        
        [dic setObject:[UIImage imageNamed:@"img_girl_middle_0"] forKey:@"kGirlMiddle_0"];
        [dic setObject:[UIImage imageNamed:@"img_girl_middle_1"] forKey:@"kGirlMiddle_1"];
        [dic setObject:[UIImage imageNamed:@"img_girl_middle_2"] forKey:@"kGirlMiddle_2"];
        [dic setObject:[UIImage imageNamed:@"img_girl_middle_3"] forKey:@"kGirlMiddle_3"];
        [dic setObject:[UIImage imageNamed:@"img_girl_middle_4"] forKey:@"kGirlMiddle_4"];
        [dic setObject:[UIImage imageNamed:@"img_girl_middle_5"] forKey:@"kGirlMiddle_5"];
        [dic setObject:[UIImage imageNamed:@"img_girl_middle_6"] forKey:@"kGirlMiddle_6"];
        [dic setObject:[UIImage imageNamed:@"img_girl_middle_7"] forKey:@"kGirlMiddle_7"];
        [dic setObject:[UIImage imageNamed:@"img_girl_middle_8"] forKey:@"kGirlMiddle_8"];
        [dic setObject:[UIImage imageNamed:@"img_girl_middle_9"] forKey:@"kGirlMiddle_9"];
        
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
