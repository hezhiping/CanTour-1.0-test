//
//  hotelDetailedViewController.m
//  CanTour
//
//  Created by Mac on 15/10/27.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import "hotelDetailedViewController.h"

#define UISCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define UISCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@interface hotelDetailedViewController ()
@property (weak, nonatomic) IBOutlet UILabel *detailedLabel;
- (IBAction)buyBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *pictureView;


@end

@implementation hotelDetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitle:@"酒店详情"];
    self.tabBarController.tabBar.hidden=YES;
    
    [self labelHeight];
//    if (UISCREEN_HEIGHT == 480) {
//        _pictureView.frame = CGRectMake(0, 0, UISCREEN_WIDTH, 200);
//    }

}

// 改变label中的行间距
- (void)labelHeight
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithString:_detailedLabel.text];
    NSMutableParagraphStyle *paragraphStyle=[[NSMutableParagraphStyle alloc]init];
    
    if (UISCREEN_HEIGHT == 480 ) {
        [paragraphStyle setLineSpacing:0]; // 行间距
    } else if(UISCREEN_HEIGHT == 568){
        [paragraphStyle setLineSpacing:9];
    }else{
        [paragraphStyle setLineSpacing:15];
    }
    
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [_detailedLabel.text length])];
    _detailedLabel.attributedText=attributedString;
    [_detailedLabel sizeToFit];
    
}

// 购买按钮
- (IBAction)buyBtn:(id)sender {
    
    UIAlertView *alertView=[[UIAlertView alloc]initWithTitle:nil message:@" 恭喜你，购买成功. 😊" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
    
    alertView.backgroundColor=[UIColor redColor];
    
    [alertView show];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
