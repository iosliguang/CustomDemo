//
//  AViewController.m
//  tabbar
//
//  Created by 李先生 on 16/5/29.
//  Copyright © 2016年 李先生. All rights reserved.
//

#import "AViewController.h"
#import "DatePickerView.h"
@interface AViewController ()
@property(nonatomic,strong)UILabel *label;
@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"tishi";
    self.view .backgroundColor = [UIColor whiteColor];
    self.tabBarItem.image = [UIImage imageNamed:@"full_bell"];
    self.tabBarItem.selectedImage = [UIImage imageNamed:@"line_bell"];
    self.tabBarItem.title = @"tishi";
    self.tabBarItem.badgeValue = @"2";
    UIButton *clickButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [clickButton setTitle:@"日期" forState:UIControlStateNormal];
    [clickButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    clickButton.frame = CGRectMake(0, 0, 50, 50);
    clickButton.center = self.view.center;
    [self.view addSubview:clickButton];
    _label = [[UILabel alloc]init];
    _label.frame = CGRectMake(0, 100, 100, 50);
    _label.text = @"buzhidao";
    _label.textColor = [UIColor blackColor];
    [self.view addSubview:_label];
    [clickButton addTarget:self action:@selector(clickDateButton:) forControlEvents:UIControlEventTouchUpInside];
    }
- (void)clickDateButton:(id)sender{
    DatePickerView *view = [[DatePickerView alloc]init];
    
    [DatePickerView creatDatePickerViewWithSuperView:self.view];
    view.block = ^(NSString *string){
        NSDateFormatter *format = [[NSDateFormatter alloc]init];
        [format setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        NSString *string1 = string;
        _label.text = string;
    };
}

@end
