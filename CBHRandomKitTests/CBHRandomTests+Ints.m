//
//	CBHRandomTests+Ints.h
//	CBHRandomKit
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

#import "CBHRandomKit/CBHRandom.h"


#define COUNT 1000000


#pragma mark - Functions

double averageInt(int const *array, size_t const length);
BOOL containsInt(int const *array, size_t const length, int needle);

double averageUnsignedInt(unsigned int const *array, size_t const length);
BOOL containsUnsignedInt(unsigned int const *array, size_t const length, unsigned int needle);

double averageInt(int const *array, size_t const length)
{
	if ( length == 0 ) { return 0; }
	double average = (double)array[0];

	for ( size_t i = 1; i < length; ++i)
	{
		average += (((double)array[i] - average) / (double)(i + 1));
	}

	return average;
}

BOOL containsInt(int const *array, size_t const length, int needle)
{
	if ( length == 0 ) { return NO; }

	for (size_t i = 0; i < length; ++i)
	{
		if ( array[i] == needle ) { return YES; }
	}

	return NO;
}

double averageUnsignedInt(unsigned int const *array, size_t const length)
{
	if ( length == 0 ) { return 0; }
	double average = (double)array[0];

	for ( size_t i = 1; i < length; ++i)
	{
		average += (((double)array[i] - average) / (double)(i + 1));
	}

	return average;
}

BOOL containsUnsignedInt(unsigned int const *array, size_t const length, unsigned int needle)
{
	if ( length == 0 ) { return NO; }

	for (size_t i = 0; i < length; ++i)
	{
		if ( array[i] == needle ) { return YES; }
	}

	return NO;
}



@interface CBHRandomTests_Ints : XCTestCase
@end

@implementation CBHRandomTests_Ints


- (void)testInt
{
	// TODO: [CBHRandom randomInt];
}

- (void)testIntBetweenLowerAndUpperBound
{
	int array[COUNT];

	// Test Postive Bounds
	{
		for (size_t i = 0; i < COUNT; ++i)
		{
			array[i] = [CBHRandom randomIntBetweenLower:10 andUpperBound:20];
		}

		double average = averageInt(array, COUNT);
		XCTAssertEqualWithAccuracy(average, 15.0, 0.1);
	}

	/// Test Negative Bounds
	{
		for (size_t i = 0; i < COUNT; ++i)
		{
			array[i] = [CBHRandom randomIntBetweenLower:-10 andUpperBound:-20];
		}

		double average = averageInt(array, COUNT);
		XCTAssertEqualWithAccuracy(average, -15.0, 0.1);
	}

	/// Test Crossing Bounds
	{
		for (size_t i = 0; i < COUNT; ++i)
		{
			array[i] = [CBHRandom randomIntBetweenLower:-10 andUpperBound:10];
		}

		double average = averageInt(array, COUNT);
		XCTAssertEqualWithAccuracy(average, 0.0, 0.1);
	}
}


- (void)testUnsignedInt
{
	// TODO: [CBHRandom randomUnsignedInt];
}

- (void)testUnsignedIntWithBound
{
	unsigned int array[COUNT];

	for ( size_t i = 0; i < COUNT; ++i)
	{
		array[i] = [CBHRandom randomUnsignedIntWithBound:20];
	}

	double average = averageUnsignedInt(array, COUNT);
	XCTAssertEqualWithAccuracy(average, 10.0, 0.1);

	XCTAssertTrue(containsUnsignedInt(array, COUNT, 20));
	XCTAssertTrue(containsUnsignedInt(array, COUNT, 0));

	XCTAssertFalse(containsUnsignedInt(array, COUNT, 21));
}

- (void)testUnsignedIntBetweenLowerAndUpperBound
{
	unsigned int array[COUNT];

	for ( size_t i = 0; i < COUNT; ++i)
	{
		array[i] = [CBHRandom randomUnsignedIntBetweenLower:10 andUpperBound:20];
	}

	double average = averageUnsignedInt(array, COUNT);

	XCTAssertEqualWithAccuracy(average, 15.0, 0.1);

	XCTAssertTrue(containsUnsignedInt(array, COUNT, 20));
	XCTAssertTrue(containsUnsignedInt(array, COUNT, 10));

	XCTAssertFalse(containsUnsignedInt(array, COUNT, 21));
	XCTAssertFalse(containsUnsignedInt(array, COUNT, 9));
}

@end
