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


//end_of_elaboration
function void end_of_elaboration_phase(uvm_phase phase);
	uvm_top.print_topology();
	`uvm_info("mem_base_test","mem_base_test end_of_elaboration_phase is executed",UVM_NONE)
endfunction 

//run_phase
task run_phase(uvm_phase phase);
    
//1. instantiate the seq
	mem_seq seq_h;
//2. allocate memory for the seq
  seq_h=mem_seq::type_id::create("seq_h");
//3. raise the objections
	phase.raise_objection(this);
//4. map the seq to sqr
	seq_h.start(env_h.agent_h.sqr_h);
//5. drop the objection
	phase.drop_objection(this);
  `uvm_info("mem_base_test","run_phase executed",UVM_NONE)

endtask

//extract_phase
//check_phase
//report_phase

endclass
	
