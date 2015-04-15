//
//  FieldComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 13/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "InputFieldComponent.h"

@implementation InputFieldComponent

static NSDictionary* propertyMapper = nil;

- (instancetype)init {
    if (self = [super init]) {
        [[self class] createPropertyMapper];
    }
    return self;
}

#pragma mark - SPRComponentProtocol

+ (InputFieldComponent *)createComponentWithData:(NSDictionary *)dictionary {
    return [InputFieldComponent new];
}

- (UIView *)renderView {
    return [UIView new];
}

#pragma mark - PropertyMapper Protocol

+ (NSString *)getPropertyNameForTag:(NSString *)tag {
    if (propertyMapper == nil) {
        [self createPropertyMapper];
    }
    return [propertyMapper valueForKey:tag];
}

+ (void)createPropertyMapper {
    propertyMapper = @{@"fieldId":@"FieldId", @"type":@"Type", @"isMandatory":@"IsMandatory"};
}

+ (NSDictionary *)getPropertyMapper {
    return propertyMapper;
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    return [[[self class] alloc] init];
}
@end
