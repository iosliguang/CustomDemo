//
//  DViewController.m
//  tabbar
//
//  Created by 李先生 on 16/8/12.
//  Copyright © 2016年 李先生. All rights reserved.
//

#import "DViewController.h"

@interface DViewController ()

@end

@implementation DViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
    self.tabBarItem.title = @"disi";
    self.tabBarItem.image = [UIImage imageNamed:@"full_map"];
    self.tabBarItem.selectedImage = [UIImage imageNamed:@"line_map"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
