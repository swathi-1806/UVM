class mem_seq extends uvm_sequence#(mem_tx);
//factory registration
`uvm_object_utils(mem_seq)

//constructor
function new(string name="mem_seq");
	super.new(name);
endfunction  

//functionality of the sequence
	//-randomize the tx and provide to sqr
task pre_body();
	`uvm_info("PRE_BODY","mem_seq pre_body executed",UVM_NONE)
endtask

task body();
	`uvm_info("BODY","mem_seq body executed",UVM_NONE)
	`uvm_do(req)
endtask
	
task post_body();
	`uvm_info("POST_BODY","mem_seq post_body executed",UVM_NONE) 
endtask

	

endclass
