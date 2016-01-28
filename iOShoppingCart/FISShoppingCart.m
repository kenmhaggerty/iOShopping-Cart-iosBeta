//
//  FISShoppingCart.m
//  iOShoppingCart
//
//  Created by Ken M. Haggerty on 1/28/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISShoppingCart.h"

@implementation FISShoppingCart

- (NSUInteger)calculateTotalPriceInCents {
    
    NSUInteger priceInCents = 0;
    for (FISItem *item in self.items) {
        priceInCents += item.priceInCents;
    }
    return priceInCents;
}

- (void)addItem:(FISItem *)item {
    
    [self.items addObject:item];
}

- (void)removeItem:(FISItem *)item {
    
    [self.items removeObjectAtIndex:[self.items indexOfObject:item]];
}

- (void)removeAllItemsLikeItem:(FISItem *)item {
    
    [self.items removeObject:item];
}

- (void)sortItemsByNameAsc {
    
    //
}

- (void)sortItemsByNameDesc {
    
    //
}

- (void)sortItemsByPriceInCentsAsc {
    
    //
}

- (void)sortItemsByPriceInCentsDesc {
    
    //
}

- (NSArray *)allItemsWithName:(NSString *)name {
    
    return nil;
}

- (NSArray *)allItemsWithMinimumPriceInCents:(NSUInteger)price {
    
    return nil;
}

- (NSArray *)allItemsWithMaximumPriceInCents:(NSUInteger)price {
    
    return nil;
}

@end
