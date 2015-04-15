//
//  JsonToObjectMapper.m
//  AppContainer
//
//  Created by Ronak Kothari on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "JsonToObjectMapper.h"
#import "FieldComponent.h"

@implementation JsonToObjectMapper

+ (NSArray *)getFieldsFromJsonString:(NSString *)string {
    NSArray* arr = @[@{ @"fieldId" : @"" , @"label" : @"First Name" , @"placeholder" : @"Please enter your first name", @"isMandatory":@"NO" , @"type" : @"text" },@{ @"fieldId" : @"" , @"label" : @"Last Name" , @"placeholder" : @"Please enter your last name", @"isMandatory":@"NO" , @"type" : @"text" }, @{ @"fieldId" : @"" , @"label" : @"Date Of Birth" , @"placeholder" : @"", @"isMandatory":@"NO" , @"type" : @"datePicker" }, @{ @"fieldId" : @"" , @"label" : @"Contact Number" , @"placeholder" : @"Please enter your number", @"isMandatory":@"NO" , @"type" : @"number" }, @{ @"fieldId" : @"" , @"label" : @"Veds" , @"placeholder" : @"Added By Ved", @"isMandatory":@"NO" , @"type" : @"number" } ];
    NSError *err;
   NSMutableArray* array =   [FieldComponent arrayOfModelsFromDictionaries:arr error:&err];
    return array;
 
}

@end
