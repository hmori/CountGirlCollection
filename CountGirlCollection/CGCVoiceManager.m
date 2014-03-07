//
//  CGCVoiceManager.m
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import "CGCVoiceManager.h"

@implementation CGCVoice
@end

@interface CGCVoiceManager ()
@property (atomic) NSMutableArray *voices;
@end

@implementation CGCVoiceManager

// v Singleton
+ (CGCVoiceManager *)sharedManager {
    static CGCVoiceManager *sharedSingleton;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedSingleton = [[CGCVoiceManager alloc] initSharedInstance];
    });
    return sharedSingleton;
}

- (id)initSharedInstance {
    self = [super init];
    if (self) {
        _voices = [NSMutableArray arrayWithCapacity:0];
        
        //TODO: 階層構造を作る
    }
    return self;
}

- (CGCVoice *)voiceOfCharacter:(NSInteger)character ofType:(NSString *)type ofIndex:(NSInteger)index {
    //TODO アクセッサの実装
    return nil;
}

@end
