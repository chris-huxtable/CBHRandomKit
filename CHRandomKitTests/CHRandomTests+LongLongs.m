//
//	CHRandomTests+LongLongs.h
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

double averageLongLong(long long const *array, size_t const length);
BOOL containsLongLong(long long const *array, size_t const length, long long needle);

double averageUnsignedLongLong(unsigned long long const *array, size_t const length);
BOOL containsUnsignedLongLong(unsigned long long const *array, size_t const length, unsigned long long needle);

double averageLongLong(long long const *array, size_t const length)
{
	if ( length == 0 ) { return 0; }
	double average = (double)array[0];

	for ( size_t i = 1; i < length; ++i)
	{
		average += (((double)array[i] - average) / (double)(i + 1));
	}

	return average;
}

BOOL containsLongLong(long long const *array, size_t const length, long long needle)
{
	if ( length == 0 ) { return NO; }

	for (size_t i = 0; i < length; ++i)
	{
		if ( array[i] == needle ) { return YES; }
	}

	return NO;
}

double averageUnsignedLongLong(unsigned long long const *array, size_t const length)
{
	if ( length == 0 ) { return 0; }
	double average = (double)array[0];

	for ( size_t i = 1; i < length; ++i)
	{
		average += (((double)array[i] - average) / (double)(i + 1));
	}

	return average;
}

BOOL containsUnsignedLongLong(unsigned long long const *array, size_t const length, unsigned long long needle)
{
	if ( length == 0 ) { return NO; }

	for (size_t i = 0; i < length; ++i)
	{
		if ( array[i] == needle ) { return YES; }
	}

	return NO;
}



@interface CHRandomTests_LongLongs : XCTestCase
@end

@implementation CHRandomTests_LongLongs


- (void)testLongLong
{
	// TODO: [CHRandom randomLongLong];
}

- (void)testLongLongBetweenLowerAndUpperBound
{
	long long array[COUNT];

	// Test Postive Bounds
	{
		for (size_t i = 0; i < COUNT; ++i)
		{
			array[i] = [CHRandom randomLongLongBetweenLower:10 andUpperBound:20];
		}

		double average = averageLongLong(array, COUNT);
		XCTAssertEqualWithAccuracy(average, 15.0, 0.1);
	}

	/// Test Negative Bounds
	{
		for (size_t i = 0; i < COUNT; ++i)
		{
			array[i] = [CHRandom randomLongLongBetweenLower:-10 andUpperBound:-20];
		}

		double average = averageLongLong(array, COUNT);
		XCTAssertEqualWithAccuracy(average, -15.0, 0.1);
	}

	/// Test Crossing Bounds
	{
		for (size_t i = 0; i < COUNT; ++i)
		{
			array[i] = [CHRandom randomLongLongBetweenLower:-10 andUpperBound:10];
		}

		double average = averageLongLong(array, COUNT);
		XCTAssertEqualWithAccuracy(average, 0.0, 0.1);
	}
}


- (void)testUnsignedLongLong
{
	// TODO: [CHRandom randomUnsignedLongLong];
}

- (void)testUnsignedLongLongWithBound
{
	unsigned long long array[COUNT];

	for ( size_t i = 0; i < COUNT; ++i)
	{
		array[i] = [CHRandom randomUnsignedLongLongWithBound:20];
	}

	double average = averageUnsignedLongLong(array, COUNT);
	XCTAssertEqualWithAccuracy(average, 10.0, 0.1);

	XCTAssertTrue(containsUnsignedLongLong(array, COUNT, 20));
	XCTAssertTrue(containsUnsignedLongLong(array, COUNT, 0));

	XCTAssertFalse(containsUnsignedLongLong(array, COUNT, 21));
}

- (void)testUnsignedLongLongBetweenLowerAndUpperBound
{
	unsigned long long array[COUNT];

	for ( size_t i = 0; i < COUNT; ++i)
	{
		array[i] = [CHRandom randomUnsignedLongLongBetweenLower:10 andUpperBound:20];
	}

	double average = averageUnsignedLongLong(array, COUNT);

	XCTAssertEqualWithAccuracy(average, 15.0, 0.1);

	XCTAssertTrue(containsUnsignedLongLong(array, COUNT, 20));
	XCTAssertTrue(containsUnsignedLongLong(array, COUNT, 10));

	XCTAssertFalse(containsUnsignedLongLong(array, COUNT, 21));
	XCTAssertFalse(containsUnsignedLongLong(array, COUNT, 9));
}

@end
