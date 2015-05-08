//
//  Task.m
//  tedxtimer
//
//  Created by Adam Tait on 5/7/15.
//  Copyright (c) 2015 Adam Tait. All rights reserved.
//

#import "Task.h"

@implementation Task

- (id)initWithName:(NSString*)name
     allocatedTime:(NSNumber*)allocatedTime
     sessionNumber:(NSString*)sessionNumber
    startClockTime:(NSString*)startClockTime
   startBeforeNoon:(NSString*)startBeforeNoon
      endClockTime:(NSString*)endClockTime
     endBeforeNoon:(NSString*)endBeforeNoon
{
    if (self = [super init]) {
        _name = name;
        _allocatedTime = allocatedTime;
        _sessionNumber = sessionNumber;
        _startClockTime = startClockTime;
        _startBeforeNoon = startBeforeNoon;
        _endClockTime = endClockTime;
        _endBeforeNoon = endBeforeNoon;
    }
    return self;
}

@end
