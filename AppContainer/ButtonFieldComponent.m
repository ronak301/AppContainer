//
//  ButtonFieldComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 13/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "ButtonFieldComponent.h"

@interface ButtonFieldComponent()
@property NSDictionary* dataDictionary;
@end

@implementation ButtonFieldComponent

+ (ButtonFieldComponent *)createComponentWithData:(NSDictionary *)dictionary {
    return [ButtonFieldComponent new];
}

+ (UIView *)renderViewForComponent:(SPRComponent *)component {
    UIView *mainView = [UIView new];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [mainView addSubview:button];
    return button;
}

- (void)buttonTapped:(id) sender {
    
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    return [[[self class] alloc] init];
}
@end
