//
//  LingShanViewController.m
//  CanTour
//
//  Created by Mac on 15/10/25.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#define UISCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define UISCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

#import "LingShanViewController.h"

@interface LingShanViewController ()
{
    UIScrollView *_lingShanScrollView; //scrollview
    
    UIImageView *_images;
    
    UILabel *_label;
}
@end

@implementation LingShanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建scrollview
    [self creatScrollView];
    
    [self layoutOfView];
    
    }

- (void)creatScrollView
{
    _lingShanScrollView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, UISCREEN_WIDTH ,UISCREEN_HEIGHT)];
    
    _lingShanScrollView.backgroundColor=[UIColor redColor];
    [self.view addSubview:_lingShanScrollView];
    
    _lingShanScrollView.showsHorizontalScrollIndicator=NO;
    _lingShanScrollView.showsVerticalScrollIndicator=YES;
    
    //打印屏幕的大小
    //    NSLog(@"%f,,%f",lingShanScrollView.frame.size.width,lingShanScrollView.frame.size.height)
}

- (void)layoutOfView
{
    CGFloat ff=CGRectGetMaxY(_images.frame);
    for (int i=0; i<6; i++) {
    CGFloat flY=i*200;
    _images=[[UIImageView alloc]initWithFrame:CGRectMake(16,flY+4, UISCREEN_WIDTH-32, 128)];
        
    NSString *name=[NSString stringWithFormat:@"lingshan_0%d",i+1];
    _images.image=[UIImage imageNamed:name];
//    _images.backgroundColor=[UIColor blueColor];
    
    _label=[[UILabel alloc]initWithFrame:CGRectMake(16, flY+100, UISCREEN_WIDTH-32, 135)];
    _label.text=@"asddsfjfhjkgh接口附近受到法律上课交罚款了十分简单快乐是对了师傅监考老师打算离开房间了开始放假";
        
    [_lingShanScrollView addSubview:_images];
    [_lingShanScrollView addSubview:_label];
    }
    _lingShanScrollView.contentSize=CGSizeMake(0, 1200);
 
}
@end
