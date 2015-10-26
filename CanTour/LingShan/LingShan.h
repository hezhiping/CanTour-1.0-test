//
//  LingShan.h
//  CanTour
//
//  Created by Mac on 15/10/26.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LingShan : NSObject

@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *price;

- (instancetype)initWithDic: (NSDictionary *)dic;
+ (instancetype)hotelWithDic: (NSDictionary *)dic;

+ (NSArray *)hotelList;

@end
