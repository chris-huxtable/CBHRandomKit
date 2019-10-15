//  NSNumber+CBHRandomKit.m
//  CBHRandomKit
//
//  Created by Christian Huxtable, October 2015.
//  Copyright (c) 2015, Christian Huxtable <chris@huxtable.ca>
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

#import "NSNumber+CBHRandomKit.h"

#import "CBHRandom.h"


@implementation NSNumber (CBHRandomKit)


#pragma mark - Boolean

+ (instancetype)numberWithRandomBool
{
	return [[self alloc] initWithRandomBool];
}

- (instancetype)initWithRandomBool
{
	return [self initWithBool:[CBHRandom randomBool]];
}


#pragma mark - Floating Point

+ (instancetype)numberWithRandomFloat
{
	return [[self alloc] initWithRandomFloat];
}

- (instancetype)initWithRandomFloat
{
	return [self initWithFloat:[CBHRandom randomFloat]];
}


+ (instancetype)numberWithRandomCGFloat
{
	return [[self alloc] initWithRandomCGFloat];
}

- (instancetype)initWithRandomCGFloat
{
	return [self initWithDouble:[CBHRandom randomCGFloat]];
}


+ (instancetype)numberWithRandomDouble
{
	return [[self alloc] initWithRandomDouble];
}

- (instancetype)initWithRandomDouble
{
	return [self initWithDouble:[CBHRandom randomDouble]];
}


#pragma mark - Char

+ (instancetype)numberWithRandomChar
{
	return [[self alloc] initWithRandomChar];
}

- (instancetype)initWithRandomChar
{
	return [self initWithChar:[CBHRandom randomChar]];
}


#pragma mark - Byte

+ (instancetype)numberWithRandomByte
{
	return [[self alloc] initWithRandomByte];
}

- (instancetype)initWithRandomByte
{
	return [self initWithChar:(char)[CBHRandom randomByte]];
}


+ (instancetype)numberWithRandomUnsignedByte
{
	return [[self alloc] initWithRandomUnsignedByte];
}

- (instancetype)initWithRandomUnsignedByte
{
	return [self initWithUnsignedChar:[CBHRandom randomUnsignedByte]];
}


#pragma mark - Short

+ (instancetype)numberWithRandomShort
{
	return [[self alloc] initWithRandomShort];
}

- (instancetype)initWithRandomShort
{
	return [self initWithShort:[CBHRandom randomShort]];
}


+ (instancetype)numberWithRandomUnsignedShort
{
	return [[self alloc] initWithRandomUnsignedShort];
}

- (instancetype)initWithRandomUnsignedShort
{
	return [self initWithUnsignedShort:[CBHRandom randomUnsignedShort]];
}


#pragma mark - Int

+ (instancetype)numberWithRandomInt
{
	return [[self alloc] initWithRandomInt];
}

- (instancetype)initWithRandomInt
{
	return [self initWithInt:[CBHRandom randomInt]];
}


+ (instancetype)numberWithRandomUnsignedInt
{
	return [[self alloc] initWithRandomUnsignedInt];
}

- (instancetype)initWithRandomUnsignedInt
{
	return [self initWithUnsignedInt:[CBHRandom randomUnsignedInt]];
}


#pragma mark - Integer

+ (instancetype)numberWithRandomInteger
{
	return [[self alloc] initWithRandomInteger];
}

- (instancetype)initWithRandomInteger
{
	return [self initWithInteger:[CBHRandom randomInteger]];
}


+ (instancetype)numberWithRandomUnsignedInteger
{
	return [[self alloc] initWithRandomUnsignedInteger];
}

- (instancetype)initWithRandomUnsignedInteger
{
	return [self initWithUnsignedInteger:[CBHRandom randomUnsignedInteger]];
}


#pragma mark - Long

+ (instancetype)numberWithRandomLong
{
	return [[self alloc] initWithRandomLong];
}

- (instancetype)initWithRandomLong
{
	return [self initWithLong:[CBHRandom randomLong]];
}


+ (instancetype)numberWithRandomUnsignedLong
{
	return [[self alloc] initWithRandomUnsignedLong];
}

- (instancetype)initWithRandomUnsignedLong
{
	return [self initWithUnsignedLong:[CBHRandom randomUnsignedLong]];
}


#pragma mark - Long Long

+ (instancetype)numberWithRandomLongLong
{
	return [[self alloc] initWithRandomLongLong];
}

- (instancetype)initWithRandomLongLong
{
	return [self initWithLongLong:[CBHRandom randomLongLong]];
}


+ (instancetype)numberWithRandomUnsignedLongLong
{
	return [[self alloc] initWithRandomUnsignedLongLong];
}

- (instancetype)initWithRandomUnsignedLongLong
{
	return [self initWithUnsignedLongLong:[CBHRandom randomUnsignedLongLong]];
}

@end
