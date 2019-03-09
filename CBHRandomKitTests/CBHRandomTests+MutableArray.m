//
//  CBHRandomTests+MutableArray.m
//  CBHRandomKitTests
//
//  Created by Christian Huxtable, March 2019.
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
//

@import XCTest;

#import "CBHRandomKit/NSMutableArray+CBHRandomKit.h"


@interface CBHRandomTests_MutableArray : XCTestCase
@end


@implementation CBHRandomTests_MutableArray


- (void)testShuffle
{
	NSArray *array = @[@1, @2, @3, @4, @5, @6, @7, @8];
	NSArray *shuffled = [[array mutableCopy] shuffle];

	XCTAssertNotNil(shuffled);
	XCTAssertNotEqualObjects(array, shuffled, @"Arrays should not be the same.");
}

- (void)testInsertObjectAtRandom
{
	NSMutableArray *array = [@[@1, @2, @3, @4, @5, @6, @7, @8] mutableCopy];
	[array insertObjectAtRandomIndex:@9];

	XCTAssert([array count] == 9, @"Array length should have increased.");
}

- (void)testRemoveRandomObject
{
	NSMutableArray *array = [@[@1, @2, @3, @4, @5, @6, @7, @8] mutableCopy];
	[array removeRandomObject];

	XCTAssert([array count] == 7, @"Array length should have increased.");
}

@end
