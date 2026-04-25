class apb_agent extends uvm_agent;

//factory registration
  `uvm_component_utils(apb_agent)
  
//instantiate drv,mon,sqr
apb_drv drv_h;
apb_sqr sqr_h;

//constructor
`NEW_COMP

//build_phase
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	drv_h=apb_drv::type_id::create("drv_h",this);
	sqr_h=apb_sqr::type_id::create("sqr_h",this);
endfunction
  
//connect_phase
  function void connect_phase(uvm_phase phase);
    drv_h.seq_item_port.connect(sqr_h.seq_item_export);
  endfunction
endclass

