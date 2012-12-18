//
//  PreferencesManager.m
//  Deadline
//
//  Created by Robert Kolle.
//  Copyright (c) 2012 SeRoBe. All rights reserved.
//

#import "PreferencesManager.h"

@implementation PreferencesManager

+ (id) getValueForKey:(NSString *)key{
	return NULL;
}

+ (NSString *) getName{
	return [[NSUserDefaults standardUserDefaults] stringForKey:@"pref_forename"];
};

+ (NSString *) getEmail{
	return [[NSUserDefaults standardUserDefaults] stringForKey:@"pref_email"];
};

+ (int) getBuffer{
	return [[NSUserDefaults standardUserDefaults] integerForKey:@"pref_buffer"];
};

+ (BOOL) getNotificationTwoWeeks{
	return [[NSUserDefaults standardUserDefaults] integerForKey:@"pref_two_week_left"];
};

+ (BOOL) getNotificationOneWeeks{
	return [[NSUserDefaults standardUserDefaults] integerForKey:@"pref_one_week_left"];
};

@end
