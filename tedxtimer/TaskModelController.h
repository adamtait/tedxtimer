//
//  TaskModelController.h
//  tedxtimer
//
//  Created by Adam Tait on 5/7/15.
//  Copyright (c) 2015 Adam Tait. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Task.h"

@interface TaskModelController : NSObject

- (Task *)peek;
- (Task *)nextTask;
- (Task *)previousTask;

@end
