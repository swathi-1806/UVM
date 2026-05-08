class ha_mon extends uvm_monitor;
`uvm_component_utils(ha_mon)
`NEW_COMP

//virtual interface instantiation
virtual ha_interface vif;

//declare analysis port
uvm_analysis_port#(ha_tx) mon_ap_h;

function void build_phase(uvm_phase phase);
	super.build_phase(phase);
  mon_ap_h = new("mon_ap_h", this);
  if(uvm_config_db#(virtual ha_interface)::get(this,"","vif",vif)==0)
	begin
		`uvm_error("HA_MON","FAILED TO RETRIEVE VIF HANDLE FROM CFGDB")
	end
endfunction

task run_phase(uvm_phase phase);
ha_tx tx;
	forever begin
      @(vif.mon_cb);   // ⭐ sample at clocking block event

      tx = ha_tx::type_id::create("tx");

      tx.a     = vif.mon_cb.a;
      tx.b     = vif.mon_cb.b;
      tx.sum   = vif.mon_cb.sum;
      tx.carry = vif.mon_cb.carry;

      `uvm_info("HA_MON",
        $sformatf("a=%b b=%b sum=%b carry=%b",
        tx.a, tx.b, tx.sum, tx.carry), UVM_NONE)
      
		//send the tx to cov and sbd
		mon_ap_h.write(tx);
	end
endtask


endclass

