//
//  JiuDianTableViewController.m
//  CanTour
//
//  Created by Mac on 15/10/28.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import "JiuDianTableViewController.h"
#import "JiuDian.h"
#import "JiuDianTableViewCell.h"

@interface JiuDianTableViewController ()

@property (strong, nonatomic) IBOutlet UITableView *jiuDianTableView; // 酒店tableview

@property (nonatomic,strong) NSMutableArray *jiuDianArray; //  酒店数组

@end

@implementation JiuDianTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.rowHeight=156;
}

// 数据懒加载
- (NSMutableArray *)jiuDianArray
{
    if (_jiuDianArray == nil) {
        
        // 1.获取plist的路径为字符串类型
        NSString *path = [[NSBundle mainBundle]pathForResource:@"JiuDian.plist" ofType:nil];
        
        // 2. 创建一个数组来存放路径中的数据
        NSArray *dicArray=[NSArray arrayWithContentsOfFile:path];
        
        // 3. 创建一个可变数组来存放从dicArray中遍历出来的字典
        NSMutableArray *jiuArray = [NSMutableArray array];
        
        // 4.遍历数组中的字典
        for (NSDictionary *dic in dicArray) {
            JiuDian *jiudian = [JiuDian jiuDianWithDict:dic]; // 这句什么意思
            [jiuArray addObject:jiudian];
        }
        _jiuDianArray=jiuArray;
    }
    return _jiuDianArray;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.jiuDianArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // ??????
    JiuDianTableViewCell *cell=[JiuDianTableViewCell cellWithTableView:tableView];
    
    // ？？？？??
    cell.jiudian=self.jiuDianArray[indexPath.row];
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
