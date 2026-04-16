//this class controls the sequencer
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


endclass

