//
//  XBBaseViewController.m
//  XBRESideDemo
//
//  Created by xiangbiao on 17/5/9.
//  Copyright © 2017年 xiangbiao. All rights reserved.
//

#import "XBBaseViewController.h"

@interface XBBaseViewController ()

@end

@implementation XBBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(leftNavcBarButton)];
    
    self.view.backgroundColor = [UIColor orangeColor];
}


- (void)leftNavcBarButton
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
