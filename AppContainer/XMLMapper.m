//
//  XMLMapper.m
//  AppContainer
//
//  Created by Urvashi Gupta on 14/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "XMLMapper.h"
#import "ButtonFieldComponent.h"
#import "LabelFieldComponent.h"
#import "TextFieldComponent.h"
#import "DatePickerComponent.h"

@interface XMLMapper()
@end


@implementation XMLMapper

static  NSDictionary* dictionary;

+ (void)initialize {
    NSMutableDictionary* mutableDictionary = [NSMutableDictionary new];
    [mutableDictionary setValue:[TextFieldComponent new] forKey:@"text"];
    [mutableDictionary setValue:[TextFieldComponent new] forKey:@"number"];
    [mutableDictionary setValue:[LabelFieldComponent new] forKey:@"label"];
    [mutableDictionary setValue:[ButtonFieldComponent new] forKey:@"button"];
    [mutableDictionary setValue:[DatePickerComponent new] forKey:@"datePicker"];
    dictionary = mutableDictionary;
}

+ (NSDictionary *)dictinaroy {
    return dictionary;
}

+ (id)objectForTag:(NSString *)tag {
    return [dictionary valueForKey:tag];
}

@end
