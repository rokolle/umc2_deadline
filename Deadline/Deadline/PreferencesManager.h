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
//+ (int) getStandardBuffer;
+ (NSString *) getName;
//+ (NSString) getEmail;
//+ (TimeValue)getTimes;
//+ (void)getNotification;
@end
