class apb_base_test extends uvm_test;

//factory registration
`uvm_component_utils(apb_base_test)

//instantiate env
apb_env env_h;

//constructor
`NEW_COMP

//build_phase
  function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	env_h=apb_env::type_id::create("env_h",this);
endfunction

//end_of_elaboration
function void end_of_elaboration_phase(uvm_phase phase);
	uvm_top.print_topology();
endfunction

//run task
task run_phase(uvm_phase phase);
apb_base_seq seq_h;
seq_h=apb_base_seq::type_id::create("seq_h");
phase.raise_objection(this);
  seq_h.start(env_h.agt_h.sqr_h);
phase.drop_objection(this);
endtask


endclass////this class controls the sequencer
class apb_10_tx_test extends apb_base_test;

//factory registration
  `uvm_component_utils(apb_10_tx_test)

//constructor
`NEW_COMP

// -------- Method 1 : default_sequence --------  
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);

		uvm_config_db #(uvm_object_wrapper)::set(this,
		"env_h.agt_h.sqr_h.run_phase",
		"default_sequence",
		apb_10_tx_seq::type_id::get());
		
	endfunction
  
 /*
//run task
//----------------------------------------------------------
//Method 1 — Explicit mapping (manual)
Which sequence?

This one:
apb_base_seq seq_h;
seq_h = apb_base_seq::type_id::create("seq_h");

So the sequence being run is apb_base_test.

Which sequencer?
This one:
env_h.agt_h.sqr_h
//----------------------------------------------------------
// -------- Method 2 : manual mapping in run_phase --------
task run_phase(uvm_phase phase);
    apb_10_tx_seq seq_h;

    seq_h = apb_10_tx_seq::type_id::create("seq_h");

    phase.raise_objection(this);
    seq_h.start(env_h.agt_h.sqr_h);
    phase.drop_objection(this);
  endtask
*/


endclass// class apb_wr_rd_test extends apb_base_test;

//factory registration
  `uvm_component_utils(apb_wr_rd_test)

//constructor
`NEW_COMP

//------------method-1:default_sequence usg build_phase---------
  
	function void build_phase(uvm_phase phase);
		super.build_phase(phase);

		uvm_config_db #(uvm_object_wrapper)::set(this,
		"env_h.agt_h.sqr_h.run_phase",
		"default_sequence",
		apb_wr_rd_seq::type_id::get());
		
	endfunction

// -------- Method 2 : manual mapping in run_phase --------
task run_phase(uvm_phase phase);
    apb_wr_rd_seq seq_h;

    seq_h = apb_wr_rd_seq::type_id::create("seq_h");

    phase.raise_objection(this);
    seq_h.start(env_h.agt_h.sqr_h);
    phase.drop_objection(this);
  endtask

endclass// class apb_10_tx_seq extends apb_base_seq;

//factory registration
  `uvm_object_utils(apb_10_tx_seq)
  
//constructor
 `NEW_OBJ

task body();
  `uvm_do(req);
endtask

endclass////“Every functional test should have its own dedicated sequence”

class apb_wr_rd_seq extends apb_base_seq;

//factory registration
  `uvm_object_utils(apb_wr_rd)
  
//constructor
 `NEW_OBJ

task body();
  `uvm_do(req);
endtask

endclass//class apb_agent extends uvm_agent;

//factory registration
  `uvm_component_utils(apb_agent)

//instantiate env
apb_drv drv_h;
//apb_mon mon_h;
apb_sqr sqr_h;
//apb_cov cov_h;

//constructor
`NEW_COMP

//build_phase
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	drv_h=apb_drv::type_id::create("drv_h",this);
	//mon_h=apb_mon::type_id::create("mon_h",this);
	sqr_h=apb_sqr::type_id::create("sqr_h",this);
	//cov_h=apb_cov::type_id::create("cov_h",this);
endfunction

//connect_phase
function void connect_phase(uvm_phase phase);
	drv_h.seq_item_port.connect(sqr_h.seq_item_export);
endfunction

endclass// `define NEW_COMP\
function new(string name="",uvm_component parent=null);\
	super.new(name,parent);\
endfunction

`define NEW_OBJ\
function new(string name="");\
	super.new(name);\
endfunction

class apb_config extends uvm_object;

//factory registration
  `uvm_object_utils(apb_config)
  
//constructor
 `NEW_OBJ
 
endclass//class apb_drv extends uvm_driver#(apb_tx);

//factory registration
  `uvm_component_utils(apb_drv)

//constructor
`NEW_COMP

//run_phase

task run_phase(uvm_phase phase);
	forever begin
		seq_item_port.get_next_item(req);
		driver_tx(req);
		seq_item_port.item_done();
	end
endtask

  task driver_tx(apb_tx tx);
	#10;
	tx.print();
endtask

endclass//class apb_env extends uvm_env;

//factory registration
`uvm_component_utils(apb_env)

//instantiate env
apb_agent agt_h;

//constructor
`NEW_COMP

//build_phase
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	agt_h=apb_agent::type_id::create("agt_h",this);
endfunction

endclass//class apb_base_seq extends uvm_sequence#(apb_tx);

//factory registration
  `uvm_object_utils(apb_base_seq)
  
//constructor
 `NEW_OBJ

//pre_body
 task pre_body();
    if (starting_phase != null)
      starting_phase.raise_objection(this);
  endtask
  
/*//body
  task body();
    `uvm_do(req);
  endtask*/

 //post_body
  task post_body();
    if (starting_phase != null)
      starting_phase.drop_objection(this);
  endtask

 

endclass//typedef uvm_sequencer #(apb_tx) apb_sqr;////`include "uvm_pkg.sv"
import uvm_pkg::*;

//just for eda
`include "uvm_macros.svh"

	
`include "apb_config.sv"
`include "apb_tx.sv"
`include "apb_drv.sv"
`include "apb_sqr.sv"
`include "apb_agent.sv"
`include "apb_env.sv"
`include "apb_seq_lib.sv"
`include "test_lib.sv"
`include "apb_10_tx_test.sv"

module tb;

initial begin
	run_test("apb_base_test");
end

endmodule
