//
//  SPRFormBuilder.m
//  AppContainer
//
//  Created by Urvashi Gupta on 14/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "SPRFormBuilder.h"
#import "XMLMapper.h"
#import "SPRComponentProtocol.h"
#import "RXMLElement.h"
#import <objc/runtime.h>
#import "FieldComponent.h"
#import "DisplayFieldComponent.h"
#import "InputFieldComponent.h"
#import "LabelFieldComponent.h"
#import "FieldView.h"
#import "JsonToObjectMapper.h"

typedef enum  {
    VERTICAL = 1,
    HORIZONTAL
} LayoutType ;

@implementation SPRFormBuilder

- (instancetype)init {
    if (self = [super init]) {
        return self;
    }
    return nil;
}

- (UIView *)buildFormUsingData:(NSDictionary *)formData {
    
    NSDictionary *dictionary = @{@"UIView":@{@"layoutType": @"", @"style":@"", @"components": @[@{@"type": @"labelField", @"labelName": @"This is a label"}, @{@"type": @"labelField", @"labelName": @"This is a label again"}]}};
    
    UIView *formView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, CGFLOAT_MAX, CGFLOAT_MAX)];
    //Read & store type of layout
    LayoutType type = VERTICAL;
    
    //Read & create style dictionary
    //Map the dictionary
    NSDictionary* containerStyleDictionary = @{ @"systemFontOfSize" : @"17.0", @"setBackgroundColor" : @"gray", @"setTextColor" : @"black", @"alpha" : @"1.0"};
//    NSArray *formFields = [self getFieldComponents];
    NSArray *formFields = [JsonToObjectMapper getFieldsFromJsonString:@""];
    CGRect frame = CGRectMake(10, 100, 0, 0);
    for (FieldComponent *field in formFields) {
        LabelFieldComponent *labelComponent = [[XMLMapper objectForTag:@"label"] copy];
        [labelComponent setLabelName:field.label];
        field.labelComponent = labelComponent;
        InputFieldComponent *inputComponent = [[XMLMapper objectForTag:field.type] copy];
        inputComponent.options = field.options;
        inputComponent.placeholder = field.placeholder;
        field.inputComponent = inputComponent;
        frame = [self addViewOfComponent:field toMainView:formView withFrame:frame];
    }
    [formView sizeToFit];
    return formView;
}

- (CGRect)makeFrameForSize:(CGSize)size withLayoutType:(LayoutType)layout andRenderedFrame:(CGRect)frame {
    CGRect requiredFrame = CGRectZero;
    switch (layout) {
        case VERTICAL:
            requiredFrame = CGRectMake(frame.origin.x, frame.origin.y + size.height, 0, 0);
            break;
        case HORIZONTAL:
            requiredFrame = CGRectMake(frame.origin.x + size.width, frame.origin.y, size.width, size.height);
            break;
        default:
            requiredFrame = frame;
            break;
    }
    return requiredFrame;
}

- (CGRect)addViewOfComponent:(FieldComponent *)component toMainView:(UIView *)view withFrame:(CGRect)frame {
    FieldView *componentView = (FieldView *)[component renderView];
    [componentView setFrame:frame];
    [component applyData];
    [componentView sizeToFit];
    [view addSubview:componentView];
    return [self makeFrameForSize:componentView.frame.size withLayoutType:VERTICAL andRenderedFrame:frame];
}

- (NSArray *)getFieldComponents {
    FieldComponent *c1 = [FieldComponent new];
    c1.fieldId = @1;
    c1.type = @"text";
    c1.isMandatory = YES;
    c1.placeholder = @"Enter first name";
    c1.label = @"First Name";
    
    FieldComponent *c2 = [FieldComponent new];
    c2.fieldId = @2;
    c2.type = @"text";
    c2.isMandatory = YES;
    c2.placeholder = @"Enter last name";
    c2.label = @"Last Name";
    
    FieldComponent *c3 = [FieldComponent new];
    c3.fieldId = @2;
    c3.type = @"datePicker";
    c3.isMandatory = YES;
    c3.label = @"Date Of Birth";
    
    FieldComponent *c4 = [FieldComponent new];
    c4.fieldId = @2;
    c4.type = @"number";
    c4.isMandatory = YES;
    c4.placeholder = @"Enter contact number";
    c4.label = @"Contact Number";
   return @[c1, c2, c3, c4];
}
#pragma mark - Style Dictionary Creation

//- (NSDictionary *)createStyleDictionary:(XML) {
//    
//}



@end
