//
//  CustomBar.m
//  tabbar
//
//  Created by 李先生 on 16/8/12.
//  Copyright © 2016年 李先生. All rights reserved.
//

#import "CustomBar.h"

@interface CustomBar()
@property(nonatomic,strong)UIButton *centerButton;
@end
@implementation CustomBar
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *centerButton = [[UIButton alloc]init];
        self.centerButton = centerButton;
        
        
        [centerButton setBackgroundImage:[UIImage imageNamed:@"sports"] forState:UIControlStateNormal];
        [centerButton setBackgroundImage:[UIImage imageNamed:@"sports"] forState:UIControlStateHighlighted];
        [centerButton addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
        CGRect frame = CGRectZero;
        frame.size = centerButton.currentBackgroundImage.size;
        centerButton.frame = frame;
        [self addSubview: centerButton];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    CGPoint center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2 - 12);
    CGFloat tabBarButtonw = self.bounds.size.width / 5;
    self.centerButton.center = center;
    CGFloat index = 0;
    //设置tabbar的位置
    for (UIView *childView in self.subviews) {
        Class clase = NSClassFromString(@"UITabBarButton");
        if ([childView isKindOfClass:clase]) {
            CGRect frame = childView.frame;
            frame.size.width = tabBarButtonw;
            frame.origin.x = tabBarButtonw * index;
            childView.frame = frame;
            index ++;
            if (index == 2) {
                index ++;
            }
        }
    }
}

- (void)clickButton:(UIButton *)sender{
    [self.delegate tabBarDidClickCenterButton:self];
}
@end
