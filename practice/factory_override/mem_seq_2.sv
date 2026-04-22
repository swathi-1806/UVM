class mem_sequence_2 extends uvm_sequence#(mem_err_tx);
	`uvm_object_utils(mem_sequence_2)
	`NEW_OBJ

task pre_body();
endtask

task body();
 
    `uvm_do(req)
 
endtask

task post_body();
endtask

endclass

