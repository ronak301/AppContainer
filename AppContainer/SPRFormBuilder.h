//
//  SPRFormBuilder.h
//  AppContainer
//
//  Created by Urvashi Gupta on 14/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SPRFormBuilder : NSObject

@property (nonatomic) NSString* formXML;

- (UIView *)buildFormUsingData:(NSDictionary *)formData;

@end
