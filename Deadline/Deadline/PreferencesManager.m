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


@end
