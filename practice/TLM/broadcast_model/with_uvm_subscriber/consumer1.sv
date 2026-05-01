class consumer_1 extends uvm_subscriber#(my_tx);

`uvm_component_utils(consumer_1)

`NEW_COMP
  
  //implementation of write method
   virtual function void write(my_tx t);
   		my_tx tx;
		$cast(tx,t);
		`uvm_info("consumer_1",
					$sformatf("COV tx is %s",tx.sprint()),
					UVM_NONE)

   endfunction

endclass

