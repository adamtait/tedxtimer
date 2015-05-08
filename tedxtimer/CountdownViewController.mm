//
//  CountdownViewController.m
//  tedxtimer
//
//  Created by Adam Tait on 5/7/15.
//  Copyright (c) 2015 Adam Tait. All rights reserved.
//

#import "CountdownViewController.h"

#import <ComponentKit/CKComponentProvider.h>
#import <ComponentKit/CKComponentHostingView.h>
#import <ComponentKit/CKComponentHostingViewDelegate.h>

#import "Task.h"
#import "TaskModelController.h"
#import "TaskComponent.h"

#import "Time.h"
#import "TimeComponent.h"

#import "TitledComponent.h"

#import "TimerContext.h"

@interface CountdownViewController () <CKComponentHostingViewDelegate, CKComponentProvider>
@end

@implementation CountdownViewController
{
    TaskModelController *_taskModelController;
    CKComponentHostingView *_componentHostingView;
    TimerContext *_timerContext;
}

static NSString *title = @"TEDx ConstitutionDrive";

- (id)init {
    if (self = [super init]) {
        _taskModelController = [[TaskModelController alloc] init];
    }
    return self;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    _timerContext = [[TimerContext alloc] init];
    _componentHostingView = [[CKComponentHostingView alloc] initWithComponentProvider:[self class]
                                                                    sizeRangeProvider:nil
                                                                              context:_timerContext];
    _componentHostingView.delegate = self;
    _componentHostingView.model = [_taskModelController peek];
    _componentHostingView.backgroundColor = [UIColor whiteColor];
    self.view = _componentHostingView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma - mark CKComponentHostingViewDelegate

/**
 Called after the hosting view updates the component view to a new size.
 
 The delegate can use this callback to appropriately resize the view frame to fit the new
 component size. The view will not resize itself.
 */
- (void)componentHostingViewDidInvalidateSize:(CKComponentHostingView *)hostingView
{
    int i = 0;
}

#pragma - mark CKComponentProvider

+ (CKComponent *)componentForModel:(Task *)task context:(TimerContext *)context
{
    Time *time = [[Time alloc] initWithAllocatedSeconds:task.allocatedTime
                                         elapsedSeconds:context.elapsedTime];
    TimeComponent *timeComponent = [TimeComponent newWithTime:time];
    TaskComponent *taskComponent = [TaskComponent newWithTask:task
                                                  timeElapsed:[NSNumber numberWithInt:0]];
    return [TitledComponent
            newWithTitle:title
            timeComponent:timeComponent
            taskComponent:taskComponent];
}


@end
