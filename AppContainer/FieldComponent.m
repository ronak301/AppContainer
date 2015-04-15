//
//  FieldComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "FieldComponent.h"
#import "FieldView.h"

@interface FieldComponent()
@property FieldView<Optional>* fieldView;
@end

@implementation FieldComponent

- (FieldView *)renderView {
    self.fieldView = [[FieldView alloc] initWithDisplayComponent:self.labelComponent andInputComponent:self.inputComponent];
    return self.fieldView;
}

- (void)applyData {
    [self.inputComponent applyData];
    [self.labelComponent applyData];
}

@end
