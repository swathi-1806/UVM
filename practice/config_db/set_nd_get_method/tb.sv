
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
//set method in top module to store the value of count as 300
//allow access to only drv srq mon cov
//drv-->uvm_test_top.env_h.agt_h.drv_h
//sqr-->uvm_test_top.env_h.agt_h.sqr_h
//mon-->uvm_test_top.env_h.agt_h.mon_h
//cov-->uvm_test_top.env_h.agt_h.cov_h

	initial begin
		uvm_config_db#(int)::set(null,
								"uvm_test_top.env_h.agent_h.*",
								"count",
								 300); 
	end

//-----------------------------------------------------------------------------------------------

endmodule
