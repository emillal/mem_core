# SDRAM Controller Buswidth Converter SDC Constraints

# Create a clock with a period of 10 ns (100 MHz)
create_clock -name clk -period 10.0 [get_ports clk]

# Set input delays
set_input_delay -clock clk -max 2.5 [get_ports {reset_n sdr_width x2a_rdstart x2a_wrstart x2a_rdlast x2a_wrlast x2a_rddt x2a_rdok x2a_wrnext app_wr_data app_wr_en_n}]

# Set output delays
set_output_delay -clock clk -max 2.5 [get_ports {a2x_wrdt a2x_wren_n app_wr_next app_last_wr app_rd_data app_rd_valid app_last_rd}]

# Define the input and output delay based on the setup and hold times of the FPGA/ASIC
set_input_delay -clock clk -max 2.5 [get_ports {reset_n sdr_width x2a_rdstart x2a_wrstart x2a_rdlast x2a_wrlast x2a_rddt x2a_rdok x2a_wrnext app_wr_data app_wr_en_n}]
set_input_delay -clock clk -min 0.5 [get_ports {reset_n sdr_width x2a_rdstart x2a_wrstart x2a_rdlast x2a_wrlast x2a_rddt x2a_rdok x2a_wrnext app_wr_data app_wr_en_n}]
set_output_delay -clock clk -max 2.5 [get_ports {a2x_wrdt a2x_wren_n app_wr_next app_last_wr app_rd_data app_rd_valid app_last_rd}]
set_output_delay -clock clk -min 0.5 [get_ports {a2x_wrdt a2x_wren_n app_wr_next app_last_wr app_rd_data app_rd_valid app_last_rd}]

# Set false paths if any, adjust as needed
# set_false_path -from [get_ports {reset_n}]

# Specify multicycle paths if any, adjust as needed
# set_multicycle_path -setup 2 -from [get_ports {app_wr_data app_wr_en_n}]
# set_multicycle_path -hold 1 -from [get_ports {app_wr_data app_wr_en_n}]

