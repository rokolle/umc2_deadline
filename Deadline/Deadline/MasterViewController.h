//
//  MasterViewController.h
//  Deadline
//
//  Created by Benedict Endemann.
//  Copyright (c) 2012 SeRoBe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "PreferencesManager.h"

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
