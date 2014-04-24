//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Minjian Wang on 4/20/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject

+ (instancetype)sharedStore;

@property (nonatomic, readonly, copy) NSArray *allItems;

- (BNRItem *)createItem;
- (void)removeItem:(BNRItem *)item;
- (void)moveItemAtIndex:(NSUInteger)fromIndex
                toIndex:(NSUInteger)toIndex;
@end
