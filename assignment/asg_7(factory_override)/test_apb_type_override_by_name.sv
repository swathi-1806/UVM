class test_apb_type_override_by_name extends apb_base_test;

  `uvm_component_utils(test_apb_type_override_by_name)
  `NEW_COMP
	 
 function void build_phase(uvm_phase phase);

    // Do overrides BEFORE environment is created
   uvm_factory::get().set_type_override_by_name("apb_tx",
                                                "apb_err_tx");//override is applicable for entire tb



   uvm_factory::get().set_type_override_by_name("apb_drv",
                                                "apb_err_drv");//override is applicable for entire tb

    
    super.build_phase(phase);

  endfunction

endclass

