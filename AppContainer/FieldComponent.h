//
//  FieldComponent.h
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "SPRComponent.h"
#import "LabelFieldComponent.h"

@protocol FieldComponent;

@interface FieldComponent : SPRComponent

@property (nonatomic) NSNumber* fieldId;
@property (nonatomic) NSString* type;
@property (nonatomic) BOOL isMandatory;
@property (nonatomic) NSString* placeholder;
@property (nonatomic) NSArray<Optional>* options;
@property (nonatomic) NSString* label;

@property (nonatomic) LabelFieldComponent<Optional> *labelComponent;
@property (nonatomic) InputFieldComponent<Optional> *inputComponent;
@end
