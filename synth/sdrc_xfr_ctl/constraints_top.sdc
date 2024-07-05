# SDRAM Controller Transfer Control Constraints

# Set the clock
create_clock -name clk -period 10 [get_ports clk]

# Define input delays
set_input_delay -clock clk -max 2 [get_ports {reset_n b2x_req b2x_start b2x_last b2x_tras_ok b2x_wrap r2x_idle b2x_idle b2x_id b2x_ba b2x_addr b2x_len b2x_cmd a2x_wrdt a2x_wren_n sdr_din sdram_enable sdram_mode_reg cas_latency trp_delay trcar_delay twr_delay rfsh_time rfsh_rmax}]

# Define output delays
set_output_delay -clock clk -max 2 [get_ports {x2b_ack x2b_pre_ok x2b_refresh x2b_act_ok x2b_rdok x2b_wrok x2a_rdstart x2a_wrstart x2a_rdlast x2a_wrlast x2a_id x2a_rddt x2a_wrnext x2a_rdok sdr_init_done sdr_cs_n sdr_cke sdr_ras_n sdr_cas_n sdr_we_n sdr_dqm sdr_ba sdr_addr sdr_dout sdr_den_n xfr_bank_sel}]

# Define input/output delays for internal nets
set_input_delay -clock clk -max 2 [get_pins {sdrc_xfr_ctl/*} -filter "direction == in"]
set_output_delay -clock clk -max 2 [get_pins {sdrc_xfr_ctl/*} -filter "direction == out"]

# Set the operating conditions
#set_operating_conditions -library typical

# Set the load constraints
set_load 0.5 [get_ports {x2b_ack x2b_pre_ok x2b_refresh x2b_act_ok x2b_rdok x2b_wrok x2a_rdstart x2a_wrstart x2a_rdlast x2a_wrlast x2a_id x2a_rddt x2a_wrnext x2a_rdok sdr_init_done sdr_cs_n sdr_cke sdr_ras_n sdr_cas_n sdr_we_n sdr_dqm sdr_ba sdr_addr sdr_dout sdr_den_n xfr_bank_sel}]

# Timing exceptions
set_false_path -from [get_ports reset_n]
set_false_path -to [get_ports reset_n]

# Define multi-cycle paths if necessary
set_multicycle_path -setup 2 -from [get_pins sdrc_xfr_ctl/*] -to [get_pins sdrc_xfr_ctl/*]
set_multicycle_path -hold 1 -from [get_pins sdrc_xfr_ctl/*] -to [get_pins sdrc_xfr_ctl/*]

# Max fanout constraints
#set_max_fanout 10 [get_ports clk]

# Other constraints based on design requirements

# End of SDC file

