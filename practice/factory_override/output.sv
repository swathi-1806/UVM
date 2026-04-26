output:-

# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_root.svh(392) @ 0: reporter [UVM/RELNOTES] 
# ----------------------------------------------------------------
# UVM-1.2
# (C) 2007-2014 Mentor Graphics Corporation
# (C) 2007-2014 Cadence Design Systems, Inc.
# (C) 2006-2014 Synopsys, Inc.
# (C) 2011-2013 Cypress Semiconductor Corp.
# (C) 2013-2014 NVIDIA Corporation
# ----------------------------------------------------------------
# 
#   ***********       IMPORTANT RELEASE NOTES         ************
# 
#   You are using a version of the UVM library that has been compiled
#   with `UVM_NO_DEPRECATED undefined.
#   See http://www.eda.org/svdb/view.php?id=3313 for more details.
# 
#   You are using a version of the UVM library that has been compiled
#   with `UVM_OBJECT_DO_NOT_NEED_CONSTRUCTOR undefined.
#   See http://www.eda.org/svdb/view.php?id=3770 for more details.
# 
#       (Specify +UVM_NO_RELNOTES to turn off this notice)
# 
# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(277) @ 0: reporter [Questa UVM] QUESTA_UVM-1.2.3
# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(278) @ 0: reporter [Questa UVM]  questa_uvm::init(+struct)
# UVM_INFO @ 0: reporter [RNTST] Running test mem_base_test...
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_root.svh(579) @ 0: reporter [UVMTOP] UVM testbench topology:
# --------------------------------------------------------------
# Name                       Type                    Size  Value
# --------------------------------------------------------------
# uvm_test_top               mem_base_test           -     @355 
#   env_h                    mem_env                 -     @367 
#     agt_h1                 mem_agent_1             -     @375 
#       drv_h1               mem_drv                 -     @392 
#         rsp_port           uvm_analysis_port       -     @409 
#         seq_item_port      uvm_seq_item_pull_port  -     @400 
#       mon_h1               mem_mon                 -     @541 
#       sqr_h1               uvm_sequencer           -     @418 
#         rsp_export         uvm_analysis_export     -     @426 
#         seq_item_export    uvm_seq_item_pull_imp   -     @532 
#         arbitration_queue  array                   0     -    
#         lock_queue         array                   0     -    
#         num_last_reqs      integral                32    'd1  
#         num_last_rsps      integral                32    'd1  
#     agt_h2                 mem_agent_2             -     @383 
#       drv_h2               mem_drv                 -     @555 
#         rsp_port           uvm_analysis_port       -     @572 
#         seq_item_port      uvm_seq_item_pull_port  -     @563 
#       mon_h2               mem_mon                 -     @704 
#       sqr_h2               uvm_sequencer           -     @581 
#         rsp_export         uvm_analysis_export     -     @589 
#         seq_item_export    uvm_seq_item_pull_imp   -     @695 
#         arbitration_queue  array                   0     -    
#         lock_queue         array                   0     -    
#         num_last_reqs      integral                32    'd1  
#         num_last_rsps      integral                32    'd1  
# --------------------------------------------------------------
# 
# --------------------------------------------------------------------------------------
# Name                           Type      Size  Value                                  
# --------------------------------------------------------------------------------------
# req                            mem_tx    -     @750                                   
#   wr_rd                        integral  1     'h0                                    
#   addr                         integral  8     'h25                                   
#   data                         integral  32    'h61117355                             
#   begin_time                   time      64    0                                      
#   depth                        int       32    'd2                                    
#   parent sequence (name)       string    6     seq_h1                                 
#   parent sequence (full name)  string    39    uvm_test_top.env_h.agt_h1.sqr_h1.seq_h1
#   sequencer                    string    32    uvm_test_top.env_h.agt_h1.sqr_h1       
# --------------------------------------------------------------------------------------
# ----------------------------------------------------------------------------------------
# Name                           Type        Size  Value                                  
# ----------------------------------------------------------------------------------------
# req                            mem_err_tx  -     @754                                   
#   wr_rd                        integral    1     'h0                                    
#   addr                         integral    8     'h24                                   
#   data                         integral    32    'h2ddeb8f5                             
#   err_count                    integral    32    'h1f837bf5                             
#   begin_time                   time        64    0                                      
#   depth                        int         32    'd2                                    
#   parent sequence (name)       string      6     seq_h2                                 
#   parent sequence (full name)  string      39    uvm_test_top.env_h.agt_h2.sqr_h2.seq_h2
#   sequencer                    string      32    uvm_test_top.env_h.agt_h2.sqr_h2       
# ----------------------------------------------------------------------------------------
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_objection.svh(1270) @ 0: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_report_server.svh(847) @ 0: reporter [UVM/REPORT/SERVER] 
# --- UVM Report Summary ---
# 
# ** Report counts by severity
# UVM_INFO :    6
# UVM_WARNING :    0
# UVM_ERROR :    0
# UVM_FATAL :    0
# ** Report counts by id
# [Questa UVM]     2
# [RNTST]     1
# [TEST_DONE]     1
# [UVM/RELNOTES]     1
# [UVMTOP]     1
# 
# ** Note: $finish    : /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_root.svh(517)
#    Time: 0 ns  Iteration: 280  Instance: /tb
