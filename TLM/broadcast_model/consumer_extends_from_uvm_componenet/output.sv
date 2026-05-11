# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(277) @ 0: reporter [Questa UVM] QUESTA_UVM-1.2.3
# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(278) @ 0: reporter [Questa UVM]  questa_uvm::init(+struct)
# UVM_INFO @ 0: reporter [RNTST] Running test tlm_test...
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_root.svh(579) @ 0: reporter [UVMTOP] UVM testbench topology:
# ----------------------------------------------------
# Name                  Type               Size  Value
# ----------------------------------------------------
# uvm_test_top          tlm_test           -     @355 
#   env_h               env                -     @367 
#     c1_h              consumer_1         -     @383 
#       consumer1_ap_h  uvm_analysis_imp   -     @399 
#     c2_h              consumer_2         -     @391 
#       consumer2_ap_h  uvm_analysis_imp   -     @408 
#     producer_h        producer           -     @375 
#       producer_ap_h   uvm_analysis_port  -     @417 
# ----------------------------------------------------
# 
# UVM_INFO producer.sv(17) @ 0: uvm_test_top.env_h.producer_h [producer] producer tx is ------------------------------
# Name     Type      Size  Value
# ------------------------------
# tx       my_tx     -     @437 
#   wr_rd  integral  1     'h1  
#   addr   integral  8     'h5a 
#   data   integral  8     'h3a 
# ------------------------------
# 
# UVM_INFO consumer1.sv(19) @ 0: uvm_test_top.env_h.c1_h [consumer_1] COV tx is ------------------------------
# Name     Type      Size  Value
# ------------------------------
# tx       my_tx     -     @437 
#   wr_rd  integral  1     'h1  
#   addr   integral  8     'h5a 
#   data   integral  8     'h3a 
# ------------------------------
# 
# UVM_INFO consumer2.sv(17) @ 0: uvm_test_top.env_h.c2_h [consumer_2] SBD tx is ------------------------------
# Name     Type      Size  Value
# ------------------------------
# tx       my_tx     -     @437 
#   wr_rd  integral  1     'h1  
#   addr   integral  8     'h5a 
#   data   integral  8     'h3a 
# ------------------------------
# 
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_report_server.svh(847) @ 0: reporter [UVM/REPORT/SERVER] 
# --- UVM Report Summary ---
# 
# ** Report counts by severity
# UVM_INFO :    8
# UVM_WARNING :    0
# UVM_ERROR :    0
# UVM_FATAL :    0
# ** Report counts by id
# [Questa UVM]     2
# [RNTST]     1
# [UVM/RELNOTES]     1
# [UVMTOP]     1
# [consumer_1]     1
# [consumer_2]     1
# [producer]     1
# 
# ** Note: $finish    : /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_root.svh(517)
#    Time: 0 ns  Iteration: 269  Instance: /top

