//`include "uvm_pkg.sv"
import uvm_pkg::*;
`include "uvm_macros.svh"

//files
`include "common.sv"
`include "half_adder.v"

`include "ha_interface.sv"

`include "ha_tx.sv"
`include "ha_seq.sv"

`include "ha_mon.sv"
`include "ha_drv.sv"
`include "ha_sqr.sv"
`include "ha_cov.sv"

`include "ha_agent.sv"
`include "ha_sbd.sv"

`include "ha_env.sv"

`include "ha_test.sv"

module tb;
logic clk;

initial clk=0;
always #5 clk = ~clk;

ha_interface vif(clk);

//dut
half_adder dut( .a(vif.a),
        		.b(vif.b),
        		.sum(vif.sum),
       			.carry(vif.carry));

//run_test
initial begin
	uvm_config_db #(virtual ha_interface)::set(null, "*", "vif", vif);
	run_test("ha_test");
end

//waveform
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0, tb);   // tb = your top module name
end

endmodule

