
//`include "uvm_pkg.sv"
import uvm_pkg::*;

//just for eda
`include "uvm_macros.svh"
//----------------------------
`include "common.sv"
`include "mem_tx.sv"
`include "mem_seq.sv"

`include "mem_drv.sv"
`include "mem_sqr.sv"
`include "mem_mon.sv"

`include "mem_agent_1.sv"
`include "mem_agent_2.sv"

`include "mem_env.sv"

`include "mem_base_test.sv"

module tb;
reg clk,rst;

//clk generation
	initial begin
		clk=0;
		forever #5 clk=~clk;
	end

//rst generation
	initial begin
		rst=1;
		repeat(2)@(posedge clk);
		rst=0;
	end

//declaring run_test()
	initial begin
		run_test("mem_base_test");
	end
endmodule


