//
//  Picture.h
//  CanTour
//
//  Created by Mac on 15/10/20.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Picture : NSObject

//图片
@property (nonatomic,copy) NSString *picName;

+ (instancetype) pictureWithDic:(NSDictionary *)dict;
- (instancetype) initWithDict:(NSDictionary *)dict;

@end
