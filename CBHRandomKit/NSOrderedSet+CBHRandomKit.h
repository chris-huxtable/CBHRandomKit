//  NSOrderedSet+CBHRandomKit.h
//  CBHRandomKit
//
//  Created by Christian Huxtable, July 2019.
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

@import Foundation.NSOrderedSet;


NS_ASSUME_NONNULL_BEGIN

/** Adds randomization methods to Ordered Sets
 *
 * @author              Christian Huxtable <chris@huxtable.ca>
 * @version             1.4
 */
@interface NSOrderedSet<ObjectType> (CBHRandomKit)


#pragma mark - Shuffling

/**
 * @name Shuffling an Ordered Set.
 */

/** Creates a new shuffled copy of the receiver.
 *
 * @return              A new shuffled copy of the receiver.
 */
- (NSOrderedSet<ObjectType> *)orderedSetByShuffling;


#pragma mark - Accessors

/**
 * @name Accessing random entries.
 */

/** Returns a random element from the receiver.
 *
 * @return              A random element from the receiver.
 */
- (nullable ObjectType)randomObject;

@end

NS_ASSUME_NONNULL_END
