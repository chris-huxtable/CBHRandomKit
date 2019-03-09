//
//  CBHRandomTests+Bytes.h
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

double averageByte(int8_t const *array, size_t const length);
BOOL containsByte(int8_t const *array, size_t const length, int8_t needle);

double averageUnsignedByte(uint8_t const *array, size_t const length);
BOOL containsUnsignedByte(uint8_t const *array, size_t const length, uint8_t needle);

double averageByte(int8_t const *array, size_t const length)
{
	if ( length == 0 ) { return 0; }
	double average = (double)array[0];

	for ( size_t i = 1; i < length; ++i)
	{
		average += (((double)array[i] - average) / (double)(i + 1));
	}

	return average;
}

BOOL containsByte(int8_t const *array, size_t const length, int8_t needle)
{
	if ( length == 0 ) { return NO; }

	for (size_t i = 0; i < length; ++i)
	{
		if ( array[i] == needle ) { return YES; }
	}

	return NO;
}

double averageUnsignedByte(uint8_t const *array, size_t const length)
{
	if ( length == 0 ) { return 0; }
	double average = (double)array[0];

	for ( size_t i = 1; i < length; ++i)
	{
		average += (((double)array[i] - average) / (double)(i + 1));
	}

	return average;
}

BOOL containsUnsignedByte(uint8_t const *array, size_t const length, uint8_t needle)
{
	if ( length == 0 ) { return NO; }

	for (size_t i = 0; i < length; ++i)
	{
		if ( array[i] == needle ) { return YES; }
	}

	return NO;
}



@interface CBHRandomTests_Bytes : XCTestCase
@end

@implementation CBHRandomTests_Bytes


- (void)testByte
{
	/// Works?
	[CBHRandom randomByte];
}

- (void)testByteBetweenLowerAndUpperBound
{
	int8_t array[COUNT];

	/// Test Postive Bounds
	{
		for (size_t i = 0; i < COUNT; ++i)
		{
			array[i] = [CBHRandom randomByteBetweenLower:10 andUpperBound:20];
		}

		double average = averageByte(array, COUNT);
		XCTAssertEqualWithAccuracy(average, 15.0, 0.1);
	}

	/// Test Negative Bounds
	{
		for (size_t i = 0; i < COUNT; ++i)
		{
			array[i] = [CBHRandom randomByteBetweenLower:-10 andUpperBound:-20];
		}

		double average = averageByte(array, COUNT);
		XCTAssertEqualWithAccuracy(average, -15.0, 0.1);
	}

	/// Test Crossing Bounds
	{
		for (size_t i = 0; i < COUNT; ++i)
		{
			array[i] = [CBHRandom randomByteBetweenLower:-10 andUpperBound:10];
		}

		double average = averageByte(array, COUNT);
		XCTAssertEqualWithAccuracy(average, 0.0, 0.2);
	}
}


- (void)testUnsignedByte
{
	/// Works?
	[CBHRandom randomUnsignedByte];
}

- (void)testUnsignedByteWithBound
{
	uint8_t array[COUNT];

	for ( size_t i = 0; i < COUNT; ++i)
	{
		array[i] = [CBHRandom randomUnsignedByteWithBound:20];
	}

	double average = averageUnsignedByte(array, COUNT);
	XCTAssertEqualWithAccuracy(average, 10.0, 0.2);

	XCTAssertTrue(containsUnsignedByte(array, COUNT, 20));
	XCTAssertTrue(containsUnsignedByte(array, COUNT, 0));

	XCTAssertFalse(containsUnsignedByte(array, COUNT, 21));
}

- (void)testUnsignedByteBetweenLowerAndUpperBound
{
	uint8_t array[COUNT];

	for ( size_t i = 0; i < COUNT; ++i)
	{
		array[i] = [CBHRandom randomUnsignedByteBetweenLower:10 andUpperBound:20];
	}

	double average = averageUnsignedByte(array, COUNT);

	XCTAssertEqualWithAccuracy(average, 15.0, 0.1);

	XCTAssertTrue(containsUnsignedByte(array, COUNT, 20));
	XCTAssertTrue(containsUnsignedByte(array, COUNT, 10));

	XCTAssertFalse(containsUnsignedByte(array, COUNT, 21));
	XCTAssertFalse(containsUnsignedByte(array, COUNT, 9));
}

@end
