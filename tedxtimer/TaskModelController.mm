//
//  TaskModelController.m
//  tedxtimer
//
//  Created by Adam Tait on 5/7/15.
//  Copyright (c) 2015 Adam Tait. All rights reserved.
//

#import "TaskModelController.h"


@implementation TaskModelController
{
    NSInteger _currentTaskNumber;
}

- (id)init
{
    if (self = [super init]) {
        _currentTaskNumber = 0;
    }
    return self;
}

- (Task *)peek
{
    return [self getForIndex:_currentTaskNumber];
}

- (Task *)nextTask
{
    NSArray *tasks = taskList();
    if (_currentTaskNumber < [tasks count]) {
        _currentTaskNumber++;
        return [self getForIndex:_currentTaskNumber];
    }
    return nil;
}

- (Task *)previousTask
{
    if (_currentTaskNumber > 0) {
        _currentTaskNumber--;
        return [self getForIndex:_currentTaskNumber];
    }
    return nil;
}

- (Task*)getForIndex:(NSInteger)index {
    NSArray *tasks = taskList();
    NSDictionary *task = tasks[index];
    return [[Task alloc] initWithName:task[@"name"]
                        allocatedTime:task[@"allocatedTime"]
                        sessionNumber:task[@"sessionNumber"]
                       startClockTime:task[@"startClockTime"]
                      startBeforeNoon:task[@"startBeforeNoon"]
                         endClockTime:task[@"endClockTime"]
                        endBeforeNoon:task[@"endBeforeNoon"]];
}

static NSArray *taskList()
{
    static NSArray *tasks;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        tasks = @[
                   @{
                       @"name": @"David Barzelay",
                       @"allocatedTime": @15,
                       @"sessionNumber": @"4",
                       @"startClockTime": @"2:45",
                       @"startBeforeNoon": @"pm",
                       @"endClockTime": @"3:45",
                       @"endBeforeNoon": @"pm"
                       },
                   @{
                       @"name": @"Flaming Lotus Girls",
                       @"allocatedTime": @20,
                       @"sessionNumber": @"4",
                       @"startClockTime": @"2:45",
                       @"startBeforeNoon": @"pm",
                       @"endClockTime": @"3:45",
                       @"endBeforeNoon": @"pm"
                       }
                   ];
    });
    return tasks;
}

@end
