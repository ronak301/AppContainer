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
@end

@implementation TextFieldComponent

+ (TextFieldComponent *)createComponentWithData:(NSDictionary *)dictionary {
    return [TextFieldComponent new];
}

+ (UIView *)renderViewForComponent:(SPRComponent *)component {
    UIView *mainView = [UIView new];
    UITextField *textField = [UITextField new];
    [mainView addSubview:textField];
    return mainView;
}
@end
