# Half Adder Verification using UVM (SystemVerilog)
## Half Adder Verification using UVM (SystemVerilog)


## Project Overview
This project demonstrates the verification of a Half Adder RTL design using the Universal Verification Methodology (UVM) in SystemVerilog.
The goal is to verify all input combinations of the Half Adder and validate the correctness of SUM and CARRY outputs using a structured UVM testbench.

## About Half Adder
### A Half Adder performs addition of two 1-bit inputs.

| A |	B	| SUM	| CARRY |
|---|---|-----|-------|
| 0 |	0	|  0	|    0  |
|0	| 1	|  1	|    0  |
|1	| 0	|  1	|    0  |
|1	| 1	|  0	|    1  |

## UVM Testbench Architecture
### The testbench follows standard UVM architecture:

Sequence
Sequencer
Driver
Monitor
Agent
Scoreboard
Environment
Test

## Verification Features
*  Randomized stimulus using UVM sequences
*  Functional coverage of all input combinations
*  Scoreboard to check DUT correctness
*  Transaction-level communication using TLM
*  Reusable and scalable UVM components

## Tools & Technologies Used
* SystemVerilog
* UVM
* RTL Design
* QuestaSim / VCS

## waveform
<img width="1819" height="173" alt="image" src="https://github.com/user-attachments/assets/3da6d187-2a12-48ff-b685-0c4089536c6a" />

### sample simulation output
```
# --------------------------------------------------------------
# Name                       Type                    Size  Value
# --------------------------------------------------------------
# uvm_test_top               ha_test                 -     @360 
#   env_h                    ha_env                  -     @372 
#     agt_h                  ha_agent                -     @380 
#       cov_h                ha_cov                  -     @563 
#         analysis_imp       uvm_analysis_imp        -     @571 
#       drv_h                ha_drv                  -     @406 
#         rsp_port           uvm_analysis_port       -     @423 
#         seq_item_port      uvm_seq_item_pull_port  -     @414 
#       mon_h                ha_mon                  -     @432 
#         mon_ap_h           uvm_analysis_port       -     @581 
#       sqr_h                uvm_sequencer           -     @440 
#         rsp_export         uvm_analysis_export     -     @448 
#         seq_item_export    uvm_seq_item_pull_imp   -     @554 
#         arbitration_queue  array                   0     -    
#         lock_queue         array                   0     -    
#         num_last_reqs      integral                32    'd1  
#         num_last_rsps      integral                32    'd1  
#     sbd_h                  ha_sbd                  -     @388 
#       analysis_imp         uvm_analysis_imp        -     @396 
# --------------------------------------------------------------
 [mem_drv] a=1  b=0
 [HA_MON] a=0 b=0 sum=0 carry=0
 [sbd] PASS

 [mem_drv] a=0  b=1
 [HA_MON] a=1 b=0 sum=1 carry=0
 [sbd] PASS

 [mem_drv] a=0  b=0
 [HA_MON] a=0 b=1 sum=1 carry=0
 [sbd] PASS

 [mem_drv] a=0  b=1
 [HA_MON] a=0 b=0 sum=0 carry=0
 [sbd] PASS

 [mem_drv] a=1  b=0
 [HA_MON] a=0 b=1 sum=1 carry=0
 [sbd] PASS

 [mem_drv] a=1  b=1
 [HA_MON] a=1 b=0 sum=1 carry=0
 [sbd] PASS

 [mem_drv] a=1  b=0
 [HA_MON] a=1 b=1 sum=0 carry=1
 [sbd] PASS

 [mem_drv] a=0  b=0
 [HA_MON] a=1 b=0 sum=1 carry=0
 [sbd] PASS

 [mem_drv] a=0  b=1
 [HA_MON] a=0 b=0 sum=0 carry=0
 [sbd] PASS

 [mem_drv] a=1  b=1
 [HA_MON] a=0 b=1 sum=1 carry=0
 [sbd] PASS


# --- UVM Report Summary ---
# ** Report counts by severity
# UVM_INFO :   36
# UVM_WARNING :    0
# UVM_ERROR :    0
# UVM_FATAL :    0
#    Time: 95 ns  Iteration: 76  Instance: /tb
```

## Learning Outcomes
### Through this project, I learned:
* Building complete UVM testbench from scratch
* Writing sequences and transactions
* Connecting TLM ports between components
* Implementing scoreboard checking logic
* Collecting functional coverage
* Debugging UVM phases and simulation issues

