# mem_core
Physical Design of Synchranous DRAM Controller using Cadence toolset


To check the functonality using Cadence Xelium We use the command to invoke the tool.

```
xrun sdrc_define.v -f filelist_top.f -access +rwc -gui &
```

The ```sdrc_define.v``` contains the `define and should be kept outside the filelist_top.f file
