class mem_agent extends uvm_agent;

//factory registration
`uvm_component_utils(mem_agent)

//sqr,drv,mon instantiation
mem_drv drv_h;
mem_sqr sqr_h;

string name;

//constructors
`NEW_COMP

//required uvm_phases
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	drv_h=mem_drv::type_id::create("drv_h",this);
	sqr_h=mem_sqr::type_id::create("sqr_h",this);
//--------------------------------------------------------------------------------------------
//calling uvm_resource_db read_by_nmae in build_phase of driver class to reteive integer count

  if(uvm_resource_db#(string)::read_by_name("STR","STR_NAME",name,this)==0)begin
	`uvm_error("mem_agent","RETRIVAL OF NAME FROM UVM_RSDB HAS FAILED")
end
`uvm_info("mem_agent",$sformatf("name=%s",name),UVM_NONE)

//--------------------------------------------------------------------------------------------
 
endfunction

endclass


