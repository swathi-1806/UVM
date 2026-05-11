class my_tx extends uvm_object;
rand bit wr_rd;
rand bit [7:0]addr;
rand bit [7:0]data;

`uvm_object_utils_begin(my_tx)
	`uvm_field_int(wr_rd,UVM_ALL_ON)
	`uvm_field_int(addr,UVM_ALL_ON)
	`uvm_field_int(data,UVM_ALL_ON)
`uvm_object_utils_end

`NEW_OBJ


endclass
