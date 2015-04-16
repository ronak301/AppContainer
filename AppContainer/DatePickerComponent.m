//
//  DatePickerComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "DatePickerComponent.h"
#import <UIKit/UIKit.h>

@interface DatePickerComponent ()
@property UIDatePicker *datePickerView;
@end

@implementation DatePickerComponent

#pragma mark -

- (UIView *)renderView {
    self.datePickerView = [UIDatePicker new];
    self.datePickerView.datePickerMode = UIDatePickerModeDate;
    return self.datePickerView;
}

- (void)applyData {
    
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    return [[[self class] alloc] init];
}

#pragma mark -

- (BOOL)hasFontProperty {
    return NO;
}

@end
