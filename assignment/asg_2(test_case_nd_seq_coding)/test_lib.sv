class apb_base_test extends uvm_test;

//factory registration
`uvm_component_utils(apb_base_test)

//instantiate env
apb_env env_h;

//constructor
`NEW_COMP

//build_phase
  function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	env_h=apb_env::type_id::create("env_h",this);
endfunction

//end_of_elaboration
function void end_of_elaboration_phase(uvm_phase phase);
	uvm_top.print_topology();
endfunction

endclass
