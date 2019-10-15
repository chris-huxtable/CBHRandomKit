//  NSMutableArray+CBHRandomKit.m
//  CBHRandomKit
//
//  Created by Christian Huxtable, October 2015.
//  Copyright (c) 2015, Christian Huxtable <chris@huxtable.ca>
//
//  Permission to use, copy, modify, and/or distribute this software for any
//  purpose with or without fee is hereby granted, provided that the above
//  copyright notice and this permission notice appear in all copies.
//
//  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
//  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
//  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
//  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
//  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
//  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
//  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

#import "NSMutableArray+CBHRandomKit.h"

#import "CBHRandom.h"


@implementation NSMutableArray (CBHRandomKit)


#pragma mark - Shuffling

- (NSMutableArray *)shuffle
{
	NSUInteger count = [self count];
	NSUInteger index = 0;

	while ( count > 0 )
	{
		index = [CBHRandom randomUnsignedIntegerWithBound:count - 1];
		[self exchangeObjectAtIndex:--count withObjectAtIndex:index];
	}

	return self;
}


#pragma mark - Insertion

- (NSUInteger)insertObjectAtRandomIndex:(id)object
{
	NSUInteger index = [CBHRandom randomUnsignedIntegerWithBound:[self count] - 1];

	[self insertObject:object atIndex:index];

	return index;
}


#pragma mark - Removal

- (id)removeRandomObject
{
	NSUInteger index = [CBHRandom randomUnsignedIntegerWithBound:[self count] - 1];

	id object = [self objectAtIndex:index];
	[self removeObjectAtIndex:index];

	return object;
}

@end
