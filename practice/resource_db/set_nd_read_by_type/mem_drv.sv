class mem_drv extends uvm_driver#(mem_tx);

string name;

//factory registration
`uvm_component_utils_begin(mem_drv)
	`uvm_field_string(name,UVM_ALL_ON)
`uvm_component_utils_end

//constructors
`NEW_COMP

//required uvm_phases
function void build_phase(uvm_phase phase);
	super.build_phase(phase);

//-----------------------------------------------------------------------------------------------
//retrive the resource db contents using read_by_type method
if(uvm_resource_db#(string)::read_by_type("STR",name,this)==0)begin
`uvm_error("mem_drv","RETRIVAL OF VALUE FROM RSDB HAS FAILED")
end
//`uvm_info("mem_drv"$sformatf("name=%0s",name),UVM_NONE)
this.print();
//-----------------------------------------------------------------------------------------------
endfunction

endclass

