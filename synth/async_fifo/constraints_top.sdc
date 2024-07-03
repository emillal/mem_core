# Define the constraints for async_fifo module

# Clock Definitions
create_clock -name wr_clk -period 20 [get_ports wr_clk]   ;# Adjust period to match your clock frequency (10ns for 100MHz)
create_clock -name rd_clk -period 20 [get_ports rd_clk]   ;# Adjust period to match your clock frequency (10ns for 100MHz)

# Clock Uncertainty
set_clock_uncertainty 0.1 [get_clocks wr_clk]
set_clock_uncertainty 0.1 [get_clocks rd_clk]

# Define the clock edges for setup/hold constraints
set_input_delay -clock wr_clk 2 [get_ports wr_data]
set_output_delay -clock wr_clk 2 [get_ports full]
set_input_delay -clock rd_clk 2 [get_ports rd_data]
set_output_delay -clock rd_clk 2 [get_ports empty]

# Define reset signals
set_input_delay -clock wr_clk 1 [get_ports wr_reset_n]
set_input_delay -clock rd_clk 1 [get_ports rd_reset_n]

# Set timing constraints for input and output signals
set_input_delay -clock wr_clk 1 [get_ports wr_en]
set_output_delay -clock wr_clk 1 [get_ports afull]
set_input_delay -clock rd_clk 1 [get_ports rd_en]
set_output_delay -clock rd_clk 1 [get_ports aempty]

# Define FIFO parameters
set_attribute [get_ports wr_data] -constraint fifo_depth 16
set_attribute [get_ports rd_data] -constraint fifo_depth 16
set_attribute [get_ports wr_data] -constraint fifo_width 8
set_attribute [get_ports rd_data] -constraint fifo_width 8

# Constraints for FIFO almost-full and almost-empty signals
set_output_delay -clock wr_clk 1 [get_ports afull]
set_output_delay -clock rd_clk 1 [get_ports aempty]

# Timing Exceptions
set_false_path -from [get_ports wr_reset_n] -to [get_ports rd_clk]
set_false_path -from [get_ports rd_clk] -to [get_ports wr_reset_n]

# End of constraint file

