//
//  LingShan.m
//  CanTour
//
//  Created by Mac on 15/10/26.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import "LingShan.h"

@implementation LingShan


- (instancetype)initWithDic: (NSDictionary *)dic
{
    if (self=[super init]) {
        self.icon=dic[@"icon"];
        self.name=dic[@"name"];
        self.price=dic[@"price"];
    }
    return self;
}
+ (instancetype)hotelWithDic: (NSDictionary *)dic
{
    return [[self alloc]initWithDic:dic];
}

+ (NSArray *)hotelList
{
    NSString *path=[[NSBundle mainBundle]pathForResource:@"LSHotel" ofType:@"plist"];
    
    NSArray *dicArray=[NSArray arrayWithContentsOfFile:path];
    
    NSMutableArray *hotelArray=[NSMutableArray array];
    
    for (NSDictionary *dic in dicArray) {
        LingShan *lingShan = [LingShan hotelWithDic:dic];
        [hotelArray addObject:lingShan];
    }
    return hotelArray;
}

@end
