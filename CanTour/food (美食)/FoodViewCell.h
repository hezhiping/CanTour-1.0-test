//
//  FoodViewCell.h
//  CanTour
//
//  Created by Mac on 15/10/28.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Food;
@interface FoodViewCell : UITableViewCell

// 创建美食数据模型
@property (nonatomic,strong)Food *food;

+ (instancetype)cellWithTableView:(UITableView *)tableview;
@end
