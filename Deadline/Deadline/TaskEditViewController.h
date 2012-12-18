//
//  TaskEditViewController.h
//  Deadline
//
//  Created by Benedict Endemann.
//  Copyright (c) 2012 SeRoBe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskEditViewController : UIViewController
@property (weak, nonatomic) IBOutlet UINavigationItem *navItem;

@property (strong, nonatomic) id taskDetailItem;
@property (strong, nonatomic) id taskDetailView;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UISwitch *doneSwitch;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UITextView *detailTextView;

- (IBAction)DoneButtonAction:(id)sender;
- (IBAction)doneEditingTextField:(id)sender;

@end
