//  CBHRandomTests+Data.m
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

@import XCTest;

@import CBHRandomKit.CBHRandom;


@interface CBHRandomTests_Data : XCTestCase
@end


@implementation CBHRandomTests_Data

- (void)testData
{
	NSData *data = [CBHRandom randomDataOfLength:1024];

	XCTAssertNotNil(data, @"Data should not be nil.");
	XCTAssertEqual([data length], 1024, @"Data length should be 1024 bytes");

	NSData *emptyData = [[NSMutableData dataWithLength:1024] copy];
	XCTAssertNotEqualObjects(data, emptyData, @"Data should not be empty");
}

- (void)testMutableData
{
	NSMutableData *data = [CBHRandom randomMutableDataOfLength:1024];

	XCTAssertNotNil(data, @"Data should not be nil.");
	XCTAssertEqual([data length], 1024, @"Data length should be 1024 bytes");

	NSData *emptyData = [NSMutableData dataWithLength:1024];
	XCTAssertNotEqualObjects(data, emptyData, @"Data should not be empty");
}

- (void)testBytes
{
	uint32_t buffer[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
	[CBHRandom fillBuffer:buffer ofSize:sizeof(uint32_t) * 10];

	XCTAssertNotEqual(buffer[0], 0, @"Bytes should not be empty");
	XCTAssertNotEqual(buffer[1], 0, @"Bytes should not be empty");
	XCTAssertNotEqual(buffer[2], 0, @"Bytes should not be empty");
	XCTAssertNotEqual(buffer[3], 0, @"Bytes should not be empty");
	XCTAssertNotEqual(buffer[4], 0, @"Bytes should not be empty");
	XCTAssertNotEqual(buffer[5], 0, @"Bytes should not be empty");
	XCTAssertNotEqual(buffer[6], 0, @"Bytes should not be empty");
	XCTAssertNotEqual(buffer[7], 0, @"Bytes should not be empty");
	XCTAssertNotEqual(buffer[8], 0, @"Bytes should not be empty");
	XCTAssertNotEqual(buffer[9], 0, @"Bytes should not be empty");

}

@end
