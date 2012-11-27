//
//  DeadlineEditViewController.m
//  Deadline
//
//  Created by Benedict Endemann on 27.11.12.
//  Copyright (c) 2012 SeRoBe. All rights reserved.
//

#import "DeadlineEditViewController.h"

@interface DeadlineEditViewController ()

@end

@implementation DeadlineEditViewController

- (void)configureView
{
    self.navItem.title = @"dline title gesetzt in C";
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
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
