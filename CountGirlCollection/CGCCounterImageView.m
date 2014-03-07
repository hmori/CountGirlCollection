//
//  CGCCounterImageView.m
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import "CGCCounterImageView.h"

@implementation CGCCounterImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)setNumber:(NSUInteger)number {
    _number = number;
    
    NSString *imageName = [NSString stringWithFormat:@"Numbers-%lu-filled-icon", (unsigned long)number];
    self.image = [UIImage imageNamed:imageName];
}

@end
