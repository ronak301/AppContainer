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
    [mutableDictionary setValue:[TextFieldComponent new] forKey:@"textField"];
    [mutableDictionary setValue:[LabelFieldComponent new] forKey:@"labelField"];
    [mutableDictionary setValue:[ButtonFieldComponent new] forKey:@"buttonField"];
    dictionary = mutableDictionary;
}

+ (NSDictionary *)dictinaroy {
    return dictionary;
}

+ (id)objectForTag:(NSString *)tag {
    return [dictionary valueForKey:tag];
}

@end
