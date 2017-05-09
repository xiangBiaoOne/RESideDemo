//
//  AppDelegate.m
//  XBRESideDemo
//
//  Created by xiangbiao on 17/5/8.
//  Copyright © 2017年 xiangbiao. All rights reserved.
//

#import "AppDelegate.h"
#import "RESideMenu.h"
#import "PrefixHeader.pch"
#import "XBRootViewController.h"
#import "XBRightViewController.h"

@interface AppDelegate ()<RESideMenuDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    XBSingleClass *singleFunc = [XBSingleClass sharedInstance];
    XBRootViewController *rootVC = [XBRootViewController new];
    UINavigationController *navcVC = [[UINavigationController alloc] initWithRootViewController:rootVC];
    singleFunc.rootNavc = navcVC;
    singleFunc.mainVC = rootVC;
    RESideMenu *sideMenu = [[RESideMenu alloc] initWithContentViewController:navcVC leftMenuViewController:nil rightMenuViewController:[XBRightViewController new]];
    sideMenu.delegate = self;
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = sideMenu;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

#pragma mark - RESideMenuDelegate

#pragma mark - 将要显示侧滑菜单，发送通知，根据实际项目情况处理相关业务
- (void)sideMenu:(RESideMenu *)sideMenu willShowMenuViewController:(UIViewController *)menuViewController;
{
    [[NSNotificationCenter defaultCenter] postNotificationName:kXBWillShowRightMenuViewControllerNotification object:nil];
}

#pragma mark - 将要关闭侧滑菜单，发送通知，根据实际项目需要处理相关业务逻辑
- (void)sideMenu:(RESideMenu *)sideMenu willHideMenuViewController:(UIViewController *)menuViewController;
{
    [[NSNotificationCenter defaultCenter] postNotificationName:kXBWillHideRightMenuViewControllerNotification object:nil];
}




@end
