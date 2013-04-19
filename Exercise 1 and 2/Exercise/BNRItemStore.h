//
//  BNRItemStore.h
//  Exercise
//
//  Created by Ryan Flores on 4/12/13.
//  Copyright (c) 2013 JHON RYAN FLORES. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRItem;

@interface BNRItemStore : NSObject
{
    NSMutableArray *allItems;
}
// Creating a singleton
// Singleton means there will only be one instance of this type in the application
+(BNRItemStore *)sharedStore;
-(NSArray *)allItems;
-(BNRItem *)createItem;
- (void)removeItem:(BNRItem *)p;
@end
