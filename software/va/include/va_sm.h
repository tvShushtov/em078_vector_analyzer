#ifndef VA_SM_H_
#define VA_SM_H_

#define VASM_ADDR_RUN 0x82
#define VASM_ADDR_FREQ 0x84
#define VASM_ADDR_LATENCY 0x86
#define VASM_ADDR_RAVERAGE 0x88

void va_sm_set_reg(uint8_t addr, uint32_t data);

void va_sm_run(void);

void va_sm_init(void);

#endif /* VA_SM_H_ */
