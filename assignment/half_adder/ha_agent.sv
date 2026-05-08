class ha_agent extends uvm_agent;
`uvm_component_utils(ha_agent)
`NEW_COMP

//declare-mon,drv,cov,sqr
ha_drv drv_h;
ha_mon mon_h;
ha_sqr sqr_h;
ha_cov cov_h;

//required phase
//build_phase
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	drv_h = ha_drv::type_id::create("drv_h",this);
	mon_h = ha_mon::type_id::create("mon_h",this);
	sqr_h = ha_sqr::type_id::create("sqr_h",this);
	cov_h = ha_cov::type_id::create("cov_h",this);
endfunction

function void connect_phase(uvm_phase phase);
	//we have to connect drv to sqr
	drv_h.seq_item_port.connect(sqr_h.seq_item_export);

	//mon to cov connection
	mon_h.mon_ap_h.connect(cov_h.analysis_export);
	
endfunction

endclass

