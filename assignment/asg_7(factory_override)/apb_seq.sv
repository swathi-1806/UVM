class apb_seq extends uvm_sequence #(apb_tx);

`uvm_object_utils(apb_seq)
`NEW_OBJ

task pre_body();
endtask

task body();
	`uvm_do(req)
endtask

task post_body();
endtask

endclass

