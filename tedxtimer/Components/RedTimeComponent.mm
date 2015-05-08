//
//  RedTimeComponent.m
//  tedxtimer
//
//  Created by Adam Tait on 5/7/15.
//  Copyright (c) 2015 Adam Tait. All rights reserved.
//

#import "RedTimeComponent.h"

#import <ComponentKit/CKLabelComponent.h>

@implementation RedTimeComponent

+ (instancetype)newWithSeconds:(NSNumber*)seconds {
    NSString *clockTime = [NSString stringWithFormat:@"%0.0f:%d", floor([seconds intValue] /60), ([seconds intValue] %60)];
    return [super newWithComponent:
            [CKLabelComponent
             newWithLabelAttributes:{
                 .string = clockTime,
                 .font = [UIFont fontWithName:@"Helvetica" size:45],
                 .color = [UIColor redColor]
             }
             viewAttributes:{
                 {@selector(setUserInteractionEnabled:), @NO}
             }]];
}

@end
