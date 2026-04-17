class mem_base_test extends uvm_test;
`uvm_component_utils(mem_base_test)
`NEW_COMP

mem_env env_h;

function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	env_h=mem_env::type_id::create("env_h",this);
	`uvm_info("mem_base_test","mem_base_test build_phase executed",UVM_NONE)
endfunction

function void connect_phase(uvm_phase phase);
	`uvm_info("mem_base_test","mem_base_test connect_phase executed",UVM_NONE)
endfunction

function void end_of_elaboration_phase(uvm_phase phase);
	uvm_top.print_topology();
	`uvm_info("mem_base_test","mem_base_test end_of_elaboration_phase executed",UVM_NONE)
endfunction

function void start_of_simulation_phase(uvm_phase phase);
	`uvm_info("mem_base_test","mem_base_test start of simulation_phase executed",UVM_NONE)
endfunction


task run_phase(uvm_phase phase);
  mem_tx tx;
		phase.raise_objection(this);

		phase.phase_done.set_drain_time(this,50);

  		tx=mem_tx::type_id::create("tx");
  		tx.randomize();
  		$display("==================TABLE_FORMAT===================");
  		tx.print();

  		$display("=====================LINE_FORMAT======================");
  		tx.print(uvm_default_line_printer);

  		$display("=======================TREE_FORMAT======================");
  		tx.print(uvm_default_tree_printer);
  		
  		//using sprint
  		$display("sprint_msg=%s",tx.sprint());

		phase.drop_objection(this);
		`uvm_info("mem_base_test","mem_base_test run_phase is executed",UVM_NONE);
endtask

function void extract_phase(uvm_phase phase);
		`uvm_info("mem_base_test","mem_base_test extract_phase is executed",UVM_NONE);
endfunction

function void check_phase(uvm_phase phase);
		`uvm_info("mem_base_test","mem_base_test check_phase is executed",UVM_NONE);
endfunction

endclass




