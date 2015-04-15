//
//  JsonToObjectMapper.h
//  AppContainer
//
//  Created by Ronak Kothari on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSONModel/JSONModel.h>
#import "FieldComponent.h"

@interface JsonToObjectMapper : NSObject

- (void)jsonToClassWithJsonString :(NSString *)string;

@end
