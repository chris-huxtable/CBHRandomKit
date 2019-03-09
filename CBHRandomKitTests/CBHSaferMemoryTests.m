//
//  CBHSaferMemoryTests.m
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

#import "CBHSaferMemory.h"


@interface CBHSaferMemoryTests : XCTestCase
@end


@implementation CBHSaferMemoryTests


#pragma mark - malloc

- (void)testMalloc
{
	void *bytes = CBHSaferMalloc(4, sizeof(uint16_t));
	XCTAssertNotEqual(bytes, NULL);
	free(bytes);
}

- (void)testMalloc_overflow
{
	void *bytes = CBHSaferMalloc(SIZE_T_MAX, sizeof(uint64_t));
	XCTAssertEqual(bytes, NULL);
}

- (void)testMalloc_empty
{
	void *bytes = CBHSaferMalloc(0, 0);
	XCTAssertEqual(bytes, NULL);

	bytes = CBHSaferMalloc(1, 0);
	XCTAssertEqual(bytes, NULL);

	bytes = CBHSaferMalloc(0, 1);
	XCTAssertEqual(bytes, NULL);
}

- (void)testMalloc_exit
{
	void *bytes = CBHSaferMallocOrExit(4, sizeof(uint16_t));
	XCTAssertNotEqual(bytes, NULL);
	free(bytes);
}


#pragma mark - calloc

- (void)testCalloc
{
	void *bytes = CBHSaferCalloc(4, sizeof(uint16_t));
	XCTAssertNotEqual(bytes, NULL);
	free(bytes);
}

- (void)testCalloc_overflow
{
	void *bytes = CBHSaferCalloc(SIZE_T_MAX, sizeof(uint64_t));
	XCTAssertEqual(bytes, NULL);
}

- (void)testCalloc_empty
{
	void *bytes = CBHSaferCalloc(0, 0);
	XCTAssertEqual(bytes, NULL);

	bytes = CBHSaferCalloc(1, 0);
	XCTAssertEqual(bytes, NULL);

	bytes = CBHSaferCalloc(0, 1);
	XCTAssertEqual(bytes, NULL);
}

- (void)testCalloc_exit
{
	void *bytes = CBHSaferCallocOrExit(4, sizeof(uint16_t));
	XCTAssertNotEqual(bytes, NULL);
	free(bytes);
}


#pragma mark - free

- (void)testFree
{
	void *bytes = CBHSaferCalloc(4, sizeof(uint16_t));
	XCTAssertNotEqual(bytes, NULL);

	CBHSaferFree(bytes);
	XCTAssertEqual(bytes, NULL);

	CBHSaferFree(bytes);
	XCTAssertEqual(bytes, NULL);
}


@end
