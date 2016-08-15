//
//  DatePickerView.h
//  tabbar
//
//  Created by 李先生 on 16/8/14.
//  Copyright © 2016年 李先生. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DatePickerView : UIView
+ (void)creatDatePickerViewWithSuperView:(UIView *)superView;
@property(nonatomic,copy)void(^block)(NSString *string);
@end
