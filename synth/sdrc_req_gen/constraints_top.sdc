# SDRAM Controller Request Generation SDC File

# Define the clock
create_clock -name clk -period 10.0 [get_ports clk]

# Input delays (assuming a setup time of 2ns and clock period of 10ns)
set_input_delay -clock clk -max 2.0 [get_ports {reset_n cfg_colbits req req_id req_addr req_len req_wrap req_wr_n b2r_ack b2r_arb_ok sdr_width}]

# Output delays (assuming a hold time of 1ns)
set_output_delay -clock clk -max 1.0 [get_ports {req_ack r2x_idle r2b_req r2b_start r2b_last r2b_write r2b_wrap r2b_req_id r2b_ba r2b_raddr r2b_caddr r2b_len}]

# Specify clock uncertainty (jitter, skew, etc.)
set_clock_uncertainty 0.2 [get_clocks clk]

# Define multicycle paths if any
# Example:
# set_multicycle_path 2 -setup -from [get_ports req_addr] -to [get_ports r2b_raddr]
# set_multicycle_path 1 -hold -from [get_ports req_addr] -to [get_ports r2b_raddr]

# Define false paths if any
# Example:
# set_false_path -from [get_ports req_addr] -to [get_ports r2b_raddr]

# Set load and drive strengths (optional, if specific load/drive strengths are needed)
# Example:
# set_drive 4 [get_ports {reset_n cfg_colbits req req_id req_addr req_len req_wrap req_wr_n b2r_ack b2r_arb_ok sdr_width}]
# set_load 0.1 [get_ports {req_ack r2x_idle r2b_req r2b_start r2b_last r2b_write r2b_wrap r2b_req_id r2b_ba r2b_raddr r2b_caddr r2b_len}]

