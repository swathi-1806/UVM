# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(277) @ 0: reporter [Questa UVM] QUESTA_UVM-1.2.3
# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(278) @ 0: reporter [Questa UVM]  questa_uvm::init(+struct)
# UVM_INFO @ 0: reporter [RNTST] Running test ha_test...
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_root.svh(579) @ 0: reporter [UVMTOP] UVM testbench topology:
# --------------------------------------------------------------
# Name                       Type                    Size  Value
# --------------------------------------------------------------
# uvm_test_top               ha_test                 -     @360 
#   env_h                    ha_env                  -     @372 
#     agt_h                  ha_agent                -     @380 
#       cov_h                ha_cov                  -     @563 
#         analysis_imp       uvm_analysis_imp        -     @571 
#       drv_h                ha_drv                  -     @406 
#         rsp_port           uvm_analysis_port       -     @423 
#         seq_item_port      uvm_seq_item_pull_port  -     @414 
#       mon_h                ha_mon                  -     @432 
#         mon_ap_h           uvm_analysis_port       -     @581 
#       sqr_h                uvm_sequencer           -     @440 
#         rsp_export         uvm_analysis_export     -     @448 
#         seq_item_export    uvm_seq_item_pull_imp   -     @554 
#         arbitration_queue  array                   0     -    
#         lock_queue         array                   0     -    
#         num_last_reqs      integral                32    'd1  
#         num_last_rsps      integral                32    'd1  
#     sbd_h                  ha_sbd                  -     @388 
#       analysis_imp         uvm_analysis_imp        -     @396 
# --------------------------------------------------------------
# 
# UVM_INFO ha_drv.sv(28) @ 5: uvm_test_top.env_h.agt_h.drv_h [mem_drv] a=1  b=0
# UVM_INFO ha_mon.sv(32) @ 5: uvm_test_top.env_h.agt_h.mon_h [HA_MON] a=0 b=0 sum=0 carry=0
# UVM_INFO ha_sbd.sv(14) @ 5: uvm_test_top.env_h.sbd_h [sbd] PASS
# UVM_INFO ha_drv.sv(28) @ 15: uvm_test_top.env_h.agt_h.drv_h [mem_drv] a=0  b=1
# UVM_INFO ha_mon.sv(32) @ 15: uvm_test_top.env_h.agt_h.mon_h [HA_MON] a=1 b=0 sum=1 carry=0
# UVM_INFO ha_sbd.sv(14) @ 15: uvm_test_top.env_h.sbd_h [sbd] PASS
# UVM_INFO ha_drv.sv(28) @ 25: uvm_test_top.env_h.agt_h.drv_h [mem_drv] a=0  b=0
# UVM_INFO ha_mon.sv(32) @ 25: uvm_test_top.env_h.agt_h.mon_h [HA_MON] a=0 b=1 sum=1 carry=0
# UVM_INFO ha_sbd.sv(14) @ 25: uvm_test_top.env_h.sbd_h [sbd] PASS
# UVM_INFO ha_drv.sv(28) @ 35: uvm_test_top.env_h.agt_h.drv_h [mem_drv] a=0  b=1
# UVM_INFO ha_mon.sv(32) @ 35: uvm_test_top.env_h.agt_h.mon_h [HA_MON] a=0 b=0 sum=0 carry=0
# UVM_INFO ha_sbd.sv(14) @ 35: uvm_test_top.env_h.sbd_h [sbd] PASS
# UVM_INFO ha_drv.sv(28) @ 45: uvm_test_top.env_h.agt_h.drv_h [mem_drv] a=1  b=0
# UVM_INFO ha_mon.sv(32) @ 45: uvm_test_top.env_h.agt_h.mon_h [HA_MON] a=0 b=1 sum=1 carry=0
# UVM_INFO ha_sbd.sv(14) @ 45: uvm_test_top.env_h.sbd_h [sbd] PASS
# UVM_INFO ha_drv.sv(28) @ 55: uvm_test_top.env_h.agt_h.drv_h [mem_drv] a=1  b=1
# UVM_INFO ha_mon.sv(32) @ 55: uvm_test_top.env_h.agt_h.mon_h [HA_MON] a=1 b=0 sum=1 carry=0
# UVM_INFO ha_sbd.sv(14) @ 55: uvm_test_top.env_h.sbd_h [sbd] PASS
# UVM_INFO ha_drv.sv(28) @ 65: uvm_test_top.env_h.agt_h.drv_h [mem_drv] a=1  b=0
# UVM_INFO ha_mon.sv(32) @ 65: uvm_test_top.env_h.agt_h.mon_h [HA_MON] a=1 b=1 sum=0 carry=1
# UVM_INFO ha_sbd.sv(14) @ 65: uvm_test_top.env_h.sbd_h [sbd] PASS
# UVM_INFO ha_drv.sv(28) @ 75: uvm_test_top.env_h.agt_h.drv_h [mem_drv] a=0  b=0
# UVM_INFO ha_mon.sv(32) @ 75: uvm_test_top.env_h.agt_h.mon_h [HA_MON] a=1 b=0 sum=1 carry=0
# UVM_INFO ha_sbd.sv(14) @ 75: uvm_test_top.env_h.sbd_h [sbd] PASS
# UVM_INFO ha_drv.sv(28) @ 85: uvm_test_top.env_h.agt_h.drv_h [mem_drv] a=0  b=1
# UVM_INFO ha_mon.sv(32) @ 85: uvm_test_top.env_h.agt_h.mon_h [HA_MON] a=0 b=0 sum=0 carry=0
# UVM_INFO ha_sbd.sv(14) @ 85: uvm_test_top.env_h.sbd_h [sbd] PASS
# UVM_INFO ha_drv.sv(28) @ 95: uvm_test_top.env_h.agt_h.drv_h [mem_drv] a=1  b=1
# UVM_INFO ha_mon.sv(32) @ 95: uvm_test_top.env_h.agt_h.mon_h [HA_MON] a=0 b=1 sum=1 carry=0
# UVM_INFO ha_sbd.sv(14) @ 95: uvm_test_top.env_h.sbd_h [sbd] PASS
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_objection.svh(1270) @ 95: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_report_server.svh(847) @ 95: reporter [UVM/REPORT/SERVER] 
# --- UVM Report Summary ---
# 
# ** Report counts by severity
# UVM_INFO :   36
# UVM_WARNING :    0
# UVM_ERROR :    0
# UVM_FATAL :    0
# ** Report counts by id
# [HA_MON]    10
# [Questa UVM]     2
# [RNTST]     1
# [TEST_DONE]     1
# [UVM/RELNOTES]     1
# [UVMTOP]     1
# [mem_drv]    10
# [sbd]    10
# 
# ** Note: $finish    : /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_root.svh(517)
#    Time: 95 ns  Iteration: 76  Instance: /tb
# End time: 06:46:04 on May 07,2026, Elapsed time: 0:00:04
# Errors: 0, Warnings: 0
