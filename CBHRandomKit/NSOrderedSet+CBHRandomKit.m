//  NSOrderedSet+CBHRandomKit.m
//  CBHRandomKit
//
//  Created by Christian Huxtable, July 2019.
//  Copyright (c) 2019, Christian Huxtable <chris@huxtable.ca>
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

#import "NSOrderedSet+CBHRandomKit.h"

#import "NSMutableOrderedSet+CBHRandomKit.h"
#import "CBHRandom.h"


@implementation NSOrderedSet (CBHRandomKit)


#pragma mark - Shuffling

- (NSOrderedSet *)orderedSetByShuffling
{
	NSMutableOrderedSet *mutableOrderedSet = [self mutableCopy];
	[mutableOrderedSet shuffle];

	return [mutableOrderedSet copy];
}


#pragma mark - Accessors

- (id)randomObject
{
	if ( [self count] <= 0 ) { return nil; }
	return [self objectAtIndex:[CBHRandom randomUnsignedIntegerWithBound:[self count] - 1]];
}

@end
