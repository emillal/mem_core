# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.10-p002_1 on Fri Jul 05 11:38:26 IST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design sdrc_bank_fsm

create_clock -name "clk" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_false_path -from [list \
  [get_ports reset_n]  \
  [get_ports r2b_req]  \
  [get_ports r2b_start]  \
  [get_ports r2b_last]  \
  [get_ports r2b_wrap]  \
  [get_ports {r2b_raddr[12]}]  \
  [get_ports {r2b_raddr[11]}]  \
  [get_ports {r2b_raddr[10]}]  \
  [get_ports {r2b_raddr[9]}]  \
  [get_ports {r2b_raddr[8]}]  \
  [get_ports {r2b_raddr[7]}]  \
  [get_ports {r2b_raddr[6]}]  \
  [get_ports {r2b_raddr[5]}]  \
  [get_ports {r2b_raddr[4]}]  \
  [get_ports {r2b_raddr[3]}]  \
  [get_ports {r2b_raddr[2]}]  \
  [get_ports {r2b_raddr[1]}]  \
  [get_ports {r2b_raddr[0]}]  \
  [get_ports {r2b_caddr[12]}]  \
  [get_ports {r2b_caddr[11]}]  \
  [get_ports {r2b_caddr[10]}]  \
  [get_ports {r2b_caddr[9]}]  \
  [get_ports {r2b_caddr[8]}]  \
  [get_ports {r2b_caddr[7]}]  \
  [get_ports {r2b_caddr[6]}]  \
  [get_ports {r2b_caddr[5]}]  \
  [get_ports {r2b_caddr[4]}]  \
  [get_ports {r2b_caddr[3]}]  \
  [get_ports {r2b_caddr[2]}]  \
  [get_ports {r2b_caddr[1]}]  \
  [get_ports {r2b_caddr[0]}]  \
  [get_ports {r2b_len[6]}]  \
  [get_ports {r2b_len[5]}]  \
  [get_ports {r2b_len[4]}]  \
  [get_ports {r2b_len[3]}]  \
  [get_ports {r2b_len[2]}]  \
  [get_ports {r2b_len[1]}]  \
  [get_ports {r2b_len[0]}]  \
  [get_ports r2b_write]  \
  [get_ports sdr_dma_last]  \
  [get_ports {tras_delay[3]}]  \
  [get_ports {tras_delay[2]}]  \
  [get_ports {tras_delay[1]}]  \
  [get_ports {tras_delay[0]}]  \
  [get_ports {trp_delay[3]}]  \
  [get_ports {trp_delay[2]}]  \
  [get_ports {trp_delay[1]}]  \
  [get_ports {trp_delay[0]}]  \
  [get_ports {trcd_delay[3]}]  \
  [get_ports {trcd_delay[2]}]  \
  [get_ports {trcd_delay[1]}]  \
  [get_ports {trcd_delay[0]}]  \
  [get_ports x2b_ack]  \
  [get_ports tras_ok]  \
  [get_ports xfr_ok]  \
  [get_ports x2b_refresh]  \
  [get_ports x2b_pre_ok]  \
  [get_ports x2b_act_ok]  \
  [get_ports x2b_rdok]  \
  [get_ports x2b_wrok] ] -to [list \
  [get_ports b2r_ack]  \
  [get_ports b2x_req]  \
  [get_ports b2x_start]  \
  [get_ports b2x_last]  \
  [get_ports {b2x_id[3]}]  \
  [get_ports {b2x_id[2]}]  \
  [get_ports {b2x_id[1]}]  \
  [get_ports {b2x_id[0]}]  \
  [get_ports {b2x_addr[12]}]  \
  [get_ports {b2x_addr[11]}]  \
  [get_ports {b2x_addr[10]}]  \
  [get_ports {b2x_addr[9]}]  \
  [get_ports {b2x_addr[8]}]  \
  [get_ports {b2x_addr[7]}]  \
  [get_ports {b2x_addr[6]}]  \
  [get_ports {b2x_addr[5]}]  \
  [get_ports {b2x_addr[4]}]  \
  [get_ports {b2x_addr[3]}]  \
  [get_ports {b2x_addr[2]}]  \
  [get_ports {b2x_addr[1]}]  \
  [get_ports {b2x_addr[0]}]  \
  [get_ports {b2x_len[6]}]  \
  [get_ports {b2x_len[5]}]  \
  [get_ports {b2x_len[4]}]  \
  [get_ports {b2x_len[3]}]  \
  [get_ports {b2x_len[2]}]  \
  [get_ports {b2x_len[1]}]  \
  [get_ports {b2x_len[0]}]  \
  [get_ports {b2x_cmd[1]}]  \
  [get_ports {b2x_cmd[0]}]  \
  [get_ports tras_ok]  \
  [get_ports b2x_wrap]  \
  [get_ports {bank_row[12]}]  \
  [get_ports {bank_row[11]}]  \
  [get_ports {bank_row[10]}]  \
  [get_ports {bank_row[9]}]  \
  [get_ports {bank_row[8]}]  \
  [get_ports {bank_row[7]}]  \
  [get_ports {bank_row[6]}]  \
  [get_ports {bank_row[5]}]  \
  [get_ports {bank_row[4]}]  \
  [get_ports {bank_row[3]}]  \
  [get_ports {bank_row[2]}]  \
  [get_ports {bank_row[1]}]  \
  [get_ports {bank_row[0]}] ]
