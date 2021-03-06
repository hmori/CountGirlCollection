//
//  CGCAppDelegate.m
//  CountGirlCollection
//
//  Created by Hidetoshi Mori on 2014/03/08.
//  Copyright (c) 2014年 Hidetoshi Mori. All rights reserved.
//

#import "CGCAppDelegate.h"
#import "CGCVoiceManager.h"
#import "AVFoundation/AVFoundation.h"

@implementation CGCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    // Override point for customization after application launch.
//    self.window.backgroundColor = [UIColor whiteColor];
//    [self.window makeKeyAndVisible];
    
    
//    for (int i = 0; i <7; i++) {
//        AVSpeechSynthesizer* speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
//        NSString* speakingText = [voiceManager voiceOfCharacter:0 ofType:kVoiceTypeTouchOther ofIndex:i].text;
//        AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:speakingText];
//        utterance.rate = [voiceManager voiceOfCharacter:0 ofType:kVoiceTypeTouchOther ofIndex:i].rate;        //読み上げる速さ
//        utterance.pitchMultiplier = 1.0f;                           //声の高さ
//        utterance.volume = 1.0f;                                    //声の大きさ
//        //        NSTimeInterval interval = 1.0;
//        //        utterance.preUtteranceDelay = interval;                     //しゃべりだす前のインターバル
//        //        utterance.postUtteranceDelay = interval;                    //しゃべり終わった後の次のメッセージをしゃべるまでのインターバル
//        [speechSynthesizer speakUtterance:utterance];
//    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
