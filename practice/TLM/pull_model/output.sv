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
#       consumer_port_h  uvm_blocking_get_port  -     @391 
#     producer_h         producer               -     @375 
#       producer_imp_h   uvm_blocking_get_imp   -     @401 
# ---------------------------------------------------------
# 
# UVM_INFO consumer.sv(21) @ 0: uvm_test_top.env_h.consumer_h [consumer] calling the get method
# UVM_INFO producer.sv(20) @ 0: uvm_test_top.env_h.producer_h [producer] get method called
# UVM_INFO producer.sv(27) @ 0: uvm_test_top.env_h.producer_h [producer] producer randomized tx is @ 0
# ------------------------------
# Name     Type      Size  Value
# ------------------------------
# tx_t     my_tx     -     @426 
#   wr_rd  integral  1     'h1  
#   addr   integral  8     'h9c 
#   data   integral  8     'h6a 
# ------------------------------
# UVM_INFO consumer.sv(25) @ 0: uvm_test_top.env_h.consumer_h [consumer] received tx is @ 0
# ------------------------------
# Name     Type      Size  Value
# ------------------------------
# tx_t     my_tx     -     @426 
#   wr_rd  integral  1     'h1  
#   addr   integral  8     'h9c 
#   data   integral  8     'h6a 
# ------------------------------
# UVM_INFO consumer.sv(21) @ 0: uvm_test_top.env_h.consumer_h [consumer] calling the get method
# UVM_INFO producer.sv(20) @ 0: uvm_test_top.env_h.producer_h [producer] get method called
# UVM_INFO producer.sv(27) @ 0: uvm_test_top.env_h.producer_h [producer] producer randomized tx is @ 0
# ------------------------------
# Name     Type      Size  Value
# ------------------------------
# tx_t     my_tx     -     @435 
#   wr_rd  integral  1     'h1  
#   addr   integral  8     'hbc 
#   data   integral  8     'h61 
# ------------------------------
# UVM_INFO consumer.sv(25) @ 0: uvm_test_top.env_h.consumer_h [consumer] received tx is @ 0
# ------------------------------
# Name     Type      Size  Value
# ------------------------------
# tx_t     my_tx     -     @435 
#   wr_rd  integral  1     'h1  
#   addr   integral  8     'hbc 
#   data   integral  8     'h61 
# ------------------------------
# UVM_INFO /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_report_server.svh(847) @ 0: reporter [UVM/REPORT/SERVER] 
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
# [UVM/RELNOTES]     1
# [UVMTOP]     1
# [consumer]     4
# [producer]     4
# 
# ** Note: $finish    : /usr/share/questa/questasim/verilog_src/uvm-1.2/src/base/uvm_root.svh(517)
#    Time: 0 ns  Iteration: 269  Instance: /top

