//
//  AppDelegate.m
//  SindicatoBomberosMadrid
//
//  Created by Ernesto on 12/02/16.
//  Copyright © 2016 Ernesto. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate.h"
#import "ViewController.h"
#import "SplashViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
    
    //Comprobar si ya se ha logueado
    
    NSString *currentLevelKey = @"nombre";
    //test
    //self.splashViewController = [[SplashViewController alloc] initWithNibName:@"SplashViewController" bundle:nil];
    //self.navigation = [[UINavigationController alloc] initWithRootViewController:self.splashViewController];
    //test
    if ([preferences objectForKey:currentLevelKey] == nil)
    {
        // Si no se ha logueado sacamos la pantalla de login
        //descomentar tras test
        self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
        self.navigation = [[UINavigationController alloc] initWithRootViewController:self.viewController];
        
    }
    else
    {
        //  TODO: En caso contrario leemos los datos
        //const NSInteger currentLevel = [preferences integerForKey:currentLevelKey];
        
        //TODO: sustituir viewController con un objeto de MainMenu
        //descomentar tras test
        self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
        self.navigation = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    }
    
    self.window.rootViewController = self.navigation;
    [self.navigation setNavigationBarHidden:YES];
    
    [self.window makeKeyAndVisible];

    return YES;
}

-(UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window
{
    return UIInterfaceOrientationMaskPortrait;
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
