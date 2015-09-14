//
//  Data.m
//  Simple Note
//
//  Created by Bowen Fan on 9/13/15.
//  Copyright (c) 2015 Bowen Fan. All rights reserved.
//

#import "Data.h"

@implementation Data

static NSMutableDictionary *allNotes = nil;
static NSString *currentKey = nil;

+(NSMutableDictionary *)getAllNotes
{
    if (allNotes == nil) {
        allNotes = [[NSMutableDictionary alloc] initWithDictionary:[[NSUserDefaults standardUserDefaults] objectForKey:kAllNotes]];
    }
    return allNotes;
}
+(void)setCurrentKey:(NSString *)key
{
    currentKey = key;
}
+(NSString *)getCurrentKey
{
    return currentKey;
}
+(void)setNoteForCurrentKey:(NSString*)note
{
    [self setNote:note forKey:currentKey];
}
+(void)setNote:(NSString *)note forKey:(NSString *)key
{
    [allNotes setObject:note forKey:key];
}
+(void)removeNoteForKey:(NSString *)key
{
    [allNotes removeObjectForKey:key];
}

+(void)saveNotes
{
    [[NSUserDefaults standardUserDefaults] setObject:allNotes forKey:kAllNotes];
}

@end