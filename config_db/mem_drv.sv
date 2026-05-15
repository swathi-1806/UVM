class mem_drv extends uvm_driver#(mem_tx);

int count;
//factory registration
`uvm_component_utils_begin(mem_drv)
		`uvm_field_int(count,UVM_ALL_ON | UVM_DEC)
`uvm_component_utils_end

//constructors
`NEW_COMP

//required uvm_phases
function void build_phase(uvm_phase phase);
	super.build_phase(phase);
//------------------------------------------------------------------------------
 if(uvm_config_db#(int)::get(this,"","count",count)==0)begin
	 `uvm_error("mem_drv","FAILED TO RETRIVE VALUE FROM CFGDB")
 end
 this.print();
//------------------------------------------------------------------------------
endfunction

endclass

