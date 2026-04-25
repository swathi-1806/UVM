class test_apb_inst_override_by_type extends apb_base_test;

  `uvm_component_utils(test_apb_inst_override_by_type)
  `NEW_COMP
	 
 function void build_phase(uvm_phase phase);

    // Do overrides BEFORE environment is created
   uvm_factory::get().set_inst_override_by_type(apb_tx::get_type(),
                                                apb_err_tx::get_type(),
                                               "uvm_test_top.env_h.agt_h.*");

   uvm_factory::get().set_inst_override_by_type(apb_drv::get_type(),
                                                apb_err_drv::get_type(),
                                               "uvm_test_top.env_h.agt_h.*");

    // Now create env/agent/driver through base test
    super.build_phase(phase);

  endfunction

endclass
