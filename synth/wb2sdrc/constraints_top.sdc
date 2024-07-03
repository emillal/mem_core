# Define the clock constraints
create_clock -name wb_clk -period 20.0 [get_ports wb_clk_i]
create_clock -name sdram_clk -period 20.0 [get_ports sdram_clk]

# Set input delays
set_input_delay -clock wb_clk -max 5.0 [get_ports wb_addr_i]
set_input_delay -clock wb_clk -max 5.0 [get_ports wb_dat_i]
set_input_delay -clock wb_clk -max 5.0 [get_ports wb_sel_i]
set_input_delay -clock wb_clk -max 5.0 [get_ports wb_cyc_i]
set_input_delay -clock wb_clk -max 5.0 [get_ports wb_stb_i]
set_input_delay -clock wb_clk -max 5.0 [get_ports wb_we_i]
set_input_delay -clock wb_clk -max 5.0 [get_ports wb_cti_i]

# Set output delays
set_output_delay -clock wb_clk -max 5.0 [get_ports wb_ack_o]
set_output_delay -clock wb_clk -max 5.0 [get_ports wb_dat_o]

# Set input delays for SDRAM controller interface
set_input_delay -clock sdram_clk -max 10.0 [get_ports sdr_req_ack]
set_input_delay -clock sdram_clk -max 10.0 [get_ports sdr_busy_n]
set_input_delay -clock sdram_clk -max 10.0 [get_ports sdr_wr_next]
set_input_delay -clock sdram_clk -max 10.0 [get_ports sdr_rd_valid]
set_input_delay -clock sdram_clk -max 10.0 [get_ports sdr_last_rd]
set_input_delay -clock sdram_clk -max 10.0 [get_ports sdr_rd_data]

# Set output delays for SDRAM controller interface
set_output_delay -clock sdram_clk -max 10.0 [get_ports sdr_req]
set_output_delay -clock sdram_clk -max 10.0 [get_ports sdr_req_addr]
set_output_delay -clock sdram_clk -max 10.0 [get_ports sdr_req_len]
set_output_delay -clock sdram_clk -max 10.0 [get_ports sdr_req_wr_n]
set_output_delay -clock sdram_clk -max 10.0 [get_ports sdr_wr_en_n]
set_output_delay -clock sdram_clk -max 10.0 [get_ports sdr_wr_data]

# Define false paths if there are paths that should not be considered for timing
set_false_path -from [get_clocks wb_clk] -to [get_clocks sdram_clk]
set_false_path -from [get_clocks sdram_clk] -to [get_clocks wb_clk]

# Set multicycle paths if needed
# For example, if a path needs two clock cycles to complete
# set_multicycle_path -setup 2 -from [get_ports source_port] -to [get_ports destination_port]
# set_multicycle_path -hold 1 -from [get_ports source_port] -to [get_ports destination_port]

# Set maximum fanout if needed
# set_max_fanout 10 [all_outputs]

# Constraints for internal paths if necessary
# set_max_delay -from [get_pins -of_objects [get_cells -hierarchical -filter "name =~ *"]] -to [get_pins -of_objects [get_cells -hierarchical -filter "name =~ *"]] 10.0

# Ensure proper handling of clock domain crossings
#set_clock_groups -asynchronous -group [get_clocks wb_clk] -group [get_clocks sdram_clk]

# Additional specific constraints based on the design requirements
# This is a basic template. Depending on the specific requirements of your design,
# you may need to add more constraints.

