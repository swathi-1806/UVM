# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(277) @ 0: reporter [Questa UVM] QUESTA_UVM-1.2.3
# UVM_INFO /usr/share/questa/questasim/verilog_src/questa_uvm_pkg-1.2/src/questa_uvm_pkg.sv(278) @ 0: reporter [Questa UVM]  questa_uvm::init(+struct)
# UVM_INFO @ 0: reporter [RNTST] Running test tlm_test...
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_root.svh(579) @ 0: reporter [UVMTOP] UVM testbench topology:
# ---------------------------------------------------------
# Name                   Type                   Size  Value
# ---------------------------------------------------------
# uvm_test_top           tlm_test               -     @355 
#   env_h                env                    -     @367 
#     consumer_h         consumer               -     @383 
#       consumer_imp_h   uvm_blocking_put_imp   -     @391 
#     producer_h         producer               -     @375 
#       producer_port_h  uvm_blocking_put_port  -     @400 
# ---------------------------------------------------------
# 
# UVM_INFO producer.sv(28) @ 10: uvm_test_top.env_h.producer_h [producer] producer put called @ 10
# ------------------------------
# Name     Type      Size  Value
# ------------------------------
# tx       my_tx     -     @420 
#   wr_rd  integral  1     'h1  
#   addr   integral  8     'h5a 
#   data   integral  8     'h3a 
# ------------------------------
# UVM_INFO consumer.sv(19) @ 25: uvm_test_top.env_h.consumer_h [consumer] consumer consumed data @ 25
# ------------------------------
# Name     Type      Size  Value
# ------------------------------
# tx       my_tx     -     @420 
#   wr_rd  integral  1     'h1  
#   addr   integral  8     'h5a 
#   data   integral  8     'h3a 
# ------------------------------
# UVM_INFO producer.sv(28) @ 35: uvm_test_top.env_h.producer_h [producer] producer put called @ 35
# ------------------------------
# Name     Type      Size  Value
# ------------------------------
# tx       my_tx     -     @438 
#   wr_rd  integral  1     'h1  
#   addr   integral  8     'h89 
#   data   integral  8     'h75 
# ------------------------------
# UVM_INFO consumer.sv(19) @ 50: uvm_test_top.env_h.consumer_h [consumer] consumer consumed data @ 50
# ------------------------------
# Name     Type      Size  Value
# ------------------------------
# tx       my_tx     -     @438 
#   wr_rd  integral  1     'h1  
#   addr   integral  8     'h89 
#   data   integral  8     'h75 
# ------------------------------
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_objection.svh(1270) @ 60: reporter [TEST_DONE] 'run' phase is ready to proceed to the 'extract' phase
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_report_server.svh(847) @ 60: reporter [UVM/REPORT/SERVER] 
# --- UVM Report Summary ---
# 
# ** Report counts by severity
# UVM_INFO :   10
# UVM_WARNING :    0
# UVM_ERROR :    0
# UVM_FATAL :    0
# ** Report counts by id
# [Questa UVM]     2
# [RNTST]     1
# [TEST_DONE]     1
# [UVM/RELNOTES]     1
# [UVMTOP]     1
# [consumer]     2
# [producer]     2
# 
# ** Note: $finish    : /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_root.svh(517)
#    Time: 60 ns  Iteration: 69  Instance: /top
