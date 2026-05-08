class ha_cov extends uvm_subscriber#(ha_tx);
`uvm_component_utils(ha_cov)

ha_tx tx;

covergroup ha_cg;
	A_I   :coverpoint tx.a;
	B_I   :coverpoint tx.b;
	A_X_B :cross A_I,B_I;
endgroup

function new(string name, uvm_component parent);
        super.new(name,parent);

        ha_cg = new();
endfunction

virtual function void write(ha_tx t);
		//tx = t;
		$cast(tx,t);
		ha_cg.sample();
endfunction

endclass

