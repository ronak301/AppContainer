//
//  LabelFieldComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 13/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "LabelFieldComponent.h"

@interface LabelFieldComponent()
@property NSDictionary* dataDictionary;
@property UILabel *nameLabel;
@end

@implementation LabelFieldComponent


@synthesize labelName = lableName;

static NSDictionary* propertyMapper = nil;

+ (LabelFieldComponent *)createComponentWithData:(NSDictionary *)dictionary {
    return [LabelFieldComponent new];
}

+ (NSDictionary *)getPropertyMapper {
    return propertyMapper;
}

- (UIView *)renderView {
    self.nameLabel = [UILabel new];
    return self.nameLabel;
}

- (void)applyData {
    self.nameLabel.text = self.labelName;
}

#pragma mark - Style Methods

+ (NSArray *)createStyleInvocationsFromStyleSheet:(NSDictionary *)styleData {
    //Adapt data to suit selectors of oneself
    NSDictionary* data = @{ @"systemFontOfSize" : @"17.0", @"setBackgroundColor" : @"gray", @"setTextColor" : @"black", @"alpha" : @"1.0"};
    
    NSMutableArray *invocations  = [NSMutableArray array];
    for (NSString* key  in data) {
        NSString* value = data[key];
        SEL methodSelector = NSSelectorFromString(value);
        NSMethodSignature* signature = [UILabel methodSignatureForSelector:methodSelector];
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
        [invocations addObject:invocation];
    }
    return invocations;
}

#pragma mark - Mapper

- (NSString *)getPropertyNameForTag:(NSString *)tag {
    if (propertyMapper == nil) {
        [self createPropertyMapper];
    }
    return [propertyMapper valueForKey:tag];
}

- (void)createPropertyMapper {
    NSMutableDictionary *dictionary = [[FieldComponent getPropertyMapper] mutableCopy];
    [dictionary setObject:@"LabelName" forKey:@"labelName"];
    propertyMapper = dictionary;
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    return [[[self class] alloc] init];
}
@end
