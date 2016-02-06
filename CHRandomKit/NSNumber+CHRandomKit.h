//
//  NSNumber+CHRandomKit.h
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

#import <Foundation/Foundation.h>

/**
 * @author      Chris Huxtable <chris@huxtable.ca>
 * @version     1.0
 * @since       2015-10-15
 */
@interface NSNumber (CHRandomKit)



#pragma mark - Boolean

///---
/// @name Generating NSNumber's containing boolean values.
///---

/** Generates a NSNumber contianing a pseudo-random `BOOL`.
 * @return		A NSNumber contianing a pseudo-random `BOOL`.
 * @since		Available in version 1.0 and later.
 */
+ (instancetype)numberWithRandomBool;

/** Generates a NSNumber contianing a pseudo-random `BOOL`.
 * @return		A NSNumber contianing a pseudo-random `BOOL`.
 * @since		Available in version 1.0 and later.
 */
- (instancetype)initWithRandomBool;



#pragma mark - Floating Point

///---
/// @name Generating NSNumber's containing floating point values.
///---

/** Generates a NSNumber contianing a pseudo-random `float` between 0.0 and 1.0.
 * @return		A NSNumber contianing a pseudo-random `float` between 0.0 and 1.0.
 * @since		Available in version 1.0 and later.
 */
+ (instancetype)numberWithRandomFloat;

/** Generates a NSNumber contianing a pseudo-random `float` between 0.0 and 1.0.
 * @return		A NSNumber contianing a pseudo-random `float` between 0.0 and 1.0.
 * @since		Available in version 1.0 and later.
 */
- (instancetype)initWithRandomFloat;


/** Generates a NSNumber contianing a pseudo-random `CGFloat` between 0.0 and 1.0.
 * @return		A NSNumber contianing a pseudo-random `CGFloat` between 0.0 and 1.0.
 * @since		Available in version 1.0 and later.
 */
+ (instancetype)numberWithRandomCGFloat;

/** Generates a NSNumber contianing a pseudo-random `CGFloat` between 0.0 and 1.0.
 * @return		A NSNumber contianing a pseudo-random `CGFloat` between 0.0 and 1.0.
 * @since		Available in version 1.0 and later.
 */
- (instancetype)initWithRandomCGFloat;


/** Generates a NSNumber contianing a pseudo-random `double` between 0.0 and 1.0.
 * @return		A NSNumber contianing a pseudo-random `double` between 0.0 and 1.0.
 * @since		Available in version 1.0 and later.
 */
+ (instancetype)numberWithRandomDouble;

/** Generates a NSNumber contianing a pseudo-random `double` between 0.0 and 1.0.
 * @return		A NSNumber contianing a pseudo-random `double` between 0.0 and 1.0.
 * @since		Available in version 1.0 and later.
 */
- (instancetype)initWithRandomDouble;



#pragma mark - Char

///---
/// @name Generating NSNumber's containing char values.
///---

/** Generates a NSNumber contianing a pseudo-random `char`.
 * @return		A NSNumber contianing a pseudo-random `char`.
 * @since		Available in version 1.0 and later.
 */
+ (instancetype)numberWithRandomChar;

/** Generates a NSNumber contianing a pseudo-random `char`.
 * @return		A NSNumber contianing a pseudo-random `char`.
 * @since		Available in version 1.0 and later.
 */
- (instancetype)initWithRandomChar;


/** Generates a NSNumber contianing a pseudo-random `unsigned char`.
 * @return		A NSNumber contianing a pseudo-random `unsigned char`.
 * @since		Available in version 1.0 and later.
 */
+ (instancetype)numberWithRandomUnsignedChar;

/** Generates a NSNumber contianing a pseudo-random `unsigned char`.
 * @return		A NSNumber contianing a pseudo-random `unsigned char`.
 * @since		Available in version 1.0 and later.
 */
- (instancetype)initWithRandomUnsignedChar;



#pragma mark - Short

///---
/// @name Generating NSNumber's containing short values.
///---

/** Generates a NSNumber contianing a pseudo-random `short`.
 * @return		A NSNumber contianing a pseudo-random `short`.
 * @since		Available in version 1.0 and later.
 */
+ (instancetype)numberWithRandomShort;

/** Generates a NSNumber contianing a pseudo-random `short`.
 * @return		A NSNumber contianing a pseudo-random `short`.
 * @since		Available in version 1.0 and later.
 */
- (instancetype)initWithRandomShort;


/** Generates a NSNumber contianing a pseudo-random `unsigned short`.
 * @return		A NSNumber contianing a pseudo-random `unsigned short`.
 * @since		Available in version 1.0 and later.
 */
+ (instancetype)numberWithRandomUnsignedShort;

