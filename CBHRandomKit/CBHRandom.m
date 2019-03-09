//
//  CBHRandom.m
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
//

#import "CBHRandom.h"
#import "CBHSaferMemory.h"


#define SWAP(T, a, b) do { T tmp = a; a = b; b = tmp; } while (0)
#define MODULO_BIAS_UNSIGNED_MIN(T, S, bound) (T)(-(S)bound % (S)bound);


@implementation CBHRandom


#pragma mark - Boolean

+ (BOOL)randomBool
{
	int8_t value = 0;
	[self fillBuffer:&value ofSize:sizeof(int8_t)];

	return (0x01 & value);
}


#pragma mark - Floating Point

+ (float)randomFloat
{
	uint32_t value = 0.0L;
	[self fillBuffer:&value ofSize:sizeof(uint32_t)];
	
	return ((float)value / (float)0xFFFFFFFF);
}

+ (CGFloat)randomCGFloat
{
	#ifdef CGFLOAT_IS_DOUBLE
		return [self randomDouble];
	#else
		return [self randomFloat];
	#endif
}

+ (double)randomDouble
{
	uint64_t value = 0.0L;
	[self fillBuffer:&value ofSize:sizeof(uint64_t)];

	return ((double)value / (double)0xFFFFFFFFFFFFFFFF);
}


#pragma mark - Char

+ (char)randomChar
{
	return (char)[self randomByte];
}

+ (char)randomCharBetweenLower:(char)lowerBound andUpperBound:(char)upperBound
{
	if ( lowerBound == upperBound ) { return lowerBound; }
	if ( lowerBound > upperBound ) { SWAP(char, lowerBound, upperBound); }

	unsigned char width = (unsigned char)(upperBound - lowerBound);
	return (char)[self randomUnsignedByteWithBound:width] + lowerBound;
}


#pragma mark - Byte

+ (int8_t)randomByte
{
	int8_t value = 0;
	[self fillBuffer:&value ofSize:sizeof(int8_t)];

	return value;
}

+ (int8_t)randomByteBetweenLower:(int8_t)lowerBound andUpperBound:(int8_t)upperBound
{
	if ( lowerBound == upperBound ) { return lowerBound; }
	if ( lowerBound > upperBound ) { SWAP(int8_t, lowerBound, upperBound); }

	uint8_t width = (uint8_t)(upperBound - lowerBound);
	return (int8_t)[self randomUnsignedByteWithBound:width] + lowerBound;
}


+ (uint8_t)randomUnsignedByte
{
	uint8_t value = 0;
	[self fillBuffer:&value ofSize:sizeof(uint8_t)];

	return value;
}

+ (uint8_t)randomUnsignedByteWithBound:(uint8_t)bound
{
	if ( bound < 1 ) { return 0; }
	++bound;

	uint8_t min = MODULO_BIAS_UNSIGNED_MIN(uint8_t, int8_t, bound);
	uint8_t r = 0;

	/// Recalculate if result has modulo-bias
	while ( (r = [self randomUnsignedByte]) < min ) { }

	return (r %= bound);
}

+ (uint8_t)randomUnsignedByteBetweenLower:(uint8_t)lowerBound andUpperBound:(uint8_t)upperBound
{
	if ( lowerBound == upperBound ) { return lowerBound; }
	if ( lowerBound > upperBound ) { SWAP(uint8_t, lowerBound, upperBound); }

	uint8_t width = (uint8_t)(upperBound - lowerBound);
	return [self randomUnsignedByteWithBound:width] + lowerBound;
}



#pragma mark - Short

+ (short)randomShort
{
	short value = 0;
	[self fillBuffer:&value ofSize:sizeof(short)];

	return value;
}

+ (short)randomShortBetweenLower:(short)lowerBound andUpperBound:(short)upperBound
{
	if ( lowerBound == upperBound ) { return lowerBound; }
	if ( lowerBound > upperBound ) { SWAP(short, lowerBound, upperBound); }

	unsigned short width = (unsigned short)(upperBound - lowerBound);
	return (short)[self randomUnsignedShortWithBound:width] + lowerBound;
}


+ (unsigned short)randomUnsignedShort
{
	unsigned short value = 0;
	[self fillBuffer:&value ofSize:sizeof(unsigned short)];

	return value;
}

