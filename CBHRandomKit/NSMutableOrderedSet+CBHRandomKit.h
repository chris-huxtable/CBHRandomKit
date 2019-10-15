//  NSMutableOrderedSet+CBHRandomKit.h
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

/** Adds randomization methods to Mutable Ordered Sets
 *
 * @author              Christian Huxtable <chris@huxtable.ca>
 * @version             1.4
 */
@interface NSMutableOrderedSet<ObjectType> (CBHRandomKit)


#pragma mark - Shuffling

/**
 * @name Shuffling Ordered Sets.
 */

/** Shuffles the order of the receivers elements.
 *
 * @return              The receiver shuffled.
 */
- (NSMutableOrderedSet<ObjectType> *)shuffle;


#pragma mark - Insertion

/**
 * @name Inserting objects into ordered set.
 */

/** Inserts an object at a random index.
 *
 * @param object        The object to insert.
 *
 * @return              The index in which the object was inserted.
 */
- (NSUInteger)insertObjectAtRandomIndex:(ObjectType)object;


#pragma mark - Removal

/**
 * @name Removing objects from array.
 */

/** Removes a random object from the receiver.
 *
 * @return              The object which was removed.
 */
- (nullable ObjectType)removeRandomObject;

@end

NS_ASSUME_NONNULL_END

