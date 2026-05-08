class ha_drv extends uvm_driver#(ha_tx);
`uvm_component_utils(ha_drv)
`NEW_COMP
//virtual interface instantiation
virtual ha_interface vif;

function void build_phase(uvm_phase phase);
	super.build_phase(phase);
  if(uvm_config_db#(virtual ha_interface)::get(this,"","vif",vif)==0)
	begin
		`uvm_error("ha_drv","FAILED TO RETRIEVE VIF HANDLE FROM CFGDB")
	end
endfunction

task run_phase(uvm_phase phase);
	forever begin
		seq_item_port.get_next_item(req);
		drive_tx(req);
		seq_item_port.item_done();
	end
endtask

task drive_tx(ha_tx tx);
   @(vif.drv_cb);   // ⭐ wait on clocking block, not posedge clk
  
	vif.drv_cb.a   <= tx.a;
	vif.drv_cb.b   <= tx.b;
  `uvm_info("mem_drv",$sformatf("a=%b  b=%b",tx.a,tx.b),UVM_NONE)
 
endtask


endclass

