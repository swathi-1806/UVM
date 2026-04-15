class apb_agent extends uvm_agent;

//factory registration
  `uvm_component_utils(apb_agent)

//constructor
function new(string name="apb_env",uvm_component parent);
	super.new(name,parent);
endfunction


endclass

