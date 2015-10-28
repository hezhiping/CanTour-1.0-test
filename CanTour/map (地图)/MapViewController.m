//
//  MapViewController.m
//  CanTour
//
//  Created by Mac on 15/10/27.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import "MapViewController.h"


#define UISCREEN_WIDTH  ([UIScreen mainScreen].bounds.size.width)
#define UISCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@interface MapViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *mapScrllView;

@property (weak, nonatomic) IBOutlet UIImageView *mapImage;

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _mapScrllView.frame=CGRectMake(0, 0, UISCREEN_WIDTH, UISCREEN_HEIGHT);
    _mapImage.frame=CGRectMake(0, 0, 1000,1000);
    
    _mapImage.image=[UIImage imageNamed:@"map"];
    
    _mapScrllView.contentSize=CGSizeMake(_mapImage.frame.size.width, _mapImage.frame.size.height);
    
    _mapScrllView.showsHorizontalScrollIndicator=NO;
    _mapScrllView.showsVerticalScrollIndicator=NO;
    
//    _mapScrllView.directionalLockEnabled=YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
