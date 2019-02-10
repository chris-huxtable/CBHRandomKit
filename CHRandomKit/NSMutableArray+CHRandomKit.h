//
//	NSMutableArray+CHRandomKit.h
//	CHRandomKit
//
//	Created by Christian Huxtable, October 2015.
//	Copyright (c) 2015, Christian Huxtable <chris@huxtable.ca>
//
//	Permission to use, copy, modify, and/or distribute this software for any
//	purpose with or without fee is hereby granted, provided that the above
//	copyright notice and this permission notice appear in all copies.
//
//	THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
//	WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
//	MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
//	ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
//	WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
//	ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
//	OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
//

@import Foundation;


NS_ASSUME_NONNULL_BEGIN

/**
 * @author      Chris Huxtable <chris@huxtable.ca>
 * @version     1.2
 * @since       2015-10-15
 */
@interface NSMutableArray<ObjectType> (CHRandomKit)


#pragma mark - Shuffling

///---
/// @name Shuffling Arrays.
///---

/** Shuffles the order of its elements.
 * @return		Its self shuffled.
 * @since		Available in version 1.0 and later.
 */
- (NSMutableArray<ObjectType> *)shuffle;


#pragma mark - Insertion

///---
/// @name Inserting objects into array.
///---

/** Inserts an object at a random index.
 * @param object	The object to insert.
 * @return			The index in which the object was inserted.
 * @since			Available in version 1.0 and later.
 */
- (NSUInteger)insertObjectAtRandomIndex:(ObjectType)object;


#pragma mark - Removal

///---
/// @name Removing objects from array.
///---

/** Removes a random object from itself.
 * @return		The object which was removed.
 * @since		Available in version 1.0 and later.
 */
- (ObjectType)removeRandomObject;

@end

NS_ASSUME_NONNULL_END
