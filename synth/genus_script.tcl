set_db init_lib_search_path ../mem_core/Cadence_design_database_45nm/lib/
set_db init_hdl_search_path ../mem_core/Cadence_design_database_45nm/rtl/
read_libs slow_vdd1v0_basicCells.lib

set_db delete_unloaded_seqs false
set_db optimize_constant_0_flops false
set_db optimize_constant_1_flops false

set_db hdl_preserve_unused_register true

set_db optimize_merge_flops false
set_db optimize_merge_latches false


#read_hdl -f filelist_rtl.f

read_hdl sdrc_top.v 
#wb2sdrc.v async_fifo.v sdrc_define.v sdrc_core.v sdrc_bank_ctl.v sdrc_bank_fsm.v sdrc_bs_convert.v sdrc_req_gen.v sdrc_xfr_ctl.v  

elaborate 

read_sdc ../mem_core/Cadence_design_database_45nm/constraints/constraints_top.sdc


set_db syn_generic_effort low
set_db syn_map_effort low
set_db syn_opt_effort low

syn_generic
syn_map
#current_design sdrc_top 

# Report timing, specifying the design name
report_timing > reports/report_timing_before_opt.rpt
report_power > reports/report_power_before_opt.rpt
report_area  > reports/report_area_before_opt.rpt
report_qor  > reports/report_qor_before_opt.rpt

# Perform optimization
syn_opt

# Report timing after optimization, specifying the design name
report_timing  > reports/report_timing_after_opt.rpt
report_power  > reports/report_power_after_opt.rpt
report_area > reports/report_area_after_opt.rpt
report_qor  > reports/report_qor_after_opt.rpt

#outputs

write_hdl > outputs/synth_sdrc_top_netlist.v
write_sdc > outputs/synth_sdrc_top_const_sdc.sdc
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge -setuphold split > outputs/delays.sdf
