class ha_tx extends uvm_sequence_item;

//properties
rand bit a;
rand bit b;
bit sum;
bit carry;
  
// Ensure equal probability for all combinations
  constraint c_all_comb {
    {a,b} dist {
      2'b00 := 1,
      2'b01 := 1,
      2'b10 := 1,
      2'b11 := 1
    };
  }

///factory+feild registration
`uvm_object_utils_begin(ha_tx);
	`uvm_field_int(a,UVM_ALL_ON | UVM_BIN)
	`uvm_field_int(b,UVM_ALL_ON | UVM_BIN)
	`uvm_field_int(sum,UVM_ALL_ON | UVM_BIN)
	`uvm_field_int(carry,UVM_ALL_ON | UVM_BIN)
`uvm_object_utils_end

`NEW_OBJ


endclass

