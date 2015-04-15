//
//  TextFieldComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 13/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "TextFieldComponent.h"

@interface TextFieldComponent()
@property NSDictionary* dataDictionary;
@property UITextField* textField;
@end

@implementation TextFieldComponent

#pragma mark - 
+ (TextFieldComponent *)createComponentWithData:(NSDictionary *)dictionary {
    return [TextFieldComponent new];
}

- (UIView *)renderView {
    self.textField = [UITextField new];
    return self.textField;
}

- (void)applyData {
    self.textField.placeholder = self.placeholder;
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    return [[[self class] alloc] init];
}
@end
