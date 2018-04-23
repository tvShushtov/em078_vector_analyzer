#include <assert.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include <hwlib.h>
#include <alt_generalpurpose_io.h>
#include <alt_16550_uart.h>
#include <alt_gpio.h>
#include <socal.h>
#include <hps.h>

#include "../include/system.h"
#include "../include/va_sm.h"


void *fpga_leds = ALT_LWFPGASLVS_ADDR + LED_PIO_BASE;


void uart_init() {
	ALT_STATUS_CODE ALT_RESULT = ALT_E_SUCCESS;
	ALT_16550_HANDLE_t uart;

	ALT_RESULT = alt_clk_is_enabled(ALT_CLK_L4_SP);
	if (ALT_RESULT == ALT_E_FALSE)
		ALT_RESULT = alt_clk_clock_enable(ALT_CLK_L4_SP);
	ALT_RESULT = alt_16550_init(ALT_16550_DEVICE_SOCFPGA_UART0, NULL, 0, &uart);
	ALT_RESULT = alt_16550_baudrate_set(&uart, 115200);
	ALT_RESULT = alt_16550_line_config_set(&uart, ALT_16550_DATABITS_8,
			ALT_16550_PARITY_DISABLE, ALT_16550_STOPBITS_1);
	ALT_RESULT = alt_16550_fifo_enable(&uart);
	ALT_RESULT = alt_16550_enable(&uart);
}

void setup_fpga_leds() {
	// Switch on first LED only
	alt_write_word(fpga_leds, 0x1);
}

void handle_fpga_leds() {
	uint32_t leds_mask = alt_read_word(fpga_leds);

	if (leds_mask != (0x01 << (LED_PIO_DATA_WIDTH - 1))) {
		// rotate leds
		leds_mask <<= 1;
	} else {
		// reset leds
		leds_mask = 0x1;
	}

	alt_write_word(fpga_leds, leds_mask);
}

int main() {
	printf("DE0-Nano-SoC bare-metal demo\n");

	setup_fpga_leds();
	va_sm_init();

	va_sm_set_reg(VASM_ADDR_FREQ, 0xAABBCCDD);
	va_sm_set_reg(VASM_ADDR_LATENCY, 0x12345678);
	va_sm_set_reg(VASM_ADDR_RAVERAGE, 0xF0F0F0F0);
	va_sm_run();


//	while (true) {
//		handle_fpga_leds();
//		for (int j = 0; j < 95000; j++) {
//		}
//	}

	return 0;
}
