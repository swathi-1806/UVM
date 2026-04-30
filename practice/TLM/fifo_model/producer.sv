class producer extends uvm_component;

`uvm_component_utils(producer)

//instantiate tlm1.0 base class
uvm_blocking_put_port#(my_tx) producer_port_h;

`NEW_COMP
  
 function void build_phase(uvm_phase phase);
    super.build_phase(phase);
	//here we have to use new() method to create a memory, bcoz tlam1.0 base classes are not registered to factory so we can't use create() method
    producer_port_h = new("producer_port_h", this);
  endfunction

//send the data to consumer
//to send the data we use put_method();
task run_phase(uvm_phase phase);
	my_tx tx;
  
	phase.raise_objection(this);
	phase.phase_done.set_drain_time(this,10);
 		 repeat(2)begin
			tx=my_tx::type_id::create("tx");
			//randomize the tx
			tx.randomize();
			#10;
			`uvm_info("producer",$sformatf("producer put called @ %0t",$time),UVM_NONE)
			tx.print();

			producer_port_h.put(tx);
 		end
 phase.drop_objection(this);
endtask

endclass