+ (unsigned short)randomUnsignedShortWithBound:(unsigned short)bound
{
	if ( bound < 1 ) { return 0; }
	++bound;

	unsigned short min = MODULO_BIAS_UNSIGNED_MIN(unsigned short, short, bound);
	unsigned short r = 0;

	/// Recalculate if result has modulo-bias
	while ( (r = [self randomUnsignedShort]) < min ) { }

	return (r %= bound);
}

+ (unsigned short)randomUnsignedShortBetweenLower:(unsigned short)lowerBound andUpperBound:(unsigned short)upperBound
{
	if ( lowerBound == upperBound ) { return lowerBound; }
	if ( lowerBound > upperBound ) { SWAP(unsigned short, lowerBound, upperBound); }

	unsigned short width = (unsigned short)(upperBound - lowerBound);
	return [self randomUnsignedShortWithBound:width] + lowerBound;
}


#pragma mark - Int

+ (int)randomInt
{
	int value = 0;
	[self fillBuffer:&value ofSize:sizeof(int)];

	return value;
}

+ (int)randomIntBetweenLower:(int)lowerBound andUpperBound:(int)upperBound
{
	if ( lowerBound == upperBound ) { return lowerBound; }
	if ( lowerBound > upperBound ) { SWAP(int, lowerBound, upperBound); }

	unsigned int width = (unsigned int)(upperBound - lowerBound);
	return (int)[self randomUnsignedIntWithBound:width] + lowerBound;
}


+ (unsigned int)randomUnsignedInt
{
	unsigned int value = 0;
	[self fillBuffer:&value ofSize:sizeof(unsigned int)];

	return value;
}

+ (unsigned int)randomUnsignedIntWithBound:(unsigned int)bound
{
	if ( bound < 1 ) { return 0; }
	++bound;

	unsigned int min = MODULO_BIAS_UNSIGNED_MIN(unsigned int, int, bound);
	unsigned int r = 0;

	/// Recalculate if result has modulo-bias
	while ( (r = [self randomUnsignedInt]) < min ) { }

	return (r %= bound);
}

+ (unsigned int)randomUnsignedIntBetweenLower:(unsigned int)lowerBound andUpperBound:(unsigned int)upperBound
{
	if ( lowerBound == upperBound ) { return lowerBound; }
	if ( lowerBound > upperBound ) { SWAP(unsigned int, lowerBound, upperBound); }

	unsigned int width = (unsigned int)(upperBound - lowerBound);
	return [self randomUnsignedIntWithBound:width] + lowerBound;
}


#pragma mark - Integer

+ (NSInteger)randomInteger
{
	NSInteger value = 0;
	[self fillBuffer:&value ofSize:sizeof(NSInteger)];

	return value;
}

+ (NSInteger)randomIntegerBetweenLower:(NSInteger)lowerBound andUpperBound:(NSInteger)upperBound
{
	if ( lowerBound == upperBound ) { return lowerBound; }
	if ( lowerBound > upperBound ) { SWAP(NSInteger, lowerBound, upperBound); }

	NSUInteger width = (NSUInteger)(upperBound - lowerBound);
	return (NSInteger)[self randomUnsignedIntegerWithBound:width] + lowerBound;
}


+ (NSUInteger)randomUnsignedInteger
{
	NSUInteger value = 0;
	[self fillBuffer:&value ofSize:sizeof(NSUInteger)];

	return value;
}

+ (NSUInteger)randomUnsignedIntegerWithBound:(NSUInteger)bound
{
	if ( bound < 1 ) { return 0; }
	++bound;

	NSUInteger min = MODULO_BIAS_UNSIGNED_MIN(NSUInteger, NSInteger, bound);
	NSUInteger r = 0;

	/// Recalculate if result has modulo-bias
	while ( (r = [self randomUnsignedInteger]) < min ) { }

	return (r %= bound);
}

+ (NSUInteger)randomUnsignedIntegerBetweenLower:(NSUInteger)lowerBound andUpperBound:(NSUInteger)upperBound
{
	if ( lowerBound == upperBound ) { return lowerBound; }
	if ( lowerBound > upperBound ) { SWAP(NSUInteger, lowerBound, upperBound); }

	NSUInteger width = (NSUInteger)(upperBound - lowerBound);
	return [self randomUnsignedIntegerWithBound:width] + lowerBound;
}

