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

@interface XMLMapper()
@end


@implementation XMLMapper

static  NSDictionary* dictionary;

+ (void)initialize {
    NSMutableDictionary* mutableDictionary = [NSMutableDictionary new];
    [mutableDictionary setValue:[TextFieldComponent class] forKey:@"textField"];
    [mutableDictionary setValue:[LabelFieldComponent class] forKey:@"labelField"];
    [mutableDictionary setValue:[ButtonFieldComponent class] forKey:@"buttonField"];
    dictionary = mutableDictionary;
}

+ (Class)classForTag:(NSString *)tag {
    return [dictionary valueForKey:tag];
}

@end
