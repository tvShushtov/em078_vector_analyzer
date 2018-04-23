#include <hwlib.h>
#include <socal.h>
#include <hps.h>

#include "../include/system.h"
#include "../include/va_sm.h"


void *va_sm = ALT_LWFPGASLVS_ADDR + VA_GEN_SM_BASE;

void va_sm_set_reg(uint8_t addr, uint32_t data) {
	alt_write_word(va_sm, (addr << 24) | (0x0000FFFF & data));
	alt_write_word(va_sm, 0x00);
	alt_write_word(va_sm, ((addr | 0x01) << 24) | (0x0000FFFF & (data>>16)));
	alt_write_word(va_sm, 0x00);
}

void va_sm_run(void) {
	alt_write_word(va_sm, (VASM_ADDR_RUN << 24) | 0x00000001);
	alt_write_word(va_sm, 0x00);
}

void va_sm_init(void) {
	alt_write_word(va_sm, 0x00);
}
