class consumer extends uvm_component;

`uvm_component_utils(consumer)

//instantiate tlm1.0 base class
  uvm_blocking_get_port#(my_tx) consumer_port_h;

`NEW_COMP
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    consumer_port_h = new("consumer_port_h", this);
  endfunction 

//consume the data from producer
//consumer will have the implementation of put method
task run_phase(uvm_phase phase);
  my_tx tx;
	`uvm_info("consumer","calling the get method of producer",UVM_NONE)
	repeat(2) begin
  		consumer_port_h.get(tx);
  `		uvm_info("consumer", $sformatf("received tx is %s", tx.sprint()), UVM_NONE)
		end
endtask
endclass
