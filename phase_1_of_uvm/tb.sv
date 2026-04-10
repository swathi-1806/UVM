//`include "uvm_pkg.sv"
import uvm_pkg::*;

//just for eda
`include "uvm_macros.svh"
//----------------------------

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

endmodule

/*
output:
# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(277) @ 0: reporter [Questa UVM] QUESTA_UVM-1.2.3
# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(278) @ 0: reporter [Questa UVM]  questa_uvm::init(+struct)
# UVM_INFO @ 0: reporter [RNTST] Running test mem_base_test...
# UVM_INFO mem_base_test.sv(20) @ 0: uvm_test_top [mem_base_test] mem_base_test build_phase is executed
# UVM_INFO mem_env.sv(18) @ 0: uvm_test_top.env_h [mem_env] mem_env build_phase is executed
# UVM_INFO mem_agent.sv(21) @ 0: uvm_test_top.env_h.agent_h [mem_agent] mem_agent build_phase is executed
# UVM_INFO mem_drv.sv(14) @ 0: uvm_test_top.env_h.agent_h.drv_h [mem_drv] mem_drv build_phase is executed
# UVM_INFO mem_base_test.sv(26) @ 0: uvm_test_top [mem_base_test] mem_base_test connect_phase is executed
# UVM_INFO mem_base_test.sv(31) @ 0: uvm_test_top [mem_base_test] mem_base_test end_of_elaboration_phase is executed
# UVM_INFO mem_base_test.sv(36) @ 0: uvm_test_top [mem_base_test] mem_base_test start_of_simulation_phase is executed
# UVM_INFO mem_base_test.sv(42) @ 0: uvm_test_top [mem_base_test] run_phase executed
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_objection.svh(1270) @ 50: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_report_server.svh(847) @ 50: reporter [UVM/REPORT/SERVER] 
# --- UVM Report Summary ---
# 
# ** Report counts by severity
# UVM_INFO :   13
# UVM_WARNING :    0
# UVM_ERROR :    0
# UVM_FATAL :    0
# ** Report counts by id
# [Questa UVM]     2
# [RNTST]     1
# [TEST_DONE]     1
# [UVM/RELNOTES]     1
# [mem_agent]     1
# [mem_base_test]     5
# [mem_drv]     1
# [mem_env]     1
# ** Note: $finish    : /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_root.svh(517)
#    Time: 50 ns  Iteration: 68  Instance: /tb
# */
