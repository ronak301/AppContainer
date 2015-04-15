//
//  FieldComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 13/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "FieldComponent.h"

@implementation FieldComponent

static NSDictionary* propertyMapper = nil;

- (instancetype)init {
    if (self = [super init]) {
        [self createPropertyMapper];
    }
    return self;
}
+ (FieldComponent *)createComponentWithData:(NSDictionary *)dictionary {
    return [FieldComponent new];
}

- (UIView *)renderView {
    return [UIView new];
}

#pragma mark - Mapper

- (NSString *)getPropertyNameForTag:(NSString *)tag {
    if (propertyMapper == nil) {
        [self createPropertyMapper];
    }
    return [propertyMapper valueForKey:tag];
}

- (void)createPropertyMapper {
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
