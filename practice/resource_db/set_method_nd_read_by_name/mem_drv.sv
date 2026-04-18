class mem_drv extends uvm_driver#(mem_tx);

//factory registration
`uvm_component_utils(mem_drv)

int count;
eth_pkt pkt_h;

//constructors
`NEW_COMP

//required uvm_phases
function void build_phase(uvm_phase phase);
	super.build_phase(phase);

//-----------------------------------------------------------------------------------------------
//calling uvm_resource_db read_by_nmae in build_phase of driver class to reteive integer count
if(uvm_resource_db#(int)::read_by_name("INT","INT_COUNT",count,this)==0)begin
	`uvm_error("mem_drv","RETREIVAL OF VALUE FROM UVM_RSDB HAS FAILED")
end

`uvm_info("mem_drv",$sformatf("count=%0d",count),UVM_NONE)

//-----------------------------------------------------------------------------------------------
endfunction

//>store the value of count as 200 in driver connect_phase 
function void connect_phase(uvm_phase phase);
  uvm_resource_db#(int)::set("DRV","DRV_COUNT",500,this);
endfunction

//eth_pkt retriva;
task run_phase(uvm_phase phase);
  if(uvm_resource_db#(eth_pkt)::read_by_name("ETH_SCOPE","ETH_PKT",pkt_h,this)==0)begin
`uvm_error("mem_drv","RETRIVAL OF ETH_PKT HAS FAILED")
end
pkt_h.print();
  $display("-------------------------------------------------------------------------------------");
  pkt_h.print(uvm_default_line_printer);
  $display("-------------------------------------------------------------------------------------");
  pkt_h.print(uvm_default_tree_printer);
endtask

endclass

