//
//  CustomBar.h
//  tabbar
//
//  Created by 李先生 on 16/8/12.
//  Copyright © 2016年 李先生. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CustomBar;
@protocol CustomBarDelegate <UITabBarDelegate>

- (void)tabBarDidClickCenterButton:(CustomBar *)tabBar;

@end


@interface CustomBar : UITabBar
@property(nonatomic,weak)id<CustomBarDelegate>delegate;
@end
