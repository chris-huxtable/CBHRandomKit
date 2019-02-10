//
//	CHRandomTests+Shorts.h
//	CHRandomKit
//
//	Created by Christian Huxtable, February 2019.
//	Copyright (c) 2019, Christian Huxtable <chris@huxtable.ca>
//
//	Permission to use, copy, modify, and/or distribute this software for any
//	purpose with or without fee is hereby granted, provided that the above
//	copyright notice and this permission notice appear in all copies.
//
//	THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
//	WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
//	MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
//	ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
//	WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
//	ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
//	OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
//

@import XCTest;

#import "CHRandomKit/CHRandom.h"


#define COUNT 1000000


#pragma mark - Functions

double averageShort(short const *array, size_t const length);
BOOL containsShort(short const *array, size_t const length, short needle);

double averageUnsignedShort(unsigned short const *array, size_t const length);
BOOL containsUnsignedShort(unsigned short const *array, size_t const length, unsigned short needle);

double averageShort(short const *array, size_t const length)
{
	if ( length == 0 ) { return 0; }
	double average = (double)array[0];

	for ( size_t i = 1; i < length; ++i)
	{
		average += (((double)array[i] - average) / (double)(i + 1));
	}

	return average;
}

BOOL containsShort(short const *array, size_t const length, short needle)
{
	if ( length == 0 ) { return NO; }

	for (size_t i = 0; i < length; ++i)
	{
		if ( array[i] == needle ) { return YES; }
	}

	return NO;
}

double averageUnsignedShort(unsigned short const *array, size_t const length)
{
	if ( length == 0 ) { return 0; }
	double average = (double)array[0];

	for ( size_t i = 1; i < length; ++i)
	{
		average += (((double)array[i] - average) / (double)(i + 1));
	}

	return average;
}

BOOL containsUnsignedShort(unsigned short const *array, size_t const length, unsigned short needle)
{
	if ( length == 0 ) { return NO; }

	for (size_t i = 0; i < length; ++i)
	{
		if ( array[i] == needle ) { return YES; }
	}

	return NO;
}



@interface CHRandomTests_Shorts : XCTestCase
@end

@implementation CHRandomTests_Shorts


- (void)testShort
{
	// TODO: [CHRandom randomShort];
}

- (void)testShortBetweenLowerAndUpperBound
{
	short array[COUNT];

	// Test Postive Bounds
	{
		for (size_t i = 0; i < COUNT; ++i)
		{
			array[i] = [CHRandom randomShortBetweenLower:10 andUpperBound:20];
		}

		double average = averageShort(array, COUNT);
		XCTAssertEqualWithAccuracy(average, 15.0, 0.1);
	}

	/// Test Negative Bounds
	{
		for (size_t i = 0; i < COUNT; ++i)
		{
			array[i] = [CHRandom randomShortBetweenLower:-10 andUpperBound:-20];
		}

		double average = averageShort(array, COUNT);
		XCTAssertEqualWithAccuracy(average, -15.0, 0.1);
	}

	/// Test Crossing Bounds
	{
		for (size_t i = 0; i < COUNT; ++i)
		{
			array[i] = [CHRandom randomShortBetweenLower:-10 andUpperBound:10];
		}

		double average = averageShort(array, COUNT);
		XCTAssertEqualWithAccuracy(average, 0.0, 0.1);
	}
}


- (void)testUnsignedShort
{
	// TODO: [CHRandom randomUnsignedShort];
}

- (void)testUnsignedShortWithBound
{
	unsigned short array[COUNT];

	for ( size_t i = 0; i < COUNT; ++i)
	{
		array[i] = [CHRandom randomUnsignedShortWithBound:20];
	}

	double average = averageUnsignedShort(array, COUNT);
	XCTAssertEqualWithAccuracy(average, 10.0, 0.1);

	XCTAssertTrue(containsUnsignedShort(array, COUNT, 20));
	XCTAssertTrue(containsUnsignedShort(array, COUNT, 0));

	XCTAssertFalse(containsUnsignedShort(array, COUNT, 21));
}

- (void)testUnsignedShortBetweenLowerAndUpperBound
{
	unsigned short array[COUNT];

	for ( size_t i = 0; i < COUNT; ++i)
	{
		array[i] = [CHRandom randomUnsignedShortBetweenLower:10 andUpperBound:20];
	}

	double average = averageUnsignedShort(array, COUNT);

	XCTAssertEqualWithAccuracy(average, 15.0, 0.1);

	XCTAssertTrue(containsUnsignedShort(array, COUNT, 20));
	XCTAssertTrue(containsUnsignedShort(array, COUNT, 10));

	XCTAssertFalse(containsUnsignedShort(array, COUNT, 21));
	XCTAssertFalse(containsUnsignedShort(array, COUNT, 9));
}

@end
