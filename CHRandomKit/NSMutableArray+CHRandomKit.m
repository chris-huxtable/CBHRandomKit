//
//  NSMutableArray+CHRandomKit.m
//  CHRandomKit
//
//  Created by Christian Huxtable on 2019-02-08.
//  Copyright © 2019 Christian Huxtable. All rights reserved.
//

#import "NSMutableArray+CHRandomKit.h"

#import "CHRandom.h"


@implementation NSMutableArray (CHRandomKit)

#pragma mark - Shuffling

- (NSMutableArray *)shuffle
{
	NSUInteger count = [self count];
	NSUInteger index = 0;

	while ( count > 0 )
	{
		index = [CHRandom randomUnsignedIntegerWithBound:count - 1];
		[self exchangeObjectAtIndex:--count withObjectAtIndex:index];
	}

	return self;
}


#pragma mark - Insertion

- (NSUInteger)insertObjectAtRandomIndex:(id _Nonnull)object
{
	NSUInteger index = [CHRandom randomUnsignedIntegerWithBound:[self count] - 1];

	[self insertObject:object atIndex:index];

	return index;
}


#pragma mark - Removal

- (id _Nonnull)removeRandomObject
{
	NSUInteger index = [CHRandom randomUnsignedIntegerWithBound:[self count] - 1];

	id object = [self objectAtIndex:index];
	[self removeObjectAtIndex:index];

	return object;
}

@end
