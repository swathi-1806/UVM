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
`include "mem_seq.sv"
`include "mem_base_test.sv"

module tb;
	initial begin
      run_test("mem_base_test");
	end
endmodule
