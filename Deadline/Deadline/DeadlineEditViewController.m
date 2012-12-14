//
//  DeadlineEditViewController.m
//  Deadline
//
//  Created by Benedict Endemann on 27.11.12.
//  Copyright (c) 2012 SeRoBe. All rights reserved.
//

#import "DeadlineEditViewController.h"
#import "DeadlineDetailViewController.h"

@interface DeadlineEditViewController ()

@end

@implementation DeadlineEditViewController

- (void)setDeadlineDetailItem:(id)newDeadlineDetailItem
{
    if (_deadlineDetailItem != newDeadlineDetailItem) {
        _deadlineDetailItem = newDeadlineDetailItem;
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    if (self.deadlineDetailItem) {
        self.navItem.title = [self.deadlineDetailItem valueForKey:@"name"];
        self.nameTextField.text = [self.deadlineDetailItem valueForKey:@"name"];
        [self.datePicker setDate:[self.deadlineDetailItem valueForKey:@"endDate"] animated:YES];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Update the view.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)DoneButtonAction:(id)sender {
    [self.deadlineDetailItem setValue:self.nameTextField.text forKey:@"name"];
    [self.deadlineDetailItem setValue:self.datePicker.date forKey:@"endDate"];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)datePickerValueChanged:(id)sender {
}

- (IBAction)doneEditingTextField:(id)sender {
    [sender resignFirstResponder];
}
@end
