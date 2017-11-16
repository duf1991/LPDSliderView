# LPDSliderView

[![CI Status](http://img.shields.io/travis/Du Yingfeng/LPDSliderView.svg?style=flat)](https://travis-ci.org/Du Yingfeng/LPDSliderView)
[![Version](https://img.shields.io/cocoapods/v/LPDSliderView.svg?style=flat)](http://cocoapods.org/pods/LPDSliderView)
[![License](https://img.shields.io/cocoapods/l/LPDSliderView.svg?style=flat)](http://cocoapods.org/pods/LPDSliderView)
[![Platform](https://img.shields.io/cocoapods/p/LPDSliderView.svg?style=flat)](http://cocoapods.org/pods/LPDSliderView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

### 代码示例：

```
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

```

### 效果如下：

![gif](https://user-images.githubusercontent.com/20440035/32892241-87152042-cb10-11e7-91e6-8f4d7c6fb0ab.gif)

由于业务需求，需要在项目中加入滑动控件，但在网上搜索一番发现并没有比较合适的资源，要么过于陈旧，还是采用touchBegan等方法实现，过于繁琐且效果不佳，要么达不到业务要求，因此决定自己定制一个滑动控件。

可以看到，我们可以自定义LPDSliderView的frame，color，边框，文本的属性，以及可以通过LPDSliderViewDelegate中的sliderValueChanged和sliderValueChangeEnded去随时监听滑块的位置，以便完成相应的业务逻辑

第一次发布开源库，若发现有误或者建议，欢迎issue,谢谢～

## Requirements

## Installation

LPDSliderView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'LPDSliderView'
```

## Author

Du Yingfeng, yingfeng.du02@ele.me

## License

LPDSliderView is available under the MIT license. See the LICENSE file for more info.
