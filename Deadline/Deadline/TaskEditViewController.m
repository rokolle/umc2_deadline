//
//  TaskEditViewController.m
//  Deadline
//
//  Created by Benedict Endemann on 27.11.12.
//  Copyright (c) 2012 SeRoBe. All rights reserved.
//

#import "TaskEditViewController.h"

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

- (void)configureView
{
    // Update the user interface for the detail item.
    if (self.taskDetailItem) {
        self.navItem.title = [self.taskDetailItem valueForKey:@"name"];
        self.nameTextField.text = [self.taskDetailItem valueForKey:@"name"];
//        [self.datePicker setDate:[self.tasklineDetailItem valueForKey:@"endDate"] animated:YES];
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
//    [self.taskDetailItem setValue:self.datePicker.date forKey:@"endDate"];

    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)doneEditingTextField:(id)sender {
    [sender resignFirstResponder];
}
@end
