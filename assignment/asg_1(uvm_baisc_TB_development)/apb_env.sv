class apb_env extends uvm_env;

//factory registration
`uvm_component_utils(apb_env)

//instantiate apb_agent
apb_agent agt_h;


//constructor
function new(string name="apb_env",uvm_component parent);
	super.new(name,parent);
endfunction

//phase
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	agt_h=apb_agent::type_id::create("agt_h",this);
endfunction

endclass