/** Generates a NSNumber contianing a pseudo-random `unsigned short`.
 * @return		A NSNumber contianing a pseudo-random `unsigned short`.
 * @since		Available in version 1.0 and later.
 */
- (instancetype)initWithRandomUnsignedShort;



#pragma mark - Int

///---
/// @name Generating NSNumber's containing int values.
///---

/** Generates a NSNumber contianing a pseudo-random `int`.
 * @return		A NSNumber contianing a pseudo-random `int`.
 * @since		Available in version 1.0 and later.
 */
+ (instancetype)numberWithRandomInt;

/** Generates a NSNumber contianing a pseudo-random `int`.
 * @return		A NSNumber contianing a pseudo-random `int`.
 * @since		Available in version 1.0 and later.
 */
- (instancetype)initWithRandomInt;


/** Generates a NSNumber contianing a pseudo-random `unsigned int`.
 * @return		A NSNumber contianing a pseudo-random `unsigned int`.
 * @since		Available in version 1.0 and later.
 */
+ (instancetype)numberWithRandomUnsignedInt;

/** Generates a NSNumber contianing a pseudo-random `unsigned int`.
 * @return		A NSNumber contianing a pseudo-random `unsigned int`.
 * @since		Available in version 1.0 and later.
 */
- (instancetype)initWithRandomUnsignedInt;



#pragma mark - Integer

///---
/// @name Generating NSNumber's containing integer values.
///---

/** Generates a NSNumber contianing a pseudo-random `NSInteger`.
 * @return		A NSNumber contianing a pseudo-random `NSInteger`.
 * @since		Available in version 1.0 and later.
 */
+ (instancetype)numberWithRandomInteger;

/** Generates a NSNumber contianing a pseudo-random `NSInteger`.
 * @return		A NSNumber contianing a pseudo-random `NSInteger`.
 * @since		Available in version 1.0 and later.
 */
- (instancetype)initWithRandomInteger;


/** Generates a NSNumber contianing a pseudo-random `NSUInteger`.
 * @return		A NSNumber contianing a pseudo-random `NSUInteger`.
 * @since		Available in version 1.0 and later.
 */
+ (instancetype)numberWithRandomUnsignedInteger;

/** Generates a NSNumber contianing a pseudo-random `NSUInteger`.
 * @return		A NSNumber contianing a pseudo-random `NSUInteger`.
 * @since		Available in version 1.0 and later.
 */
- (instancetype)initWithRandomUnsignedInteger;



#pragma mark - Long

///---
/// @name Generating NSNumber's containing long values.
///---

/** Generates a NSNumber contianing a pseudo-random `long`.
 * @return		A NSNumber contianing a pseudo-random `long`.
 * @since		Available in version 1.0 and later.
 */
+ (instancetype)numberWithRandomLong;

/** Generates a NSNumber contianing a pseudo-random `long`.
 * @return		A NSNumber contianing a pseudo-random `long`.
 * @since		Available in version 1.0 and later.
 */
- (instancetype)initWithRandomLong;


/** Generates a NSNumber contianing a pseudo-random `unsigned long`.
 * @return		A NSNumber contianing a pseudo-random `unsigned long`.
 * @since		Available in version 1.0 and later.
 */
+ (instancetype)numberWithRandomUnsignedLong;

/** Generates a NSNumber contianing a pseudo-random `unsigned long`.
 * @return		A NSNumber contianing a pseudo-random `unsigned long`.
 * @since		Available in version 1.0 and later.
 */
- (instancetype)initWithRandomUnsignedLong;



#pragma mark - Long Long

///---
/// @name Generating NSNumber's containing long long values.
///---

/** Generates a NSNumber contianing a pseudo-random `long long`.
 * @return		A NSNumber contianing a pseudo-random `long long`.
 * @since		Available in version 1.0 and later.
 */
+ (instancetype)numberWithRandomLongLong;

/** Generates a NSNumber contianing a pseudo-random `long long`.
 * @return		A NSNumber contianing a pseudo-random `long long`.
 * @since		Available in version 1.0 and later.
 */
- (instancetype)initWithRandomLongLong;


/** Generates a NSNumber contianing a pseudo-random `unsigned long long`.
 * @return		A NSNumber contianing a pseudo-random `unsigned long long`.
 * @since		Available in version 1.0 and later.
 */
+ (instancetype)numberWithRandomUnsignedLongLong;

/** Generates a NSNumber contianing a pseudo-random `unsigned long long`.
 * @return		A NSNumber contianing a pseudo-random `unsigned long long`.
 * @since		Available in version 1.0 and later.
 */
- (instancetype)initWithRandomUnsignedLongLong;

@end
