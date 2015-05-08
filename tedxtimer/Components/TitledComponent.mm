//
//  TitledTimerComponent.m
//  tedxtimer
//
//  Created by Adam Tait on 5/7/15.
//  Copyright (c) 2015 Adam Tait. All rights reserved.
//

#import "TitledComponent.h"

#import <ComponentKit/CKCenterLayoutComponent.h>
#import <ComponentKit/CKStackLayoutComponent.h>
#import <ComponentKit/CKLabelComponent.h>

@implementation TitledComponent

+ (instancetype)newWithTitle:(NSString *)title
               timeComponent:(TimeComponent *)timeComponent
               taskComponent:(TaskComponent *)taskComponent
{
    return [super newWithComponent:
             [CKStackLayoutComponent
              newWithView:{}
              size:{}
              style:{
                  .direction = CKStackLayoutDirectionVertical
              }
              children:{
                  {
                      [CKLabelComponent
                       newWithLabelAttributes:{
                           .string = title,
                           .font = [UIFont fontWithName:@"Baskerville" size:30]
                       }
                       viewAttributes:{
                           {@selector(setBackgroundColor:), [UIColor clearColor]},
                           {@selector(setUserInteractionEnabled:), @NO},
                       }],
                      .alignSelf = CKStackLayoutAlignSelfCenter
                  },
                  {
                      timeComponent
                  },
                  {
                      taskComponent
                  }
              }]];
}

@end
