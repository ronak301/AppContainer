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
    
    FieldComponent *c1 = [FieldComponent new];
    c1.fieldId = @1;
    c1.type = @"textField";
    c1.isMandatory = YES;
    c1.placeholder = @"Enter first name";
    c1.label = @"First Name";

    FieldComponent *c2 = [FieldComponent new];
    c2.fieldId = @2;
    c2.type = @"textField";
    c2.isMandatory = YES;
    c2.placeholder = @"Enter last name";
    c2.label = @"Last Name";

    NSArray *formFields = @[c1, c2];
    CGRect frame = CGRectMake(10, 100, 0, 0);
    for (FieldComponent *field in formFields) {
        LabelFieldComponent *labelComponent = [[XMLMapper objectForTag:@"labelField"] copy];
        [labelComponent setLabelName:field.label];
        field.labelComponent = labelComponent;
        InputFieldComponent *inputComponent = [[XMLMapper objectForTag:field.type] copy];
        inputComponent.options = field.options;
        inputComponent.placeholder = field.placeholder;
        field.inputComponent = inputComponent;
        frame = [self addViewOfComponent:field toMainView:formView withFrame:frame];
    }
    [formView sizeToFit];
    //
    //    SPRComponent *component1 = [[XMLMapper objectForTag:@"labelField"] copy];
    //    SPRComponent *component2 = [[XMLMapper objectForTag:@"labelField"] copy];
    //
    //    NSDictionary *dict1 = @{@"labelName": @"This is a label"};
    //    NSDictionary *dict2 = @{@"labelName": @"This is a label again"};
    //
    //    for (NSString* key in dict1) {
    //        SEL selector = NSSelectorFromString([NSString stringWithFormat:@"set%@:",[[component1 class] getPropertyNameForTag:key]]);
    //       if ([component1 respondsToSelector:selector]) {
    //            [component1 performSelectorOnMainThread:selector withObject:[NSString stringWithFormat:@"%@",dict1[key]] waitUntilDone:YES];
    //        }
    //    }
    //    for (NSString* key in dict2) {
    //        SEL selector = NSSelectorFromString([NSString stringWithFormat:@"set%@:",[[component2 class] getPropertyNameForTag:key]]);
    //        if ([component2 respondsToSelector:selector]) {
    //            [component2 performSelectorOnMainThread:selector withObject:dict2[key] waitUntilDone:YES];
    //        }
    //    }
    //    frame = [self addViewOfComponent:component1 toMainView:formView withFrame:frame];
    //    frame = [self addViewOfComponent:component2 toMainView:formView withFrame:frame];
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

#pragma mark - Style Dictionary Creation

//- (NSDictionary *)createStyleDictionary:(XML) {
//    
//}



@end
