//
//  secondViewController.m
//  storyBoardTest
//
//  Created by phh on 15/10/27.
//  Copyright © 2015年 satyapeng. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *mainTableView;
@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mainTableView.delegate = (id<UITableViewDelegate>)self;
    self.mainTableView.dataSource = (id<UITableViewDataSource>)self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 13;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
//    return self.headerViewSection;
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 35)];
//    [view setBackgroundColor:[UIColor redColor]];
//    return view;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"sectionHeaderView"];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row = [indexPath row];

    if (row%2 == 0)
        
    {
        return 50;
    }
    
    else
        
    {
        return 30;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row = [indexPath row];
    
    NSString *identifier = nil;
    
    
    
    if (row%2 == 0)
        
    {
        
        identifier = @"redCell";
        
    }
    
    else
        
    {
        
        identifier = @"bluceCell";
        
    }
    
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    return cell;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
