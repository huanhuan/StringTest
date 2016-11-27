//
//  ViewController.m
//  storyBoardTest
//
//  Created by phh on 15/10/27.
//  Copyright © 2015年 satyapeng. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIStoryboard *secondStoryBoard = [UIStoryboard storyboardWithName:@"second" bundle:nil];
        secondViewController *secondViewCtr = [secondStoryBoard instantiateViewControllerWithIdentifier:@"secondStoryViewController"];
        [self.navigationController pushViewController:secondViewCtr animated:YES];
        
    });
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
