//
//  DeadlineEditViewController.m
//  Deadline
//
//  Created by Benedict Endemann on 27.11.12.
//  Copyright (c) 2012 SeRoBe. All rights reserved.
//

#import "DeadlineEditViewController.h"
#import "DeadlineDetailViewController.h"

#import "AppDelegate.h"

@interface DeadlineEditViewController ()
@end

@implementation DeadlineEditViewController

- (void)setDeadlineDetailItem:(id)newDeadlineDetailItem
{
    if (_deadlineDetailItem != newDeadlineDetailItem) {
        _deadlineDetailItem = newDeadlineDetailItem;
        
        // Update the view.
        //        [self configureView];

    }
}

- (void)setDeadlineDetailView:(id)newDeadlineDetailView
{
    if (_deadlineDetailView != newDeadlineDetailView) {
        _deadlineDetailView = newDeadlineDetailView;
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    if (self.deadlineDetailItem) {
        self.navItem.title = [self.deadlineDetailItem valueForKey:@"name"];
        self.nameTextField.text = [self.deadlineDetailItem valueForKey:@"name"];
        self.detailTextField.text = [self.deadlineDetailItem valueForKey:@"detail"];
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
    // Daten aus UI in Core Data Objekt packen
    [self.deadlineDetailItem setValue:self.nameTextField.text forKey:@"name"];
    [self.deadlineDetailItem setValue:self.detailTextField.text forKey:@"detail"];
    [self.deadlineDetailItem setValue:self.datePicker.date forKey:@"endDate"];
    
    // Core Data Context sichern
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [appDelegate saveContext];
    
    // DeadlineDetailView aktualisieren, damit Aenderungen angezeigt werden
    if (self.deadlineDetailView != nil) {
        [self.deadlineDetailView configureView];
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
