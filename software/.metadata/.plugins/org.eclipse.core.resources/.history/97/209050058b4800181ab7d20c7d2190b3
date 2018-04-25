/******************************************************************************
*
* Copyright 2017 Intel Corporation. All Rights Reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
*
* 1. Redistributions of source code must retain the above copyright notice,
* this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright notice,
* this list of conditions and the following disclaimer in the documentation
* and/or other materials provided with the distribution.
*
* 3. The name of the author may not be used to endorse or promote products
* derived from this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDER "AS IS" AND ANY EXPRESS OR
* IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
* MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, ARE DISCLAIMED. IN NO
* EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
* EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
* OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
* INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
* CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
* IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
* OF SUCH DAMAGE.
*
******************************************************************************/

#include "../include/pio.h"
#include "socal/socal.h"

#define PIO_DATA_OFFS 		(0 * sizeof(uint32_t))
#define PIO_DIR_OFFS 		(1 * sizeof(uint32_t))
#define PIO_INTMASK_OFFS 	(2 * sizeof(uint32_t))
#define PIO_EDGECAPT_OFFS 	(3 * sizeof(uint32_t))
#define PIO_OUTSET_OFFS 	(4 * sizeof(uint32_t))
#define PIO_OUTCLR_OFFS 	(5 * sizeof(uint32_t))

uint32_t pio_get_data (uint32_t base)
{
    return alt_read_word (base + PIO_DATA_OFFS);
}

void pio_set_data (uint32_t base, uint32_t value)
{
    alt_write_word (base + PIO_DATA_OFFS, value);
}

uint32_t pio_get_dir (uint32_t base)
{
    return alt_read_word (base + PIO_DIR_OFFS);
}

void pio_set_dir (uint32_t base, uint32_t value)
{
    alt_write_word (base + PIO_DIR_OFFS, value);
}

uint32_t pio_get_intmask (uint32_t base)
{
    return alt_read_word (base + PIO_INTMASK_OFFS);
}

void pio_set_intmask (uint32_t base, uint32_t value)
{
    alt_write_word (base + PIO_INTMASK_OFFS, value);
}

uint32_t pio_get_edgecapt (uint32_t base)
{
    return alt_read_word (base + PIO_EDGECAPT_OFFS);
}

void pio_set_edgecapt (uint32_t base, uint32_t value)
{
    alt_write_word (base + PIO_EDGECAPT_OFFS, value);
}

void pio_set_pins (uint32_t base, uint32_t mask)
{
    alt_write_word (base + PIO_OUTSET_OFFS, mask);
}

void pio_clr_pins (uint32_t base, uint32_t mask)
{
    alt_write_word (base + PIO_OUTCLR_OFFS, mask);
}
