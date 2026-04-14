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
//build_phase
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	drv_h=mem_drv::type_id::create("drv_h",this);
	sqr_h=mem_sqr::type_id::create("sqr_h",this);
  `uvm_info("mem_agent","mem_agent build_phase is executed",UVM_NONE)
endfunction

function void connect_phase(uvm_phase phase);
//drv and sqr need to be connected
//drv and sqr are implemented in a PULL model approach
//here drv-->slave , sqr-->master
	drv_h.seq_item_port.connect(seq_h.seq_item_export);
	
//mon and cov need to be connected

  `uvm_info("mem_agent","mem_agent connect_phase is executed",UVM_NONE)
endfunction

endclass

