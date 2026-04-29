class producer extends uvm_component;

`uvm_component_utils(producer)

//instantiate tlm1.0 base class
 uvm_blocking_get_imp#(my_tx,producer)  producer_imp_h;


`NEW_COMP
  
 function void build_phase(uvm_phase phase);
    super.build_phase(phase);
	producer_imp_h=new("producer_imp_h",this);
	tx = my_tx::type_id::create("tx");
 endfunction

//provide the implen=metation of get method
task get(output my_tx tx);
`uvm_info("producer","get method called",UVM_NONE)
	tx.randomize();
	`uvm_info("producer",$sformatf("producer randomized tx is %s",tx.print()),UVM_NONE)
	tx_t = tx;//assign the randomize tx to task output argument
	//$cast(tx_t,tx);
endtask

endclass
