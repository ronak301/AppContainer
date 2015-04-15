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
#import "ViewComponent.h"

@interface JsonToObjectMapper : NSObject

+ (NSArray *)getFormFieldsFromJsonString:(NSString *)string;
+ (NSDictionary *)getSubViewsFromJsonString:(NSString *)string;
+ (ViewComponent *)getViewFromJsonString:(NSString *)string;
@end
