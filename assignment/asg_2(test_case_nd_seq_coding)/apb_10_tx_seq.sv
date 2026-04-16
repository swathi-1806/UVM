//“Every functional test should have its own dedicated sequence”

class apb_10_tx_seq extends apb_base_seq;

//factory registration
  `uvm_object_utils(apb_10_tx_seq)
  
//constructor
 `NEW_OBJ

task body();
  `uvm_do(req);
endtask

endclass
