class mem_env extends uvm_env;
`uvm_component_utils(mem_env)
`NEW_COMP

mem_agent agt_h;

function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	agt_h=mem_agent::type_id::create("agt_h",this);
	`uvm_info("mem_env","mem_env build_phase is executed",UVM_NONE)
endfunction

function void connect_phase(uvm_phase phase);
//TODO:we need connect agent nd ,monitor 
	`uvm_info("mem_env","mem_env connect_phase is executed",UVM_NONE)
endfunction

function void end_of_elaboration_phase(uvm_phase phase);
	`uvm_info("mem_env","mem_env end_of_elaboration_phase executed",UVM_NONE)
endfunction

function void start_of_simulation_phase(uvm_phase phase);
	`uvm_info("mem_env","mem_env start of simulation_phase executed",UVM_NONE)
endfunction


task run_phase(uvm_phase phase);
`uvm_info("mem_env","mem_env run_phase is executed",UVM_NONE);
endtask

function void extract_phase(uvm_phase phase);
		`uvm_info("mem_env","mem_env extract_phase is executed",UVM_NONE);
endfunction

function void check_phase(uvm_phase phase);
		`uvm_info("mem_env","mem_env check_phase is executed",UVM_NONE);
endfunction


endclass

