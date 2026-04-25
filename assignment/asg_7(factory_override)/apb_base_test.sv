class apb_base_test extends uvm_test;

//factory registration
`uvm_component_utils(apb_base_test)

//instantiate the env
apb_env env_h;

//constructor
`NEW_COMP

//phases
//build_phase
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	env_h=apb_env::type_id::create("env_h",this);

endfunction

//connect_phase
function void connect_phase(uvm_phase phase);
		
endfunction
  
//run_phase
task run_phase(uvm_phase phase);
	apb_seq seq_h = apb_seq::type_id::create("seq_h",this);
  phase.raise_objection(this);
  seq_h.start(env_h.agt_h.sqr_h);
  phase.drop_objection(this);
endtask
    

//end_pf_elaboration_phase

function void end_of_elaboration_phase(uvm_phase phase);
	uvm_top.print_topology();
    uvm_factory::get().print();
endfunction

endclass




