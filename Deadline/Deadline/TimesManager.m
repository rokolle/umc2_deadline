//
//  TimesManager.m
//  Deadline
//
//  Created by Robert Kolle.
//  Copyright (c) 2012 SeRoBe. All rights reserved.
//

#import "TimesManager.h"

@implementation TimesManager

+ (NSDate *) getLSPForDeadline:(id) deadline {
	/* PSEUDO
	 
	 int hoursNeeded = getSumTimeForDeadline(deadline);
	 Date lsp = Date(Deadline.endDate - hoursNeeded);
	 
	 return lsp;
	 */
};

+ (int) getSumTimeForDeadline:(id) deadline {
	/* PSEUDO
	 
	 int sumHours;
	 
	 Task[] tasks = deadline();
	 
	 for(i=1; tasks.count; i++) {
		Task task = tasks.next();
		sumHours += task.getDuration();
	 }
	 
	 return sumHours;
	 */
};

+ getDeadlinesOrdered{
	
};

+ (TimeValue) getTimes:(id) deadlines{
	/* PSEUDO
	 TimeValues[] times;
	 
	 for (i=1;deadlines.count;i++) {
		Deadline deadline = deadlines.next();
		Date lsp = getLSPForDeadline(deadline);
		int diff = new Date(deadline.endDate - lsp).getDays();
		startWorkDay = lsp.getDay();
		
		for(y=0; y <= diff; y++){
			times.add(getTimeAvailableForDay(startDay-y));
		}
	 }
	 
	 return times;
	 */
}

@end
