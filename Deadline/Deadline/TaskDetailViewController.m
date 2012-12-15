//
//  TaskDetailViewController.m
//  Deadline
//
//  Created by Benedict Endemann on 26.11.12.
//  Copyright (c) 2012 SeRoBe. All rights reserved.
//

#import "TaskDetailViewController.h"

@interface TaskDetailViewController ()
- (void)configureView;
@end

@implementation TaskDetailViewController

#pragma mark - Managing the detail item

- (void)setTaskDetailItem:(id)newTaskDetailItem
{
    if (_taskDetailItem != newTaskDetailItem) {
        _taskDetailItem = newTaskDetailItem;
        
        // Update the view.
//        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    
    if (self.taskDetailItem) {
        self.navigationItem.title = [[self.taskDetailItem valueForKey:@"name"] description];
        self.taskDuration.text = [[self.taskDetailItem valueForKey:@"duration"] description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Uebergabe der Daten bei Uebergang zum Task Edit View
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showTaskEdit"]) {
        [[segue destinationViewController] setTaskDetailItem:self.taskDetailItem];
    }
}

@end
