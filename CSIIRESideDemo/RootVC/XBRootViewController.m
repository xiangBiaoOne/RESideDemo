//
//  XBRootViewController.m
//  XBRESideDemo
//
//  Created by xiangbiao on 17/5/8.
//  Copyright © 2017年 xiangbiao. All rights reserved.
//

#import "XBRootViewController.h"
#import "XBHomeViewController.h"
#import "XBManagerViewController.h"
#import "XBMyViewController.h"

@interface XBRootViewController ()

@end

@implementation XBRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"开启" style:UIBarButtonItemStylePlain target:self action:@selector(presentRightMenuViewController:)];
    [self addChildViewController:[XBHomeViewController new] title:@"首页" image:@"" selectedImage:@""];
    [self addChildViewController:[XBManagerViewController new] title:@"理财" image:@"" selectedImage:@""];
    [self addChildViewController:[XBMyViewController new] title:@"我的" image:@"" selectedImage:@""];
}

- (void)onBtnAction
{
    
}

- (void)addChildViewController:(UIViewController *)childController title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    childController.tabBarItem.title = title;
    childController.tabBarItem.image = [UIImage imageNamed:image];
    childController.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    [self addChildViewController:childController];
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
