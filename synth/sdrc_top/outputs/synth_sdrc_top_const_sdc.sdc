# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.10-p002_1 on Tue Jul 02 15:11:23 IST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design sdrc_top

create_clock -name "sdram_clk" -period 20.0 -waveform {0.0 10.0} [get_ports sdram_clk]
set_clock_transition 0.1 [get_clocks sdram_clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports sdram_resetn]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_width[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_width[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_colbits[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_colbits[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports wb_rst_i]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports wb_clk_i]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports wb_stb_i]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[25]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[24]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[23]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[22]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[21]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[20]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[19]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[18]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[17]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[16]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[15]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[14]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[13]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[12]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[11]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[10]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[9]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[8]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[7]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[6]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[5]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[4]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[3]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[2]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_addr_i[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports wb_we_i]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[31]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[30]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[29]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[28]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[27]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[26]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[25]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[24]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[23]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[22]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[21]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[20]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[19]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[18]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[17]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[16]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[15]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[14]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[13]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[12]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[11]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[10]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[9]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[8]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[7]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[6]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[5]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[4]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[3]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[2]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_i[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_sel_i[3]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_sel_i[2]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_sel_i[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_sel_i[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports wb_cyc_i]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_cti_i[2]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_cti_i[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_cti_i[0]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports wb_ack_o]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[31]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[30]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[29]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[28]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[27]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[26]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[25]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[24]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[23]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[22]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[21]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[20]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[19]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[18]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[17]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[16]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[15]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[14]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[13]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[12]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[11]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[10]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[9]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[8]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[7]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[6]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[5]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[4]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[3]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[2]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[1]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {wb_dat_o[0]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports sdr_cke]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports sdr_cs_n]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports sdr_ras_n]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports sdr_cas_n]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports sdr_we_n]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dqm[1]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dqm[0]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_ba[1]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_ba[0]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_addr[12]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_addr[11]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_addr[10]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_addr[9]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_addr[8]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_addr[7]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_addr[6]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_addr[5]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_addr[4]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_addr[3]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_addr[2]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_addr[1]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_addr[0]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[15]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[15]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[14]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[14]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[13]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[13]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[12]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[12]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[11]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[11]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[10]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[10]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[9]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[9]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[8]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[8]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[7]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[7]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[6]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[6]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[5]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[5]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[4]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[4]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[3]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[3]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[2]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[2]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[1]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[1]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[0]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[15]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[15]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[14]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[14]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[13]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[13]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[12]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[12]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[11]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[11]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[10]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[10]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[9]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[9]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[8]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[8]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[7]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[7]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[6]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[6]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[5]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[5]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[4]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[4]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[3]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[3]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[2]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[2]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {sdr_dq[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_tras_d[3]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_tras_d[2]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_tras_d[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_tras_d[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_trp_d[3]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_trp_d[2]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_trp_d[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_trp_d[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_trcd_d[3]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_trcd_d[2]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_trcd_d[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_trcd_d[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports cfg_sdr_en]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_req_depth[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_req_depth[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_mode_reg[12]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_mode_reg[11]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_mode_reg[10]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_mode_reg[9]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_mode_reg[8]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_mode_reg[7]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_mode_reg[6]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_mode_reg[5]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_mode_reg[4]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_mode_reg[3]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_mode_reg[2]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_mode_reg[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_mode_reg[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_cas[2]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_cas[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_cas[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_trcar_d[3]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_trcar_d[2]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_trcar_d[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_trcar_d[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_twr_d[3]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_twr_d[2]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_twr_d[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_twr_d[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_rfsh[11]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_rfsh[10]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_rfsh[9]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_rfsh[8]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_rfsh[7]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_rfsh[6]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_rfsh[5]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_rfsh[4]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_rfsh[3]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_rfsh[2]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_rfsh[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_rfsh[0]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_rfmax[2]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_rfmax[1]}]
set_input_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports {cfg_sdr_rfmax[0]}]
set_output_delay -clock [get_clocks sdram_clk] -add_delay -max 1.0 [get_ports sdr_init_done]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_ports sdram_clk]
set_clock_uncertainty -hold 0.01 [get_ports sdram_clk]