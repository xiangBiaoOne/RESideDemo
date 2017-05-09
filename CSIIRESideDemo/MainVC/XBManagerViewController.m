//
//  XBManagerViewController.m
//  XBRESideDemo
//
//  Created by xiangbiao on 17/5/9.
//  Copyright © 2017年 xiangbiao. All rights reserved.
//

#import "XBManagerViewController.h"

@interface XBManagerViewController ()

@end

@implementation XBManagerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [XBSingleClass sharedInstance].mainVC.title = self.tabBarItem.title;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
