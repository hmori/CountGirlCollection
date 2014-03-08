//
//  CGCGirlMiddleImageView.m
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#define kFrameCount 19

#import "CGCGirlMiddleImageView.h"
#import "CGCImageManager.h"

@implementation CGCGirlMiddleImageView {
    NSTimer *_timer;
    NSInteger _index;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
    }
    return self;
}

- (void)setAnimated:(BOOL)animated {
    LOG_CURRENT_METHOD;
    _animated = animated;
    if (_animated) {
        if (!_timer) {
            _timer = [NSTimer scheduledTimerWithTimeInterval:(1.2f / kFrameCount)
                                                      target:self
                                                    selector:@selector(shakeAnimation)
                                                    userInfo:nil
                                                     repeats:YES];
        }
    } else {
        [_timer invalidate];
        _timer = nil;
    }
}

- (void)shakeAnimation {
    LOG_CURRENT_METHOD;
    if (_index == kFrameCount) {
        _index = 0;
        [self setAnimated:NO];
    } else {
        _index++;
    }
    LOG(@"_index=%ld", (long)_index);
    NSString *keyName = [NSString stringWithFormat:@"kGirlBust_%ld", (long)_index];
//    self.image = [UIImage imageNamed:imageName];
    self.image = [[CGCImageManager sharedManager] imageOfIndex:0 forKey:keyName];
}

@end
