//
//  TimeComponent.m
//  tedxtimer
//
//  Created by Adam Tait on 5/7/15.
//  Copyright (c) 2015 Adam Tait. All rights reserved.
//

#import "TimeComponent.h"
#import "TimeStyle.h"

#import "WhiteTimeComponent.h"
#import "RedTimeComponent.h"

@implementation TimeComponent

+ (instancetype)newWithTime:(Time *)t
{
    return [super newWithComponent:timeComponent(t)];
}

static CKComponent *timeComponent(Time *t)
{
    switch (t.style) {
        case TimeStyleWhite:
            return [WhiteTimeComponent
                    newWithSeconds:t.seconds];
        case TimeStyleRed:
            return [RedTimeComponent
                    newWithSeconds:t.seconds];
    }
}
@end
