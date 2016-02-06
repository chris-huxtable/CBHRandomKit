//
//  CHRandom.m
//  CHRandomKit
//
//  Created by Christian Huxtable, October 2015.
//  Copyright (c) 2015, Christian Huxtable <chris@huxtable.ca>
//
//	Permission to use, copy, modify, and/or distribute this software for any purpose with or without
//	fee is hereby granted, provided that the above copyright notice and this permission notice
//	appear in all copies.
//
//	THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS
//	SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE
//	AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
//	WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT,
//	NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE
//	OF THIS SOFTWARE.
//

#import "CHRandom.h"

@implementation CHRandom


// Boolean
#pragma mark - Boolean

+ (BOOL)randomBool
{
	int8_t value = 0;
	[self fillBuffer:&value ofSize:sizeof(int8_t)];

	return (0b00000001 & value);
}


// Floating Point
#pragma mark - Floating Point

+ (float)randomFloat
{
	float value = 0.0f;
	[self fillBuffer:&value ofSize:sizeof(float)];

	return (value /= FLT_MAX);
}

+ (CGFloat)randomCGFloat
{
	CGFloat value = 0.0;
	[self fillBuffer:&value ofSize:sizeof(CGFloat)];

	return (value /= CGFLOAT_MAX);
}

+ (double)randomDouble
{
	double value = 0.0;
	[self fillBuffer:&value ofSize:sizeof(double)];

	return (value /= DBL_MAX);
}

+ (long double)randomLongDouble
{
	long double value = 0.0L;
	[self fillBuffer:&value ofSize:sizeof(long double)];

	return (value /= LDBL_MAX);
}


// Char
#pragma mark - Char

+ (char)randomChar
{
	char value = 0;
	[self fillBuffer:&value ofSize:sizeof(char)];

	return value;
}

+ (unsigned char)randomUnsignedChar
{
	unsigned char value = 0;
	[self fillBuffer:&value ofSize:sizeof(unsigned char)];

	return value;
}


#pragma mark -

+ (char)randomCharBetweenLower:(char)lowerBound andUpperBound:(char)upperBound
{
	if ( lowerBound >= upperBound ) { return 0; }

	unsigned char width = (unsigned char)(upperBound - lowerBound - 1);

	if ( width < 2 ) { return 0; }

	return (char)[self randomUnsignedShortWithBound:width] + lowerBound + 1;
}

+ (unsigned char)randomUnsignedCharWithBound:(unsigned char)bound
{
	if ( bound < 2 ) { return 0; }

	unsigned char min = -bound % bound;
	unsigned char r = 0;

	while ( (r = [self randomUnsignedChar]) < min ) { }

	return (r %= bound);
}


// Short
#pragma mark - Short

+ (short)randomShort
{
	short value = 0;
	[self fillBuffer:&value ofSize:sizeof(short)];

	return value;
}

+ (unsigned short)randomUnsignedShort
{
	unsigned short value = 0;
	[self fillBuffer:&value ofSize:sizeof(unsigned short)];

	return value;
}


#pragma mark -

+ (short)randomShortBetweenLower:(short)lowerBound andUpperBound:(short)upperBound
{
	if ( lowerBound >= upperBound ) { return 0; }

	unsigned short width = (unsigned short)(upperBound - lowerBound - 1);

	if ( width < 2 ) { return 0; }

	return (short)[self randomUnsignedShortWithBound:width] + lowerBound + 1;
}

+ (unsigned short)randomUnsignedShortWithBound:(unsigned short)bound
{
	if ( bound < 2 ) { return 0; }

	unsigned short min = -bound % bound;
	unsigned short r = 0;

	while ( (r = [self randomUnsignedShort]) < min ) { }

	return (r %= bound);
}


// Int
#pragma mark - Int

+ (int)randomInt
{
	int value = 0;
	[self fillBuffer:&value ofSize:sizeof(int)];

	return value;
}

+ (unsigned int)randomUnsignedInt
{
	unsigned int value = 0;
	[self fillBuffer:&value ofSize:sizeof(unsigned int)];

	return value;
}


#pragma mark -

+ (int)randomIntBetweenLower:(int)lowerBound andUpperBound:(int)upperBound
{
	if ( lowerBound >= upperBound ) { return 0; }

	unsigned int width = (unsigned int)(upperBound - lowerBound - 1);

	if ( width < 2 ) { return 0; }

	return (int)[self randomUnsignedIntWithBound:width] + lowerBound + 1;
}

