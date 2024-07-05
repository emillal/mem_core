# Define the clock for the SDRAM Controller
create_clock -name clk -period 10.0 [get_ports clk]

# Input delays
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports reset_n]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports r2b_req]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports r2b_start]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports r2b_last]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports r2b_wrap]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports r2b_raddr]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports r2b_caddr]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports r2b_len]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports r2b_write]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports sdr_dma_last]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports tras_delay]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports trp_delay]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports trcd_delay]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports x2b_ack]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports tras_ok]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports xfr_ok]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports x2b_refresh]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports x2b_pre_ok]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports x2b_act_ok]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports x2b_rdok]
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports x2b_wrok]

# Output delays
set_output_delay -clock [get_clocks clk] -max 2.0 [get_ports b2r_ack]
set_output_delay -clock [get_clocks clk] -max 2.0 [get_ports b2x_req]
set_output_delay -clock [get_clocks clk] -max 2.0 [get_ports b2x_start]
set_output_delay -clock [get_clocks clk] -max 2.0 [get_ports b2x_last]
set_output_delay -clock [get_clocks clk] -max 2.0 [get_ports b2x_id]
set_output_delay -clock [get_clocks clk] -max 2.0 [get_ports b2x_addr]
set_output_delay -clock [get_clocks clk] -max 2.0 [get_ports b2x_len]
set_output_delay -clock [get_clocks clk] -max 2.0 [get_ports b2x_cmd]
set_output_delay -clock [get_clocks clk] -max 2.0 [get_ports tras_ok]
set_output_delay -clock [get_clocks clk] -max 2.0 [get_ports b2x_wrap]
set_output_delay -clock [get_clocks clk] -max 2.0 [get_ports bank_row]

# Clock Uncertainty (for setup and hold)
set_clock_uncertainty -setup 0.1 [get_clocks clk]
set_clock_uncertainty -hold 0.05 [get_clocks clk]

# Timing Exceptions
# False Paths
set_false_path -from [get_ports {reset_n r2b_req r2b_start r2b_last r2b_wrap r2b_raddr r2b_caddr r2b_len r2b_write sdr_dma_last tras_delay trp_delay trcd_delay x2b_ack tras_ok xfr_ok x2b_refresh x2b_pre_ok x2b_act_ok x2b_rdok x2b_wrok}] -to [get_ports {b2r_ack b2x_req b2x_start b2x_last b2x_id b2x_addr b2x_len b2x_cmd tras_ok b2x_wrap bank_row}]
set_false_path -to [get_ports {reset_n r2b_req r2b_start r2b_last r2b_wrap r2b_raddr r2b_caddr r2b_len r2b_write sdr_dma_last tras_delay trp_delay trcd_delay x2b_ack tras_ok xfr_ok x2b_refresh x2b_pre_ok x2b_act_ok x2b_rdok x2b_wrok}] -from [get_ports {b2r_ack b2x_req b2x_start b2x_last b2x_id b2x_addr b2x_len b2x_cmd tras_ok b2x_wrap bank_row}]

# Multi-cycle Paths (if any)
# For example: set_multicycle_path -setup 2 -from [get_ports clk] -to [get_ports b2x_addr]

