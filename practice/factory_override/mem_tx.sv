class mem_tx extends uvm_sequence_item;

  rand bit wr_rd;
  rand bit [7:0]addr;
  rand bit [31:0]data;
  
//factory registration
`uvm_object_utils_begin(mem_tx)
  `uvm_field_int(wr_rd,UVM_ALL_ON)
  `uvm_field_int(addr,UVM_ALL_ON)
  `uvm_field_int(data,UVM_ALL_ON)
 `uvm_object_utils_end
//constructors
`NEW_OBJ

endclass

class mem_err_tx extends mem_tx;
  
  rand int err_count;

//factory registration
  `uvm_object_utils_begin(mem_err_tx)
  		`uvm_field_int(err_count,UVM_ALL_ON)
  `uvm_object_utils_end

//constructors
`NEW_OBJ

endclass


