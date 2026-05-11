//`include "uvm_pkg.sv"
import uvm_pkg::*;
//just for eda
`include "uvm_macros.svh"

`include "common.sv"
`include "my_tx.sv"
`include "consumer1.sv"
`include "consumer2.sv"
`include "producer.sv"

`include "env.sv"
`include "tlm_test.sv"


module top;

initial begin
	run_test("tlm_test");
end
endmodule

