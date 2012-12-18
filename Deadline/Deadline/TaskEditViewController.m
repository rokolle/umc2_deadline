//
//  TaskEditViewController.m
//  Deadline
//
//  Created by Benedict Endemann.
//  Copyright (c) 2012 SeRoBe. All rights reserved.
//

#import "TaskEditViewController.h"
#import "TaskDetailViewController.h"

#import "AppDelegate.h"


@interface TaskEditViewController ()

@end

@implementation TaskEditViewController

- (void)setTaskDetailItem:(id)newTaskDetailItem
{
    if (_taskDetailItem != newTaskDetailItem) {
        _taskDetailItem = newTaskDetailItem;
        
        // Update the view.
        //        [self configureView];
    }
}

- (void)setTaskDetailView:(id)newTaskDetailView
{
    if (_taskDetailView != newTaskDetailView) {
        _taskDetailView = newTaskDetailView;
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    if (self.taskDetailItem) {
        self.navItem.title = [self.taskDetailItem valueForKey:@"name"];
        self.nameTextField.text = [self.taskDetailItem valueForKey:@"name"];
        self.detailTextView.text = [self.taskDetailItem valueForKey:@"detail"];
        self.doneSwitch.on = [[self.taskDetailItem valueForKey:@"done"] boolValue];
        NSNumber *num = [self.taskDetailItem valueForKey:@"duration"];
        int duration = [num integerValue];
        if (duration < 0) duration = 0;
        if (duration > 86399) duration = 86399;
        [self.datePicker setCountDownDuration:duration];
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

- (IBAction)DoneButtonAction:(id)sender {
    // Daten aus UI in Core Data Objekt packen
    [self.taskDetailItem setValue:self.nameTextField.text forKey:@"name"];
    [self.taskDetailItem setValue:self.detailTextView.text forKey:@"detail"];
    [self.taskDetailItem setValue:[NSNumber numberWithDouble:self.datePicker.countDownDuration] forKey:@"duration"];
    [self.taskDetailItem setValue:[NSNumber numberWithBool:self.doneSwitch.on] forKey:@"done"];

    // Core Data Context sichern
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [appDelegate saveContext];
    
    // DeadlineDetailView aktualisieren, damit Aenderungen angezeigt werden
    if (self.taskDetailView != nil) {
        [self.taskDetailView configureView];
    }
    
    // Edit View schliessen    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)doneEditingTextField:(id)sender {
    [sender resignFirstResponder];
}

- (void)touchesEnded: (NSSet *)touches withEvent: (UIEvent *)event {
	for (UIView* view in self.view.subviews) {
		if ([view isKindOfClass:[UITextField class]] || [view isKindOfClass:[UITextView class]])
			[view resignFirstResponder];
	}
}
@end
