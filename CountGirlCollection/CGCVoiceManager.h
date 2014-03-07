//
//  CGCVoiceManager.h
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CGCVoice : NSObject
@property (nonatomic) NSString *text;
@property (nonatomic) CGFloat rate;
@end

@interface CGCVoiceManager : NSObject

+ (CGCVoiceManager *)sharedManager;
- (CGCVoice *)voiceOfCharacter:(NSInteger)character ofType:(NSString *)type ofIndex:(NSInteger)index;

@end
