//
//  CBHRandomTests+Chars.h
//  CBHRandomKit
//
//  Created by Christian Huxtable, February 2019.
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

#import "CBHRandomKit/CBHRandom.h"


#define COUNT 1000000


#pragma mark - Functions

double average_int8(int8_t const *array, size_t length);
BOOL contains_int8(int8_t const *array, size_t length, int8_t needle);

double average_int8(int8_t const *array, size_t const length)
{
	if ( length == 0 ) { return 0; }
	double average = (double)array[0];

	for ( size_t i = 1; i < length; ++i)
	{
		average += (((double)array[i] - average) / (double)(i + 1));
	}

	return average;
}

BOOL contains_int8(int8_t const *array, size_t const length, int8_t const needle)
{
	if ( length == 0 ) { return NO; }

	for (size_t i = 0; i < length; ++i)
	{
		if ( array[i] == needle ) { return YES; }
	}

	return NO;
}


@interface CBHRandomTests_Chars : XCTestCase
@end

@implementation CBHRandomTests_Chars


- (void)testChar
{
	/// Works?
	[CBHRandom randomChar];
}

- (void)testCharBetweenLowerAndUpperBound
{
	int8_t array[COUNT];

	/// Test Postive Bounds
	{
		for (size_t i = 0; i < COUNT; ++i)
		{
			array[i] = (int8_t)[CBHRandom randomCharBetweenLower:10 andUpperBound:20];
		}

		double average = average_int8(array, COUNT);
		XCTAssertEqualWithAccuracy(average, 15.0, 0.1);
	}
}


@end
