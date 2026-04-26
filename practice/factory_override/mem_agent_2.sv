class mem_agent_2 extends uvm_agent;

//factory registration
`uvm_component_utils(mem_agent_2)
	
//sqr,drv,mon instantiation
mem_drv drv_h2;
mem_sqr sqr_h2;
mem_mon mon_h2;
//constructors
`NEW_COMP

//required uvm_phases
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	drv_h2	=mem_drv::type_id::create("drv_h2",this);
	sqr_h2	=mem_sqr::type_id::create("sqr_h2",this);
	mon_h2	=mem_mon::type_id::create("mon_h2",this);
endfunction
  
 function void connect_phase(uvm_phase phase);
  super.connect_phase(phase);
  drv_h2.seq_item_port.connect(sqr_h2.seq_item_export);
endfunction

endclass


