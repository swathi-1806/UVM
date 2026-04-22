class mem_drv_2 extends uvm_driver#(mem_err_tx);

//factory registration
`uvm_component_utils(mem_drv_2)
	
//constructors
`NEW_COMP

//required uvm_phases
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
endfunction
  
task run_phase(uvm_phase phase);
  mem_err_tx req;
  forever begin
    seq_item_port.get_next_item(req);
   // `uvm_info("DRV", "Transaction received in driver", UVM_NONE)
    req.print();
    seq_item_port.item_done();
  end
endtask

endclass

