//
//  TaskComponent.h
//  tedxtimer
//
//  Created by Adam Tait on 5/7/15.
//  Copyright (c) 2015 Adam Tait. All rights reserved.
//

#import "CKCompositeComponent.h"

#import "Task.h"

@interface TaskComponent : CKCompositeComponent

+ (instancetype)newWithTask:(Task*)task timeElapsed:(NSNumber*)timeElapsed;

@end
