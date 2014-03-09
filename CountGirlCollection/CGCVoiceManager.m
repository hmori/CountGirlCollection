//
//  CGCVoiceManager.m
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import "CGCVoiceManager.h"

@implementation CGCVoice

- (id)initWithText:(NSString *)text rate:(CGFloat)rate {
    if (self = [super init]) {
        _text = text;
        _rate = rate;
    }
    return self;
}

@end

@interface CGCVoiceManager ()
@property (atomic) NSMutableArray *voices;

@property (atomic) NSMutableArray *voiceArray;
@property (atomic) NSArray *voiceAlarm;

@property (atomic) NSMutableArray *voiceTouchBust;
@property (atomic) NSMutableArray *voiceTouchOther;

@property (atomic) NSMutableArray *VoiceClear;

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
        _voices = [NSMutableArray array];

        // char 0
        NSMutableDictionary *voiceTypeDict = [NSMutableDictionary dictionary];
        
        NSMutableArray *voiceTypeAlarms = [NSMutableArray array]; //0-23
        [voiceTypeDict setObject:voiceTypeAlarms forKey:kVoiceTypeAlarm];
        
        [voiceTypeAlarms addObject:[[CGCVoice alloc] initWithText:@"16時" rate:0.2f]];

        
        
        NSMutableArray *voiceTypeTouchBust = [NSMutableArray array]; //0-2
        [voiceTypeDict setObject:voiceTypeTouchBust forKey:kVoiceTypeTouchBust];
        
        [voiceTypeTouchBust addObject:[[CGCVoice alloc] initWithText:@"もっと、、ゆっくりして" rate:0.2f]];
        [voiceTypeTouchBust addObject:[[CGCVoice alloc] initWithText:@"わたしのからだ。メンテナンスしてもいいよ" rate:0.2f]];
        [voiceTypeTouchBust addObject:[[CGCVoice alloc] initWithText:@"ウォッシャーえき、きゃあ" rate:0.2f]];
        [voiceTypeTouchBust addObject:[[CGCVoice alloc] initWithText:@"えー、、はやい。。。" rate:0.2f]];
        [voiceTypeTouchBust addObject:[[CGCVoice alloc] initWithText:@"もう、わたしのウインカーブレブレだぞ" rate:0.2f]];
        [voiceTypeTouchBust addObject:[[CGCVoice alloc] initWithText:@"もう、エンジンオイル…ぬれちゃうよ" rate:0.2f]];
        [voiceTypeTouchBust addObject:[[CGCVoice alloc] initWithText:@"そこのボルトなめっちゃった" rate:0.2f]];
        [voiceTypeTouchBust addObject:[[CGCVoice alloc] initWithText:@"ガソリン。もっと。いれて" rate:0.2f]];
        [voiceTypeTouchBust addObject:[[CGCVoice alloc] initWithText:@"さいきんわたしにのってくれないよね" rate:0.2f]];
        [voiceTypeTouchBust addObject:[[CGCVoice alloc] initWithText:@"ウォッシャーえき、きゃあ" rate:0.2f]];
        [voiceTypeTouchBust addObject:[[CGCVoice alloc] initWithText:@"だっちゃくだっちゃくゥ" rate:0.2f]];
        [voiceTypeTouchBust addObject:[[CGCVoice alloc] initWithText:@"ふええ、、ピストンげんかいだよう" rate:0.2f]];
        [voiceTypeTouchBust addObject:[[CGCVoice alloc] initWithText:@"きゅうゆこうオシャカになっちゃううう" rate:0.2f]];
        [voiceTypeTouchBust addObject:[[CGCVoice alloc] initWithText:@"エンジンオイル。ぬいとくね" rate:0.2f]];
        
        
        NSMutableArray *voiceTypeTouchOther = [NSMutableArray array]; //0-2
        [voiceTypeDict setObject:voiceTypeTouchOther forKey:kVoiceTypeTouchOther];
        
        [voiceTypeTouchOther addObject:[[CGCVoice alloc] initWithText:@"あんまりさわらないでよね" rate:0.2f]];
        [voiceTypeTouchOther addObject:[[CGCVoice alloc] initWithText:@"えへへ、けいちゃんとするドライブ。すき。だよ" rate:0.2f]];
        [voiceTypeTouchOther addObject:[[CGCVoice alloc] initWithText:@"ちょっと、いまのうんてんなによ" rate:0.2f]];
        [voiceTypeTouchOther addObject:[[CGCVoice alloc] initWithText:@"しもんがつくじゃない" rate:0.2f]];
        [voiceTypeTouchOther addObject:[[CGCVoice alloc] initWithText:@"いやらしいめでみないで" rate:0.2f]];
        [voiceTypeTouchOther addObject:[[CGCVoice alloc] initWithText:@"はやくドライブいこうよー" rate:0.2f]];
        [voiceTypeTouchOther addObject:[[CGCVoice alloc] initWithText:@"たまにはみんなでいくのもたのしいわ" rate:0.2f]];
        [voiceTypeTouchOther addObject:[[CGCVoice alloc] initWithText:@"ひゃあ、もうやめてよ" rate:0.2f]];
        [voiceTypeTouchOther addObject:[[CGCVoice alloc] initWithText:@"もっと、早くしようよー" rate:0.2f]];
        [voiceTypeTouchOther addObject:[[CGCVoice alloc] initWithText:@"もっとなでてえ" rate:0.2f]];
        
        
        
        NSMutableArray *voiceTypeClear = [NSMutableArray array]; //0
        [voiceTypeDict setObject:voiceTypeClear forKey:kVoiceTypeClear];
        
        [voiceTypeClear addObject:[[CGCVoice alloc] initWithText:@"ぜんぶなかったことにして、つごうがいいのね" rate:0.2f]];
        
        [_voices addObject:voiceTypeDict];
        
//        _voiceArray = [[NSMutableArray alloc] initWithObjects:0,1, nil];
//        _voiceAlarm = [NSArray arrayWithObjects:0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23, nil];
//        _voiceTouchBust = [[NSMutableArray alloc] initWithObjects:0,1,2, nil];
//        _voiceTouchOther = [[NSMutableArray alloc] initWithObjects:0,1,2, nil];
        
        
        //TODO: 階層構造を作る
    }
    return self;
}

- (CGCVoice *)voiceOfCharacter:(NSInteger)character ofType:(NSString *)type ofIndex:(NSInteger)index {
    
    NSDictionary *voiceTypeDict = [_voices objectAtIndex:character];
    
    NSArray *voiceArray = [voiceTypeDict objectForKey:type];
    
    CGCVoice *voice = (CGCVoice *)[voiceArray objectAtIndex:index];
    
    //TODO アクセッサの実装
    return voice;
}

@end
