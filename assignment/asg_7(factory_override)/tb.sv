//`include "uvm_pkg.sv"
import uvm_pkg::*;

//just for eda
`include "uvm_macros.svh"

`include "common.sv"
`include "apb_tx.sv"
`include "apb_seq.sv"

`include "apb_drv.sv"
`include "apb_sqr.sv"

`include "apb_agent.sv"

`include "apb_env.sv"
`include "apb_base_test.sv"
`include "test_apb_inst_override_by_type.sv"
`include "test_apb_inst_override_by_name.sv"
`include "test_apb_type_override_by_type.sv"
`include "test_apb_type_override_by_name.sv"

module tb;
initial begin
  //run_test("test_apb_inst_override_by_type");
  //run_test("test_apb_inst_override_by_name");
  //run_test("test_apb_type_override_by_type");
  run_test("test_apb_type_override_by_name");
end

endmodule