+ (unsigned int)randomUnsignedIntWithBound:(unsigned int)bound
{
	if ( bound < 2 ) { return 0; }

	unsigned int min = -bound % bound;
	unsigned int r = 0;

	while ( (r = [self randomUnsignedInt]) < min ) { }

	return (r %= bound);
}


// Integer
#pragma mark - Integer

+ (NSInteger)randomInteger
{
	NSInteger value = 0;
	[self fillBuffer:&value ofSize:sizeof(NSInteger)];

	return value;
}

+ (NSUInteger)randomUnsignedInteger
{
	NSUInteger value = 0;
	[self fillBuffer:&value ofSize:sizeof(NSUInteger)];

	return value;
}


#pragma mark -

+ (NSInteger)randomIntegerBetweenLower:(NSInteger)lowerBound andUpperBound:(NSInteger)upperBound
{
	if ( lowerBound >= upperBound ) { return 0; }

	NSUInteger width = (NSUInteger)(upperBound - lowerBound - 1);

	if ( width < 2 ) { return 0; }

	return (NSInteger)[self randomUnsignedIntegerWithBound:width] + lowerBound + 1;
}


+ (NSUInteger)randomUnsignedIntegerWithBound:(NSUInteger)bound
{
	if ( bound < 2 ) { return 0; }

	NSUInteger min = -bound % bound;
	NSUInteger r = 0;

	while ( (r = [self randomUnsignedInteger]) < min ) { }

	return (r %= bound);
}

+ (NSUInteger)randomUnsignedIntegerInRange:(NSRange)range
{
	if ( range.length > NSUIntegerMax - range.location )
	{
		// Catch Potential Overflow
		range.length = NSUIntegerMax - range.location;
	}

	return [self randomUnsignedIntegerWithBound:range.length] + range.location;
}


// Long
#pragma mark - Long

+ (long)randomLong
{
	return (long)[self randomBytes:sizeof(long)];
}

+ (unsigned long)randomUnsignedLong
{
	unsigned long value = 0;
	[self fillBuffer:&value ofSize:sizeof(unsigned long)];

	return value;
}


#pragma mark -

+ (long)randomLongBetweenLower:(long)lowerBound andUpperBound:(long)upperBound
{
	if ( lowerBound >= upperBound ) { return 0; }

	unsigned long width = (unsigned long)(upperBound - lowerBound - 1);

	if ( width < 2 ) { return 0; }

	return (long)[self randomUnsignedLongWithBound:width] + lowerBound + 1;
}

+ (unsigned long)randomUnsignedLongWithBound:(unsigned long)bound
{
	if ( bound < 2 ) { return 0; }

	unsigned long min = -bound % bound;
	unsigned long r = 0;

	while ( (r = [self randomUnsignedLong]) < min ) { }

	return (r %= bound);
}


// Long Long
#pragma mark - Long Long

+ (long long)randomLongLong
{
	long long value = 0;
	[self fillBuffer:&value ofSize:sizeof(long long)];

	return value;
}

+ (unsigned long long)randomUnsignedLongLong
{
	unsigned long long value = 0;
	[self fillBuffer:&value ofSize:sizeof(unsigned long long)];

	return value;
}


#pragma mark -

+ (long long)randomLongLongBetweenLower:(long long)lowerBound andUpperBound:(long long)upperBound
{
	if ( lowerBound >= upperBound ) { return 0; }

	unsigned long long width = (unsigned long long)(upperBound - lowerBound - 1);

	if ( width < 2 ) { return 0; }

	return (long long)[self randomUnsignedLongWithBound:width] + lowerBound + 1;
}

+ (unsigned long long)randomUnsignedLongLongWithBound:(unsigned long long)bound
{
	if ( bound < 2 ) { return 0; }

	unsigned long long min = -bound % bound;
	unsigned long long r = 0;

	while ( (r = [self randomUnsignedLongLong]) < min ) { }

	return (r %= bound);
}


// Data
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
	void *buf = malloc(size);
	[self fillBuffer:buf ofSize:size];

	return buf;
}


// Buffer
#pragma mark - Buffer

+ (void)fillBuffer:(void *)buffer ofSize:(size_t)size
{
	arc4random_buf(buffer, size);
}

@end
