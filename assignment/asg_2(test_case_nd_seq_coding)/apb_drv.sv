class apb_drv extends uvm_driver#(apb_tx);

//factory registration
  `uvm_component_utils(apb_drv)

//constructor
`NEW_COMP

//run_phase

task run_phase(uvm_phase phase);
	forever begin
		seq_item_port.get_next_item(req);
		driver_tx(req);
		//req.print();
		seq_item_port.item_done();
	end
endtask

  task driver_tx(apb_tx tx);
	//#10;
	tx.print();
endtask

endclass
