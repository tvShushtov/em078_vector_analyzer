#ifndef VA_SM_H_
#define VA_SM_H_

#define VASM_ADDR_RUN 0x82U
#define VASM_ADDR_FREQ 0x84U
#define VASM_ADDR_LATENCY 0x86U
#define VASM_ADDR_RAVERAGE 0x88U
#define VASM_ADDR_ACKNOWLEDG 0x8AU

void va_sm_set_reg(uint8_t addr, uint32_t data);

void va_sm_run(void);

void va_sm_init(void);

void va_sm_ack(void);

int32_t va_wait_va_data(void);

uint32_t va_nco_freq_calc(uint32_t nco_freq);

void va_nco_meas(int32_t arr[], uint32_t nco_ph, uint32_t latency);

#endif /* VA_SM_H_ */
