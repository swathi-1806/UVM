class consumer extends uvm_component;

`uvm_component_utils(consumer)

//instantiate tlm1.0 base class
 uvm_blocking_get_port#(my_tx)  consumer_port_h;

`NEW_COMP
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
	consumer_port_h=new("consumer_port_h",this);
   endfunction 

//call the get method to fetch the tx from producer
task run_phase(uvm_phase phase);
	my_tx tx;
  repeat(2) begin
    `uvm_info("consumer","calling the get method",UVM_NONE)

    consumer_port_h.get(tx);   // tx must be valid object

    `uvm_info("consumer",$sformatf("received tx is @ %0t",$time),UVM_NONE)
    tx.print();
  end
endtask

endclass

