class consumer extends uvm_component;

`uvm_component_utils(consumer)

//instantiate tlm1.0 base class
  uvm_blocking_put_imp#(my_tx,consumer) consumer_imp_h;

`NEW_COMP
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    consumer_imp_h = new("consumer_imp_h", this);
  endfunction 

//consume the data from producer
//consumer will have the implementation of put method
task put(my_tx tx);
	#15;//for every 15  timesteps the consumer is consumming the tx
	`uvm_info("consumer",$sformatf("consumer consumed data @ %0t",$time),UVM_NONE)

	tx.print();
endtask
endclass
