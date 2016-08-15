//
//  ViewController.m
//  tabbar
//
//  Created by 李先生 on 16/5/29.
//  Copyright © 2016年 李先生. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"
#import "BViewController.h"
#import "CViewController.h"
#import "DViewController.h"
#import "CustomBar.h"
@interface ViewController ()<CustomBarDelegate>

@end

@implementation ViewController

- (void)tabBarDidClickCenterButton:(CustomBar *)tabBar{
    UIViewController *vc = [[UIViewController alloc]init];
    vc.view.backgroundColor = [UIColor brownColor];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UITabBarController *tabbar = [[UITabBarController alloc]init];
    AViewController *AVC = [[AViewController alloc]init];
    UINavigationController *navAVC = [[UINavigationController alloc]initWithRootViewController:AVC];
    navAVC.tabBarItem.image = [UIImage imageNamed:@"full_bell"];
    navAVC.tabBarItem.selectedImage = [UIImage imageNamed:@"line_bell"];
    navAVC.tabBarItem.title = @"tishi";
    navAVC.tabBarItem.badgeValue = @"2";
    BViewController *BVC = [[BViewController alloc]init];
    CViewController *CVC = [[CViewController alloc]init];
    DViewController *DVC = [[DViewController alloc]init];
    tabbar.viewControllers = @[navAVC,BVC,CVC,DVC];
    for (UIViewController *controller in tabbar.viewControllers) {
        UIViewController *vc = controller.view;
    };
    
    [self addChildViewController:tabbar];
    [self.view addSubview:tabbar.view];
    CustomBar *customBar = [[CustomBar alloc]init];
    customBar.delegate = tabbar;
    [tabbar setValue:customBar forKey:@"tabBar"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
