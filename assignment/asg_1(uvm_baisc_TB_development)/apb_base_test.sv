class apb_base_test extends uvm_test;

//factory registration
`uvm_component_utils(apb_base_test)

//instantiate the env
apb_env env_h;

//constructor
function new(string name="apb_base_test",uvm_component parent);
	super.new(name,parent);
endfunction

//phases
//build_phase
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	env_h=apb_env::type_id::create("env_h",this);
	`uvm_info("apb_base_test","apb_base_test build_phase is executed",UVM_NONE)
endfunction

//connect_phase
function void connect_phase(uvm_phase phase);
		`uvm_info("apb_base_test","apb_base_test connect_phase is executed",UVM_NONE)
endfunction
  
//run_phase
task run_phase(uvm_phase phase);
  phase.raise_objection(this);
  #100;//simulation ends at 100ns
  phase.drop_objection(this);
endtask
    

//end_pf_elaboration_phase

function void end_of_elaboration_phase(uvm_phase phase);
	uvm_top.print_topology();
endfunction

endclass


