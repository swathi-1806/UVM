class mem_agent extends uvm_agent;
`uvm_component_utils(mem_agent)
`NEW_COMP

mem_drv drv_h;
mem_sqr sqr_h;

//required uvm_phases
//build_phase
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	drv_h=mem_drv::type_id::create("drv_h",this);
	sqr_h=mem_sqr::type_id::create("sqr_h",this);
  `uvm_info("mem_agent","mem_agent build_phase is executed",UVM_NONE)
endfunction

function void connect_phase(uvm_phase phase);
`uvm_info("mem_agent","mem_agent connect_phase is executed",UVM_NONE)
endfunction

function void end_of_elaboration_phase(uvm_phase phase);
	`uvm_info("mem_agent","mem_agent end_of_elaboration_phase executed",UVM_NONE)
endfunction

function void start_of_simulation_phase(uvm_phase phase);
	`uvm_info("mem_agent","mem_agent start of simulation_phase executed",UVM_NONE)
endfunction


task run_phase(uvm_phase phase);
`uvm_info("mem_agent","mem_agent run_phase is executed",UVM_NONE);
endtask

function void extract_phase(uvm_phase phase);
		`uvm_info("mem_agent","mem_agent extract_phase is executed",UVM_NONE);
endfunction

function void check_phase(uvm_phase phase);
		`uvm_info("mem_agent","mem_agent check_phase is executed",UVM_NONE);
endfunction



endclass


