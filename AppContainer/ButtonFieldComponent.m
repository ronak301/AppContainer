//
//  ButtonFieldComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 13/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "ButtonFieldComponent.h"
#import "ColorUtils.h"

@interface ButtonFieldComponent()
@property UIButton *button;
@end

@implementation ButtonFieldComponent

+ (ButtonFieldComponent *)createComponentWithData:(NSDictionary *)dictionary {
    return [ButtonFieldComponent new];
}

- (UIView *)renderView {
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    self.button.frame = CGRectMake(0, 0, 80, 40);
    [self applyData];
    return self.button;
}

- (void)applyData {
    [self.button setTitle:self.label forState:UIControlStateNormal];
}

- (void)buttonTapped:(id) sender {
    
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    return [[[self class] alloc] init];
}

#pragma mark - 

-(void)applyStyleFromStyleModel:(StyleModel *)styleModel {
    _button.backgroundColor = [UIColor colorWithString:styleModel.backgroundColor];
    if (styleModel.alpha) {
        _button.alpha = [styleModel.alpha floatValue];
    }
    _button.hidden = [styleModel.hidden boolValue];
    if (styleModel.textColor !=nil) {
        UIColor* textColor = [UIColor colorWithString:styleModel.textColor];
        [_button setTitleColor:textColor forState:UIControlStateNormal];
    }
    
}

@end
