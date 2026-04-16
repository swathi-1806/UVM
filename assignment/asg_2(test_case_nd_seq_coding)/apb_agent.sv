class apb_agent extends uvm_agent;

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

endclass

