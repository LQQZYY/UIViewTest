//
//  ViewController.m
//  UIViewTest
//
//  Created by Artron_LQQ on 16/2/20.
//  Copyright © 2016年 Artup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self tableviewTest];
    
}

-(void)tableviewTest
{
    UITableView *table = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    table.delegate = self;
    table.dataSource = self;
    [self.view addSubview:table];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"dell"];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    CGRect rect = [cell convertRect:cell.contentView.frame toView:self.view];
    CGRect rect1 = [self.view convertRect:cell.textLabel.frame fromView:cell];
    
    NSLog(@"%@---%@",NSStringFromCGRect(rect),NSStringFromCGRect(rect1));
    
    CGPoint point = [self.view convertPoint:cell.contentView.center fromView:cell.contentView];
    
    CGPoint point1 = [cell.contentView convertPoint:cell.contentView.center toView:self.view];
    NSLog(@"%@>>>%@",NSStringFromCGPoint(point),NSStringFromCGPoint(point1));
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
