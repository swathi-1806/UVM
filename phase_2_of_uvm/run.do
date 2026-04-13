##--> Step 1
## Select Simulator & UVM
## On the left panel:
##	- Language → SystemVerilog / UVM
##  - Simulator → QuestaSim (Mentor)
## 
## - This automatically adds uvm_pkg for you.
## - You should NOT include uvm_pkg.sv manually in EDA Playground. 
## - Do NOT use `include "uvm_pkg.sv" in any file.
## 
## -->Step 2 — Fix Your tb.sv for EDA Playground
## 		Use this version:
## - import uvm_pkg::*;
## - `include "uvm_macros.svh"
## - `include "mem_env.sv"
## - `include "mem_base_test.sv"



##--> in questa sim
vlog tb.sv\
+incdir+C:/Users/swath/Desktop/UVM-1800.2-2020.3.1.tar.gz/1800.2-2020.3.1/src

vsim -novopt -suppress 12110 tb\
-sv_lib/C:/Users/swath/Desktop/UVM-1800.2-2020.3.1.tar.gz/1800.2-2020.3.1/src/dpi

run -all
