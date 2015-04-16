//
//  DisplayFieldComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "DisplayFieldComponent.h"

@implementation DisplayFieldComponent

#pragma mark -

- (BOOL)hasFontProperty {
    //Override in subclass
    return YES;
}

- (void)setFont:(UIFont *)font {
    //Override in subclass
    return;
}

- (void)setFontColor:(UIColor *)textColor {
    //Override in subclass
}

@end
