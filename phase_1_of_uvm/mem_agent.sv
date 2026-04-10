class mem_agent extends uvm_agent;

//factory registration
`uvm_component_utils(mem_agent)

//sqr,drv,mon instantiation
mem_drv drv_h;
mem_sqr sqr_h;


//constructors
function new(string name="mem_agent",uvm_component parent);
	super.new(name,parent);
endfunction

//required uvm_phases
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	drv_h=mem_drv::type_id::create("drv_h",this);
	sqr_h=mem_sqr::type_id::create("sqr_h",this);
  `uvm_info("mem_agent","mem_agent build_phase is executed",UVM_NONE)


endfunction

endclass

