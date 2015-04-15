//
//  Mapper.h
//  AppContainer
//
//  Created by Urvashi Gupta on 14/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PropertyMapper <NSObject>

+ (NSDictionary *)getPropertyMapper;
+ (NSString *)getPropertyNameForTag:(NSString *)tag;

@end
