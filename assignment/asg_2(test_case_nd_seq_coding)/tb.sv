//`include "uvm_pkg.sv"
import uvm_pkg::*;

//just for eda
`include "uvm_macros.svh"

	
`include "apb_config.sv"
`include "apb_tx.sv"

`include "apb_drv.sv"
`include "apb_sqr.sv"

`include "apb_agent.sv"
`include "apb_env.sv"

`include "apb_seq_lib.sv"
`include "apb_10_tx_seq.sv"
`include "apb_wr_rd_seq.sv"

`include "test_lib.sv"
`include "apb_10_tx_test.sv"
`include "apb_wr_rd_test.sv"
module tb;

initial begin
	run_test("apb_wr_rd_test");
end

endmodule
