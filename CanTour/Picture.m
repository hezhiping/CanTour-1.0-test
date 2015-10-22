//
//  Picture.m
//  CanTour
//
//  Created by Mac on 15/10/20.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import "Picture.h"

@implementation Picture

+ (instancetype) pictureWithDic:(NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
}
- (instancetype) initWithDict:(NSDictionary *)dict
{
    if (self==[super init]) {
        
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
@end
