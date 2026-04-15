//`include "uvm_pkg.sv"
import uvm_pkg::*;

//just for eda
`include "uvm_macros.svh"

`include "apb_agent.sv"
`include "apb_env.sv"
`include "apb_base_test.sv"

module tb;
initial begin
	run_test("apb_base_test");
end

endmodule
