//
//  Task.h
//  tedxtimer
//
//  Created by Adam Tait on 5/7/15.
//  Copyright (c) 2015 Adam Tait. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly, copy) NSString *sessionNumber;
@property (nonatomic, readonly, copy) NSString *startClockTime;
@property (nonatomic, readonly, copy) NSString *startBeforeNoon;
@property (nonatomic, readonly, copy) NSString *endClockTime;
@property (nonatomic, readonly, copy) NSString *endBeforeNoon;

@property (nonatomic, readonly, copy) NSNumber *allocatedTime;


- (id)initWithName:(NSString*)name
     allocatedTime:(NSNumber*)allocatedTime
     sessionNumber:(NSString*)sessionNumber
    startClockTime:(NSString*)startClockTime
   startBeforeNoon:(NSString*)startBeforeNoon
      endClockTime:(NSString*)endClockTime
     endBeforeNoon:(NSString*)endBeforeNoon;

@end
