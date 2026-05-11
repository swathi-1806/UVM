class producer extends uvm_component;

`uvm_component_utils(producer)

//instantiate tlm1.0 base class
uvm_analysis_port#(my_tx) producer_ap_h;

`NEW_COMP
  
 function void build_phase(uvm_phase phase);
    super.build_phase(phase);
	producer_ap_h =new("producer_ap_h",this);
endfunction

//send the data to consumer
//to send the data we use put_method();
task run_phase(uvm_phase phase);
	my_tx tx = my_tx::type_id::create("tx");
	tx.randomize();
    `uvm_info("producer",$sformatf("producer tx is %s",tx.sprint()),UVM_NONE)

	//call the write method
  producer_ap_h.write(tx);
endtask

endclass

