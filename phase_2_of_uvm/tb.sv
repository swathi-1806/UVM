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
`include "mem_seq.sv"
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
# UVM_INFO mem_env.sv(19) @ 0: uvm_test_top.env_h [mem_env] mem_env build_phase is executed
# UVM_INFO mem_agent.sv(22) @ 0: uvm_test_top.env_h.agent_h [mem_agent] mem_agent build_phase is executed
# UVM_INFO mem_drv.sv(15) @ 0: uvm_test_top.env_h.agent_h.drv_h [mem_drv] mem_drv build_phase is executed
# UVM_INFO mem_agent.sv(30) @ 0: uvm_test_top.env_h.agent_h [mem_agent] mem_agent connect_phase is executed
# UVM_INFO mem_env.sv(25) @ 0: uvm_test_top.env_h [mem_env] mem_env connect_phase is executed
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_root.svh(579) @ 0: reporter [UVMTOP] UVM testbench topology:
# --------------------------------------------------------------
# Name                       Type                    Size  Value
# --------------------------------------------------------------
# uvm_test_top               mem_base_test           -     @355 
#   env_h                    mem_env                 -     @367 
#     agent_h                mem_agent               -     @377 
#       drv_h                mem_drv                 -     @388 
#         rsp_port           uvm_analysis_port       -     @405 
#         seq_item_port      uvm_seq_item_pull_port  -     @396 
#       sqr_h                uvm_sequencer           -     @414 
#         rsp_export         uvm_analysis_export     -     @422 
#         seq_item_export    uvm_seq_item_pull_imp   -     @528 
#         arbitration_queue  array                   0     -    
#         lock_queue         array                   0     -    
#         num_last_reqs      integral                32    'd1  
#         num_last_rsps      integral                32    'd1  
# --------------------------------------------------------------
# 
# UVM_INFO mem_base_test.sv(27) @ 0: uvm_test_top [mem_base_test] mem_base_test end_of_elaboration_phase is executed
# UVM_INFO mem_drv.sv(21) @ 0: uvm_test_top.env_h.agent_h.drv_h [mem_drv] mem_drv run_phase is executed
# UVM_INFO mem_seq.sv(13) @ 0: uvm_test_top.env_h.agent_h.sqr_h@@seq_h [PRE_BODY] mem_seq pre_body executed
# UVM_INFO mem_seq.sv(17) @ 0: uvm_test_top.env_h.agent_h.sqr_h@@seq_h [BODY] mem_seq body executed
# UVM_INFO mem_seq.sv(21) @ 0: uvm_test_top.env_h.agent_h.sqr_h@@seq_h [POST_BODY] mem_seq post_body executed
# UVM_INFO mem_base_test.sv(43) @ 0: uvm_test_top [mem_base_test] run_phase executed
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_objection.svh(1270) @ 0: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_report_server.svh(847) @ 0: reporter [UVM/REPORT/SERVER] 
# --- UVM Report Summary ---
# 
# ** Report counts by severity
# UVM_INFO :   18
# UVM_WARNING :    0
# UVM_ERROR :    0
# UVM_FATAL :    0
# ** Report counts by id
# [BODY]     1
# [POST_BODY]     1
# [PRE_BODY]     1
# [Questa UVM]     2
# [RNTST]     1
# [TEST_DONE]     1
# [UVM/RELNOTES]     1
# [UVMTOP]     1
# [mem_agent]     2
# [mem_base_test]     3
# [mem_drv]     2
# [mem_env]     2
# 
# ** Note: $finish    : /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_root.svh(517)
#    Time: 0 ns  Iteration: 270  Instance: /tb
*/
