//  NSNumber+CBHRandomKit.h
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

@import Foundation.NSValue;


NS_ASSUME_NONNULL_BEGIN

/** Adds randomization methods to Number Objects
 *
 * @author              Christian Huxtable <chris@huxtable.ca>
 * @version             1.3
 */
@interface NSNumber (CBHRandomKit)


#pragma mark - Boolean

/**
 * @name Generating NSNumber's containing boolean values.
 */

/** Generates a NSNumber containing a pseudo-random `BOOL`.
 *
 * @return              A NSNumber containing a pseudo-random `BOOL`.
 */
+ (instancetype)numberWithRandomBool;

/** Generates a NSNumber containing a pseudo-random `BOOL`.
 *
 * @return              A NSNumber containing a pseudo-random `BOOL`.
 */
- (instancetype)initWithRandomBool;


#pragma mark - Floating Point

/**
* @name Generating NSNumber's containing floating point values.
*/

/** Generates a NSNumber containing a pseudo-random `float` between 0.0 and 1.0 inclusive.
 *
 * @return              A NSNumber containing a pseudo-random `float` between 0.0 and 1.0 inclusive.
 */
+ (instancetype)numberWithRandomFloat;

/** Generates a NSNumber containing a pseudo-random `float` between 0.0 and 1.0 inclusive.
 *
 * @return              A NSNumber containing a pseudo-random `float` between 0.0 and 1.0 inclusive.
 */
- (instancetype)initWithRandomFloat;


/** Generates a NSNumber containing a pseudo-random `CGFloat` between 0.0 and 1.0 inclusive.
 *
 * @return              A NSNumber containing a pseudo-random `CGFloat` between 0.0 and 1.0 inclusive.
 */
+ (instancetype)numberWithRandomCGFloat;

/** Generates a NSNumber containing a pseudo-random `CGFloat` between 0.0 and 1.0 inclusive.
 *
 * @return              A NSNumber containing a pseudo-random `CGFloat` between 0.0 and 1.0 inclusive.
 */
- (instancetype)initWithRandomCGFloat;


/** Generates a NSNumber containing a pseudo-random `double` between 0.0 and 1.0 inclusive.
 *
 * @return              A NSNumber containing a pseudo-random `double` between 0.0 and 1.0 inclusive.
 */
+ (instancetype)numberWithRandomDouble;

/** Generates a NSNumber containing a pseudo-random `double` between 0.0 and 1.0 inclusive.
 *
 * @return              A NSNumber containing a pseudo-random `double` between 0.0 and 1.0 inclusive.
 */
- (instancetype)initWithRandomDouble;


#pragma mark - Char

/**
 * @name Generating NSNumber's containing char values.
 */

/** Generates a NSNumber containing a pseudo-random `char`.
 *
 * @return              A NSNumber containing a pseudo-random `char`.
 */
+ (instancetype)numberWithRandomChar;

/** Generates a NSNumber containing a pseudo-random `char`.
 *
 * @return              A NSNumber containing a pseudo-random `char`.
 */
- (instancetype)initWithRandomChar;


#pragma mark - Byte

/**
 * @name Generating NSNumber's containing byte values.
 */

/** Generates a NSNumber containing a pseudo-random `int8_t`.
 *
 * @return              A NSNumber containing a pseudo-random `int8_t`.
 */
+ (instancetype)numberWithRandomByte;

/** Generates a NSNumber containing a pseudo-random `int8_t`.
 *
 * @return              A NSNumber containing a pseudo-random `int8_t`.
 */
- (instancetype)initWithRandomByte;


/** Generates a NSNumber containing a pseudo-random `uint8_t`.
 *
 * @return              A NSNumber containing a pseudo-random `uint8_t`.
 */
+ (instancetype)numberWithRandomUnsignedByte;

/** Generates a NSNumber containing a pseudo-random `uint8_t`.
 *
 * @return              A NSNumber containing a pseudo-random `uint8_t`.
 */
- (instancetype)initWithRandomUnsignedByte;


#pragma mark - Short

/**
 * @name Generating NSNumber's containing short values.
 */

/** Generates a NSNumber containing a pseudo-random `short`.
 *
 * @return              A NSNumber containing a pseudo-random `short`.
 */
+ (instancetype)numberWithRandomShort;

