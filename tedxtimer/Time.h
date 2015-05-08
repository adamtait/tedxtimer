//
//  Time.h
//  tedxtimer
//
//  Created by Adam Tait on 5/7/15.
//  Copyright (c) 2015 Adam Tait. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TimeStyle.h"

@interface Time : NSObject

@property (nonatomic, readonly, copy) NSNumber *seconds;
@property (nonatomic, readonly) TimeStyle style;

- (instancetype)initWithSeconds:(NSNumber *)seconds;
- (instancetype)initWithLastTime:(Time *)time;
- (instancetype)initWithAllocatedSeconds:(NSNumber*)allocatedSeconds
                          elapsedSeconds:(NSNumber*)elapsedSeconds;

@end
