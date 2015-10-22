//
//  MainViewController.m
//  CanTour
//
//  Created by Mac on 15/10/19.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#define HZPImageCount 4
#import "MainViewController.h"


@interface MainViewController () <UIScrollViewDelegate,UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIScrollView *mainScrollView; // 上下滑动的ScrollView


@property (weak, nonatomic) IBOutlet UIScrollView *pictureScrollView; // 轮播图ScrollView

@property (weak, nonatomic) IBOutlet UIPageControl *picturePageControl; // 轮播图上的点

@property (nonatomic,strong) NSTimer *timer; //定时器


@property (nonatomic,strong) NSMutableArray *pictureArray; // 数据存放
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pictureScrollView.delegate=self;
    
    //设置scrollView的大小
   // CGFloat contentH=CGRectGetMaxY(self.lastTableView.frame);
    self.mainScrollView.contentSize=CGSizeMake(0, 1800);
    
    self.mainScrollView.contentInset=UIEdgeInsetsMake(68, 0, 0, 0);
    self.mainScrollView.contentOffset=CGPointMake(0, -68);
    [self pictureChange];
    
    
}

// 轮播器
- (void)pictureChange
{
    //设置图片的尺寸
    CGFloat imageW=self.pictureScrollView.frame.size.width;
    CGFloat imageH=self.pictureScrollView.frame.size.height;
    CGFloat imageY=0;
    
    //将图片加载到ScrollView中
    for (int i=0; i<HZPImageCount; i++) {
        UIImageView *imageView=[[UIImageView alloc]init];
        
        CGFloat imageX=i * imageW;
        imageView.frame=CGRectMake(imageX, imageY, imageW, imageH);
        
        //设置图片
        NSString *name=[NSString stringWithFormat:@"lunbo_0%d",i+1];
        imageView.image=[UIImage imageNamed:name];
        
        [self.pictureScrollView addSubview:imageView];
        
    }
    
    //设置轮播器的大小
    CGFloat contentW=HZPImageCount*imageW;
    self.pictureScrollView.contentSize=CGSizeMake(contentW, 0);
    
    //隐藏滚动条
    self.pictureScrollView.showsHorizontalScrollIndicator=NO;
    self.mainScrollView.showsVerticalScrollIndicator=NO;
    
    //设置分页
    self.pictureScrollView.pagingEnabled=YES;
    
    //设置分页点的个数
    self.picturePageControl.numberOfPages=HZPImageCount;
    
    //添加定时器
    [self addTimer];
}

#pragma mark - 定时器
- (void)addTimer
{
    self.timer=[NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop]addTimer:self.timer forMode:NSRunLoopCommonModes];
}

- (void)removeTimer
{
    [self.timer invalidate];
    self.timer=nil;
}

- (void)nextImage
{
    //页码跳动
    NSInteger page=0;
    if (self.picturePageControl.currentPage==HZPImageCount-1) {
        page=0;
    }else{
        page=self.picturePageControl.currentPage+1;
    }
    
    //计算滚动位置
    CGFloat offsetx=page * self.pictureScrollView.frame.size.width;
    CGPoint offset= CGPointMake(offsetx, 0);
    [self.pictureScrollView setContentOffset:offset animated:YES];
}

#pragma mark - scrollview的代理方法
// 当滚动器滚动时调用
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
     // 根据scrollView的滚动位置决定pageControl显示第几页
    CGFloat scrollW=scrollView.frame.size.width;
    int page=(scrollView.contentOffset.x+scrollW*0.5)/scrollW;
    self.picturePageControl.currentPage=page;
}

// 将要拖拽时调用
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self removeTimer];
}

// 停止拖拽时调用
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    [self addTimer];
}


@end
