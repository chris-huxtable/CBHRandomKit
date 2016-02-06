//
//	CHSafeMemory.h
//
//	Created by Christian Huxtable <chris@huxtable.ca>, January 2016.
//	Copyright (c) 2016, Christian Huxtable <chris@huxtable.ca>
//
//	Permission to use, copy, modify, and/or distribute this software for any
//	purpose with or without fee is hereby granted, provided that the above
//	copyright notice and this permission notice appear in all copies.

//	THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
//	WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
//	MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
//	ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
//	WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
//	ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
//	OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
//

#include <stdlib.h>



#pragma mark Safe Malloc / Calloc

#pragma once

#ifndef _CHSafeMemory
#define _CHSafeMemory

void* CHSafeMallocf(size_t num, size_t size, const char *funcName);
void* CHSafeCallocf(size_t num, size_t size, const char *funcName);

void CHSafeFreef(void **mem, const char *funcName);

#define CHSafeMalloc(num, size) CHSafeMallocf((num), (size), __PRETTY_FUNCTION__)
#define CHSafeCalloc(num, size) CHSafeCallocf((num), (size), __PRETTY_FUNCTION__)

#define CHSafeFree(mem) CHSafeFreef(&(mem), __PRETTY_FUNCTION__)

#endif /* _CHSafeMemory */
