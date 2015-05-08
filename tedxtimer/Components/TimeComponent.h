//
//  TimeComponent.h
//  tedxtimer
//
//  Created by Adam Tait on 5/7/15.
//  Copyright (c) 2015 Adam Tait. All rights reserved.
//

#import "CKCompositeComponent.h"
#import "Time.h"

@interface TimeComponent : CKCompositeComponent

+ (instancetype)newWithTime:(Time *)t;

@end
