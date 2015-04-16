//
//  FormComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "FormComponent.h"
#import "SPRFormBuilder.h"

@implementation FormComponent

- (NSObject<SPRBuilderProtocol> *)getComponentViewBuilder {
    return [SPRFormBuilder new];
}

#pragma mark - SPRComponentProtocol

- (UIView *)renderView {
    return [[self getComponentViewBuilder] buildComponentViewFromComponent:self];
}

@end
