# Half Adder Verification using UVM (SystemVerilog)
## Half Adder Verification using UVM (SystemVerilog)

'''
## Project Overview
This project demonstrates the verification of a Half Adder RTL design using the Universal Verification Methodology (UVM) in SystemVerilog.
The goal is to verify all input combinations of the Half Adder and validate the correctness of SUM and CARRY outputs using a structured UVM testbench.
'''
## About Half Adder
### A Half Adder performs addition of two 1-bit inputs.

| A |	B	| SUM	| CARRY |
|---|---|-----|-------|
| 0 |	0	|  0	|    0  |
|0	| 1	|  1	|    0  |
|1	| 0	|  1	|    0  |
|1	| 1	|  0	|    1  |
'''
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
'''
## Verification Features
*  Randomized stimulus using UVM sequences
*  Functional coverage of all input combinations
*  Scoreboard to check DUT correctness
*  Transaction-level communication using TLM
*  Reusable and scalable UVM components
'''
 ## Tools & Technologies Used
* SystemVerilog
* UVM
* RTL Design
* QuestaSim / VCS
'''
## Learning Outcomes
### Through this project, I learned:
* Building complete UVM testbench from scratch
* Writing sequences and transactions
* Connecting TLM ports between components
* Implementing scoreboard checking logic
* Collecting functional coverage
* Debugging UVM phases and simulation issues
'''
