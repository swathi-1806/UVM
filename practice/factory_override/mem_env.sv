class mem_env extends uvm_env;
//factory registration
`uvm_component_utils(mem_env)

//mem_agent instantiation
mem_agent_1 agt_h1;
mem_agent_2 agt_h2;
 
//constructors
`NEW_COMP

//required uvm_phases
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
  agt_h1=mem_agent_1::type_id::create("agt_h1",this);
  agt_h2=mem_agent_2::type_id::create("agt_h2",this);

endfunction


endclass

