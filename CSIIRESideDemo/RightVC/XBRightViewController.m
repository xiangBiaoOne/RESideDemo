//
//  XBRightTableViewController.m
//  XBRESideDemo
//
//  Created by xiangbiao on 17/5/8.
//  Copyright © 2017年 xiangbiao. All rights reserved.
//

#import "XBRightViewController.h"
#import "XBRightViewCell.h"
#import "XBOneViewController.h"
#import "XBSecondViewController.h"
#import "XBThirdViewController.h"
#import "RESideMenu.h"

@interface XBRightViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) UITableView *tableView;

@property (nonatomic, strong) NSArray *arrayItems;

@end

@implementation XBRightViewController
@synthesize arrayItems;

- (void)viewDidLoad {
    [super viewDidLoad];

    [self configBaseItem];
    
    [self configNotificater];
    
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    
    CGRect tableViewRect = CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 64);
    UITableView *tableView = [[UITableView alloc] initWithFrame:tableViewRect style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource  = self;
    tableView.tableHeaderView = headerView;
    tableView.tableFooterView = [UIView new];
    [self.view addSubview:tableView];
    self.tableView = tableView;
}

- (void)configNotificater
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(wellShowRightMenuViewController) name:kXBWillShowRightMenuViewControllerNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(willHideRightMenuViewController) name:kXBWillHideRightMenuViewControllerNotification object:nil];
}

- (void)wellShowRightMenuViewController
{
    NSLog(@"处理显示侧滑菜单的业务逻辑，eg:登录成功后，修改用户状态");
}

- (void)willHideRightMenuViewController
{
    NSLog(@"处理关闭侧滑菜单的业务逻辑");
}

- (void)configBaseItem
{
    arrayItems = [NSArray arrayWithObjects:@"第一列",@"第二列",@"第三列",nil];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arrayItems.count;
}

- (XBRightViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    XBRightViewCell *cell = [XBRightViewCell cellWithTableView:tableView];
    cell.userName.text = arrayItems[indexPath.row];
    return cell;
}

#pragma mark - Table view Delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
    });
    
    switch (indexPath.row) {
        case 0:
        {
            XBOneViewController *oneVC = [XBOneViewController new];
            oneVC.title = arrayItems[indexPath.row];
            XBSingleClass *singleFunc = [XBSingleClass sharedInstance];
            [singleFunc.rootNavc pushViewController:oneVC animated:YES];
            [self.sideMenuViewController hideMenuViewController];
        }
            break;
        case 1:
        {
            XBSecondViewController *secVC = [XBSecondViewController new];
            secVC.title = arrayItems[indexPath.row];
            [[XBSingleClass sharedInstance].rootNavc pushViewController:secVC animated:YES];
            [self.sideMenuViewController hideMenuViewController];
        }
            break;
        case 2:
        {
            XBThirdViewController *thirdVC = [XBThirdViewController new];
            thirdVC.title = arrayItems[indexPath.row];
            [[XBSingleClass sharedInstance].rootNavc pushViewController:thirdVC animated:YES];
            [self.sideMenuViewController hideMenuViewController];
        }
            break;
    }

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}


@end
