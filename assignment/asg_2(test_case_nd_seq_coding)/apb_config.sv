
`define NEW_COMP\
function new(string name="",uvm_component parent=null);\
	super.new(name,parent);\
endfunction

`define NEW_OBJ\
function new(string name="");\
	super.new(name);\
endfunction

class apb_config extends uvm_object;

//factory registration
  `uvm_object_utils(apb_config)
  
//constructor
 `NEW_OBJ
 
endclass
