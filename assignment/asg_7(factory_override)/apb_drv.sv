class apb_drv extends uvm_driver #(apb_tx);

`uvm_component_utils(apb_drv)
`NEW_COMP

  task run_phase(uvm_phase phase);
	apb_tx req;
	forever begin
      seq_item_port.get_next_item(req);
		req.print();
      seq_item_port.item_done();
	end
endtask

endclass

class apb_err_drv extends apb_drv;
`uvm_component_utils(apb_err_drv)
`NEW_COMP

  task run_phase(uvm_phase phase);
apb_tx req;
	forever begin
      seq_item_port.get_next_item(req);
		req.print();
      seq_item_port.item_done();
	end
endtask

endclass


