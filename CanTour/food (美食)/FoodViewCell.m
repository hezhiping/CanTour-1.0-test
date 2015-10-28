//
//  FoodViewCell.m
//  CanTour
//
//  Created by Mac on 15/10/28.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import "FoodViewCell.h"
#import "Food.h"

@interface FoodViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *foodPicture; // 美食图片
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;    // 店名标签
@property (weak, nonatomic) IBOutlet UILabel *describe;     // 美食简介

@end

@implementation FoodViewCell

- (void)awakeFromNib {
    // Initialization code
}

// 在cell的类中创建cell
+ (instancetype)cellWithTableView:(UITableView *)tableview
{
    static NSString *indentfier = @"foodCell";
    FoodViewCell *cell = [tableview dequeueReusableCellWithIdentifier:indentfier];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"FoodCellView" owner:nil options:nil]lastObject];
    }
    return cell;
}

// 重写set方法
- (void)setFood:(Food *)food
{
    _food=food;
    self.foodPicture.image=[UIImage imageNamed:food.foodPicture];
    self.nameLabel.text=food.nameLabel;
    self.describe.text=food.describe;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
