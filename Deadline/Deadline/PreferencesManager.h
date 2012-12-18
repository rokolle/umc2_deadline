//
//  PreferencesManager.h
//  Deadline
//
//  Created by Robert Kolle.
//  Copyright (c) 2012 SeRoBe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PreferencesManager : NSObject

@property NSString* forename;
@property int standardBuffer;
@property NSString* email;

+ getValueForKey:(NSString *) key;

+ (int) getBuffer;
+ (NSString *) getName;
+ (NSString *) getEmail;
//+ (TimeValue)getTimes;
+ (BOOL) getNotificationTwoWeeks;
+ (BOOL) getNotificationOneWeek;
@end
