class mem_drv extends uvm_driver#(mem_tx);
`uvm_component_utils(mem_drv)
`NEW_COMP


//run_phase
task run_phase(uvm_phase phase);
   phase.raise_objection(this);
  `uvm_info("mem_drv","----drv before delay----",UVM_NONE)
	//#10;
  `uvm_info("mem_drv","----drv after delay----",UVM_NONE)
  phase.drop_objection(this);
  `uvm_info("mem_drv","mem_drv run_phase is executed",UVM_NONE)

endtask
 
    

function void end_of_elaboration_phase(uvm_phase phase);
	`uvm_info("mem_drv","mem_drv end_of_elaboration_phase executed",UVM_NONE)
endfunction

function void start_of_simulation_phase(uvm_phase phase);
	`uvm_info("mem_drv","mem_drv start of simulation_phase executed",UVM_NONE)
endfunction

function void extract_phase(uvm_phase phase);
		`uvm_info("mem_drv","mem_drv extract_phase is executed",UVM_NONE);
endfunction

function void check_phase(uvm_phase phase);
		`uvm_info("mem_drv","mem_drv check_phase is executed",UVM_NONE);
endfunction



endclass



