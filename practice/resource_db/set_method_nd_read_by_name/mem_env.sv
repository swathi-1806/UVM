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

//retrive the value of count in env connect_phase
function void connect_phase(uvm_phase phase);
	if(uvm_resource_db#(int)::read_by_name("DRV","DRV_COUNT",count_2,this)==0)begin
		`uvm_error("mem_env","RETRIVAL OF COUNT FROM DRV TO ENV HAS FAILED")
	end
	`uvm_info("mem_env",$sformatf("counnt_2=%0d",count_2),UVM_NONE)
endfunction

endclass



