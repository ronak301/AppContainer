//
//  ButtonFieldComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 13/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "ButtonFieldComponent.h"

@interface ButtonFieldComponent()
@property UIButton *button;
@end

@implementation ButtonFieldComponent

+ (ButtonFieldComponent *)createComponentWithData:(NSDictionary *)dictionary {
    return [ButtonFieldComponent new];
}

- (UIView *)renderViewForComponent {
    UIView *mainView = [UIView new];
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [mainView addSubview:self.button];
    return self.button;
}

- (void)applyData {
    self.button.titleLabel.text = self.label;
}

- (void)buttonTapped:(id) sender {
    
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    return [[[self class] alloc] init];
}
@end
