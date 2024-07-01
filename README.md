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
