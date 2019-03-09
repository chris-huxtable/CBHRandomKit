//
//  CBHRandomTests+Floats.h
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

double average_float(float const *array, size_t length);
double average_double(double const *array, size_t length);
CGFloat average_cgfloat(CGFloat const *array, size_t const length);


double average_float(float const *array, size_t const length)
{
	if ( length == 0 ) { return 0; }
	double average = (double)array[0];

	for ( size_t i = 1; i < length; ++i)
	{
		average += (((double)array[i] - average) / (double)(i + 1));
	}

	return average;
}

double average_double(double const *array, size_t const length)
{
	if ( length == 0 ) { return 0; }
	double average = (double)array[0];

	for ( size_t i = 1; i < length; ++i)
	{
		average += (((double)array[i] - average) / (double)(i + 1));
	}

	return average;
}

CGFloat average_cgfloat(CGFloat const *array, size_t const length)
{
	if ( length == 0 ) { return 0; }
	CGFloat average = (CGFloat)array[0];

	for ( size_t i = 1; i < length; ++i)
	{
		average += (((CGFloat)array[i] - average) / (CGFloat)(i + 1));
	}

	return average;
}


@interface CBHRandomTests_Floats : XCTestCase
@end


@implementation CBHRandomTests_Floats


- (void)testFloat
{
	float array[COUNT];

	for (size_t i = 0; i < COUNT; ++i)
	{
		array[i] = [CBHRandom randomFloat];
	}

	double average = average_float(array, COUNT);
	XCTAssertEqualWithAccuracy(average, 0.5, 0.1);
}

- (void)testDouble
{
	double array[COUNT];

	for (size_t i = 0; i < COUNT; ++i)
	{
		array[i] = [CBHRandom randomDouble];
	}

	double average = average_double(array, COUNT);
	XCTAssertEqualWithAccuracy(average, 0.5, 0.1);
}

- (void)testCGFloat
{
	CGFloat array[COUNT];

	for (size_t i = 0; i < COUNT; ++i)
	{
		array[i] = [CBHRandom randomCGFloat];
	}

	CGFloat average = average_cgfloat(array, COUNT);
	XCTAssertEqualWithAccuracy(average, 0.5, 0.1);
}

@end
