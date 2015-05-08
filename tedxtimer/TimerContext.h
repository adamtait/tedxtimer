//
//  TimerContext.h
//  tedxtimer
//
//  Created by Adam Tait on 5/8/15.
//  Copyright (c) 2015 Adam Tait. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimerContext : NSObject

@property (nonatomic, strong) NSNumber *elapsedTime;

- (id)init;

@end
