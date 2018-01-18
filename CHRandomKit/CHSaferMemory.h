//
//	CHSaferMemory.h
//
//	Created by Christian Huxtable <chris@huxtable.ca>, January 2016.
//	Copyright (c) 2016, Christian Huxtable <chris@huxtable.ca>
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

#include <stdlib.h>



#pragma mark Safer Malloc / Calloc

#pragma once

#ifndef _CHSaferMemory
#define _CHSaferMemory

void *CHSaferMalloc(size_t nmemb, size_t size);
void *CHSaferCalloc(size_t nmemb, size_t size);

void CHSaferFree_f(void **mem);
#define CHSaferFree(mem) CHSaferFree_f(&(mem))

void *CHSaferMallocOrExit_traceable(size_t nmemb, size_t size, const char *funcName);
void *CHSaferCallocOrExit_traceable(size_t nmemb, size_t size, const char *funcName);

#define CHSaferMallocOrExit(nmemb, size) CHSaferMallocOrExit_traceable((nmemb), (size), __PRETTY_FUNCTION__)
#define CHSaferCallocOrExit(nmemb, size) CHSaferCallocOrExit_traceable((nmemb), (size), __PRETTY_FUNCTION__)

#endif /* _CHSaferMemory */
