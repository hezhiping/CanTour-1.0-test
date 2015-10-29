//
//  JiuDian.h
//  CanTour
//
//  Created by Mac on 15/10/28.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JiuDian : NSObject
@property (nonatomic,copy) NSString *jiuDianPicture;

@property (nonatomic,copy) NSString *jiuDianName;

@property (nonatomic,copy) NSString *jiuDianPrice;


// 创建一个类方法和对象方法干什么用
+ (instancetype) jiuDianWithDict: (NSDictionary *)dict;
- (instancetype) initWithDict: (NSDictionary *)dict;

@end
