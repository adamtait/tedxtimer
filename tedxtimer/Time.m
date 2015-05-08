//
//  Time.m
//  tedxtimer
//
//  Created by Adam Tait on 5/7/15.
//  Copyright (c) 2015 Adam Tait. All rights reserved.
//

#import "Time.h"

@implementation Time

static NSNumber *redThreshold() {
    return [NSNumber numberWithInt:(60 * 3)];
}

- (instancetype)initWithSeconds:(NSNumber *)seconds {
    if (self = [super init]) {
        _seconds = seconds;
        [self setStyleWithSeconds:_seconds];
    }
    return self;
}

- (instancetype)initWithLastTime:(Time*)time {
    if (self = [super init]) {
        _seconds = [NSNumber numberWithInt:([time.seconds intValue] -1)];
        [self setStyleWithSeconds:_seconds];
    }
    return self;
}

- (instancetype)initWithAllocatedSeconds:(NSNumber*)allocatedSeconds
                          elapsedSeconds:(NSNumber*)elapsedSeconds
{
    if (self = [super init]) {
        int secondsRemaining = [allocatedSeconds intValue] - [elapsedSeconds intValue];
        _seconds = [NSNumber numberWithInt:secondsRemaining];
        [self setStyleWithSeconds:_seconds];
    }
    return self;
}

- (void)setStyleWithSeconds:(NSNumber*)seconds {
    if ([_seconds compare:redThreshold()] == NSOrderedDescending) {
        _style = TimeStyleWhite;
    } else {
        _style = TimeStyleRed;
    }
}

@end
