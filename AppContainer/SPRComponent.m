//
//  Component.m
//  AppContainer
//
//  Created by Urvashi Gupta on 13/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "SPRComponent.h"
#import "InputFieldComponent.h"

@implementation SPRComponent


#pragma mark - SPRComponentProtocol

+ (SPRComponent *)createComponentWithData:(NSDictionary *)dictionary {
    //Override
    return nil;
}

+ (NSArray *)createStyleInvocationsFromStyleSheet:(NSDictionary *)styleData {
    //OVerride
    return nil;
}

- (UIView *)renderView {
    //Override
    return nil;
}

- (void)applyData {
    //Override
}

#pragma mark - PropertyMapper Protocol

+ (NSString *)getPropertyNameForTag:(NSString *)tag {
    //Override in subclass
    return nil;
}

+ (NSDictionary *)getPropertyMapper {
    //Override in subclass
    return nil;
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    return [[[self class] alloc] init];
}


@end
