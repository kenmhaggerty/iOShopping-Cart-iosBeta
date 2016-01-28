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
    
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:NSStringFromSelector(@selector(name)) ascending:YES];
    [self.items sortUsingDescriptors:@[sortDescriptor]];
}

- (void)sortItemsByNameDesc {
    
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:NSStringFromSelector(@selector(name)) ascending:NO];
    [self.items sortUsingDescriptors:@[sortDescriptor]];
}

- (void)sortItemsByPriceInCentsAsc {
    
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:NSStringFromSelector(@selector(priceInCents)) ascending:YES];
    [self.items sortUsingDescriptors:@[sortDescriptor]];
}

- (void)sortItemsByPriceInCentsDesc {
    
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:NSStringFromSelector(@selector(priceInCents)) ascending:NO];
    [self.items sortUsingDescriptors:@[sortDescriptor]];
}

- (NSArray *)allItemsWithName:(NSString *)name {
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"%K == %@", NSStringFromSelector(@selector(name)), name];
    return [self.items filteredArrayUsingPredicate:predicate];
}

- (NSArray *)allItemsWithMinimumPriceInCents:(NSUInteger)price {
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"%K >= %i", NSStringFromSelector(@selector(priceInCents)), price];
    return [self.items filteredArrayUsingPredicate:predicate];
}

- (NSArray *)allItemsWithMaximumPriceInCents:(NSUInteger)price {
    
    return nil;
}

@end
