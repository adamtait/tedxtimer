//
//  TaskComponent.m
//  tedxtimer
//
//  Created by Adam Tait on 5/7/15.
//  Copyright (c) 2015 Adam Tait. All rights reserved.
//

#import "TaskComponent.h"

#import <ComponentKit/CKCenterLayoutComponent.h>
#import <ComponentKit/CKStackLayoutComponent.h>
#import <ComponentKit/CKLabelComponent.h>


@implementation TaskComponent

+ (instancetype)newWithTask:(Task*)task timeElapsed:(NSNumber*)timeElapsed
{
    return [super newWithComponent:
            [CKStackLayoutComponent
             newWithView:{}
             size:{}
             style:{
                 .alignItems = CKStackLayoutAlignItemsCenter,
                 .direction = CKStackLayoutDirectionVertical
             }
             children:{
                 {
                     [CKLabelComponent
                      newWithLabelAttributes:{
                          .string = task.name,
                          .font = [UIFont fontWithName:@"Baskerville" size:30]
                      }
                      viewAttributes:{
                          {@selector(setBackgroundColor:), [UIColor clearColor]},
                          {@selector(setUserInteractionEnabled:), @NO},
                      }]
                 },
                 {
                     [CKStackLayoutComponent
                      newWithView:{}
                      size:{}
                      style:{
                          .direction = CKStackLayoutDirectionHorizontal
                      }
                      children:{
                          {
                              [CKLabelComponent
                               newWithLabelAttributes:{
                                   .string = [NSString stringWithFormat:@"Session %@:", task.sessionNumber],
                                   .font = [UIFont fontWithName:@"Baskerville" size:15]
                               }
                               viewAttributes:{
                                   {@selector(setUserInteractionEnabled:), @NO}
                               }]
                          },
                          {
                              [CKLabelComponent
                               newWithLabelAttributes:{
                                   .string = [NSString stringWithFormat:@"%@%@ - %@%@", task.startClockTime, task.startBeforeNoon, task.endClockTime, task.endBeforeNoon],
                                   .font = [UIFont fontWithName:@"Baskerville" size:15]
                               }
                               viewAttributes:{
                                   {@selector(setUserInteractionEnabled:), @NO}
                               }]
                          }
                      }]
                 }
             }]];
}

@end
