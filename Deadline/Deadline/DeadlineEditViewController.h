//
//  DeadlineEditViewController.h
//  Deadline
//
//  Created by Benedict Endemann on 27.11.12.
//  Copyright (c) 2012 SeRoBe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DeadlineEditViewController : UIViewController

@property (strong, nonatomic) id deadlineDetailItem;
@property (strong, nonatomic) id deadlineDetailView;

@property (weak, nonatomic) IBOutlet UINavigationItem *navItem;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextView *detailTextField;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)DoneButtonAction:(id)sender;
- (IBAction)doneEditingTextField:(id)sender;

@end
