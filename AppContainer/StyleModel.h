//
//  StyleModel.h
//  AppContainer
//
//  Created by Urvashi Gupta on 16/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "JSONModel.h"

@interface StyleModel : JSONModel

@property (nonatomic) NSString<Optional>* backgroundColor;
@property (nonatomic) NSString<Optional>* textColor;
@property (nonatomic) NSString<Optional>* fontSize;
@property (nonatomic) NSString<Optional>* fontName;
@property (nonatomic) NSString<Optional>* alpha;
@property (nonatomic) NSString<Optional>* hidden;

@end
