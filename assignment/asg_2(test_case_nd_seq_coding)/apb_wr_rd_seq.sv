//“Every functional test should have its own dedicated sequence”

class apb_wr_rd_seq extends apb_base_seq;

//factory registration
  `uvm_object_utils(apb_wr_rd_seq)
  
//constructor
 `NEW_OBJ


task body();
  `uvm_do(req)
 // req.print();   // prints randomized values
endtask

endclass
