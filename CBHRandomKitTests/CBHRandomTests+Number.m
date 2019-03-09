//
//  CBHRandomTests+Number.m
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

#import "CBHRandomKit/NSNumber+CBHRandomKit.h"


@interface CBHRandomTests_Number : XCTestCase
@end


@implementation CBHRandomTests_Number


#pragma mark - Boolean

- (void)testRandomBool
{
	NSNumber *number = [NSNumber numberWithRandomBool];
	XCTAssertNotNil(number, @"Number should not be nil.");
}

#pragma mark - Floating Point

- (void)testRandomFloat
{
	NSNumber *number = [NSNumber numberWithRandomFloat];
	XCTAssertNotNil(number, @"Number should not be nil.");
	XCTAssertNotEqual([number floatValue], 0, @"Number should not (statistically) be zero.");
}

- (void)testRandomCGFloat
{
	NSNumber *number = [NSNumber numberWithRandomCGFloat];
	XCTAssertNotNil(number, @"Number should not be nil.");
	XCTAssertNotEqual([number doubleValue], 0, @"Number should not (statistically) be zero.");
}

- (void)testRandomDouble
{
	NSNumber *number = [NSNumber numberWithRandomDouble];
	XCTAssertNotNil(number, @"Number should not be nil.");
	XCTAssertNotEqual([number doubleValue], 0, @"Number should not (statistically) be zero.");
}


#pragma mark - Char

- (void)testRandomChar
{
	NSNumber *number = [NSNumber numberWithRandomChar];
	XCTAssertNotNil(number, @"Number should not be nil.");
}


#pragma mark - Byte

- (void)testRandomByte
{
	NSNumber *number = [NSNumber numberWithRandomByte];
	XCTAssertNotNil(number, @"Number should not be nil.");
}

- (void)testRandomUnsignedByte
{
	NSNumber *number = [NSNumber numberWithRandomUnsignedByte];
	XCTAssertNotNil(number, @"Number should not be nil.");
}


#pragma mark - Short

- (void)testRandomShort
{
	NSNumber *number = [NSNumber numberWithRandomShort];
	XCTAssertNotNil(number, @"Number should not be nil.");
	XCTAssertNotEqual([number shortValue], 0, @"Number should not (statistically) be zero.");
}

- (void)testRandomUnsignedShort
{
	NSNumber *number = [NSNumber numberWithRandomUnsignedShort];
	XCTAssertNotNil(number, @"Number should not be nil.");
	XCTAssertNotEqual([number unsignedShortValue], 0, @"Number should not (statistically) be zero.");
}


#pragma mark - Int

- (void)testRandomInt
{
	NSNumber *number = [NSNumber numberWithRandomInt];
	XCTAssertNotNil(number, @"Number should not be nil.");
	XCTAssertNotEqual([number intValue], 0, @"Number should not (statistically) be zero.");
}

- (void)testRandomUnsignedInt
{
	NSNumber *number = [NSNumber numberWithRandomUnsignedInt];
	XCTAssertNotNil(number, @"Number should not be nil.");
	XCTAssertNotEqual([number unsignedIntValue], 0, @"Number should not (statistically) be zero.");
}


#pragma mark - Integer

- (void)testRandomInteger
{
	NSNumber *number = [NSNumber numberWithRandomInteger];
	XCTAssertNotNil(number, @"Number should not be nil.");
	XCTAssertNotEqual([number integerValue], 0, @"Number should not (statistically) be zero.");
}

- (void)testRandomUnsignedInteger
{
	NSNumber *number = [NSNumber numberWithRandomUnsignedInteger];
	XCTAssertNotNil(number, @"Number should not be nil.");
	XCTAssertNotEqual([number unsignedIntegerValue], 0, @"Number should not (statistically) be zero.");
}


#pragma mark - Long

- (void)testRandomLong
{
	NSNumber *number = [NSNumber numberWithRandomLong];
	XCTAssertNotNil(number, @"Number should not be nil.");
	XCTAssertNotEqual([number longLongValue], 0, @"Number should not (statistically) be zero.");
}

- (void)testRandomUnsignedLong
{
	NSNumber *number = [NSNumber numberWithRandomUnsignedLong];
	XCTAssertNotNil(number, @"Number should not be nil.");
	XCTAssertNotEqual([number unsignedLongValue], 0, @"Number should not (statistically) be zero.");
}


#pragma mark - Long Long

- (void)testRandomLongLong
{
	NSNumber *number = [NSNumber numberWithRandomLongLong];
	XCTAssertNotNil(number, @"Number should not be nil.");
	XCTAssertNotEqual([number longLongValue], 0, @"Number should not (statistically) be zero.");
}

- (void)testRandomUnsignedLongLong
{
	NSNumber *number = [NSNumber numberWithRandomUnsignedLongLong];
	XCTAssertNotNil(number, @"Number should not be nil.");
	XCTAssertNotEqual([number unsignedLongLongValue], 0, @"Number should not (statistically) be zero.");
}

@end
