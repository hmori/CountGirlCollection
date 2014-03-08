//
//  CGCImageManager.h
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CGCImageManager : NSObject

+ (CGCImageManager *)sharedManager;
- (UIImage *)imageOfIndex:(NSUInteger)index forKey:(NSString *)key;

@end
