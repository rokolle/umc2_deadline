//
//  TaskDetailViewController.m
//  Deadline
//
//  Created by Benedict Endemann.
//  Copyright (c) 2012 SeRoBe. All rights reserved.
//

#import "TaskDetailViewController.h"

#import "TaskEditViewController.h"

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
        if ([[self.taskDetailItem valueForKey:@"done"] boolValue]) {
            self.doneMark.text = @"\u2713"; // CHECK MARK
            self.doneMark.textColor = [UIColor greenColor];
        } else {
            self.doneMark.text = @"\u2717"; // BALLOT X
            self.doneMark.textColor = [UIColor redColor];
        }

        NSNumber *num = [self.taskDetailItem valueForKey:@"duration"];
        int duration = [num integerValue];
        int std = duration / 3600;
        int min = duration / 60 % 60;
        NSString *durationAsString = [[NSString alloc] initWithFormat:@"%02d:%02d", std, min];
        
        self.taskDuration.text = durationAsString;

        self.detailTextView.text = [[self.taskDetailItem valueForKey:@"detail"] description];
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
        [[segue destinationViewController] setTaskDetailView:self];
    }
}

@end
