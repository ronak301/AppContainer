//
//  FieldComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 13/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "FieldComponent.h"

@implementation FieldComponent

+ (FieldComponent *)createComponentWithData:(NSDictionary *)dictionary {
    return [FieldComponent new];
}

+ (UIView *)renderViewForComponent:(SPRComponent *)component {
    return [UIView new];
}

@end
