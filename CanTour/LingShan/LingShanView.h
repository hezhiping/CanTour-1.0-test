//
//  LingShanView.h
//  CanTour
//
//  Created by Mac on 15/10/26.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LingShan;

@interface LingShanView : UIView

@property (weak, nonatomic) IBOutlet UIImageView *iconName;
@property (weak, nonatomic) IBOutlet UILabel *hotelName;
@property (weak, nonatomic) IBOutlet UILabel *priceName;
@property (nonatomic,strong) LingShan  *hotelInfo;

+ (instancetype)hotelView;
@end
