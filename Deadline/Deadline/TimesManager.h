//
//  TimesManager.h
//  Deadline
//
//  Created by Robert Kolle.
//  Copyright (c) 2012 SeRoBe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PreferencesManager.h"

@interface TimesManager : NSObject
+ (NSDate *) getLSPForDeadline:(id)deadline;
+ (int) getSumTimeForDeadline:(id)deadline;
+ getDeadlinesOrdered;
@end