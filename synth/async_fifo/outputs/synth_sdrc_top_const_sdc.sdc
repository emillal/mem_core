# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.10-p002_1 on Wed Jul 03 14:44:38 IST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design async_fifo

create_clock -name "wr_clk" -period 20.0 -waveform {0.0 10.0} [get_ports wr_clk]
create_clock -name "rd_clk" -period 20.0 -waveform {0.0 10.0} [get_ports rd_clk]
set_false_path -from [get_ports wr_reset_n] -to [get_ports rd_clk]
set_false_path -from [get_ports rd_clk] -to [get_ports wr_reset_n]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks wr_clk] -add_delay 2.0 [get_ports {wr_data[7]}]
set_input_delay -clock [get_clocks wr_clk] -add_delay 2.0 [get_ports {wr_data[6]}]
set_input_delay -clock [get_clocks wr_clk] -add_delay 2.0 [get_ports {wr_data[5]}]
set_input_delay -clock [get_clocks wr_clk] -add_delay 2.0 [get_ports {wr_data[4]}]
set_input_delay -clock [get_clocks wr_clk] -add_delay 2.0 [get_ports {wr_data[3]}]
set_input_delay -clock [get_clocks wr_clk] -add_delay 2.0 [get_ports {wr_data[2]}]
set_input_delay -clock [get_clocks wr_clk] -add_delay 2.0 [get_ports {wr_data[1]}]
set_input_delay -clock [get_clocks wr_clk] -add_delay 2.0 [get_ports {wr_data[0]}]
set_output_delay -clock [get_clocks wr_clk] -add_delay 2.0 [get_ports full]
set_output_delay -clock [get_clocks rd_clk] -add_delay 2.0 [get_ports empty]
set_input_delay -clock [get_clocks wr_clk] -add_delay 1.0 [get_ports wr_reset_n]
set_input_delay -clock [get_clocks rd_clk] -add_delay 1.0 [get_ports rd_reset_n]
set_input_delay -clock [get_clocks wr_clk] -add_delay 1.0 [get_ports wr_en]
set_input_delay -clock [get_clocks rd_clk] -add_delay 1.0 [get_ports rd_en]
set_output_delay -clock [get_clocks wr_clk] -add_delay 1.0 [get_ports afull]
set_output_delay -clock [get_clocks rd_clk] -add_delay 1.0 [get_ports aempty]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.1 [get_clocks wr_clk]
set_clock_uncertainty -hold 0.1 [get_clocks wr_clk]
set_clock_uncertainty -setup 0.1 [get_clocks rd_clk]
set_clock_uncertainty -hold 0.1 [get_clocks rd_clk]
