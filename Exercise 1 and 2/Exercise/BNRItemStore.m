//
//  BNRItemStore.m
//  Exercise
//
//  Created by Ryan Flores on 4/12/13.
//  Copyright (c) 2013 JHON RYAN FLORES. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation BNRItemStore

+(BNRItemStore *)sharedStore
{
    static BNRItemStore *sharedStore = nil;
    if (!sharedStore) {
        sharedStore = [[super allocWithZone:nil] init];
    }
    return sharedStore;
}

//
+(id)allocWithZone:(NSZone *)zone
{
    return [self sharedStore];
}

-(id)init
{
    self = [super init];
    if (self) {
        allItems = [[NSMutableArray alloc] init];
        
        
    }
    return self;
}

- (void)removeItem:(BNRItem *)p
{
    [allItems removeObjectIdenticalTo:p];
}

-(NSArray *)allItems
{
    return allItems;
}

-(BNRItem *)createItem
{
    BNRItem *p = [BNRItem randomItem];
    [allItems addObject:p];
    
    return p;
}

@end
