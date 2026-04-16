class apb_env extends uvm_env;

//factory registration
`uvm_component_utils(apb_env)

//instantiate env
apb_agent agt_h;

//constructor
`NEW_COMP

//build_phase
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	agt_h=apb_agent::type_id::create("agt_h",this);
endfunction

endclass
