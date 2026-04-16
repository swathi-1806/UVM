//this class controls the sequencer
class apb_wr_rd_test extends apb_base_test;

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
/*
// -------- Method 2 : manual mapping in run_phase --------
task run_phase(uvm_phase phase);
    apb_wr_rd_seq seq_h;

    seq_h = apb_wr_rd_seq::type_id::create("seq_h");

    phase.raise_objection(this);
    seq_h.start(env_h.agt_h.sqr_h);
    phase.drop_objection(this);
  endtask*/

endclass

