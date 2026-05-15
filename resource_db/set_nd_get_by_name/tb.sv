
//`include "uvm_pkg.sv"
import uvm_pkg::*;

//just for eda
`include "uvm_macros.svh"
//----------------------------
`include "common.sv"
`include "mem_tx.sv"
`include "mem_drv.sv"
`include "mem_sqr.sv"
`include "mem_agent.sv"
`include "mem_env.sv"
`include "mem_base_test.sv"

module tb;
reg clk,rst;
int count;

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
//-----------------------------------------------------------------------------------------------
	initial begin
		count=200;
		uvm_resource_db#(int)::set("INT","INT_COUNT",count,null);
	end
//-----------------------------------------------------------------------------------------------

endmodule

