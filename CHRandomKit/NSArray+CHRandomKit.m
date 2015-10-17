//
//  NSArray+CHRandomKit.m
//  CHRandomKit
//
//  Created by Christian Huxtable, October 2015.
//  Copyright (c) 2015, Christian Huxtable <chris@huxtable.ca>
//
//  Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.
//  
//  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
//

#import "NSArray+CHRandomKit.h"

#import "CHRandom.h"

@implementation NSArray (CHRandomKit)

// Shuffling
#pragma mark - Shuffling

- (NSArray *)arrayByShuffling
{
	return [[[self mutableCopy] autorelease] shuffle];
}


// Accessors
#pragma mark - Accessors

- (id _Nonnull)randomObject
{
	return [self objectAtIndex:[CHRandom randomUnsignedIntegerWithBound:[self count]]];
}

@end


@implementation NSMutableArray (CHRandomKit)


// Shuffling
#pragma mark - Shuffling

- (NSMutableArray *)shuffle
{
	NSUInteger count = [self count];
	NSUInteger index = 0;

	while ( count > 0 )
	{
		index = [CHRandom randomUnsignedIntegerWithBound:count];

		[self exchangeObjectAtIndex:--count withObjectAtIndex:index];
	}

	return self;
}


// Insertion
#pragma mark - Insertion

- (NSUInteger)insertObjectAtRandomIndex:(id _Nonnull)object
{
	NSUInteger index = [CHRandom randomUnsignedIntegerWithBound:[self count]];

	[self insertObject:object atIndex:index];

	return index;
}


// Removal
#pragma mark - Removal

- (id _Nonnull)removeRandomObject
{
	NSUInteger index = [CHRandom randomUnsignedIntegerWithBound:[self count]];

	id object = [self objectAtIndex:index];
	[self removeObjectAtIndex:index];

	return object;
}

@end