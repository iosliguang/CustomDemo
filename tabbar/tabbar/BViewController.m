//
//  BViewController.m
//  tabbar
//
//  Created by 李先生 on 16/5/29.
//  Copyright © 2016年 李先生. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController
//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        self.tabBarItem.title = @"cvc";
//        //设置tabBar上的图片
//        self.tabBarItem.image = [UIImage imageNamed:@"line_map"];
//        self.tabBarItem.selectedImage = [UIImage imageNamed:@"full_map"];
//        //设置徽章值
//        self.tabBarItem.badgeValue = @"2";
//    }
//    return self;
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"12";
    self.view.backgroundColor = [UIColor grayColor];
    self.tabBarItem.image = [UIImage imageNamed:@"line_cart"];
    self.tabBarItem.selectedImage = [UIImage imageNamed:@"full_cart"];
    self.tabBarItem.title = @"gouwuche";
    self.tabBarItem.badgeValue = @"3";
      
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
