#include <hwlib.h>
#include <socal.h>
#include <hps.h>

#include "../include/system.h"
#include "../include/va_sm.h"

uint64_t NCO_BITS = 2 << (30 - 1);
uint64_t NCO_CLK = 5e7;

void *va_sm = ALT_LWFPGASLVS_ADDR + VA_GEN_SM_BASE;
void *va_data_ready = ALT_LWFPGASLVS_ADDR + VA_DATA_READY_BASE;
void *va_data = ALT_LWFPGASLVS_ADDR + VA_DATAOUT_BASE;

void va_sm_set_reg(uint8_t addr, uint32_t data) {
	alt_write_word(va_sm, (addr << 24) | (0x0000FFFF & data));
	alt_write_word(va_sm, 0x00);
	alt_write_word(va_sm, ((addr | 0x01) << 24) | (0x0000FFFF & (data >> 16)));
	alt_write_word(va_sm, 0x00);
}

void va_sm_run(void) {
	alt_write_word(va_sm, (VASM_ADDR_RUN << 24) | 0x00000001);
	alt_write_word(va_sm, 0x00);
}

void va_sm_init(void) {
	alt_write_word(va_sm, 0x00);
}

void va_sm_ack(void) {
	alt_write_word(va_sm, (VASM_ADDR_ACKNOWLEDG << 24) | 0x00000001);
	alt_write_word(va_sm, 0x00);
}

int32_t va_wait_va_data(void) {
	uint8_t ready_prev = 0;
	uint8_t ready = 0;
	int32_t datain;
	while (true) {
		ready_prev = ready;
		ready = alt_read_byte(va_data_ready);
		if ((ready_prev == 0x00) & (ready == 0x01)) {
			datain = alt_read_word(va_data);
			va_sm_ack();
			break;
		}
	}
	return datain;
}

uint32_t va_nco_freq_calc(uint32_t nco_freq) {
	uint32_t nco_ph = (NCO_BITS * nco_freq) / NCO_CLK;
	return nco_ph;
}

void va_nco_meas(int32_t arr[], uint32_t nco_ph, uint32_t latency) {
	va_sm_set_reg(VASM_ADDR_FREQ, va_nco_freq_calc(nco_ph));
	va_sm_set_reg(VASM_ADDR_LATENCY, latency);
	va_sm_run();
	arr[0] = va_wait_va_data();
	va_sm_ack();
	arr[1] = va_wait_va_data();
}

