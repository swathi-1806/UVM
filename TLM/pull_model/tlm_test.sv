class tlm_test extends uvm_test;

`uvm_component_utils(tlm_test)
`NEW_COMP

//instantiate env
env env_h;

function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	env_h=env::type_id::create("env_h",this);
endfunction

function void end_of_elaboration_phase(uvm_phase phase);
	uvm_top.print_topology();
endfunction

endclass

