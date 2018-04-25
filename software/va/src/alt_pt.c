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

#include "alt_mmu.h"
#include <stdio.h>
#include <string.h>

/* Determine size of an array */
#define ARRAY_COUNT(array) (sizeof(array) / sizeof(array[0]))

/* MMU Page table - 16KB aligned at 16KB boundary */
static uint32_t __attribute__ ((aligned (0x4000))) alt_pt_storage[4096];

/* Allocate MMU page table */
static void *alt_pt_alloc (const size_t size, void *context)
{
    return context;
}

/* Initialize MMU page tables */
ALT_STATUS_CODE alt_pt_init (void)
{
//     Populate the page table with sections (1 MiB regions). */
    ALT_MMU_MEM_REGION_t regions[] = {
        /* Memory area: 1 GiB */
        {
         .va = (void *) 0x00000000,
         .pa = (void *) 0x00000000,
         .size = 0x40000000,
         .access = ALT_MMU_AP_PRIV_ACCESS,
         .attributes = ALT_MMU_ATTR_WBA,
         .shareable = ALT_MMU_TTB_S_NON_SHAREABLE,
         .execute = ALT_MMU_TTB_XN_DISABLE,
         .security = ALT_MMU_TTB_NS_SECURE},

        /* Device area: Everything else */
        {
         .va = (void *) 0x40000000,
         .pa = (void *) 0x40000000,
         .size = 0xc0000000,
         .access = ALT_MMU_AP_PRIV_ACCESS,
         .attributes = ALT_MMU_ATTR_DEVICE_NS,
         .shareable = ALT_MMU_TTB_S_NON_SHAREABLE,
         .execute = ALT_MMU_TTB_XN_ENABLE,
         .security = ALT_MMU_TTB_NS_SECURE}
    };

    ALT_STATUS_CODE status = ALT_E_SUCCESS;
    uint32_t *ttb1 = NULL;

    if (status == ALT_E_SUCCESS)
    {
        status = alt_mmu_init ();
    }

    if (status == ALT_E_SUCCESS)
    {
        size_t reqsize = alt_mmu_va_space_storage_required (regions,
                                                            ARRAY_COUNT (regions));
        if (reqsize > sizeof (alt_pt_storage))
        {
            status = ALT_E_ERROR;
        }
    }

    if (status == ALT_E_SUCCESS)
    {
        status = alt_mmu_va_space_create (&ttb1, regions, ARRAY_COUNT (regions), alt_pt_alloc, alt_pt_storage);
    }

    if (status == ALT_E_SUCCESS)
    {
        status = alt_mmu_va_space_enable (ttb1);
    }

    return status;
}

/* Cleanup MMU page tables */
ALT_STATUS_CODE alt_pt_uninit (void)
{
    if (alt_mmu_disable () != ALT_E_SUCCESS)
    {
        printf ("DEBUG[PT]: Failure on line %d.\n", __LINE__);
    }

    return ALT_E_SUCCESS;
}
