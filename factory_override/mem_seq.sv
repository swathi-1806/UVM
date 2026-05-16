class mem_sequence extends uvm_sequence#(mem_tx);
	`uvm_object_utils(mem_sequence)
	`NEW_OBJ

task pre_body();
endtask

task body();
 
    `uvm_do(req)
 
endtask

task post_body();
endtask

endclass

