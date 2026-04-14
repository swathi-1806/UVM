class mem_drv extends uvm_driver#(mem_tx);

//factory registration
`uvm_component_utils(mem_drv)

//constructors
function new(string name="mem_drv",uvm_component parent);
	super.new(name,parent);
endfunction

//required uvm_phases
//for automatic variable retrival process
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	`uvm_info("mem_drv","mem_drv build_phase is executed",UVM_NONE)

endfunction

//run_phase
task run_phase(uvm_phase phase);
  `uvm_info("mem_drv","mem_drv run_phase is executed",UVM_NONE)
	forever begin
		seq_item_port.get_next_item(req);
		driver_tx(req);
		seq_item_port.item_done();
	end
endtask

	task driver_tx(mem_tx tx);
		#10;
		tx.print();
	endtask

endclass
