class mem_drv extends uvm_driver#(mem_tx);

int count;

//factory registration
`uvm_component_utils_begin(mem_drv)
  `uvm_field_int(count,UVM_ALL_ON | UVM_DEC)
`uvm_component_utils_end

//variable declare to assign get_by_name return value
uvm_resource#(int) rsc_h;

//constructors
`NEW_COMP

//required uvm_phases
function void build_phase(uvm_phase phase);
	super.build_phase(phase);

//-----------------------------------------------------------------------------------------------
//retrive the resource db contents using Get_by_name method
//1.call the get_by_name method
rsc_h=uvm_resource_db#(int)::get_by_name("INT","INT_COUNT");

//2.check if grt_by_name was able to locate the value in the uvm_rsdb
if(rsc_h==null)
	`uvm_error("mem_drv","FAILED TO RETRIVE THE RSDB VALUE")

//3.call the read method by providing proper accessor to retrive th evalue
else
	count=rsc_h.read(this);
  this.print();
//`uvm_info("mem_drv",$sformatf("count=%d",count),UVM_NONE)

//-----------------------------------------------------------------------------------------------
endfunction

endclass


