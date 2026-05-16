class mem_base_test extends uvm_test;

//factory registration
`uvm_component_utils(mem_base_test)

//env class instantiation
mem_env env_h;

//instantiate the factory
uvm_factory uvm_factory_h;

//constructors
`NEW_COMP

//write uvm_phases
//build_phase
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	env_h=mem_env::type_id::create("env_h",this);
	
  	//facory_override
	uvm_factory_h = uvm_factory::get();
	
	/*
	//set_inst_override by_name
    uvm_factory_h.set_inst_override_by_name("mem_tx",
                           "mem_err_tx",
                           "uvm_test_top.env_h.agt_h2.*");
	*/

	//set_inst_override by_type
    uvm_factory_h.set_inst_override_by_type(mem_tx::get_type(),
                            mem_err_tx::get_type(),
                           "uvm_test_top.env_h.agt_h2.*");

endfunction

//end_of_elaboration
function void end_of_elaboration_phase(uvm_phase phase);
	uvm_top.print_topology();
	uvm_factory_h.print();
endfunction

//run_phase
task run_phase(uvm_phase phase);
	mem_sequence seq_h1 = mem_sequence::type_id::create("seq_h1",this);	
    mem_sequence seq_h2 = mem_sequence::type_id::create("seq_h2",this);	
  
    phase.raise_objection(this);
	//phase.phase_done.set_drain_time(this,20);
	fork
    seq_h1.start(env_h.agt_h1.sqr_h1);
	seq_h2.start(env_h.agt_h2.sqr_h2);
    join
    phase.drop_objection(this);
endtask

//extract_phase
//check_phase
//report_phase

endclass


