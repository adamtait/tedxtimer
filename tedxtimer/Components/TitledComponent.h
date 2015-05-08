//
//  TitledTimerComponent.h
//  tedxtimer
//
//  Created by Adam Tait on 5/7/15.
//  Copyright (c) 2015 Adam Tait. All rights reserved.
//

#import "CKCompositeComponent.h"

#import "TimeComponent.h"
#import "TaskComponent.h"

@interface TitledComponent : CKCompositeComponent

+ (instancetype)newWithTitle:(NSString *)title
              timeComponent:(TimeComponent *)timeComponent
               taskComponent:(TaskComponent *)taskComponent;

@end
