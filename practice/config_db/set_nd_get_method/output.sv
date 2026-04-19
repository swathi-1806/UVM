# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(277) @ 0: reporter [Questa UVM] QUESTA_UVM-1.2.3
# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(278) @ 0: reporter [Questa UVM]  questa_uvm::init(+struct)
# UVM_INFO @ 0: reporter [RNTST] Running test mem_base_test...
# UVM_ERROR mem_agent.sv(26) @ 0: uvm_test_top.env_h.agent_h [mem_agentt] FAILED TO RETRIVE VALUE FROM CFGDB
# ----------------------------------------------------------
# Name                   Type                    Size  Value
# ----------------------------------------------------------
# agent_h                mem_agent               -     @377 
#   drv_h                mem_drv                 -     @388 
#     rsp_port           uvm_analysis_port       -     @405 
#     seq_item_port      uvm_seq_item_pull_port  -     @396 
#     count              integral                32    'd0  
#   sqr_h                uvm_sequencer           -     @414 
#     rsp_export         uvm_analysis_export     -     @422 
#     seq_item_export    uvm_seq_item_pull_imp   -     @528 
#     arbitration_queue  array                   0     -    
#     lock_queue         array                   0     -    
#     num_last_reqs      integral                32    'd1  
#     num_last_rsps      integral                32    'd1  
#   count                integral                32    'd0  
# ----------------------------------------------------------
# ----------------------------------------------------
# Name             Type                    Size  Value
# ----------------------------------------------------
# drv_h            mem_drv                 -     @388 
#   rsp_port       uvm_analysis_port       -     @405 
#   seq_item_port  uvm_seq_item_pull_port  -     @396 
#   count          integral                32    'd300
# ----------------------------------------------------
# UVM_FATAL @ 0: reporter [BUILDERR] stopping due to build errors
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_report_server.svh(847) @ 0: reporter [UVM/REPORT/SERVER] 
# --- UVM Report Summary ---
# 
# ** Report counts by severity
# UVM_INFO :    4
# UVM_WARNING :    0
# UVM_ERROR :    1
# UVM_FATAL :    1
# ** Report counts by id
# [BUILDERR]     1
# [Questa UVM]     2
# [RNTST]     1
# [UVM/RELNOTES]     1
# [mem_agentt]     1
# 
# ** Note: $finish    : /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_root.svh(135)
#    Time: 0 ns  Iteration: 28  Region: /uvm_pkg::uvm_phase::m_run_phases
