//
//  CGCCounterImageView.m
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import "CGCCounterImageView.h"

@implementation CGCCounterImageView

- (void)setNumber:(NSInteger)number {
    _number = number;
    
    NSString *imageName = [NSString stringWithFormat:@"img_counter_%ld", (long)number];
    self.image = [UIImage imageNamed:imageName];
}

@end
