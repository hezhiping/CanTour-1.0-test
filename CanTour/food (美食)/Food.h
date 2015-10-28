//
//  Food.h
//  CanTour
//
//  Created by Mac on 15/10/28.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Food : NSObject

@property (nonatomic,copy) NSString *foodPicture; // 美食图片

@property (nonatomic,copy) NSString *nameLabel; // 店名

@property (nonatomic,copy) NSString *describe; // 描述


+ (instancetype) foodWithDic:(NSDictionary *) dict;
- (instancetype) initWithDict:(NSDictionary *)dict;
@end
