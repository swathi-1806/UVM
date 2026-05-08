class ha_test extends uvm_test;
`uvm_component_utils(ha_test)
`NEW_COMP

//instantiation of env
ha_env env_h;

//required phase
//build_phase
function void  build_phase(uvm_phase phase);
	super.build_phase(phase);
	env_h = ha_env::type_id::create("env_h",this);
endfunction

//end_of_elaboration_phase
function void end_of_elaboration_phase(uvm_phase phase);
	uvm_top.print_topology();
endfunction

//run_phase
task run_phase(uvm_phase phase);
	//1.instantiate seq
	ha_seq seq_h;
	seq_h = ha_seq::type_id::create("seq_h");

	//2.raise objection
	phase.raise_objection(this);

	//3.map seq to sqr usg start method
	seq_h.start(env_h.agt_h.sqr_h);
	
	//4.drain time
  //phase.phase_done.set_drain_time(this,100);

	//5.drop objection
	phase.drop_objection(this);
endtask

endclass

