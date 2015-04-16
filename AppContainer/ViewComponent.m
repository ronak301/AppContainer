//
//  ViewComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "ViewComponent.h"
#import "SPRViewBuilder.h"

@implementation ViewComponent

- (NSObject<SPRBuilderProtocol> *)getComponentViewBuilder {
    return [SPRViewBuilder new];
}

#pragma mark - SPRComponentProtocol

- (UIView *)renderView {
    return [[self getComponentViewBuilder] buildComponentViewFromComponent:self];
}

@end
