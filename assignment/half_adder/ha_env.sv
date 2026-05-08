class ha_env extends uvm_env;
`uvm_component_utils(ha_env)
`NEW_COMP

//decaration of agent and sbd
ha_agent agt_h;
ha_sbd sbd_h;

//required phase
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	agt_h = ha_agent::type_id::create("agt_h",this);
	sbd_h = ha_sbd::type_id::create("sbd_h",this);
endfunction

function void connect_phase(uvm_phase phase);
	//we have to connect monitot to sbd
	agt_h.mon_h.mon_ap_h.connect(sbd_h.analysis_export);
endfunction

endclass

