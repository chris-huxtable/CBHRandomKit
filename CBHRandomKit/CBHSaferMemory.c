//
//  CBHSaferMemory.c
//  CBHRandomKit
//
//  Created by Christian Huxtable <chris@huxtable.ca>, January 2016.
//  Copyright (c) 2016, Christian Huxtable <chris@huxtable.ca>
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

#include "CBHSaferMemory.h"

#include <errno.h>
#include <stdio.h>

#define MUL_NO_OVERFLOW (1UL << (sizeof(size_t) * 4))


#pragma mark - Safer Malloc / Calloc

void *CBHSaferMalloc(size_t nmemb, size_t size)
{
	if ((nmemb >= MUL_NO_OVERFLOW || size >= MUL_NO_OVERFLOW) && nmemb > 0 && (SIZE_MAX / nmemb) < size) {
		errno = ENOMEM;
		return NULL;
	}
	else if ( nmemb <= 0 || size <= 0 )
	{
		errno = ENOMEM;
		return NULL;
	}

	size *= nmemb;
	return malloc(size);
}

void *CBHSaferCalloc(size_t nmemb, size_t size)
{
	if ((nmemb >= MUL_NO_OVERFLOW || size >= MUL_NO_OVERFLOW) && nmemb > 0 && (SIZE_MAX / nmemb) < size) {
		errno = ENOMEM;
		return NULL;
	}
	else if ( nmemb <= 0 || size <= 0 )
	{
		errno = ENOMEM;
		return NULL;
	}

	return calloc(nmemb, size);
}

void CBHSaferFree_f(void **mem)
{
	if ( *mem == NULL || *mem == __DARWIN_NULL ) { return; }

	free(*mem);
	*mem = __DARWIN_NULL;
}

void *CBHSaferMallocOrExit_traceable(size_t nmemb, size_t size, const char *funcName)
{
	void *tmp = CBHSaferMalloc(nmemb, size);
	if (tmp == NULL)
	{
		fprintf(stderr, "Allocation Failure: CBHSaferMallocOrExit failed (%s)\n", funcName);
		exit(EXIT_FAILURE);
	}

	return tmp;
}

void *CBHSaferCallocOrExit_traceable(size_t nmemb, size_t size, const char *funcName)
{
	void *tmp = CBHSaferMalloc(nmemb, size);
	if (tmp == NULL)
	{
		fprintf(stderr, "Allocation Failure: CBHSaferCallocOrExit failed (%s)\n", funcName);
		exit(EXIT_FAILURE);
	}

	return tmp;
}
