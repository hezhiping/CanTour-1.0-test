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
    UIScrollView *_lingShanScrollView; // scrollview
    
    UIImageView *_images; // 图片
    
    UILabel *_label; // 文本
    
    UIView *_blockView; //空白区域
    
}
@end

@implementation LingShanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建scrollview
    [self creatScrollView];
    
    // 子控件布局
    [self layoutOfView];
    
    //设置圆角
    [self setCornerRadius];
    
    //添加酒店
    [self creatHotel];
}

// 创建scrollview
- (void)creatScrollView
{
    _lingShanScrollView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, UISCREEN_WIDTH ,UISCREEN_HEIGHT)];
    
    _lingShanScrollView.backgroundColor=[UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1];
    [self.view addSubview:_lingShanScrollView];
    
    _lingShanScrollView.showsHorizontalScrollIndicator=NO;
    _lingShanScrollView.showsVerticalScrollIndicator=YES;
    
    //打印屏幕的大小
    //    NSLog(@"%f,,%f",lingShanScrollView.frame.size.width,lingShanScrollView.frame.size.height)
}

// 各种子控件的布局
- (void)layoutOfView
{
    //顶部的图片
    _images=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, UISCREEN_WIDTH, 180)];
    _images.image=[UIImage imageNamed:@"lingshan_05"];
    [_lingShanScrollView addSubview:_images];
    
    //图片下面的label
    CGFloat ff=CGRectGetMaxY(_images.frame)+8;
    _label=[[UILabel alloc]initWithFrame:CGRectMake(0, ff, UISCREEN_WIDTH, 40)];
    _label.text=@"健康的历史";
    _label.textAlignment=YES;
    [_lingShanScrollView addSubview:_label];
    
    
//    // 创建空白view
//    CGFloat imageY=CGRectGetMaxY(_label.frame);
//    CGFloat viewH=(_images.frame.size.height+_label.frame.size.height)*1.8;
//    _blockView =[[UIView alloc]initWithFrame:CGRectMake(8, imageY, UISCREEN_WIDTH-16, viewH)];
//    _blockView.backgroundColor=[UIColor whiteColor];
//    [_lingShanScrollView addSubview:_blockView];
//
    
    [self creatBGView];
    
    // 创建第一张图片和文本框
    _images=[[UIImageView alloc]initWithFrame:CGRectMake(8,10, UISCREEN_WIDTH-32, 128)];
    
    _images.image=[UIImage imageNamed:@"lingshan_01"];
    
    CGFloat Tt=CGRectGetMaxY(_images.frame);
    _label=[[UILabel alloc]initWithFrame:CGRectMake(16, Tt-40, UISCREEN_WIDTH-32, 135)];
    _label.text=@"asddsfjfhjkgh接口附近受到法律上课交罚款了十分简单快乐是对了师傅监考老师打算离开房间了开始放假";
    _label.numberOfLines=5;
    _label.font=[UIFont fontWithName:@"Arial" size:14];
    [_blockView addSubview:_images];
    [_blockView addSubview:_label];
    
    // 创建第一张图片和文本框
    CGFloat imY=CGRectGetMaxY(_label.frame);
    _images=[[UIImageView alloc]initWithFrame:CGRectMake(8,imY-22, UISCREEN_WIDTH-32, 128)];
    _images.image=[UIImage imageNamed:@"lingshan_04"];
    
    CGFloat Tt1=CGRectGetMaxY(_images.frame);
    _label=[[UILabel alloc]initWithFrame:CGRectMake(16, Tt1-40, UISCREEN_WIDTH-32, 135)];
    _label.text=@"asddsfjfhjkgh接口附近受到法律上课交罚款了十分简单快乐是对了师傅监考老师打算离开房间了开始放假";
    _label.numberOfLines=5;
    _label.font=[UIFont fontWithName:@"Arial" size:14];
    [_blockView addSubview:_images];
    [_blockView addSubview:_label];

    
    //创建标题label
     CGFloat ff1=CGRectGetMaxY(_blockView.frame);
    _label=[[UILabel alloc]initWithFrame:CGRectMake(UISCREEN_WIDTH/4, ff1+10, UISCREEN_WIDTH/2, 40)];
    _label.text=@"发现~酒店";
    _label.backgroundColor=[UIColor whiteColor];
    _label.textAlignment=YES;
    [_lingShanScrollView addSubview:_label];
    
    //滑动的大小
    _lingShanScrollView.contentSize=CGSizeMake(0, 1200);
    
}

// 设置圆角
- (void)setCornerRadius
{
    _blockView.layer.cornerRadius=0.8;
    _blockView.layer.masksToBounds=YES;
    
    _images.layer.cornerRadius=0.8;
    _images.layer.masksToBounds=YES;
    
    _label.layer.cornerRadius=0.9;
    _label.layer.masksToBounds=YES;
}

// 创建空白view
- (void)creatBGView
{
    CGFloat imageY=CGRectGetMaxY(_label.frame);
    CGFloat viewH=(_images.frame.size.height+_label.frame.size.height)*1.8;
    _blockView =[[UIView alloc]initWithFrame:CGRectMake(8, imageY+4, UISCREEN_WIDTH-16, viewH)];
    _blockView.backgroundColor=[UIColor redColor];
    [_lingShanScrollView addSubview:_blockView];
}

- (void)creatHotel
{
    [self creatBGView];
//    CGFloat jiudianX=8;
//    CGFloat jiudianY= ;
//    _blockView=[[UIView alloc]initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)];
}
@end
