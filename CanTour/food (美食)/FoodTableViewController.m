//
//  FoodTableViewController.m
//  CanTour
//
//  Created by Mac on 15/10/27.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import "FoodTableViewController.h"
#import "Food.h"
#import "FoodViewCell.h"


@interface FoodTableViewController ()

@property (strong, nonatomic) IBOutlet UITableView *foodTableView; // 美食的tableview

@property (nonatomic,strong) NSMutableArray *foodArray; // 美食的数组

@end

@implementation FoodTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.foodTableView.rowHeight=130;
    
    self.foodTableView.separatorColor=[UIColor redColor];
    
    self.foodTableView.separatorStyle=UITableViewCellSeparatorStyleNone;
}

// 数据的懒加载
- (NSMutableArray *)foodArray
{
    if (_foodArray == nil) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"FoodPlist.plist" ofType:nil];
        
        NSArray *dicArray = [NSArray arrayWithContentsOfFile:path];
   
        NSMutableArray *fArray = [NSMutableArray array];
        
        for (NSDictionary *dic in dicArray) {
            Food *food=[Food foodWithDic:dic];
            [fArray addObject:food];
        }
        _foodArray=fArray;
    }
    return _foodArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    
         return self.foodArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    FoodViewCell *cell=[FoodViewCell cellWithTableView:tableView];
    
    cell.food=self.foodArray[indexPath.row];
    
    return cell;
}

@end
