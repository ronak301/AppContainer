//
//  FormComponent.h
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "SPRComponent.h"
#import "SubViewComponent.h"
#import "FieldComponent.h"

@protocol FormComponent;

@interface FormComponent : SubViewComponent

@property (nonatomic) NSNumber* formId;
@property (nonatomic) NSArray<FieldComponent>* fields;

@end
