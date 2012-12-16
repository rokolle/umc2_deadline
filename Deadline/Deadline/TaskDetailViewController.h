//
//  TaskDetailViewController.h
//  Deadline
//
//  Created by Benedict Endemann on 26.11.12.
//  Copyright (c) 2012 SeRoBe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskDetailViewController : UIViewController

@property (strong, nonatomic) id taskDetailItem;

@property (weak, nonatomic) IBOutlet UILabel *taskDuration;
@property (weak, nonatomic) IBOutlet UILabel *doneMark;
@property (weak, nonatomic) IBOutlet UITextView *detailTextView;
@end