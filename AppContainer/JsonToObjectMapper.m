//
//  JsonToObjectMapper.m
//  AppContainer
//
//  Created by Ronak Kothari on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "JsonToObjectMapper.h"
#import "FieldComponent.h"
#import "SubViewComponent.h"

@implementation JsonToObjectMapper

+ (NSArray *)getFormFieldsFromJsonString:(NSString *)string {
    NSArray* arr = @[@{ @"fieldId" : @"" , @"label" : @"First Name" , @"placeholder" : @"Please enter your first name", @"isMandatory":@"NO" , @"type" : @"text" },@{ @"fieldId" : @"" , @"label" : @"Last Name" , @"placeholder" : @"Please enter your last name", @"isMandatory":@"NO" , @"type" : @"text" }, @{ @"fieldId" : @"" , @"label" : @"Date Of Birth" , @"placeholder" : @"", @"isMandatory":@"NO" , @"type" : @"datePicker" }, @{ @"fieldId" : @"" , @"label" : @"Contact Number" , @"placeholder" : @"Please enter your number", @"isMandatory":@"NO" , @"type" : @"number" }, @{ @"fieldId" : @"" , @"label" : @"Veds" , @"placeholder" : @"Added By Ved", @"isMandatory":@"NO" , @"type" : @"number" } ];
    NSError *err;
   NSMutableArray* array =   [FieldComponent arrayOfModelsFromDictionaries:arr error:&err];
    return array;
 
}

+ (NSArray *)getSubViewsFromJsonString:(NSString *)string {
    NSArray *subViews = @[@{@"viewId" : @"" , @"type" :@"button" , @"data" : @"" , @"label" : @"Click me"},@{@"viewId" : @"" , @"type" :@"form" , @"data" : @"" , @"label" : @""}];
//    NSDictionary *view = @{@"layout":@"", @"views":@[], @"forms": @[], @"buttons": @[]};
    return nil;
    
}

+ (ViewComponent *)getViewFromJsonString:(NSString *)string {
    NSArray *views =@[@{@"layout" : @"1" ,
                        @"forms" : @[@{@"formId" : @"2" , @"fields" : @[@{ @"fieldId" : @"" , @"label" : @"First Name" , @"placeholder" : @"Please enter your first name", @"isMandatory":@"NO" , @"type" : @"text" },@{ @"fieldId" : @"" , @"label" : @"Last Name" , @"placeholder" : @"Please enter your last name", @"isMandatory":@"NO" , @"type" : @"text" }, @{ @"fieldId" : @"" , @"label" : @"Date Of Birth" , @"placeholder" : @"", @"isMandatory":@"NO" , @"type" : @"datePicker" }, @{ @"fieldId" : @"" , @"label" : @"Contact Number" , @"placeholder" : @"Please enter your number", @"isMandatory":@"NO" , @"type" : @"number" }, @{ @"fieldId" : @"" , @"label" : @"Veds" , @"placeholder" : @"Added By Ved", @"isMandatory":@"NO" , @"type" : @"number" }]   }] ,
                        @"views" : @[] ,
                        @"buttons" : @[] }];
    NSString *stringNew = @"{\"layout\" : \"1\" ,\"forms\" : [{\"formId\" : \"2\" , \"fields\" : [{ \"fieldId\" : "" , \"label\" : \"First Name\" , \"placeholder\" : \"Please enter your first name\", \"isMandatory\":\"NO\" , \"type\" : \"text\" },{ \"fieldId\" : "" , \"label\" : \"Last Name\" , \"placeholder\" : \"Please enter your last name\", \"isMandatory\":\"NO\" , \"type\" : \"text\" }, { \"fieldId\" : "" , \"label\" : \"Date Of Birth\" , \"placeholder\" : "", \"isMandatory\":\"NO\" , \"type\" : \"datePicker\" }, { \"fieldId\" : "" , \"label\" : \"Contact Number\" , \"placeholder\" : \"Please enter your number\", \"isMandatory\":\"NO\" , \"type\" : \"number\" }, { \"fieldId\" : "" , \"label\" : \"Veds\" , \"placeholder\" : \"Added By Ved\", \"isMandatory\":\"NO\" , \"type\" : \"number\" }]   }] ,\"views\" : [] ,\"buttons\" : [] }]";
    NSError *err;
    ViewComponent *view = [[ViewComponent alloc]initWithString:stringNew error:&err];
    
    return view;
}

+ (NSDictionary *)getStyleDictionaryFromJsonString:(NSString *)string {
    NSDictionary* containerStyleDictionary = @{ @"fontSize" : @"17.0", @"backgroundColor" : @"yellow", @"textColor" : @"black", @"alpha" : @"1.0"};
    return containerStyleDictionary;
}

@end
