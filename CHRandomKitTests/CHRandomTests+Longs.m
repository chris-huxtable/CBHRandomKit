//
//	CHRandomTests+Longs.h
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

double averageLong(long const *array, size_t const length);
BOOL containsLong(long const *array, size_t const length, long needle);

double averageUnsignedLong(unsigned long const *array, size_t const length);
BOOL containsUnsignedLong(unsigned long const *array, size_t const length, unsigned long needle);

double averageLong(long const *array, size_t const length)
{
	if ( length == 0 ) { return 0; }
	double average = (double)array[0];

	for ( size_t i = 1; i < length; ++i)
	{
		average += (((double)array[i] - average) / (double)(i + 1));
	}

	return average;
}

BOOL containsLong(long const *array, size_t const length, long needle)
{
	if ( length == 0 ) { return NO; }

	for (size_t i = 0; i < length; ++i)
	{
		if ( array[i] == needle ) { return YES; }
	}

	return NO;
}

double averageUnsignedLong(unsigned long const *array, size_t const length)
{
	if ( length == 0 ) { return 0; }
	double average = (double)array[0];

	for ( size_t i = 1; i < length; ++i)
	{
		average += (((double)array[i] - average) / (double)(i + 1));
	}

	return average;
}

BOOL containsUnsignedLong(unsigned long const *array, size_t const length, unsigned long needle)
{
	if ( length == 0 ) { return NO; }

	for (size_t i = 0; i < length; ++i)
	{
		if ( array[i] == needle ) { return YES; }
	}

	return NO;
}



@interface CHRandomTests_Longs : XCTestCase
@end

@implementation CHRandomTests_Longs


- (void)testLong
{
	// TODO: [CHRandom randomLong];
}

- (void)testLongBetweenLowerAndUpperBound
{
	long array[COUNT];

	// Test Postive Bounds
	{
		for (size_t i = 0; i < COUNT; ++i)
		{
			array[i] = [CHRandom randomLongBetweenLower:10 andUpperBound:20];
		}

		double average = averageLong(array, COUNT);
		XCTAssertEqualWithAccuracy(average, 15.0, 0.1);
	}

	/// Test Negative Bounds
	{
		for (size_t i = 0; i < COUNT; ++i)
		{
			array[i] = [CHRandom randomLongBetweenLower:-10 andUpperBound:-20];
		}

		double average = averageLong(array, COUNT);
		XCTAssertEqualWithAccuracy(average, -15.0, 0.1);
	}

	/// Test Crossing Bounds
	{
		for (size_t i = 0; i < COUNT; ++i)
		{
			array[i] = [CHRandom randomLongBetweenLower:-10 andUpperBound:10];
		}

		double average = averageLong(array, COUNT);
		XCTAssertEqualWithAccuracy(average, 0.0, 0.1);
	}
}


- (void)testUnsignedLong
{
	// TODO: [CHRandom randomUnsignedLong];
}

- (void)testUnsignedLongWithBound
{
	unsigned long array[COUNT];

	for ( size_t i = 0; i < COUNT; ++i)
	{
		array[i] = [CHRandom randomUnsignedLongWithBound:20];
	}

	double average = averageUnsignedLong(array, COUNT);
	XCTAssertEqualWithAccuracy(average, 10.0, 0.1);

	XCTAssertTrue(containsUnsignedLong(array, COUNT, 20));
	XCTAssertTrue(containsUnsignedLong(array, COUNT, 0));

	XCTAssertFalse(containsUnsignedLong(array, COUNT, 21));
}

- (void)testUnsignedLongBetweenLowerAndUpperBound
{
	unsigned long array[COUNT];

	for ( size_t i = 0; i < COUNT; ++i)
	{
		array[i] = [CHRandom randomUnsignedLongBetweenLower:10 andUpperBound:20];
	}

	double average = averageUnsignedLong(array, COUNT);

	XCTAssertEqualWithAccuracy(average, 15.0, 0.1);

	XCTAssertTrue(containsUnsignedLong(array, COUNT, 20));
	XCTAssertTrue(containsUnsignedLong(array, COUNT, 10));

	XCTAssertFalse(containsUnsignedLong(array, COUNT, 21));
	XCTAssertFalse(containsUnsignedLong(array, COUNT, 9));
}

@end
