class mem_tx extends uvm_sequence_item;

//properties
rand bit wr_rd;
rand bit [31:0]wdata;
	 bit [31:0]rdata;
rand bit [31:0]addr;


//factory registration + feild registration
`uvm_object_utils_begin(mem_tx)
	`uvm_field_int(wr_rd, UVM_ALL_ON | UVM_DEC)
	`uvm_field_int(wdata, UVM_ALL_ON |UVM_DEC)
	`uvm_field_int(rdata, UVM_ALL_ON |UVM_DEC)
	`uvm_field_int(addr, UVM_ALL_ON |UVM_HEX)
`uvm_object_utils_end

//constructors
`NEW_OBJ

endclass
