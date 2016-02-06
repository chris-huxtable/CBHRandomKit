//
//  CHSafeMemory.c
//
//  Created by Christian Huxtable <chris@huxtable.ca>, January 2016.
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

#include "CHSafeMemory.h"

#include <stdio.h>



#pragma mark Safe Malloc / Calloc

void* CHSafeMallocf(size_t num, size_t size, const char *funcName)
{
	if ( (num == 0) || (size == 0) )
	{
		fprintf(stderr, "Allocation Failure: empty allocation (%s)\n", funcName);
		exit(EXIT_FAILURE);
	}

	if ( (SIZE_MAX / num) < size)
	{
		fprintf(stderr, "Allocation Failure: overflow (%s)\n", funcName);
		exit(EXIT_FAILURE);
	}

	void *object = malloc(num * size);

	if ( object == NULL )
	{
		fprintf(stderr, "Allocation Failure: malloc failed (%s)\n", funcName);
		exit(EXIT_FAILURE);
	}

	return object;
}

void* CHSafeCallocf(size_t num, size_t size, const char *funcName)
{
	if ( (num == 0) || (size == 0) )
	{
		fprintf(stderr, "Allocation Failure: empty allocation (%s)\n", funcName);
		exit(EXIT_FAILURE);
	}

	void *object = calloc(num, size);

	if ( object == NULL )
	{
		fprintf(stderr, "Allocation Failure: calloc failed (%s)\n", funcName);
		exit(EXIT_FAILURE);
	}

	return object;
}

void CHSafeFreef(void **mem, const char *funcName)
{
	if ( *mem != NULL )
	{
		free(*mem);
		*mem = __DARWIN_NULL;
	}
}
