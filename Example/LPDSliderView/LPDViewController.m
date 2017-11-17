//
//  LPDViewController.m
//  LPDSliderView
//
//  Created by Du Yingfeng on 11/16/2017.
//  Copyright (c) 2017 Du Yingfeng. All rights reserved.
//

#import "LPDViewController.h"
#import <LPDSliderView/LPDSliderView.h>
@interface LPDViewController () <LPDSliderViewDelegate>
@property (nonatomic, strong) LPDSliderView *sliderView;
@end

@implementation LPDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //初始化frame以及滑块宽度，滑块图片
    _sliderView = [[LPDSliderView alloc] initWithFrame:CGRectMake(40, 100, 300, 80) withHandleWith:80 withHandleImage:[UIImage imageNamed:@"icon_arrow_slide"]];
//    [_sliderView.layer setBorderWidth:0.0];//可以设置是否显示边框
    //设置背景颜色，滑块颜色，滑块左部view颜色，整个边框颜色
    [_sliderView setColorsForBackground:[UIColor grayColor] foreground:[UIColor blueColor] handle:[UIColor redColor] border:nil];
    _sliderView.delegate = self;
    //设置文本的相关属性
    _sliderView.label.text = @"确认到店";
    _sliderView.label.font = [UIFont systemFontOfSize:25];
    _sliderView.label.textColor = [UIColor whiteColor];
    [self.view addSubview:_sliderView];
    

}
#pragma mark -- LPDSliderView代理方法
//随时监听滑块的滑动位置
- (void)sliderValueChanged:(LPDSliderView *)sender {
    NSLog(@"滑块位置：%f",sender.value);
}
//监听滑动结束时滑块的位置
- (void)sliderValueChangeEnded:(LPDSliderView *)sender {
    if(_sliderView.value == 1){
        NSLog(@"欧耶！");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
