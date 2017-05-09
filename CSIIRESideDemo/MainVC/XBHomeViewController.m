//
//  XBHomeViewController.m
//  XBRESideDemo
//
//  Created by xiangbiao on 17/5/8.
//  Copyright © 2017年 xiangbiao. All rights reserved.
//

#import "XBHomeViewController.h"
#import "XBDetailViewController.h"

@interface XBHomeViewController ()

@end

@implementation XBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:({UIButton * button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.frame = CGRectMake(40, 100, 80, 40);
        [button setTitle:@"跳转" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(onBtnAction) forControlEvents:UIControlEventTouchUpInside];
        button;
    })];
}

- (void)onBtnAction
{
    XBDetailViewController *detailVC = [XBDetailViewController new];
    detailVC.title = @"详情界面";
    [[XBSingleClass sharedInstance].rootNavc pushViewController:detailVC animated:YES];
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
