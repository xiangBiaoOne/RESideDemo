//
//  XBSingleClass.m
//  XBRESideDemo
//
//  Created by xiangbiao on 17/5/9.
//  Copyright © 2017年 xiangbiao. All rights reserved.
//

#import "XBSingleClass.h"

NSString *const kXBWillShowRightMenuViewControllerNotification = @"kXBWillShowRightMenuViewControllerNotification";
NSString *const kXBWillHideRightMenuViewControllerNotification = @"kXBWillHideRightMenuViewControllerNotification";

@implementation XBSingleClass

+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    static XBSingleClass *singleFunc;
    dispatch_once(&onceToken, ^{
        singleFunc = [[[self class] alloc] init];
    });
    return singleFunc;
}


@end
