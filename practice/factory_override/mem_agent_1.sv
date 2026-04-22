class mem_agent_1 extends uvm_agent;

//factory registration
`uvm_component_utils(mem_agent_1)
	
//sqr,drv,mon instantiation
mem_drv_1 drv_h1;
mem_sqr_1 sqr_h1;
mem_mon_1 mon_h1;
//constructors
`NEW_COMP

//required uvm_phases
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	drv_h1	=mem_drv_1::type_id::create("drv_h1",this);
	sqr_h1	=mem_sqr_1::type_id::create("sqr_h1",this);
	mon_h1	=mem_mon_1::type_id::create("mon_h1",this);
endfunction
  
 function void connect_phase(uvm_phase phase);
  super.connect_phase(phase);
  drv_h1.seq_item_port.connect(sqr_h1.seq_item_export);
endfunction

endclass



