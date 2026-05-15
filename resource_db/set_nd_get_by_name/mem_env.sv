class mem_env extends uvm_env;

//factory registration
`uvm_component_utils(mem_env)

//mem_agent instantiation
mem_agent agent_h;
 
//constructors
`NEW_COMP

//required uvm_phases
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
  agent_h=mem_agent::type_id::create("agent_h",this);
endfunction


endclass



