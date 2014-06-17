//
//  AppDelegate.m
//  SnapChat
//
//  Created by john on 6/16/14.
//  Copyright (c) 2014 Banana Technology. All rights reserved.
//

#import "AppDelegate.h"
#import "MyNavigationViewController.h"
#import "CameraViewController.h"
#import "InboxViewController.h"
#import "FriendsViewController.h"

@interface AppDelegate ()
            

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    
    UIViewController * cameraVC = [[CameraViewController alloc]init];
    UINavigationController *cameraNavController = [[MyNavigationViewController alloc]initWithRootViewController:cameraVC];
    UIViewController * inboxVC = [[InboxViewController alloc]init];
    UINavigationController *inboxNavController = [[MyNavigationViewController alloc]initWithRootViewController:inboxVC];
    UIViewController * friendsVC = [[FriendsViewController alloc]init];
    UINavigationController *friendsNavController = [[MyNavigationViewController alloc]initWithRootViewController:friendsVC];

    NSArray *controllers = [NSArray arrayWithObjects:cameraNavController, inboxNavController, friendsNavController, nil];
    tabBarController.viewControllers = controllers;
    tabBarController.tabBar.barTintColor = [UIColor blackColor];
    
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController  = tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
