//
//  FieldView.h
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LabelFieldComponent.h"
#import "InputFieldComponent.h"

@interface FieldView : UIView

- (instancetype)initWithDisplayComponent:(LabelFieldComponent *)displayComponent andInputComponent:(InputFieldComponent *)inputComponent;

@end
