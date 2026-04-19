class mem_base_test extends uvm_test;

//factory registration
`uvm_component_utils(mem_base_test)

//env class instantiation
mem_env env_h;

//constructors
`NEW_COMP

//write uvm_phases
//build_phase
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	env_h=mem_env::type_id::create("env_h",this);

//-----------------------------------------------------------------------------------------------

//calling uvm_resource_tb set in mem_base_test to store the value of string as "vlsi" of key NAME
uvm_resource_db#(string)::set("STR","NAME","VLSI",this);
//-----------------------------------------------------------------------------------------------

endfunction


//run_phase
task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    //`uvm_info("mem_base_test","run_phase executed",UVM_NONE)
    #50;
    phase.drop_objection(this);
endtask

//extract_phase
//check_phase
//report_phase

endclass
	
	

	


