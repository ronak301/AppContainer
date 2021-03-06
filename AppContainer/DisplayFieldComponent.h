//
//  DisplayFieldComponent.h
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "SPRComponent.h"

@interface DisplayFieldComponent : SPRComponent

- (BOOL)hasFontProperty;
- (void)setFontColor:(UIColor *)textColor;
- (void)setFont:(UIFont *)font;

@end
