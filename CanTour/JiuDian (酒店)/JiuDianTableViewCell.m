//
//  JiuDianTableViewCell.m
//  CanTour
//
//  Created by Mac on 15/10/28.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import "JiuDianTableViewCell.h"
#import "JiuDian.h"

@interface JiuDianTableViewCell ()

@property (weak, nonatomic) IBOutlet UIView *jiuDianBGView; // 酒店背景view
@property (weak, nonatomic) IBOutlet UIImageView *jiuDianPic; // 酒店图片

@property (weak, nonatomic) IBOutlet UILabel *jiuDianName; // 酒店名称
@property (weak, nonatomic) IBOutlet UILabel *jiuDianPrice; // 酒店价格
@end


@implementation JiuDianTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

+ (instancetype)cellWithTableView: (UITableView *)tableview
{
    static NSString *identifier = @"jiuDianCell";
    
    JiuDianTableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"JiuDianTableViewCell" owner:nil options:nil]lastObject];
    }
    return cell;
}

- (void)setJiudian:(JiuDian *)jiudian
{
    _jiudian=jiudian;
    
    self.jiuDianPic.image = [UIImage imageNamed:jiudian.jiuDianPicture];
    self.jiuDianName.text = jiudian.jiuDianName;
    self.jiuDianPrice.text = jiudian.jiuDianPrice;
}

@end
