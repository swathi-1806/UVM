class eth_pkt extends uvm_object;

//properties
rand bit [31:0] sa;
rand bit [31:0] da;
rand int count;
	 bit [7:0] payload[];

//factory+field registration
`uvm_object_utils_begin(eth_pkt)
	`uvm_field_int(sa,UVM_ALL_ON | UVM_BIN)
	`uvm_field_int(da,UVM_ALL_ON | UVM_BIN)
	`uvm_field_int(count,UVM_ALL_ON | UVM_BIN)
	`uvm_field_array_int(payload,UVM_ALL_ON | UVM_BIN)
`uvm_object_utils_end

//constructor
`NEW_OBJ
endclass
