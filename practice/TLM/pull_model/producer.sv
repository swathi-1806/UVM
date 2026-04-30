class producer extends uvm_component;

`uvm_component_utils(producer)

//instantiate tlm1.0 base class
 uvm_blocking_get_imp#(my_tx,producer)  producer_imp_h;
my_tx tx;

`NEW_COMP
  
 function void build_phase(uvm_phase phase);
    super.build_phase(phase);
	producer_imp_h=new("producer_imp_h",this);
	tx = my_tx::type_id::create("tx");
 endfunction

// Implementation of get method
task get(output my_tx tx_t);

  `uvm_info("producer","get method called",UVM_NONE)

  // Create fresh object every call
  tx_t = my_tx::type_id::create("tx_t");

  tx_t.randomize();

  `uvm_info("producer",$sformatf("producer randomized tx is @ %0t",$time),UVM_NONE)
  tx_t.print();

endtask
endclass
