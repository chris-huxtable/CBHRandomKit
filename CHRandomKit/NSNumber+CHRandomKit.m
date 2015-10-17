//
//  NSNumber+CHRandomKit.m
//  CHRandomKit
//
//  Created by Christian Huxtable, October 2015.
//  Copyright (c) 2015, Christian Huxtable <chris@huxtable.ca>
//
//  Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.
//
//  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
//

#import "NSNumber+CHRandomKit.h"

#import "CHRandom.h"


@implementation NSNumber (CHRandomKit)


// Boolean
#pragma mark - Boolean

+ (instancetype)numberWithRandomBool
{
	return [[[self alloc] initWithRandomBool] autorelease];
}

- (instancetype)initWithRandomBool
{
	return [self initWithBool:[CHRandom randomBool]];
}


// Floating Point
#pragma mark - Floating Point

+ (instancetype)numberWithRandomFloat
{
	return [[[self alloc] initWithRandomFloat] autorelease];
}

- (instancetype)initWithRandomFloat
{
	return [self initWithFloat:[CHRandom randomFloat]];
}


+ (instancetype)numberWithRandomCGFloat
{
	return [[[self alloc] initWithRandomCGFloat] autorelease];
}

- (instancetype)initWithRandomCGFloat
{
	return [self initWithDouble:[CHRandom randomCGFloat]];
}


+ (instancetype)numberWithRandomDouble
{
	return [[[self alloc] initWithRandomDouble] autorelease];
}

- (instancetype)initWithRandomDouble
{
	return [self initWithDouble:[CHRandom randomDouble]];
}


// Char
#pragma mark - Char

+ (instancetype)numberWithRandomChar
{
	return [[[self alloc] initWithRandomChar] autorelease];
}

- (instancetype)initWithRandomChar
{
	return [self initWithChar:[CHRandom randomChar]];
}


+ (instancetype)numberWithRandomUnsignedChar
{
	return [[[self alloc] initWithRandomUnsignedChar] autorelease];
}

- (instancetype)initWithRandomUnsignedChar
{
	return [self initWithUnsignedChar:[CHRandom randomUnsignedChar]];
}


// Short
#pragma mark - Short

+ (instancetype)numberWithRandomShort
{
	return [[[self alloc] initWithRandomShort] autorelease];
}

- (instancetype)initWithRandomShort
{
	return [self initWithShort:[CHRandom randomShort]];
}


+ (instancetype)numberWithRandomUnsignedShort
{
	return [[[self alloc] initWithRandomUnsignedShort] autorelease];
}

- (instancetype)initWithRandomUnsignedShort
{
	return [self initWithUnsignedShort:[CHRandom randomUnsignedShort]];
}


// Int
#pragma mark - Int

+ (instancetype)numberWithRandomInt
{
	return [[[self alloc] initWithRandomInt] autorelease];
}

- (instancetype)initWithRandomInt
{
	return [self initWithInt:[CHRandom randomInt]];
}


+ (instancetype)numberWithRandomUnsignedInt
{
	return [[[self alloc] initWithRandomUnsignedInt] autorelease];
}

- (instancetype)initWithRandomUnsignedInt
{
	return [self initWithUnsignedInt:[CHRandom randomUnsignedInt]];
}


// Integer
#pragma mark - Integer

+ (instancetype)numberWithRandomInteger
{
	return [[[self alloc] initWithRandomInteger] autorelease];
}

- (instancetype)initWithRandomInteger
{
	return [self initWithInteger:[CHRandom randomInteger]];
}


+ (instancetype)numberWithRandomUnsignedInteger
{
	return [[[self alloc] initWithRandomUnsignedInteger] autorelease];
}

- (instancetype)initWithRandomUnsignedInteger
{
	return [self initWithUnsignedInteger:[CHRandom randomUnsignedInteger]];
}


// Long
#pragma mark - Long

+ (instancetype)numberWithRandomLong
{
	return [[[self alloc] initWithRandomLong] autorelease];
}

- (instancetype)initWithRandomLong
{
	return [self initWithLong:[CHRandom randomLong]];
}


+ (instancetype)numberWithRandomUnsignedLong
{
	return [[[self alloc] initWithRandomUnsignedLong] autorelease];
}

- (instancetype)initWithRandomUnsignedLong
{
	return [self initWithUnsignedLong:[CHRandom randomUnsignedLong]];
}


// Long Long
#pragma mark - Long Long

+ (instancetype)numberWithRandomLongLong
{
	return [[[self alloc] initWithRandomLongLong] autorelease];
}

- (instancetype)initWithRandomLongLong
{
	return [self initWithLongLong:[CHRandom randomLongLong]];
}


+ (instancetype)numberWithRandomUnsignedLongLong
{
	return [[[self alloc] initWithRandomUnsignedLongLong] autorelease];
}

- (instancetype)initWithRandomUnsignedLongLong
{
	return [self initWithUnsignedLongLong:[CHRandom randomUnsignedLongLong]];
}

@end
