class mem_drv extends uvm_driver#(mem_tx);

//factory registration
`uvm_component_utils(mem_drv)

//constructors
function new(string name="mem_drv",uvm_component parent);
	super.new(name,parent);
endfunction

//required uvm_phases
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	`uvm_info("mem_drv","mem_drv build_phase is executed",UVM_NONE)

endfunction

endclass
