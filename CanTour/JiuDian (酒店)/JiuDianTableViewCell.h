//
//  JiuDianTableViewCell.h
//  CanTour
//
//  Created by Mac on 15/10/28.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JiuDian;

@interface JiuDianTableViewCell : UITableViewCell

// 创建酒店数据模型
@property (nonatomic,strong) JiuDian *jiudian;

+ (instancetype)cellWithTableView: (UITableView *)tableview;

@end
