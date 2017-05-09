//
//  XBRightViewCell.h
//  XBRESideDemo
//
//  Created by xiangbiao on 17/5/9.
//  Copyright © 2017年 xiangbiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XBRightViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *userName;

+ (XBRightViewCell *)cellWithTableView:(UITableView *)tableView;

@end
