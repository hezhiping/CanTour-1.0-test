//
//  PictureTableViewCell.m
//  CanTour
//
//  Created by Mac on 15/10/20.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import "PictureTableViewCell.h"
#import "Picture.h"

@interface PictureTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *picName;
@property (weak, nonatomic) IBOutlet UIView *cellView;

@end

@implementation PictureTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
}

//通过tableview创建cell
+ (instancetype)cellWithTableView: (UITableView *)tableview
{
    static NSString *cellID=@"cell";
    PictureTableViewCell *cell=[tableview dequeueReusableCellWithIdentifier:cellID];
    if (cell==nil) {
        cell=[[[NSBundle mainBundle]loadNibNamed:@"pictureCell" owner:nil options:nil]lastObject];
    }
    return cell;
}

- (void)setPicture:(Picture *)picture
{
    _picture=picture;
    
    self.picName.image=[UIImage imageNamed:self.picture.picName];
}
@end
