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
    
    _sliderView = [[LPDSliderView alloc] initWithFrame:CGRectMake(40, 100, 300, 80) withHandleWith:80 withHandleImage:[UIImage imageNamed:@"icon_arrow_slide"]];
//    [_sliderView.layer setBorderWidth:0.0];//可以设置是否显示边框
    [_sliderView setColorsForBackground:[UIColor grayColor] foreground:[UIColor blueColor] handle:[UIColor redColor] border:nil];
    _sliderView.delegate = self;
    _sliderView.label.text = @"确认到店";
    _sliderView.label.font = [UIFont systemFontOfSize:25];
    _sliderView.label.textColor = [UIColor whiteColor];
    [self.view addSubview:_sliderView];
    

}

- (void)sliderValueChanged:(LPDSliderView *)sender {
    
}

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
