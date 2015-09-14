//
//  Data.h
//  Simple Note
//
//  Created by Bowen Fan on 9/13/15.
//  Copyright (c) 2015 Bowen Fan. All rights reserved.
//

//This class is for storing our notes as a key-value pair in iOS persistent storage

#import <Foundation/Foundation.h>

#define kDefaultText @"New Note"
#define kAllNotes @"notes"
#define kDetailsView @"showDetail"

@interface Data : NSObject

+(NSMutableDictionary *)getAllNotes;

+(void)setCurrentKey:(NSString *)key;

+(NSString *)getCurrentKey;

+(void)setNoteForCurrentKey:(NSString *)notes;

+(void)setNote:(NSString *)note forKey:(NSString *)key;

+(void)removeNoteForKey:(NSString *)key;

+(void)saveNotes;

@end
