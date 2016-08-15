//
//  DatePickerView.m
//  tabbar
//
//  Created by 李先生 on 16/8/14.
//  Copyright © 2016年 李先生. All rights reserved.
//

#import "DatePickerView.h"

@interface DatePickerView()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property(nonatomic,strong)UIView *maskView;

@end

@implementation DatePickerView
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    self = [[[NSBundle mainBundle]loadNibNamed:@"DatePickerView" owner:self options:nil]objectAtIndex:0];
    self.frame = frame;
    return self;
}

//调用此方法，生成背景图和加载自己
+ (void)creatDatePickerViewWithSuperView:(UIView *)superView{
    //加载window
    UIScreen *screen = [UIScreen mainScreen];
    CGRect bounds = screen.bounds;
    UIWindow *windowVC = [UIApplication sharedApplication].keyWindow;
    DatePickerView *pickerView = [[DatePickerView alloc]initWithFrame:CGRectMake(0, bounds.size.height, bounds.size.width, 250)];
    //黑色透明视图
    pickerView.maskView = [[UIView alloc]initWithFrame:superView.frame];
    pickerView.maskView.backgroundColor = [UIColor blackColor];
    pickerView.maskView.alpha = 0;
    [windowVC addSubview:pickerView.maskView];
    [windowVC addSubview:pickerView];
    [UIView animateWithDuration:0.3 animations:^{
        pickerView.frame = CGRectMake(0, bounds.size.height - 250, bounds.size.width, 250);
        pickerView.maskView.alpha = 0.4;
    }];
    
}
- (IBAction)cancelButton:(id)sender {
    if (self.superview) {
        [UIView animateWithDuration:0.3 animations:^{
            self.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width, 250);
        } completion:^(BOOL finished) {
            [self removeFromSuperview];
        }];
    }
    if (_maskView.superview) {
        [UIView animateWithDuration:0.3 animations:^{
            _maskView.alpha = 0;
        } completion:^(BOOL finished) {
            [_maskView removeFromSuperview];
        }];
    }
}
- (IBAction)sureButton:(id)sender {
    NSDate *date= self.datePicker.date;
    self.block(@"sdfe");
    [self cancelButton:sender];
}

@end
