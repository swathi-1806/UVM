class apb_tx extends uvm_sequence_item;

//properties
rand bit [7:0]data;
rand bit [15:0]addr;
rand bit wr_rd;

//factory registration + field registration
`uvm_object_utils_begin(apb_tx)
	`uvm_field_int(data,UVM_ALL_ON | UVM_BIN)
	`uvm_field_int(wr_rd,UVM_ALL_ON | UVM_BIN)
	`uvm_field_int(addr,UVM_ALL_ON | UVM_HEX)
`uvm_object_utils_end

//constructor
`NEW_OBJ

endclass

