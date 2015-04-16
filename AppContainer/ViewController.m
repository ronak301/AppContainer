//
//  ViewController.m
//  AppContainer
//
//  Created by Urvashi Gupta on 13/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "ViewController.h"
#import "SPRFormBuilder.h"
#import "SPRViewBuilder.h"
#import "ViewComponent.h"
#import "JsonToObjectMapper.h"
#import "ButtonFieldComponent.h"

@interface ViewController ()

@end

@implementation ViewController
/**
 <view layout=1>
 
 <form id="" data=form.xml></form>
 <view layout = 0>
 <button id=, label=/>
  <button id=, label=/>
 
 </view>
 </view>
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGRect fullScreenRect=[[UIScreen mainScreen] applicationFrame];
    UIScrollView* scrollView=[[UIScrollView alloc] initWithFrame:fullScreenRect];
    scrollView.backgroundColor = [UIColor whiteColor];
    self.view = scrollView;
    
    
    ViewComponent* subViewComponent = [ViewComponent new];
    subViewComponent.layout = @0;
//    FormComponent *form_ = [FormComponent new];
//    form_.layout = @1;
//    form_.formId = @4;
//    form_.fields = [JsonToObjectMapper getFormFieldsFromJsonString:@""];
//    subViewComponent.forms = @[form_];
    ButtonFieldComponent* button1 = [ButtonFieldComponent new];
    button1.buttonId = @1;
    button1.label = @"Save";
    ButtonFieldComponent* button2 = [ButtonFieldComponent new];
    button2.buttonId = @1;
    button2.label = @"Cancel";
    subViewComponent.buttons = @[button1, button2];
    
    ViewComponent *mainViewComponent = [ViewComponent new];
    mainViewComponent.layout = @1;
    FormComponent *form = [FormComponent new];
    form.formId = @4;
    form.fields = [JsonToObjectMapper getFormFieldsFromJsonString:@""];
    mainViewComponent.forms = @[form];
    mainViewComponent.views = @[subViewComponent];
    
    UIView* appView = [[SPRViewBuilder new] buildComponentViewFromComponent:mainViewComponent];
    scrollView.contentSize=appView.frame.size;
    scrollView.contentOffset = CGPointMake(-10, -50);
    scrollView.contentInset = UIEdgeInsetsMake(50, 10, 50, 10);
    [scrollView addSubview:appView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
