//
//  JiuDian.m
//  CanTour
//
//  Created by Mac on 15/10/28.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import "JiuDian.h"

@implementation JiuDian

+ (instancetype) jiuDianWithDict: (NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
}

- (instancetype) initWithDict: (NSDictionary *)dict
{
    if (self=[super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}


@end
