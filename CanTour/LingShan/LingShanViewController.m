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
#import "LingShan.h"
#import "LingShanView.h"
#import "hotelDetailedViewController.h"

@interface LingShanViewController ()
{
    UIScrollView *_lingShanScrollView; // scrollview
    
    UIImageView *_images; // 图片
    
    UILabel *_label; // 文本
    
    UIView *_blockView; //空白区域
    
    
    
}
@property (nonatomic,strong) NSArray *hotelList;
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
    // 滑动大小
    [self SetContenSize];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(change) name:@"change" object:nil];
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
    _blockView.backgroundColor=[UIColor whiteColor];
    [_lingShanScrollView addSubview:_blockView];
}

// 来加载
- (NSArray *)hotelList
{
    if (_hotelList==nil) {
        _hotelList=[LingShan hotelList];
    }
    return _hotelList;
}

//创建旅馆
- (void)creatHotel
{
    [self creatBGView];
    
//    NSLog(@"%f",_blockView.frame.size.height);
//    NSLog(@"%@",self.hotelList)
    ;
    for (int i=0; i < self.hotelList.count ; i++)
    {
        LingShanView *subview=[LingShanView hotelView];
       
        
        [_blockView addSubview:subview];
        
        // 九宫格的带笑傲
        CGFloat subViewW=132;
        CGFloat subViewH=142;
       
        
        
        // 横间距和列间距
        CGFloat marginX=(UISCREEN_WIDTH-16-2*subViewW)/3;
        CGFloat marginY=(_blockView.frame.size.height-2*subViewH)/3;
        
        // 当前的行列号
        int row=i/2;
        int colum=i%2;
        
        // 坐标
        CGFloat subviewX=marginX+(subViewW + marginX) * colum;
        CGFloat subviewY=marginY+(subViewH + marginY) * row;
        subview.frame=CGRectMake(subviewX, subviewY, subViewW, subViewH);
        
        LingShan *hotel = self.hotelList[i];
        subview.hotelInfo=hotel;
    }

}

//滑动的大小
- (void)SetContenSize
{
    
    CGFloat lastViewY=CGRectGetMaxY(_blockView.frame);
    _lingShanScrollView.contentSize=CGSizeMake(0, lastViewY+10);
}

// 代码控制跳转页面
- (void)change
{
    // 获取故事板
    UIStoryboard *mainStryboard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    hotelDetailedViewController *hotelDetailed=[mainStryboard instantiateViewControllerWithIdentifier:@"hotelView"];

    hotelDetailed.hidesBottomBarWhenPushed=YES;
    
    // 页面Push进来
    [self.navigationController pushViewController:hotelDetailed animated:YES];
    
//    NSLog(@"我进来了哟");
}
@end
