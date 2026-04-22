class mem_sequence_1 extends uvm_sequence#(mem_tx);
	`uvm_object_utils(mem_sequence_1)
	`NEW_OBJ

task pre_body();
endtask

task body();
 
    `uvm_do(req)
 
endtask

task post_body();
endtask

endclass

