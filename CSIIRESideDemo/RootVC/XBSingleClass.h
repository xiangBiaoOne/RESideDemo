//
//  XBSingleClass.h
//  XBRESideDemo
//
//  Created by xiangbiao on 17/5/9.
//  Copyright © 2017年 xiangbiao. All rights reserved.
//

#import <UIKit/UIKit.h>

#pragma mark - Notification 相关key
UIKIT_EXTERN NSString *const kXBWillShowRightMenuViewControllerNotification;
UIKIT_EXTERN NSString *const kXBWillHideRightMenuViewControllerNotification;

@interface XBSingleClass : NSObject

@property (nonatomic, strong) UINavigationController *rootNavc;

@property (nonatomic, strong) UITabBarController *mainVC;

+ (instancetype)sharedInstance;



@end
