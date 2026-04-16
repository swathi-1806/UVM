class apb_base_seq extends uvm_sequence#(apb_tx);

//factory registration
  `uvm_object_utils(apb_base_seq)
  
//constructor
 `NEW_OBJ

//pre_body
 task pre_body();
    if (starting_phase != null)
      starting_phase.raise_objection(this);
  endtask
  
/*//body
  task body();
    `uvm_do(req);
  endtask*/

 //post_body
  task post_body();
    if (starting_phase != null)
      starting_phase.drop_objection(this);
  endtask

 

endclass
