# mem_core
Physical Design of Synchranous DRAM Controller using Cadence toolset


To check the functonality using Cadence Xelium We use the command to invoke the tool.

### tb_top

```
xrun sdrc_define.v -f filelist_top.f -access +rwc -gui &
```

The ```sdrc_define.v``` contains the `define and should be kept outside the filelist_top.f file


### Xelium log

```
	Design hierarchy summary:
		                 Instances  Unique
		Modules:                18      13
		Registers:             522     384
		Scalar wires:          333       -
		Expanded wires:        184       9
		Vectored wires:        104       -
		Always blocks:          79      51
		Initial blocks:          9       7
		Cont. assignments:     215     215
		Pseudo assignments:     34      34
		Timing checks:         250     125
		Sparse arrays:          12       -
		Simulation timescale:  1ps
	Writing initial simulation snapshot: worklib.tb_top:sv
```

### For tb_core

```
xrun sdrc_define.v -f filelist_core.f -access +rwc -gui &
```

### Xelium log

```
	Design hierarchy summary:
		                 Instances  Unique
		Modules:                13      10
		Registers:             438     354
		Scalar wires:          293       -
		Expanded wires:         79       6
		Vectored wires:         70       -
		Always blocks:          47      35
		Initial blocks:          5       5
		Cont. assignments:     167     186
		Pseudo assignments:     27      27
		Timing checks:         250     125
		Sparse arrays:          12       -
		Simulation timescale:  1ps
	Writing initial simulation snapshot: worklib.tb_core:sv
```

Commands on Xcelium command terminal (can be used instead of buttons) 
```
source /mnt/cadence_tools/XCELIUM/tools/xcelium/files/xmsimrc
run
```

### Once verification is complete we proceed with RTL Synthesis using Cadence Genus

Use the following command to invoke genus with proper tcl file,which should have a filelist of all the designs and proper constraint and library files.
```
genus -f genus_script.tcl
```

Here we need to give the design (rtl),liberty file (lib) and sdc constraint files. We set the path as in the tcl script used when invoking genus.<br />

Open sdc file and edit in a text editor prefereably gedit,as there is a chance some extra characters might come up in Libre sheet viewer.<br />

A genus tcl script can be found in the ```synth folder```.<br />

![Screenshot from 2024-07-02 15-14-16](https://github.com/emillal/mem_core/assets/38190245/37850015-70b4-4a7f-9a25-c4579cd4f73d)

The above screeshot shows the synthesis is complete for one design top file (sdrc_top).<br />
But we are requried to read all the design files(read_hdl) keeping one design as current design in our tcl file,as shown below.<br />

```
read_hdl sdrc_top.v wb2sdrc.v async_fifo.v sdrc_define.v sdrc_core.v sdrc_bank_ctl.v sdrc_bank_fsm.v sdrc_bs_convert.v sdrc_req_gen.v sdrc_xfr_ctl.v  

elaborate 

read_sdc ../mem_core/Cadence_design_database_45nm/constraints/constraints_top.sdc

#synthesis effort
set_db syn_generic_effort low
set_db syn_map_effort low
set_db syn_opt_effort low

syn_generic
syn_map

#setting the currrent design
current_design sdrc_top
```

The reports are given in ```synth/sdrc_top/reports/``` <br />

It is my assumption that each design files are required to be synthesized individually and would require seperate constraints(.sdc) files. Attaching required files in the synth folder.<br />


The next thing would be sythesizing **wb2sdrc**. It is done and results will be found in ```synth/wb2sdrc/reports/```
<br />
A new constraint sdc file had to be used for this module. Seperate netlists are fine in innovus i guess. But what will be done about the constraint files. only one i assume should be required in innovus. Lets see as we go along.<br />

```
Hierarchy Report Format : 
 
    level instance ( module ) <status>
 
    status :    preserve_<value> -- indicating preserve hierachy or inherited_preserve value
           :    blackbox --  indicating  unresolved instance
 
==================================================================

 0 wb2sdrc
  1 u_rddatafifo ( async_fifo_W33_DP4_WR_FAST1h0_RD_FAST1h1 ) 
  1 u_wrdatafifo ( async_fifo_W36_DP8_WR_FAST1h0_RD_FAST1h1 ) 
```
Similarly for the rest of the modules it will be done and output synthesised netlist will be generated. Checking the timing report weather there is any timing violations or not in thr timing report.<br />
