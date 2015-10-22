//
//  PictureTableViewCell.h
//  CanTour
//
//  Created by Mac on 15/10/20.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Picture;

@interface PictureTableViewCell : UITableViewCell

//通过tableview创建cell
+ (instancetype)cellWithTableView: (UITableView *)tableview;

//数据模型
@property (nonatomic,strong)Picture *picture;

@end
