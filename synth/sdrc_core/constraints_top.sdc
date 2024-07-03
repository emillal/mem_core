# Create clock constraints
create_clock -name clk -period 10.0 [get_ports clk]
create_clock -name pad_clk -period 10.0 [get_ports pad_clk]

# Define generated clocks (if any)
# Example: create_generated_clock -name <generated_clock_name> -source <source_clock> -divide_by <division_factor> [get_ports <port>]

# Input delay constraints
set_input_delay -clock clk -max 2.0 [get_ports {app_req app_req_addr app_req_len app_req_wrap app_req_wr_n app_wr_data app_wr_en_n app_req_dma_last}]
set_input_delay -clock clk -min 0.0 [get_ports {app_req app_req_addr app_req_len app_req_wrap app_req_wr_n app_wr_data app_wr_en_n app_req_dma_last}]

# Output delay constraints
set_output_delay -clock clk -max 2.0 [get_ports {app_req_ack app_wr_next_req app_last_wr app_rd_data app_rd_valid app_last_rd}]
set_output_delay -clock clk -min 0.0 [get_ports {app_req_ack app_wr_next_req app_last_wr app_rd_data app_rd_valid app_last_rd}]

# Input delay constraints for SDRAM interface
set_input_delay -clock clk -max 2.0 [get_ports {pad_sdr_din}]
set_input_delay -clock clk -min 0.0 [get_ports {pad_sdr_din}]

# Output delay constraints for SDRAM interface
set_output_delay -clock clk -max 2.0 [get_ports {sdr_cs_n sdr_cke sdr_ras_n sdr_cas_n sdr_we_n sdr_dqm sdr_ba sdr_addr sdr_dout sdr_den_n}]
set_output_delay -clock clk -min 0.0 [get_ports {sdr_cs_n sdr_cke sdr_ras_n sdr_cas_n sdr_we_n sdr_dqm sdr_ba sdr_addr sdr_dout sdr_den_n}]

# Specify input/output delays for asynchronous reset
set_input_delay -clock clk -max 2.0 [get_ports reset_n]
set_input_delay -clock clk -min 0.0 [get_ports reset_n]

# Max transition constraints (if applicable)
# Example: set_max_transition 0.5 [get_ports {<port1> <port2> ...}]

# Max fanout constraints (if applicable)
# Example: set_max_fanout 10 [get_ports {<port1> <port2> ...}]

# Specify false paths (if applicable)
# Example: set_false_path -from [get_ports {<port1>}] -to [get_ports {<port2>}]

# Specify multicycle paths (if applicable)
# Example: set_multicycle_path 2 -setup -from [get_ports {<port1>}] -to [get_ports {<port2>}]

# Set load constraints (if applicable)
# Example: set_load 0.05 [get_ports {<port1> <port2> ...}]

# Clock uncertainty constraints (if applicable)
# Example: set_clock_uncertainty 0.2 [get_clocks clk]

# Define specific constraints for different paths (if needed)
# Example: set_max_delay -from [get_ports {<port1>}] -to [get_ports {<port2>}] 10.0

# Define specific exceptions (if needed)
# Example: set_clock_groups -asynchronous -group [get_clocks {clk1}] -group [get_clocks {clk2}]

