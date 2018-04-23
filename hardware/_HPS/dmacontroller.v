
module dmacontroller(	     
		clk_w,      
      sdram0_address,
      sdram0_burstcount,
      sdram0_waitrequest,
      sdram0_readdata,
      sdram0_readdatavalid,
      sdram0_read,
		pio_address,
		pio_ready,		
		wrreq,
		data,	
		usedw,
		start,		
		isfull 
);

input              clk_w;
output [28:0]      sdram0_address;
output [7:0]       sdram0_burstcount;
input              sdram0_waitrequest;
input [63:0]       sdram0_readdata;
input [11:0] usedw;
input            sdram0_readdatavalid;
output   reg          sdram0_read;

input [31:0] pio_address;
input pio_ready;
//output [31:0] sdram0_byteenable;

input isfull;
input start;

output reg [23:0] data;

output reg wrreq;

reg running;

reg [28:0] addr_cnt;
reg [31:0] baseaddr;

reg r_ready;
reg rr_ready;
reg mreq;

reg [2:0] state;
reg [10:0] burstcounter;
reg [10:0] cooldowncounter;
//***********************************************************
// Local parameters & defines
//***********************************************************
localparam CR_CNT = 5;
localparam SR_CNT = 3;
localparam DATA_W = 16;
localparam ADDR_W = 10;


// Control registers
`define DMA_CTRL_CR        0
`define DMA_CTRL_CR_RUN_STB      0
`define DMA_ADDR_CR0       1
`define DMA_ADDR_CR1       2
`define DMA_SIZE_CR0       3
`define DMA_SIZE_CR1       4
// Status registers
`define DMA_STAT_SR        0
`define DMA_STAT_SR_BUSY         0
`define DMA_CYCLE_CNT_SR0  1
`define DMA_CYCLE_CNT_SR1  2

localparam MAX_ADDR = 1024*768-1;
localparam BURSTLEN = 255;
localparam COOLDOWN = 127;


// Increase address if no waitrequest
always@( posedge clk_w )
begin	

   r_ready <= pio_ready;
	rr_ready <= r_ready;
	
	//mreq <= req;
	//mreq <= !sdram0_waitrequest && running && !isfull;
	
	if (running)
			begin
				case (state)
					0: begin 
							wrreq <= 0;
							burstcounter <=0;
							if (cooldowncounter < COOLDOWN)
								begin
									cooldowncounter <= cooldowncounter + 1;
									
								end
							else
								begin
									cooldowncounter <= 0;
									if (usedw < 4095-BURSTLEN)
										begin
											state <= 1;
											sdram0_read <= 1;
										end
								end
						end
				
					1: if (!sdram0_waitrequest)
							begin
									sdram0_read<=0;
									state<=2;
							end
					2: 
						
							if (sdram0_readdatavalid)
							begin
											data <= {sdram0_readdata[55:48],sdram0_readdata[47:40],sdram0_readdata[39:32]};	
											
											if (addr_cnt<baseaddr+MAX_ADDR) 
											begin
												addr_cnt <= addr_cnt + 1;			
											end
											else
											begin
												addr_cnt <= baseaddr[28:0];
											end
											wrreq<= 1;								
											
											if (burstcounter < BURSTLEN-1)
												begin
													burstcounter <= burstcounter +1;
												end
											else
												begin
													burstcounter <= 0;
													state<=0;
												end
							end
							else
								wrreq <= 0;
							
					default: begin
									sdram0_read<=0;
									state <= 0;
								end
				endcase
			
			end
	
		
	if (!pio_ready)
		begin
			
			running <= 0;
			state <=0;
			sdram0_read <=0;
			wrreq <= 0;
			burstcounter <=0;
			cooldowncounter <=0;
		end

		
		
	if (!r_ready && pio_ready)
		begin
			addr_cnt <= pio_address[28:0];
			baseaddr <= pio_address;	
		end
		
	if (!running && rr_ready && start)
		begin
			running <= 1;
		end
end			



// SDRAM IF
//assign sdram0_read      = !isfull && running;
//assign sdram0_byteenable = 16'hffff;
assign sdram0_burstcount = BURSTLEN;
assign sdram0_address    = addr_cnt;


endmodule
