//
//  JsonToObjectMapper.m
//  AppContainer
//
//  Created by Ronak Kothari on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "JsonToObjectMapper.h"

@implementation JsonToObjectMapper

- (void)jsonToClassWithJsonString :(NSString *)string {
    
    
    
    NSString *jsonString = @"{ \"fieldId\" : \"22\" , \"label\" : \"Name\" , \"placeholder\" : \"Please enter your name\", \"isMandatory\":\"NO\" , \"type\" : \"text\"}";
    
    JSONModel *err;
    
    FieldComponent *fieldComponent = [[FieldComponent alloc]initWithString:jsonString error:&err];
}

@end
