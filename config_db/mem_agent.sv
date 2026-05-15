class mem_agent extends uvm_agent;

int count;
//factory registration
`uvm_component_utils_begin(mem_agent)
	`uvm_field_int(count,UVM_ALL_ON | UVM_DEC)
`uvm_component_utils_end

//sqr,drv,mon instantiation
mem_drv drv_h;
mem_sqr sqr_h;

//constructors
`NEW_COMP

//required uvm_phases
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	drv_h=mem_drv::type_id::create("drv_h",this);
	sqr_h=mem_sqr::type_id::create("sqr_h",this); 
//------------------------------------------------------------------------------
 if(uvm_config_db#(int)::get(this,
 							"",//feild_name for retrival will be searched in the config_db at current component
							"count",
							count)==0)begin
	 `uvm_error("mem_agentt","FAILED TO RETRIVE VALUE FROM CFGDB")
 end
 this.print();
//------------------------------------------------------------------------------
endfunction

endclass


