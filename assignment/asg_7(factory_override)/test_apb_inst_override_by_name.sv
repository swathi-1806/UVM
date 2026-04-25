class test_apb_inst_override_by_name extends apb_base_test;

  `uvm_component_utils(test_apb_inst_override_by_name)
  `NEW_COMP
	 
 function void build_phase(uvm_phase phase);

    // Do overrides BEFORE environment is created
   uvm_factory::get().set_inst_override_by_name("apb_tx",
                                                "apb_err_tx",
                                               "uvm_test_top.env_h.agt_h.*");//override is applicable only for drv and sqr



   uvm_factory::get().set_inst_override_by_name("apb_drv",
                                                "apb_err_drv",
                                               "uvm_test_top.env_h.agt_h.*");//override is applicable only for drv and sqr

    // Now create env/agent/driver through base test
    super.build_phase(phase);

  endfunction

endclass
