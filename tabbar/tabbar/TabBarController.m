//
//  TabBarController.m
//  tabbar
//
//  Created by 李先生 on 16/8/14.
//  Copyright © 2016年 李先生. All rights reserved.
//

#import "TabBarController.h"
#import "AViewController.h"
#import "BViewController.h"
#import "CViewController.h"
#import "DViewController.h"
#import "CustomBar.h"
@interface TabBarController ()<CustomBarDelegate>

@end

@implementation TabBarController
- (void)tabBarDidClickCenterButton:(CustomBar *)tabBar{
    UIViewController *VC = [[UIViewController alloc]init];
    VC.view.backgroundColor = [UIColor brownColor];
    [self presentViewController:VC animated:YES completion:nil];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    AViewController *AVC = [[AViewController alloc]init];
    UINavigationController *ANV = [[UINavigationController alloc]initWithRootViewController:AVC];
    ANV.tabBarItem.selectedImage = [UIImage imageNamed:@"full_bell"];
    ANV.tabBarItem.image = [UIImage imageNamed:@"line_bell"];
    ANV.tabBarItem.title = @"huaduo";
    ANV.tabBarItem.badgeValue = @"3";
    ANV.navigationBar.barStyle = UIBarStyleBlack;
    BViewController *BVC = [[BViewController alloc]init];
    CViewController *CVC = [[CViewController alloc]init];
    DViewController *DVC = [[DViewController alloc]init];
    self.viewControllers = @[ANV,BVC,CVC,DVC];
    for (UIViewController *controller in self.viewControllers) {
        UIView *view = controller.view;
    }
    CustomBar *bar = [[CustomBar alloc]init];
    bar.delegate = self;
    [self setValue:bar forKey:@"tabBar"];
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
