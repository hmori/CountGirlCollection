//
//  CGCGirlUnderImageView.h
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import <UIKit/UIKit.h>

//typedef enum {
//    SpeedType_0,
//    SpeedType_20,
//    SpeedType_40,
//    SpeedType_60,
//    SpeedType_80,
//} SpeedType;

@interface CGCGirlUnderImageView : UIImageView

@property (nonatomic) NSUInteger charactorIndex;
//@property (nonatomic) SpeedType speedType;
@property (nonatomic) NSInteger speedLevel;



@end
