# Define the clock
create_clock -period 10.0 [get_ports clk]

# Input delay constraints (Assuming input delays)
set_input_delay -clock [get_clocks clk] -max 2.0 [get_ports {reset_n r2b_* a2b_req_depth sdr_req_norm_dma_last x2b_* tras_delay trp_delay trcd_delay xfr_bank_sel}]
set_input_delay -clock [get_clocks clk] -min 1.0 [get_ports {reset_n r2b_* a2b_req_depth sdr_req_norm_dma_last x2b_* tras_delay trp_delay trcd_delay xfr_bank_sel}]

# Output delay constraints (Assuming output delays)
set_output_delay -clock [get_clocks clk] -max 2.0 [get_ports {b2r_arb_ok b2r_ack b2x_*}]
set_output_delay -clock [get_clocks clk] -min 1.0 [get_ports {b2r_arb_ok b2r_ack b2x_*}]

# Define multi-cycle paths if applicable
# Example: Assuming some paths need multi-cycle constraints
set_multicycle_path -setup -from [get_ports {r2b_req r2b_start r2b_last r2b_wrap r2b_ba r2b_raddr r2b_caddr r2b_len r2b_write}] -to [get_ports {b2x_idle b2x_req b2x_start b2x_last b2x_wrap b2x_id b2x_ba b2x_addr b2x_len b2x_cmd}] 2
set_multicycle_path -hold -from [get_ports {r2b_req r2b_start r2b_last r2b_wrap r2b_ba r2b_raddr r2b_caddr r2b_len r2b_write}] -to [get_ports {b2x_idle b2x_req b2x_start b2x_last b2x_wrap b2x_id b2x_ba b2x_addr b2x_len b2x_cmd}] 1

# Timing exceptions if any critical paths need to be ignored or adjusted
# Example: False path constraints
set_false_path -from [get_ports reset_n] -to [get_ports {b2r_arb_ok b2r_ack b2x_idle b2x_req b2x_start b2x_last b2x_wrap b2x_id b2x_ba b2x_addr b2x_len b2x_cmd}]

# Max and min delay constraints (optional, depending on design specifics)
set_max_delay 15.0 -from [get_ports r2b_*] -to [get_ports b2x_*]
set_min_delay 5.0 -from [get_ports r2b_*] -to [get_ports b2x_*]