+ (NSUInteger)randomUnsignedIntegerInRange:(NSRange)range
{
	/// Catch Potential Overflow
	if ( range.length > NSUIntegerMax - range.location )
	{
		range.length = NSUIntegerMax - range.location;
	}

	return [self randomUnsignedIntegerWithBound:range.length] + range.location;
}


#pragma mark - Long

+ (long)randomLong
{
	return (long)[self randomBytes:sizeof(long)];
}

+ (long)randomLongBetweenLower:(long)lowerBound andUpperBound:(long)upperBound
{
	if ( lowerBound == upperBound ) { return lowerBound; }
	if ( lowerBound > upperBound ) { SWAP(long, lowerBound, upperBound); }

	unsigned long width = (unsigned long)(upperBound - lowerBound);
	return (long)[self randomUnsignedLongWithBound:width] + lowerBound;
}


+ (unsigned long)randomUnsignedLong
{
	unsigned long value = 0;
	[self fillBuffer:&value ofSize:sizeof(unsigned long)];

	return value;
}

+ (unsigned long)randomUnsignedLongWithBound:(unsigned long)bound
{
	if ( bound < 1 ) { return 0; }
	++bound;

	unsigned long min = MODULO_BIAS_UNSIGNED_MIN(unsigned long, long, bound);
	unsigned long r = 0;

	/// Recalculate if result has modulo-bias
	while ( (r = [self randomUnsignedLong]) < min ) { }

	return (r %= bound);
}

+ (unsigned long)randomUnsignedLongBetweenLower:(unsigned long)lowerBound andUpperBound:(unsigned long)upperBound
{
	if ( lowerBound == upperBound ) { return lowerBound; }
	if ( lowerBound > upperBound ) { SWAP(unsigned long, lowerBound, upperBound); }

	unsigned long width = (unsigned long)(upperBound - lowerBound);
	return [self randomUnsignedLongWithBound:width] + lowerBound;
}


#pragma mark - Long Long

+ (long long)randomLongLong
{
	long long value = 0;
	[self fillBuffer:&value ofSize:sizeof(long long)];

	return value;
}

+ (long long)randomLongLongBetweenLower:(long long)lowerBound andUpperBound:(long long)upperBound
{
	if ( lowerBound == upperBound ) { return lowerBound; }
	if ( lowerBound > upperBound ) { SWAP(long long, lowerBound, upperBound); }

	unsigned long long width = (unsigned long long)(upperBound - lowerBound);
	return (long long)[self randomUnsignedLongWithBound:width] + lowerBound;
}


+ (unsigned long long)randomUnsignedLongLong
{
	unsigned long long value = 0;
	[self fillBuffer:&value ofSize:sizeof(unsigned long long)];

	return value;
}

+ (unsigned long long)randomUnsignedLongLongWithBound:(unsigned long long)bound
{
	if ( bound < 1 ) { return 0; }
	++bound;

	unsigned long long min = MODULO_BIAS_UNSIGNED_MIN(unsigned long long, long long, bound);
	unsigned long long r = 0;

	/// Recalculate if result has modulo-bias
	while ( (r = [self randomUnsignedLongLong]) < min ) { }

	return (r %= bound);
}

+ (unsigned long long)randomUnsignedLongLongBetweenLower:(unsigned long long)lowerBound andUpperBound:(unsigned long long)upperBound
{
	if ( lowerBound == upperBound ) { return lowerBound; }
	if ( lowerBound > upperBound ) { SWAP(unsigned long long, lowerBound, upperBound); }

	unsigned long long width = (unsigned long long)(upperBound - lowerBound);
	return [self randomUnsignedLongWithBound:width] + lowerBound;
}


#pragma mark - Data

+ (NSData *)randomDataOfLength:(NSUInteger)length
{
	return [NSData dataWithBytesNoCopy:[self randomBytes:length] length:length];
}

+ (NSMutableData *)randomMutableDataOfLength:(NSUInteger)length
{
	return [NSMutableData dataWithBytesNoCopy:[self randomBytes:length] length:length];
}

+ (void *)randomBytes:(size_t)size
{
	void *buffer = CBHSaferCallocOrExit(size, 1);
	arc4random_buf(buffer, size);

	return buffer;
}


#pragma mark - Buffer

+ (void)fillBuffer:(void *)buffer ofSize:(size_t)size
{
	arc4random_buf(buffer, size);
}

@end
