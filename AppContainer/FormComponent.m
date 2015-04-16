//
//  FormComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "FormComponent.h"
#import "SPRFormBuilder.h"
#import "FormView.h"
#import "ColorUtils.h"
#import "FieldView.h"

@interface FormComponent ()
@property (nonatomic) FormView* formView;
@end
@implementation FormComponent

- (NSObject<SPRBuilderProtocol> *)getComponentViewBuilder {
    return [SPRFormBuilder new];
}

#pragma mark - SPRComponentProtocol

- (UIView *)renderView {
    _formView = (FormView *)[[self getComponentViewBuilder] buildComponentViewFromComponent:self];
    return _formView;
}

- (void)applyStyleFromStyleModel:(StyleModel *)styleModel {
    _formView.backgroundColor = [UIColor colorWithString:styleModel.backgroundColor];
    _formView.alpha = [styleModel.alpha floatValue];
//    _formView.hidden = [styleModel.hidden boolValue];
    UIColor* textColor = [UIColor colorWithString:styleModel.textColor];
    UIFont* font = [UIFont fontWithName:styleModel.fontName size:[styleModel.fontSize floatValue]];
    if (styleModel.fontName!=nil || styleModel.fontSize!= nil || styleModel.textColor!=nil) {
        for (FieldComponent* fieldComponent in self.fields) {
            if ([fieldComponent.inputComponent hasFontProperty]) {
                [fieldComponent.inputComponent setFont:font];
                [fieldComponent.inputComponent setFontColor:textColor];
            }
            if ([fieldComponent.labelComponent hasFontProperty]) {
                [fieldComponent.labelComponent setFont:font];
                [fieldComponent.labelComponent setFontColor:textColor];
            }
        }
    }
    
}

@end
