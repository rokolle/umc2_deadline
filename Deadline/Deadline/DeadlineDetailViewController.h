//
//  DeadlineDetailViewController.h
//  Deadline
//
//  Created by Benedict Endemann.
//  Copyright (c) 2012 SeRoBe. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface DeadlineDetailViewController : UIViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (strong, nonatomic) id deadlineDetailItem;

@property (weak, nonatomic) IBOutlet UINavigationItem *taskNavItem;
@property (weak, nonatomic) IBOutlet UILabel *deadlineEndDate;
@property (weak, nonatomic) IBOutlet UILabel *deadlineDetail;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (void)configureView;

@end
