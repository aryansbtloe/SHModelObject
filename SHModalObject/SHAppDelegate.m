//
//  SHAppDelegate.m
//  SHModalObject
//
//  Created by SHAN UL HAQ on 23/2/14.
//  Copyright (c) 2014 grevolution. All rights reserved.
//

#import "SHAppDelegate.h"
#import "SHTestModal.h"

@implementation SHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    NSDictionary *a = @{ @"string_value" : @"shan", @"another_string_value" : @"ul haq",
                         @"INTVALUE" : @12, @"AnotherIntValue" : @23, @"integerValue" : @78, @"another_integer_value" : @98,
                         @"numberVALUE" : @YES, @"another_numberVALUE" : @NO , @"remember" : @(false), @"do_it_my_self" : @"Yahooo", @"myArray" : @[
                                 @"one", @2 , @NO, @"four"
                                 ], @"_my_dictionary" : @{@"name" : @"correct name"}
                         };
    
    
    SHTestModal *modal = [[SHTestModal alloc] initWithDictionary:a];
    
    NSLog(modal, nil);
    
    
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
