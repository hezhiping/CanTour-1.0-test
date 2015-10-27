//
//  LingShanView.m
//  CanTour
//
//  Created by Mac on 15/10/26.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import "LingShanView.h"
#import "LingShan.h"
#import "hotelDetailedViewController.h"
#import <UIKit/UIKit.h>

@implementation LingShanView


+ (instancetype)hotelView
{
   LingShanView *subview =[[[NSBundle mainBundle]loadNibNamed:@"LingShanView" owner:nil options:nil]lastObject];
    return subview;
}

- (void)setHotelInfo:(LingShan *)hotelInfo
{
    _hotelInfo=hotelInfo;
    
    self.iconName.image=[UIImage imageNamed:hotelInfo.icon];
    self.hotelName.text=hotelInfo.name;
    self.priceName.text=hotelInfo.price;
    
}

- (IBAction)nextPage:(id)sender {
    
    NSLog(@"打飞机克里斯多夫几点上课了 ");
    //发送通知
    [[NSNotificationCenter defaultCenter] postNotificationName:@"change" object:nil userInfo:nil];
}
@end
