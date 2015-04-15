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
//    [self.view addSubview:[[SPRFormBuilder new] buildComponentViewUsingData:nil withLayoutType:VERTICAL]];
    [self.view addSubview:[[SPRViewBuilder new] buildComponentViewUsingData:nil withLayoutType:VERTICAL]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
