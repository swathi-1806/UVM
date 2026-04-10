class mem_base_test extends uvm_test;

//factory registration
`uvm_component_utils(mem_base_test)

//env class instantiation
mem_env env_h;

//constructors
function new(string name="mem_base_test",uvm_component parent);
	super.new(name,parent);
endfunction

//write uvm_phases
//build_phase
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	env_h=mem_env::type_id::create("env_h",this);

	`uvm_info("mem_base_test","mem_base_test build_phase is executed",UVM_NONE)
endfunction

//connect_phase
function void connect_phase(uvm_phase phase);
//	super.connect_phase(phase);//optional
	`uvm_info("mem_base_test","mem_base_test connect_phase is executed",UVM_NONE)
endfunction

//end_of_elaboration
function void end_of_elaboration_phase(uvm_phase phase);
	`uvm_info("mem_base_test","mem_base_test end_of_elaboration_phase is executed",UVM_NONE)
endfunction

//start_of_simulation
function void start_of_simulation_phase(uvm_phase phase);
	`uvm_info("mem_base_test","mem_base_test start_of_simulation_phase is executed",UVM_NONE)
endfunction

//run_phase
task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    `uvm_info("mem_base_test","run_phase executed",UVM_NONE)
    #50;
    phase.drop_objection(this);
endtask

//extract_phase
//check_phase
//report_phase

endclass
	
	