/** Generates a NSNumber containing a pseudo-random `short`.
 *
 * @return              A NSNumber containing a pseudo-random `short`.
 */
- (instancetype)initWithRandomShort;


/** Generates a NSNumber containing a pseudo-random `unsigned short`.
 *
 * @return              A NSNumber containing a pseudo-random `unsigned short`.
 */
+ (instancetype)numberWithRandomUnsignedShort;

/** Generates a NSNumber containing a pseudo-random `unsigned short`.
 *
 * @return              A NSNumber containing a pseudo-random `unsigned short`.
 */
- (instancetype)initWithRandomUnsignedShort;


#pragma mark - Int

/**
 * @name Generating NSNumber's containing int values.
 */

/** Generates a NSNumber containing a pseudo-random `int`.
 *
 * @return              A NSNumber containing a pseudo-random `int`.
 */
+ (instancetype)numberWithRandomInt;

/** Generates a NSNumber containing a pseudo-random `int`.
 *
 * @return              A NSNumber containing a pseudo-random `int`.
 */
- (instancetype)initWithRandomInt;


/** Generates a NSNumber containing a pseudo-random `unsigned int`.
 *
 * @return              A NSNumber containing a pseudo-random `unsigned int`.
 */
+ (instancetype)numberWithRandomUnsignedInt;

/** Generates a NSNumber containing a pseudo-random `unsigned int`.
 *
 * @return              A NSNumber containing a pseudo-random `unsigned int`.
 */
- (instancetype)initWithRandomUnsignedInt;


#pragma mark - Integer

/**
 * @name Generating NSNumber's containing integer values.
 */

/** Generates a NSNumber containing a pseudo-random `NSInteger`.
 *
 * @return              A NSNumber containing a pseudo-random `NSInteger`.
 */
+ (instancetype)numberWithRandomInteger;

/** Generates a NSNumber containing a pseudo-random `NSInteger`.
 *
 * @return              A NSNumber containing a pseudo-random `NSInteger`.
 */
- (instancetype)initWithRandomInteger;


/** Generates a NSNumber containing a pseudo-random `NSUInteger`.
 *
 * @return              A NSNumber containing a pseudo-random `NSUInteger`.
 */
+ (instancetype)numberWithRandomUnsignedInteger;

/** Generates a NSNumber containing a pseudo-random `NSUInteger`.
 *
 * @return              A NSNumber containing a pseudo-random `NSUInteger`.
 */
- (instancetype)initWithRandomUnsignedInteger;


#pragma mark - Long

/**
 * @name Generating NSNumber's containing long values.
 */

/** Generates a NSNumber containing a pseudo-random `long`.
 *
 * @return              A NSNumber containing a pseudo-random `long`.
 */
+ (instancetype)numberWithRandomLong;

/** Generates a NSNumber containing a pseudo-random `long`.
 *
 * @return              A NSNumber containing a pseudo-random `long`.
 */
- (instancetype)initWithRandomLong;


/** Generates a NSNumber containing a pseudo-random `unsigned long`.
 *
 * @return              A NSNumber containing a pseudo-random `unsigned long`.
 */
+ (instancetype)numberWithRandomUnsignedLong;

/** Generates a NSNumber containing a pseudo-random `unsigned long`.
 *
 * @return              A NSNumber containing a pseudo-random `unsigned long`.
 */
- (instancetype)initWithRandomUnsignedLong;


#pragma mark - Long Long

/**
 * @name Generating NSNumber's containing long long values.
 */

/** Generates a NSNumber containing a pseudo-random `long long`.
 *
 * @return              A NSNumber containing a pseudo-random `long long`.
 */
+ (instancetype)numberWithRandomLongLong;

/** Generates a NSNumber containing a pseudo-random `long long`.
 *
 * @return              A NSNumber containing a pseudo-random `long long`.
 */
- (instancetype)initWithRandomLongLong;


/** Generates a NSNumber containing a pseudo-random `unsigned long long`.
 *
 * @return              A NSNumber containing a pseudo-random `unsigned long long`.
 */
+ (instancetype)numberWithRandomUnsignedLongLong;

/** Generates a NSNumber containing a pseudo-random `unsigned long long`.
 *
 * @return              A NSNumber containing a pseudo-random `unsigned long long`.
 */
- (instancetype)initWithRandomUnsignedLongLong;

@end

NS_ASSUME_NONNULL_END