set_false_path -from [list \
  [get_ports b2r_ack]  \
  [get_ports b2x_req]  \
  [get_ports b2x_start]  \
  [get_ports b2x_last]  \
  [get_ports {b2x_id[3]}]  \
  [get_ports {b2x_id[2]}]  \
  [get_ports {b2x_id[1]}]  \
  [get_ports {b2x_id[0]}]  \
  [get_ports {b2x_addr[12]}]  \
  [get_ports {b2x_addr[11]}]  \
  [get_ports {b2x_addr[10]}]  \
  [get_ports {b2x_addr[9]}]  \
  [get_ports {b2x_addr[8]}]  \
  [get_ports {b2x_addr[7]}]  \
  [get_ports {b2x_addr[6]}]  \
  [get_ports {b2x_addr[5]}]  \
  [get_ports {b2x_addr[4]}]  \
  [get_ports {b2x_addr[3]}]  \
  [get_ports {b2x_addr[2]}]  \
  [get_ports {b2x_addr[1]}]  \
  [get_ports {b2x_addr[0]}]  \
  [get_ports {b2x_len[6]}]  \
  [get_ports {b2x_len[5]}]  \
  [get_ports {b2x_len[4]}]  \
  [get_ports {b2x_len[3]}]  \
  [get_ports {b2x_len[2]}]  \
  [get_ports {b2x_len[1]}]  \
  [get_ports {b2x_len[0]}]  \
  [get_ports {b2x_cmd[1]}]  \
  [get_ports {b2x_cmd[0]}]  \
  [get_ports tras_ok]  \
  [get_ports b2x_wrap]  \
  [get_ports {bank_row[12]}]  \
  [get_ports {bank_row[11]}]  \
  [get_ports {bank_row[10]}]  \
  [get_ports {bank_row[9]}]  \
  [get_ports {bank_row[8]}]  \
  [get_ports {bank_row[7]}]  \
  [get_ports {bank_row[6]}]  \
  [get_ports {bank_row[5]}]  \
  [get_ports {bank_row[4]}]  \
  [get_ports {bank_row[3]}]  \
  [get_ports {bank_row[2]}]  \
  [get_ports {bank_row[1]}]  \
  [get_ports {bank_row[0]}] ] -to [list \
  [get_ports reset_n]  \
  [get_ports r2b_req]  \
  [get_ports r2b_start]  \
  [get_ports r2b_last]  \
  [get_ports r2b_wrap]  \
  [get_ports {r2b_raddr[12]}]  \
  [get_ports {r2b_raddr[11]}]  \
  [get_ports {r2b_raddr[10]}]  \
  [get_ports {r2b_raddr[9]}]  \
  [get_ports {r2b_raddr[8]}]  \
  [get_ports {r2b_raddr[7]}]  \
  [get_ports {r2b_raddr[6]}]  \
  [get_ports {r2b_raddr[5]}]  \
  [get_ports {r2b_raddr[4]}]  \
  [get_ports {r2b_raddr[3]}]  \
  [get_ports {r2b_raddr[2]}]  \
  [get_ports {r2b_raddr[1]}]  \
  [get_ports {r2b_raddr[0]}]  \
  [get_ports {r2b_caddr[12]}]  \
  [get_ports {r2b_caddr[11]}]  \
  [get_ports {r2b_caddr[10]}]  \
  [get_ports {r2b_caddr[9]}]  \
  [get_ports {r2b_caddr[8]}]  \
  [get_ports {r2b_caddr[7]}]  \
  [get_ports {r2b_caddr[6]}]  \
  [get_ports {r2b_caddr[5]}]  \
  [get_ports {r2b_caddr[4]}]  \
  [get_ports {r2b_caddr[3]}]  \
  [get_ports {r2b_caddr[2]}]  \
  [get_ports {r2b_caddr[1]}]  \
  [get_ports {r2b_caddr[0]}]  \
  [get_ports {r2b_len[6]}]  \
  [get_ports {r2b_len[5]}]  \
  [get_ports {r2b_len[4]}]  \
  [get_ports {r2b_len[3]}]  \
  [get_ports {r2b_len[2]}]  \
  [get_ports {r2b_len[1]}]  \
  [get_ports {r2b_len[0]}]  \
  [get_ports r2b_write]  \
  [get_ports sdr_dma_last]  \
  [get_ports {tras_delay[3]}]  \
  [get_ports {tras_delay[2]}]  \
  [get_ports {tras_delay[1]}]  \
  [get_ports {tras_delay[0]}]  \
  [get_ports {trp_delay[3]}]  \
  [get_ports {trp_delay[2]}]  \
  [get_ports {trp_delay[1]}]  \
  [get_ports {trp_delay[0]}]  \
  [get_ports {trcd_delay[3]}]  \
  [get_ports {trcd_delay[2]}]  \
  [get_ports {trcd_delay[1]}]  \
  [get_ports {trcd_delay[0]}]  \
  [get_ports x2b_ack]  \
  [get_ports tras_ok]  \
  [get_ports xfr_ok]  \
  [get_ports x2b_refresh]  \
  [get_ports x2b_pre_ok]  \
  [get_ports x2b_act_ok]  \
  [get_ports x2b_rdok]  \
  [get_ports x2b_wrok] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports reset_n]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports r2b_req]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports r2b_start]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports r2b_last]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports r2b_wrap]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_raddr[12]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_raddr[11]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_raddr[10]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_raddr[9]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_raddr[8]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_raddr[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_raddr[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_raddr[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_raddr[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_raddr[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_raddr[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_raddr[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_raddr[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_caddr[12]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_caddr[11]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_caddr[10]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_caddr[9]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_caddr[8]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_caddr[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_caddr[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_caddr[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_caddr[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_caddr[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_caddr[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_caddr[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_caddr[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_len[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_len[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_len[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_len[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_len[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_len[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {r2b_len[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports r2b_write]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports sdr_dma_last]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {tras_delay[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {tras_delay[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {tras_delay[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {tras_delay[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {trp_delay[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {trp_delay[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {trp_delay[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {trp_delay[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {trcd_delay[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {trcd_delay[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {trcd_delay[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {trcd_delay[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports x2b_ack]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports xfr_ok]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports x2b_refresh]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports x2b_pre_ok]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports x2b_act_ok]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports x2b_rdok]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports x2b_wrok]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports b2r_ack]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports b2x_req]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports b2x_start]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports b2x_last]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_id[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_id[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_id[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_id[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_addr[12]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_addr[11]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_addr[10]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_addr[9]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_addr[8]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_addr[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_addr[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_addr[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_addr[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_addr[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_addr[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_addr[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_addr[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_len[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_len[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_len[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_len[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_len[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_len[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_len[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_cmd[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {b2x_cmd[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports tras_ok]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports b2x_wrap]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {bank_row[12]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {bank_row[11]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {bank_row[10]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {bank_row[9]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {bank_row[8]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {bank_row[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {bank_row[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {bank_row[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {bank_row[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {bank_row[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {bank_row[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {bank_row[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {bank_row[0]}]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.1 [get_clocks clk]
set_clock_uncertainty -hold 0.05 [get_clocks clk]
